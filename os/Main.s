! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	_P_Syscall_entSize
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_StrChr
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_Handle_Sys_Stat
	.import	_P_Kernel_Handle_Sys_Pipe
	.import	_P_Kernel_Handle_Sys_Dup
	.import	_P_Kernel_Handle_Sys_Chdir
	.import	_P_Kernel_validatePointers
	.import	_P_Kernel_ResumeChildAfterFork
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	_P_Kernel_InitFirstProcess
	.import	_P_Kernel_StartUserProcess
	.import	_P_Kernel_SerialHandlerFunction
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following class and its methods are from other packages
	.import	_P_Kernel_DiskDriver
! The following class and its methods are from other packages
	.import	_P_Kernel_FileManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ToyFs
! The following class and its methods are from other packages
	.import	_P_Kernel_InodeData
! The following class and its methods are from other packages
	.import	_P_Kernel_FileControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_OpenFile
! The following class and its methods are from other packages
	.import	_P_Kernel_SerialDriver
! The following class and its methods are from other packages
	.import	_P_Kernel_Pipe
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_frameManager
	.import	_P_Kernel_diskDriver
	.import	_P_Kernel_fileManager
	.import	_P_Kernel_fileSystem
	.import	_P_Kernel_serialDriver
! Global variables in this package
	.data
	.align
! String constants
_StringConst_3:
	.word	60			! length
	.ascii	"AllocateRandomFrames called.  NUMBER_OF_PHYSICAL_PAGE_FRAMES"
	.align
_StringConst_2:
	.word	45			! length
	.ascii	"The main thread should never reach this point"
	.align
_StringConst_1:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_5		! .
	ret				! .
_Label_5:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.k\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_6
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_6:
	mov	0,r1
! Make sure _P_Syscall_ has hash value 0x432b40fa (decimal 1126908154)
	set	_packageName,r2
	set	0x432b40fa,r3
	call	_CheckVersion_P_Syscall_
	.import	_CheckVersion_P_Syscall_
	cmp	r1,0
	bne	_Label_7
! Make sure _P_System_ has hash value 0xba42d652 (decimal -1170024878)
	set	_packageName,r2
	set	0xba42d652,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_7
! Make sure _P_BitMap_ has hash value 0x93947b8f (decimal -1818985585)
	set	_packageName,r2
	set	0x93947b8f,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_7
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_7
! Make sure _P_Kernel_ has hash value 0x6c1f1c3a (decimal 1813978170)
	set	_packageName,r2
	set	0x6c1f1c3a,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_7
_Label_7:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	25,r1
_Label_102:
	push	r0
	sub	r1,1,r1
	bne	_Label_102
	mov	5,r13		! source line 5
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! freeze
!   NEW CLASS Constructor...
!   ZeroMemory: freeze = zeros  (sizeInBytes=20)
	add	r14,-100,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   freeze = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=2960)
	set	_P_Kernel_processManager,r4
	mov	740,r3
_Label_103:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_103
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_10 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41700)
	set	_P_Kernel_threadManager,r4
	mov	10425,r3
_Label_104:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_104
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_12 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=56)
	set	_P_Kernel_frameManager,r4
	mov	14,r3
_Label_105:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_105
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_14 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	28,r13		! source line 28
	mov	"\0\0CA",r10
	call	_function_4_AllocateRandomFrames
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_diskDriver = zeros  (sizeInBytes=68)
	set	_P_Kernel_diskDriver,r4
	mov	17,r3
_Label_106:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_106
!   _P_Kernel_diskDriver = _P_Kernel_DiskDriver
	set	_P_Kernel_DiskDriver,r1
	set	_P_Kernel_diskDriver,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_16 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-48]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_fileManager = zeros  (sizeInBytes=8056)
	set	_P_Kernel_fileManager,r4
	mov	2014,r3
_Label_107:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_107
!   _P_Kernel_fileManager = _P_Kernel_FileManager
	set	_P_Kernel_FileManager,r1
	set	_P_Kernel_fileManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_18 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_fileSystem = zeros  (sizeInBytes=80)
	set	_P_Kernel_fileSystem,r4
	mov	20,r3
_Label_108:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_108
!   _P_Kernel_fileSystem = _P_Kernel_ToyFs
	set	_P_Kernel_ToyFs,r1
	set	_P_Kernel_fileSystem,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0SE",r10
!   _temp_20 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-32]
!   Send message Init
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_serialDriver = zeros  (sizeInBytes=4312)
	set	_P_Kernel_serialDriver,r4
	mov	1078,r3
