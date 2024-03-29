-- -*-Fundamental-*-
-- The above line for emacs if you use it

header Kernel

  uses System, List, BitMap, Syscall

  const

    --INIT_NAME = "MyProgram"
    INIT_NAME = "TestProgram1"

    SYSTEM_STACK_SIZE = 1000       -- in words
    STACK_SENTINEL = 0x24242424    -- in ASCII, this is "$$$$"

    -- The kernel code will load into the first megabyte of physical memory.  This
    -- should be more than enough.  We will use the second megabyte for page frames.
    -- Thus, the frame region is 128 page frames of 8K each.

    PAGE_SIZE = 8192                                  -- in hex: 0x0000 2000
    PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME = 1048576    -- in hex: 0x0010 0000
    NUMBER_OF_PHYSICAL_PAGE_FRAMES = 512              -- in hex: 0x0000 0200
    --NUMBER_OF_PHYSICAL_PAGE_FRAMES = 100               -- for testing only

    MAX_NUMBER_OF_PROCESSES = 10
    MAX_STRING_SIZE = 255
    MAX_PAGES_PER_VIRT_SPACE = 48
    MAX_FILES_PER_PROCESS = 10
    MAX_NUMBER_OF_FILE_CONTROL_BLOCKS = 48
    MAX_NUMBER_OF_OPEN_FILES = 48
    USER_STACK_SIZE_IN_PAGES = 1
    NUMBER_OF_ENVIRONMENT_PAGES = 0

    SERIAL_GET_BUFFER_SIZE = 10
    SERIAL_PUT_BUFFER_SIZE = 10

    -- File System Constants for ToyFs
    INODE_SIZE = 64
    INODES_PER_SEC = PAGE_SIZE / INODE_SIZE

    -- Thread status
    enum JUST_CREATED, READY, RUNNING, BLOCKED, UNUSED

    -- Interrupt status
    enum ENABLED, DISABLED

    -- Kinds of OpenFile
    enum FILE, TERMINAL, PIPE, DIRECTORY

    -- Status of a ProcessControlBlock                          
    enum ACTIVE, ZOMBIE, FREE

  var
    readyList: List [Thread]
    currentThread: ptr to Thread
    mainThread: Thread
    idleThread: Thread
    threadsToBeDestroyed:  List [Thread]
    currentInterruptStatus: int
    processManager: ProcessManager
    threadManager: ThreadManager
    frameManager: FrameManager
    diskDriver: DiskDriver
    fileManager: FileManager
    fileSystem: ToyFs
    serialDriver: SerialDriver

  functions

    -- These routines are called from the Runtime.s assembly code when
    -- the corresponding interrupt/syscall occurs:

    TimerInterruptHandler ()
    DiskInterruptHandler ()
    SerialInterruptHandler ()
    IllegalInstructionHandler ()
    ArithmeticExceptionHandler ()
    AddressExceptionHandler ()
    PageInvalidExceptionHandler ()
    PageReadonlyExceptionHandler ()
    PrivilegedInstructionHandler ()
    AlignmentExceptionHandler ()
    SyscallTrapHandler (syscallCodeNum, arg1, arg2, arg3, arg4: int) returns int

    -- These routines are invoked when a kernel call is made:

    Handle_Sys_Fork () returns int
    Handle_Sys_Yield ()
    Handle_Sys_Exec (filename: ptr to array of char,
                     args: ptr to array of ptr to array of char ) returns int
    Handle_Sys_Join (processID: int) returns int
    Handle_Sys_Exit (returnStatus: int)
    Handle_Sys_Open (filename: String, flags, mode: int) returns int
    Handle_Sys_Read (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
    Handle_Sys_Write (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
    Handle_Sys_Seek (fileDesc: int, newCurrentPos: int) returns int
    Handle_Sys_Close (fileDesc: int)
    Handle_Sys_Shutdown ()
    Handle_Sys_Stat (fileName: ptr to array of char, statBuf: ptr to statInfo) returns int
    Handle_Sys_Pipe (fds: ptr to array[2] of int) returns int
    Handle_Sys_Dup (fd: int) returns int
    Handle_Sys_Chdir(filename: String) returns int
    validatePointers(fileName: ptr to array of char, statBuf: ptr to statInfo) returns bool --called from handle_sys_stat

    ResumeChildAfterFork(oldUserPC: int) --called by Handle_Sys_Fork

    -- Will need to add more system calls here ..

    InitializeScheduler ()
    Run (nextThread: ptr to Thread)
    PrintReadyList ()
    ThreadStartMain ()
    ThreadFinish ()
    FatalError_ThreadVersion (errorMessage: ptr to array of char)
    SetInterruptsTo (newStatus: int) returns int
    ProcessFinish (exitStatus: int)
    InitFirstProcess ()
    StartUserProcess(arg: int)
    SerialHandlerFunction()

    -- Routines from Switch.s:

    external Switch (prevThread, nextThread: ptr to Thread)
    external ThreadStartUp ()
    external GetOldUserPCFromSystemStack () returns int
    external LoadPageTableRegs (ptbr, ptlr: int)  -- Execute "LDPTBR" and "LDPTLR"
    external SaveUserRegs (p: ptr to int)         -- Execute "readu" instructions
    external RestoreUserRegs (p: ptr to int)      -- Execute "writeu" instructions

    -- The following routine sets the "InterruptsEnabled" bit, sets the
    -- "PagingEnabled" bit, clears the "SystemMode" bit, and jumps to the
    -- address given by "initPC".
    external BecomeUserThread (initStack, initPC, initSystemStack, argPtr: int)


  ---------------  Semaphore  ---------------

  class Semaphore
    superclass Object
    fields
      count: int
      waitingThreads: List [Thread]
    methods
      Init (initialCount: int)
      Down ()
      Up ()
  endClass

  ---------------  Mutex  ---------------

  class Mutex
    superclass Object
    fields
      heldBy: ptr to Thread           -- Null means this mutex is unlocked.
      waitingThreads: List [Thread]
    methods
      Init ()
      Lock ()
      Unlock ()
      IsHeldByCurrentThread () returns bool
  endClass

  ---------------  Condition  ---------------

  class Condition
    superclass Object
    fields
      waitingThreads: List [Thread]
    methods
      Init ()
      Wait (mutex: ptr to Mutex)
      Signal (mutex: ptr to Mutex)
      Broadcast (mutex: ptr to Mutex)
  endClass

  ---------------  Thread  ---------------

  class Thread
    superclass Listable
    fields
      -- The first two fields are at fixed offsets, hardwired into Switch!
      regs: array [13] of int        -- Space for r2..r14
      stackTop: ptr to void          -- Space for r15 (system stack top ptr)
      name: ptr to array of char
      status: int                    -- JUST_CREATED, READY, RUNNING, BLOCKED, UNUSED
      initialFunction: ptr to function (int)    -- The thread's "main" function
      initialArgument: int                      -- The argument to that function
      systemStack: array [SYSTEM_STACK_SIZE] of int
      isUserThread: bool
      userRegs: array [15] of int    -- Space for r1..r15
      myProcess: ptr to ProcessControlBlock
    methods
      Init (n: ptr to array of char)
      Fork (fun: ptr to function (int), arg: int)
      Yield ()
      Sleep ()
      CheckOverflow ()
      Print ()
  endClass

  -----------------------------  ThreadManager  ---------------------------------
  --
  --  There is only one instance of this class, created at startup time.
  --
  class ThreadManager
    superclass Object
    fields
      threadTable: array [MAX_NUMBER_OF_PROCESSES] of Thread
      freeList: List [Thread]
      threadManagerLock: Mutex
      aThreadBecameFree: Condition
      inQueue: int
    methods
      Init ()
      Print ()
      GetANewThread () returns ptr to Thread
      FreeThread (th: ptr to Thread)
  endClass

  -----------------------------  ProcessControlBlock  ---------------------------------
  --
  --  There are a fixed, preset number of these objects, which are created at
  --  startup and are kept in the array "ProcessManager.processTable".  When
  --  a process is started, a ProcessControlBlock is allocated from this
  --  array and the state of the process is kept in this object.
  --
  class ProcessControlBlock
    superclass Listable
    fields
      pid: int                      -- The process ID
      parentsPid: int               -- The pid of the parent of this process
      status: int                   -- ACTIVE, ZOMBIE, or FREE
      myThread: ptr to Thread       -- Each process has one thread
      exitStatus: int               -- The value passed to Sys_Exit
      addrSpace: AddrSpace          -- The logical address space
      lastError: int		    -- Error value of the last system call
      workingDir: ptr to OpenFile   -- The current working directory
      fileDescriptor: array [MAX_FILES_PER_PROCESS] of ptr to OpenFile
    methods
      Init ()
      Print ()
      PrintShort ()
  endClass

  -----------------------------  ProcessManager  ---------------------------------
  --
  --  There is only one instance of this class, created at startup time.
  --
  class ProcessManager
    superclass Object
    fields
      nextPid: int
      processTable: array [MAX_NUMBER_OF_PROCESSES] of ProcessControlBlock
      processManagerLock: Mutex               -- These synchronization objects
      aProcessBecameFree: Condition           --     apply to the "freeList"
      freeList: List [ProcessControlBlock]
      aProcessDied: Condition                 -- Signalled for new ZOMBIEs
      inQueue: int
    methods
      Init ()
      Print ()
      PrintShort ()
      GetANewProcess () returns ptr to ProcessControlBlock
      FreeProcess (p: ptr to ProcessControlBlock)
      FindProcess (pid: int) returns ptr to ProcessControlBlock
      TurnIntoZombie (p: ptr to ProcessControlBlock)
      WaitForZombie (proc: ptr to ProcessControlBlock) returns int
  endClass

  -----------------------------  FrameManager  ---------------------------------
  --
  --  There is only one instance of this class.
  --
  class FrameManager
    superclass Object
    fields
      framesInUse: BitMap
      numberFreeFrames: int
      frameManagerLock: Mutex
      newFramesAvailable: Condition
    methods
      Init ()
      Print ()
      GetAFrame () returns int                         -- returns addr of frame
      PutAFrame ( frameAddr: int )                     -- done using a frame
      GetNewFrames (aPageTable: ptr to AddrSpace, numFramesNeeded: int)
      ReturnAllFrames (aPageTable: ptr to AddrSpace)
  endClass

  -----------------------------  AddrSpace  ---------------------------------
  --
  --  There is one instance for every virtual address space.
  --
  class AddrSpace
    superclass Object
    fields
      numberOfPages: int
      pageTable: array [MAX_PAGES_PER_VIRT_SPACE] of int
    methods
      Init ()
      Print ()
      ExtractFrameAddr (entry: int) returns int
      ExtractUndefinedBits (entry: int) returns int
      SetFrameAddr (entry: int, frameAddr: int)
      IsDirty (entry: int) returns bool
      IsReferenced (entry: int) returns bool
      IsWritable (entry: int) returns bool
      IsValid (entry: int) returns bool
      SetDirty (entry: int)
      SetReferenced (entry: int)
      SetWritable (entry: int)
      SetValid (entry: int)
      ClearDirty (entry: int)
      ClearReferenced (entry: int)
      ClearWritable (entry: int)
      ClearValid (entry: int)
      SetToThisPageTable ()
      CopyBytesFromVirtual (kernelAddr, virtAddr, numBytes: int) returns int
      CopyBytesToVirtual (virtAddr, kernelAddr, numBytes: int) returns int
      GetStringFromVirtual (kernelAddr: String, virtAddr, maxSize: int) returns int
  endClass

-----------------------------  DiskDriver  ---------------------------------
  --
  --  There is only one instance of this class.
  --
  class DiskDriver
    superclass Object
    fields
      DISK_STATUS_WORD_ADDRESS: ptr to int
      DISK_COMMAND_WORD_ADDRESS: ptr to int
      DISK_MEMORY_ADDRESS_REGISTER: ptr to int
      DISK_SECTOR_NUMBER_REGISTER: ptr to int
      DISK_SECTOR_COUNT_REGISTER: ptr to int
      semToSignalOnCompletion: ptr to Semaphore
      semUsedInSynchMethods: Semaphore
      diskBusy: Mutex
    methods
      Init ()
      SynchReadSector  (sectorAddr, numberOfSectors, memoryAddr: int)
      StartReadSector  (sectorAddr, numberOfSectors, memoryAddr: int,
                        whoCares: ptr to Semaphore)
      SynchWriteSector (sectorAddr, numberOfSectors, memoryAddr: int)
      StartWriteSector (sectorAddr, numberOfSectors, memoryAddr: int,
                        whoCares: ptr to Semaphore)
  endClass

   -----------------------------  FileManager  ---------------------------------

  class FileManager
    superclass Object
    fields
      fileManagerLock: Mutex
      
      fcbTable: array [MAX_NUMBER_OF_FILE_CONTROL_BLOCKS] of FileControlBlock
      anFCBBecameFree: Condition
      fcbFreeList: List [FileControlBlock]
      
      openFileTable: array [MAX_NUMBER_OF_OPEN_FILES] of OpenFile
      anOpenFileBecameFree: Condition
      openFileFreeList: List [OpenFile]

      pipes: array [MAX_NUMBER_OF_PIPES] of Pipe
      openPipeFreeList: List [Pipe]
      anOpenPipeBecameFree: Condition
      
      serialTerminalFile: OpenFile

    methods
      Init ()
      Print ()
      LookupFCB (inodeNum: int) returns ptr to FileControlBlock
      GetFCB ( inodeNum: int) returns ptr to FileControlBlock  -- null if errors
      GetAnOpenFile (block: bool) returns ptr to OpenFile
      GetFreePipe() returns ptr to Pipe
      ClosePipe(open: ptr to OpenFile)
      FreePipe(open: ptr to Pipe)

      -- Open returns null if errors
      Open (filename: String, dir: ptr to OpenFile, flags, mode: int) returns ptr to OpenFile
      Close (open: ptr to OpenFile)
      SynchRead (open: ptr to OpenFile, targetAddr, bytePos, numBytes: int) returns bool
      SynchWrite (open: ptr to OpenFile, sourceAddr, bytePos, numBytes: int) returns bool
 
 endClass

  -----------------------------  ToyFs   --------------------------------

  class ToyFs
  superclass Object

    fields
    
      rootDirectory: ptr to OpenFile
      inodeBuffer: int  -- address of a frame
      inodeBuffSec: int  -- sector address contents 
      fsLock: Mutex
      numDblocks: int

    -- Super Block / Root 
      superBlock: int
      numInodes: int
      fssize: int
      i_bitmap: BitMap
      d_bitmap: BitMap
      dataSecOffset: int
      
    methods
      Init()  -- Loads the super block
      SaveSuper()  --  Saves the super block back to disk

      -- Helper methods
      OpenLastDir (filename: String, startDir: ptr to OpenFile, lastElIndex: ptr to int) returns ptr to OpenFile
      NameToInodeNum (filename: String, dir : ptr to OpenFile) returns int

      AllocInode () returns int
      FreeInode (iNum: int)

      AllocDataBlock () returns int
      FreeDataBlock (dbNum: int)

      GetDiskInfo (buffPtr: ptr to diskInfo) returns int

      -- Routines for implementing ToyFs parts of system calls

      ReadFile (file: ptr to OpenFile, userBuffer: ptr to char,
      	        sizeInBytes: int) returns int
      WriteFile (file: ptr to OpenFile, userBuffer: ptr to char,
      		sizeInBytes: int) returns int

      CreateFile (dir : ptr to OpenFile, filename: String, flags:int, mode: int)
                  returns ptr to OpenFile

      MakeDir (dirname: String) returns int
      RemoveDir (dirname: String) returns int
      
      Link (oldname, newname: String) returns int
      Unlink (filename: String) returns int

  endClass

  -----------------------------  InodeData   --------------------------------

  type diskInode = record
       		      nlinksAndMode: int
		      fsize: int
		      balloc: int
		      direct: array [10] of int
		      indir1: int
		      indir2: int
		    endRecord

  class InodeData
  superclass Object
    fields
      number : int
      nlinks : int
      mode   : int
      fsize  : int  -- locgical file size in bytes
      balloc : int  -- blocks allocated including indirect blocks
      direct : array [10] of int
      indir1 : int  -- 1st indirect block pointer
      indir2 : int  -- 2nd indirect block pointer
      dirty  : bool -- has anything changed
      indSec : int   -- pointer to a frame with indirect pointers.
      

    methods
      Init ()
      Print ()

      GetInode ( num : int )
      WriteInode ()
      
      GetDataSectorNumber ( logicalSector: int ) returns int
      AllocateNewSector ( logicalSector: int) returns bool
      GetIndirect ()
      FreeIndirect ()
      SaveIndirect ()

      SetMode ( newMode: int )

    endClass

 -----------------------------  FileControlBlock  ---------------------------------

  class FileControlBlock
    superclass Listable
    fields
      inode: InodeData
      numberOfUsers: int             -- count of OpenFiles pointing here
      bufferPtr: int                 -- addr of a page frame
      relativeSectorInBuffer: int    -- or -1 if none
      bufferIsDirty: bool            -- Set to true when buffer is modified
    methods
      Init ()
      Print ()
      ReadSector (newSector: int, allocateNew: bool) returns bool
      Flush ()
      Release (lock: ptr to Mutex)
      
    endClass

  -----------------------------  OpenFile  ---------------------------------

  class OpenFile
    superclass Listable
    fields
      kind: int                      -- FILE, TERMINAL, PIPE, or  DIRECTORY
      currentPos: int                -- 0 = first byte of file
      fcb: ptr to FileControlBlock   -- null = not open
      numberOfUsers: int             -- count of Processes pointing here
      addPos: int    		     -- byte in directory to add last failed lookup
      flags: int                    -- How opened, O_READ / O_WRITE
      pipe: ptr to Pipe
      
    methods
      Print ()
      Init (fKind: int, fFcb: ptr to FileControlBlock, openFlags: int)

      -- Returns a new reference to self and increments numberOfUsers
      NewReference () returns ptr to OpenFile

      -- General Operations
      ReadInt () returns int
     
      -- Read bytes to Kernel Address of targetAddr
      ReadBytes (targetAddr, numBytes: int) returns bool        -- true=All Okay

      -- Executables
      LoadExecutable (addrSpace: ptr to AddrSpace) returns int  -- -1 = problems

      -- Directory Operations
      Lookup ( filename: String) returns ptr to dirEntry
      GetNextEntry (newSize: int) returns ptr to dirEntry

      -- AddEntry returns true if entry is added
      AddEntry (inodeNum: int, filename: String) returns bool
      RemoveEntry (filename: String, ent: ptr to dirEntry) returns bool

  endClass

    ------------------------  SerialDriver  ----------------------------
    --
    --  There is only one instance of this class.
    --
    const
      SERIAL_CHARACTER_AVAILABLE_BIT                 = 0x00000001
      SERIAL_OUTPUT_READY_BIT                        = 0x00000002
      SERIAL_STATUS_WORD_ADDRESS                     = 0x00FFFF00
      SERIAL_DATA_WORD_ADDRESS                       = 0x00FFFF04

    class SerialDriver
    superclass Object
    fields
      initialized : bool
      serial_status_word_address: ptr to int
      serial_data_word_address: ptr to int
      serialLock: Mutex
      getBuffer: array [SERIAL_GET_BUFFER_SIZE] of char
      getBufferSize: int
      getBufferNextIn: int
      getBufferNextOut: int
      getCharacterAvail: Condition
      putBuffer: array [SERIAL_PUT_BUFFER_SIZE] of char
      putBufferSize: int
      putBufferNextIn: int
      putBufferNextOut: int
      putBufferSem: Semaphore
      serialNeedsAttention: Semaphore
      serialHandlerThread: Thread
    methods
      Init ()
      PutChar (value: char)
      GetChar () returns char
      SerialHandler ()
    endClass

----------------------------- Pipe --------------------------------

  const MAX_NUMBER_OF_PIPES = 6

  class Pipe
    superclass Listable

    fields
        bufferFrame: int        -- Buffer frame, needs to be acquired at open time
        head, tail: int         -- Circular buffer
        numberOfUsers: int      -- Should start at 2 and go down on closes
        pipeMutex: Mutex
        charsInPipe: int
        readQueue: Condition    
        writeQueue: Condition
        writer: Condition
        

    methods
        Init ()
        --Print ()
        Open () returns bool
        Read (buffer: ptr to char, sizeInBytes: int) returns int
        Write (buffer: ptr to char, sizeInBytes: int) returns int
        Close ()

  endClass

endHeader
