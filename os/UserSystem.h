-- -*-Fundamental-*-

header UserSystem

  uses Syscall

  -- Command Line Arguments
  var  cmdArgs: ptr to array of ptr to array of char

  --
  -- The following routines comprise the syscall interface to the kernel.  They
  -- are wrapper functions, which do nothing more than a syscall to the kernel.
  --
  functions
    Sys_Exit (returnStatus: int)
    Sys_Shutdown ()
    Sys_GetError () returns int
    Sys_Yield ()
    Sys_Fork () returns int
    Sys_Join (processID: int) returns int
    Sys_Exec (filename: String, args: ptr to array of ptr to array of char) returns int
    Sys_Open (filename: String, flags, mode: int ) returns int
    Sys_Read (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
    Sys_Write (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
    Sys_Seek (fileDesc: int, newCurrentPos: int) returns int
    Sys_Close (fileDesc: int)

    Sys_GetPid () returns int
    Sys_GetPPid () returns int

  -- A7 system calls

    Sys_Dup  (fd: int) returns int
    Sys_Pipe (fds: ptr to array [2] of int) returns int

  -- More system calls

    Sys_Stat (filename: String, statPtr: ptr to statInfo) returns int
    Sys_ChMode (filename: String, mode: int) returns int
    Sys_Link (oldname, newname: String) returns int
    Sys_Unlink (filename: String) returns int
    Sys_Mkdir (filename: String) returns int
    Sys_Rmdir (filename: String) returns int
    Sys_Chdir (filename: String) returns int
    Sys_Opendir (filename: String) returns int
    Sys_Readdir (dfd: int, entPtr: ptr to dirEntry) returns int
    Sys_GetDiskInfo ( diskData: ptr to diskInfo) returns int
 
  --
  -- The following routines are implemented in UserRuntime.s:
  --
  functions
    external DoSyscall (funCode, arg1, arg2, arg3, arg4: int) returns int
    external TerminateWithError ()
 
  --
  -- The following routines print data directly and immediately to the output.
  -- They bypass the serial I/O device and use the debug2 "back-door" to
  -- the virtual machine.  NOTE: These routines are for use in debugging the
  -- kernel; normally a user process will use the "write" syscall to do all
  -- output.
  --
  functions
    external print (s: String)
    external printInt (i: int)
    external printHex (i: int)           -- prints, e.g., 0x0012ABCD
    external printChar (c: char)         -- prints non-printables as, e.g., \x05
    external printBool (b: bool)         -- prints "TRUE" or "FALSE"
    external printDouble (d: double)

  --
  -- Misc. useful stuff.
  --
  type String = ptr to array of char
  functions
    StrEqual (s1, s2: String) returns bool
    StrCopy (s1, s2: String)               -- Copy s2 into s1; move min(s1,s2) chars
    StrCmp (s1, s2: String) returns int    -- return -1 if <, 0 if =, +1 if >
    Min (i, j: int) returns int
    Max (i, j: int) returns int
    printIntVar (s: String, i: int)        -- prints "s = " int \n
    printHexVar (s: String, i: int)        -- prints "s = " 0x00000000 \n
    printBoolVar (s: String, b: bool)      -- prints "s = " bool \n
    printCharVar (s: String, c: char)      -- prints "s = " ch \n
    printPtr (s: String, p: ptr to void)   -- prints "s = " 0x00000000 \n
    nl ()                                  -- Short for printChar ('\n')
    MemoryEqual (s1, s2: ptr to char, len: int) returns bool

  --
  -- The following routines are implemented in assembly in the Runtime.s file.
  --
  functions
    external getCatchStack () returns int  -- Actually returns ptr to a CATCH_RECORD
    external MemoryZero (destAddr, byteCount: int)  -- Set block of mem to zeros
    external MemoryCopy (destAddr: int,             -- Copy bytes from one memory area
                         srcAddr: int,              -- to another memory area.  Need not
                         byteCount: int)            -- be aligned, but must not overlap!
  --
  -- The following functions are part of the KPL language support.
  --
  functions
    KPLSystemInitialize ()
    KPLMemoryAlloc (byteCount: int) returns ptr to char
    KPLMemoryFree (p: ptr to char)
    KPLUncaughtThrow (errorID: ptr to char, line: int, rPtr: int)
    KPLIsKindOf (objPtr: ptr to Object, typeDesc: ptr to int) returns int
    KPLSystemError (message: String)
  errors
    UncaughtThrowError (errorID: ptr to char, line: int, routineDescPtr: int)

  --
  -- The class "Object" is the root of the superclass/subclass tree.  It has no
  -- fields and no methods.
  --
  class Object
  endClass

endHeader