_Label_109:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_109
!   _P_Kernel_serialDriver = _P_Kernel_SerialDriver
	set	_P_Kernel_SerialDriver,r1
	set	_P_Kernel_serialDriver,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_22 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-24]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CA",r10
	call	_P_Kernel_InitFirstProcess
! SEND STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0SE",r10
!   _temp_23 = &freeze
	add	r14,-100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_24 = &freeze
	add	r14,-100,r1
	store	r1,[r14+-16]
!   Send message Down
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_25 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_25  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	54,r13		! source line 54
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_26
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_27
	.word	-12
	.word	4
	.word	_Label_28
	.word	-16
	.word	4
	.word	_Label_29
	.word	-20
	.word	4
	.word	_Label_30
	.word	-24
	.word	4
	.word	_Label_31
	.word	-28
	.word	4
	.word	_Label_32
	.word	-32
	.word	4
	.word	_Label_33
	.word	-36
	.word	4
	.word	_Label_34
	.word	-40
	.word	4
	.word	_Label_35
	.word	-44
	.word	4
	.word	_Label_36
	.word	-48
	.word	4
	.word	_Label_37
	.word	-52
	.word	4
	.word	_Label_38
	.word	-56
	.word	4
	.word	_Label_39
	.word	-60
	.word	4
	.word	_Label_40
	.word	-64
	.word	4
	.word	_Label_41
	.word	-68
	.word	4
	.word	_Label_42
	.word	-72
	.word	4
	.word	_Label_43
	.word	-76
	.word	4
	.word	_Label_44
	.word	-80
	.word	4
	.word	_Label_45
	.word	-100
	.word	20
	.word	0
_Label_26:
	.ascii	"main\0"
	.align
_Label_27:
	.byte	'?'
	.ascii	"_temp_25\0"
	.align
_Label_28:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_29:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_30:
	.byte	'?'
	.ascii	"_temp_22\0"
	.align
_Label_31:
	.byte	'?'
	.ascii	"_temp_21\0"
	.align
_Label_32:
	.byte	'?'
	.ascii	"_temp_20\0"
	.align
_Label_33:
	.byte	'?'
	.ascii	"_temp_19\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
_Label_36:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_37:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
_Label_38:
	.byte	'?'
	.ascii	"_temp_14\0"
	.align
_Label_39:
	.byte	'?'
	.ascii	"_temp_13\0"
	.align
_Label_40:
	.byte	'?'
	.ascii	"_temp_12\0"
	.align
_Label_41:
	.byte	'?'
	.ascii	"_temp_11\0"
	.align
_Label_42:
	.byte	'?'
	.ascii	"_temp_10\0"
	.align
_Label_43:
	.byte	'?'
	.ascii	"_temp_9\0"
	.align
_Label_44:
	.byte	'?'
	.ascii	"_temp_8\0"
	.align
_Label_45:
	.byte	'O'
	.ascii	"freeze\0"
	.align
! 
! ===============  FUNCTION AllocateRandomFrames  ===============
! 
_function_4_AllocateRandomFrames:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_4_AllocateRandomFrames,r1
	push	r1
	set	52301,r1
_Label_110:
	push	r0
	sub	r1,1,r1
	bne	_Label_110
	mov	60,r13		! source line 60
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_46 = _StringConst_3
	set	_StringConst_3,r1
	set	-104744,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_46  sizeInBytes=4
	set	-104744,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   _temp_47 = &a
	set	-209200,r1
	add	r14,r1,r1
	set	-104740,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_49 = &_temp_48
	set	-104736,r1
	add	r14,r1,r1
	store	r1,[r14+-284]
!   _temp_49 = _temp_49 + 4
	load	[r14+-284],r1
	add	r1,4,r1
	store	r1,[r14+-284]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_51 = zeros  (sizeInBytes=204)
	add	r14,-276,r4
	mov	51,r3
_Label_111:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_111
!   _temp_51 = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-276]
	mov	512,r1
	store	r1,[r14+-280]
_Label_53:
!   Data Move: *_temp_49 = _temp_51  (sizeInBytes=204)
	add	r14,-276,r5
	load	[r14+-284],r4
	mov	51,r3
_Label_112:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_112
!   _temp_49 = _temp_49 + 204
	load	[r14+-284],r1
	add	r1,204,r1
	store	r1,[r14+-284]
!   _temp_50 = _temp_50 + -1
	load	[r14+-280],r1
	add	r1,-1,r1
	store	r1,[r14+-280]
!   if intNotZero (_temp_50) then goto _Label_53
	load	[r14+-280],r1
	cmp	r1,r0
	bne	_Label_53
!   Initialize the array size...
	mov	512,r1
	set	-104736,r2
	store	r1,[r14+r2]
!   _temp_54 = &_temp_48
	set	-104736,r1
	add	r14,r1,r1
	store	r1,[r14+-68]
!   make sure array has size 512
	set	-104740,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,0
	be	_Label_113
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_113:
!   make sure array has size 512
	load	[r14+-68],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_47 = *_temp_54  (sizeInBytes=104452)
	load	[r14+-68],r5
	set	-104740,r4
	load	[r14+r4],r4
	mov	26113,r3
_Label_114:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_114
! FOR STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_59 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_60 = 511		(4 bytes)
	mov	511,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_59  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-104748,r2
	store	r1,[r14+r2]
_Label_55:
!   Perform the FOR-LOOP termination test
!   if i > _temp_60 then goto _Label_58		
	set	-104748,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_58
_Label_56:
	mov	75,r13		! source line 75
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0SE",r10
!   _temp_61 = &a
	set	-209200,r1
	add	r14,r1,r1
	store	r1,[r14+-56]
!   Move address of _temp_61 [i ] into _temp_62
!     make sure index expr is >= 0
	set	-104748,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	204,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0SE",r10
!   _temp_64 = &a
	set	-209200,r1
	add	r14,r1,r1
	store	r1,[r14+-44]
!   Move address of _temp_64 [i ] into _temp_65
!     make sure index expr is >= 0
	set	-104748,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	204,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_63 = _temp_65		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_66 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_63  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_57:
!   i = i + 1
	set	-104748,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-104748,r2
	store	r1,[r14+r2]
	jmp	_Label_55
! END FOR
_Label_58:
! FOR STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_71 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_72 = 511		(4 bytes)
	mov	511,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_71  (sizeInBytes=4)
	load	[r14+-32],r1
	set	-104748,r2
	store	r1,[r14+r2]
_Label_67:
!   Perform the FOR-LOOP termination test
!   if i > _temp_72 then goto _Label_70		
	set	-104748,r1
	load	[r14+r1],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_70
_Label_68:
	mov	79,r13		! source line 79
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0SE",r10
!   _temp_74 = &a
	set	-209200,r1
	add	r14,r1,r1
	store	r1,[r14+-20]
!   Move address of _temp_74 [i ] into _temp_75
!     make sure index expr is >= 0
	set	-104748,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	204,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_73 = _temp_75		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_76 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_73  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_69:
!   i = i + 2
	set	-104748,r1
	load	[r14+r1],r1
	add	r1,2,r1
	bvs	_runtimeErrorOverflow
	set	-104748,r2
	store	r1,[r14+r2]
	jmp	_Label_67
! END FOR
_Label_70:
! RETURN STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0RE",r10
	set	209208,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_4_AllocateRandomFrames:
	.word	_sourceFileName
	.word	_Label_77
	.word	0		! total size of parameters
	.word	209204		! frame size = 209204
	.word	_Label_78
	.word	-12
	.word	4
	.word	_Label_79
	.word	-16
	.word	4
	.word	_Label_80
	.word	-20
	.word	4
	.word	_Label_81
	.word	-24
	.word	4
	.word	_Label_82
	.word	-28
	.word	4
	.word	_Label_83
	.word	-32
	.word	4
	.word	_Label_84
	.word	-36
	.word	4
	.word	_Label_85
	.word	-40
	.word	4
	.word	_Label_86
	.word	-44
	.word	4
	.word	_Label_87
	.word	-48
	.word	4
	.word	_Label_88
	.word	-52
	.word	4
	.word	_Label_89
	.word	-56
	.word	4
	.word	_Label_90
	.word	-60
	.word	4
	.word	_Label_91
	.word	-64
	.word	4
	.word	_Label_92
	.word	-68
	.word	4
	.word	_Label_93
	.word	-72
	.word	4
	.word	_Label_94
	.word	-276
	.word	204
	.word	_Label_95
	.word	-280
	.word	4
	.word	_Label_96
	.word	-284
	.word	4
	.word	_Label_97
	.word	-104736
	.word	104452
	.word	_Label_98
	.word	-104740
	.word	4
	.word	_Label_99
	.word	-104744
	.word	4
	.word	_Label_100
	.word	-104748
	.word	4
	.word	_Label_101
	.word	-209200
	.word	104452
	.word	0
_Label_77:
	.ascii	"AllocateRandomFrames\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_100:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_101:
	.byte	'A'
	.ascii	"a\0"
	.align
