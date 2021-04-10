! Name of package being compiled: UserSystem
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
	.export	_Error_P_UserSystem_UncaughtThrowError
_Error_P_UserSystem_UncaughtThrowError:
	.ascii	"_Error_P_UserSystem_UncaughtThrowError\0"
	.align
! Functions imported from other packages
	.import	_P_Syscall_entSize
! Externally visible functions in this package
	.export	_P_UserSystem_Sys_Exit
	.export	_P_UserSystem_Sys_Shutdown
	.export	_P_UserSystem_Sys_GetError
	.export	_P_UserSystem_Sys_Yield
	.export	_P_UserSystem_Sys_Fork
	.export	_P_UserSystem_Sys_Join
	.export	_P_UserSystem_Sys_Exec
	.export	_P_UserSystem_Sys_Open
	.export	_P_UserSystem_Sys_Read
	.export	_P_UserSystem_Sys_Write
	.export	_P_UserSystem_Sys_Seek
	.export	_P_UserSystem_Sys_Close
	.export	_P_UserSystem_Sys_GetPid
	.export	_P_UserSystem_Sys_GetPPid
	.export	_P_UserSystem_Sys_Dup
	.export	_P_UserSystem_Sys_Pipe
	.export	_P_UserSystem_Sys_Stat
	.export	_P_UserSystem_Sys_ChMode
	.export	_P_UserSystem_Sys_Link
	.export	_P_UserSystem_Sys_Unlink
	.export	_P_UserSystem_Sys_Mkdir
	.export	_P_UserSystem_Sys_Rmdir
	.export	_P_UserSystem_Sys_Chdir
	.export	_P_UserSystem_Sys_Opendir
	.export	_P_UserSystem_Sys_Readdir
	.export	_P_UserSystem_Sys_GetDiskInfo
	.import	DoSyscall
	.import	TerminateWithError
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	printDouble
	.export	_P_UserSystem_StrEqual
	.export	_P_UserSystem_StrCopy
	.export	_P_UserSystem_StrCmp
	.export	_P_UserSystem_Min
	.export	_P_UserSystem_Max
	.export	_P_UserSystem_printIntVar
	.export	_P_UserSystem_printHexVar
	.export	_P_UserSystem_printBoolVar
	.export	_P_UserSystem_printCharVar
	.export	_P_UserSystem_printPtr
	.export	_P_UserSystem_nl
	.export	_P_UserSystem_MemoryEqual
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.export	_P_UserSystem_KPLSystemInitialize
	.export	_P_UserSystem_KPLMemoryAlloc
	.export	_P_UserSystem_KPLMemoryFree
	.export	_P_UserSystem_KPLUncaughtThrow
	.export	_P_UserSystem_KPLIsKindOf
	.export	_P_UserSystem_KPLSystemError
! The following class and its methods are from this package
	.export	_P_UserSystem_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
	.export	_P_UserSystem_cmdArgs
_P_UserSystem_cmdArgs:
	.skip	4
_Global_memoryArea:
	.skip	20004
_Global_nextCharToUse:
	.word	0
_Global_alreadyInAlloc:
	.byte	0
	.align
! String constants
_StringConst_23:
	.word	2			! length
	.ascii	":\t"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_21:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_20:
	.word	28			! length
	.ascii	"   Here is the CATCH STACK:\n"
	.align
_StringConst_19:
	.word	63			! length
	.ascii	"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n"
	.align
_StringConst_18:
	.word	41			! length
	.ascii	"   Currently active method or function = "
	.align
_StringConst_17:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_16:
	.word	31			! length
	.ascii	"   Location at time of THROW = "
	.align
_StringConst_15:
	.word	16			! length
	.ascii	"   Error Name = "
	.align
_StringConst_14:
	.word	64			! length
	.ascii	"\n\n++++++++++ An error has been thrown but not caught ++++++++++\n"
	.align
_StringConst_13:
	.word	36			! length
	.ascii	"WITHIN KPLIsKindOf: Bad Magic Number"
	.align
_StringConst_12:
	.word	34			! length
	.ascii	"WITHIN KPLIsKindOf: objPtr is NULL"
	.align
_StringConst_11:
	.word	43			! length
	.ascii	"\n\nFATAL KPL RUNTIME ERROR IN USER PROGRAM: "
	.align
_StringConst_10:
	.word	36			! length
	.ascii	"WITHIN KPLMemoryAlloc: Out of memory"
	.align
_StringConst_9:
	.word	49			! length
	.ascii	"WITHIN KPLMemoryAlloc: byte count is not positive"
	.align
_StringConst_8:
	.word	18			! length
	.ascii	"\n\nBad byteCount = "
	.align
_StringConst_7:
	.word	32			! length
	.ascii	"WITHIN KPLMemoryAlloc: Reentered"
	.align
_StringConst_6:
	.word	3			! length
	.ascii	" = "
	.align
_StringConst_5:
	.word	2			! length
	.ascii	"\'\n"
	.align
_StringConst_4:
	.word	4			! length
	.ascii	" = \'"
	.align
_StringConst_3:
	.word	3			! length
	.ascii	" = "
	.align
_StringConst_2:
	.word	3			! length
	.ascii	" = "
	.align
_StringConst_1:
	.word	3			! length
	.ascii	" = "
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"UserSystem.k\0"
_packageName:
	.ascii	"UserSystem\0"
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
_CheckVersion_P_UserSystem_:
	.export	_CheckVersion_P_UserSystem_
	set	0x339c138e,r4		! myHashVal = 865866638
	cmp	r3,r4
	be	_Label_26
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
_Label_26:
	mov	0,r1
! Make sure _P_Syscall_ has hash value 0x432b40fa (decimal 1126908154)
	set	_packageName,r2
	set	0x432b40fa,r3
	call	_CheckVersion_P_Syscall_
	.import	_CheckVersion_P_Syscall_
	cmp	r1,0
	bne	_Label_27
_Label_27:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION Sys_Exit  ===============
! 
_P_UserSystem_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Exit,r1
	push	r1
	mov	6,r1
_Label_482:
	push	r0
	sub	r1,1,r1
	bne	_Label_482
	mov	13,r13		! source line 13
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	21,r13		! source line 21
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
! RETURN STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_28
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_29
	.word	8
	.word	4
	.word	_Label_30
	.word	-12
	.word	4
	.word	0
_Label_28:
	.ascii	"Sys_Exit\0"
	.align
_Label_29:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_30:
	.byte	'I'
	.ascii	"ignore\0"
	.align
! 
! ===============  FUNCTION Sys_Shutdown  ===============
! 
_P_UserSystem_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Shutdown,r1
	push	r1
	mov	6,r1
_Label_483:
	push	r0
	sub	r1,1,r1
	bne	_Label_483
	mov	26,r13		! source line 26
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	32,r13		! source line 32
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
! RETURN STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_31
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_32
	.word	-12
	.word	4
	.word	0
_Label_31:
	.ascii	"Sys_Shutdown\0"
	.align
_Label_32:
	.byte	'I'
	.ascii	"ignore\0"
	.align
! 
! ===============  FUNCTION Sys_GetError  ===============
! 
_P_UserSystem_Sys_GetError:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_GetError,r1
	push	r1
	mov	6,r1
_Label_484:
	push	r0
	sub	r1,1,r1
	bne	_Label_484
	mov	37,r13		! source line 37
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	42,r13		! source line 42
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_33  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_33  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_GetError:
	.word	_sourceFileName
	.word	_Label_34
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_35
	.word	-12
	.word	4
	.word	0
_Label_34:
	.ascii	"Sys_GetError\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
! 
! ===============  FUNCTION Sys_Yield  ===============
! 
_P_UserSystem_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Yield,r1
	push	r1
	mov	6,r1
_Label_485:
	push	r0
	sub	r1,1,r1
	bne	_Label_485
	mov	47,r13		! source line 47
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
! RETURN STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_36
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_37
	.word	-12
	.word	4
	.word	0
_Label_36:
	.ascii	"Sys_Yield\0"
	.align
_Label_37:
	.byte	'I'
	.ascii	"ignore\0"
	.align
! 
! ===============  FUNCTION Sys_Fork  ===============
! 
_P_UserSystem_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Fork,r1
	push	r1
	mov	6,r1
_Label_486:
	push	r0
	sub	r1,1,r1
	bne	_Label_486
	mov	59,r13		! source line 59
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_38  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_38  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_39
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_40
	.word	-12
	.word	4
	.word	0
_Label_39:
	.ascii	"Sys_Fork\0"
	.align
_Label_40:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
! 
! ===============  FUNCTION Sys_Join  ===============
! 
_P_UserSystem_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Join,r1
	push	r1
	mov	6,r1
_Label_487:
	push	r0
	sub	r1,1,r1
	bne	_Label_487
	mov	73,r13		! source line 73
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_41  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_41  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Join:
	.word	_sourceFileName
	.word	_Label_42
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_43
	.word	8
	.word	4
	.word	_Label_44
	.word	-12
	.word	4
	.word	0
_Label_42:
	.ascii	"Sys_Join\0"
	.align
_Label_43:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_44:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
! 
! ===============  FUNCTION Sys_Exec  ===============
! 
_P_UserSystem_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Exec,r1
	push	r1
	mov	8,r1
_Label_488:
	push	r0
	sub	r1,1,r1
	bne	_Label_488
	mov	88,r13		! source line 88
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0RE",r10
!   _temp_46 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_47 = args		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_46  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_47  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	99,r13		! source line 99
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_45  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_45  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_48
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_49
	.word	8
	.word	4
	.word	_Label_50
	.word	12
	.word	4
	.word	_Label_51
	.word	-12
	.word	4
	.word	_Label_52
	.word	-16
	.word	4
	.word	_Label_53
	.word	-20
	.word	4
	.word	0
_Label_48:
	.ascii	"Sys_Exec\0"
	.align
_Label_49:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_50:
	.byte	'P'
	.ascii	"args\0"
	.align
_Label_51:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_52:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
! 
! ===============  FUNCTION Sys_Open  ===============
! 
_P_UserSystem_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Open,r1
	push	r1
	mov	7,r1
_Label_489:
	push	r0
	sub	r1,1,r1
	bne	_Label_489
	mov	104,r13		! source line 104
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0RE",r10
!   _temp_55 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_55  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=flags  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=mode  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_54  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_54  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Open:
	.word	_sourceFileName
	.word	_Label_56
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_57
	.word	8
	.word	4
	.word	_Label_58
	.word	12
	.word	4
	.word	_Label_59
	.word	16
	.word	4
	.word	_Label_60
	.word	-12
	.word	4
	.word	_Label_61
	.word	-16
	.word	4
	.word	0
_Label_56:
	.ascii	"Sys_Open\0"
	.align
_Label_57:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_58:
	.byte	'I'
	.ascii	"flags\0"
	.align
_Label_59:
	.byte	'I'
	.ascii	"mode\0"
	.align
_Label_60:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_61:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
! 
! ===============  FUNCTION Sys_Read  ===============
! 
_P_UserSystem_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Read,r1
	push	r1
	mov	7,r1
_Label_490:
	push	r0
	sub	r1,1,r1
	bne	_Label_490
	mov	116,r13		! source line 116
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0RE",r10
!   _temp_63 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_63  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	135,r13		! source line 135
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_62  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_62  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Read:
	.word	_sourceFileName
	.word	_Label_64
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_65
	.word	8
	.word	4
	.word	_Label_66
	.word	12
	.word	4
	.word	_Label_67
	.word	16
	.word	4
	.word	_Label_68
	.word	-12
	.word	4
	.word	_Label_69
	.word	-16
	.word	4
	.word	0
_Label_64:
	.ascii	"Sys_Read\0"
	.align
_Label_65:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_66:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_67:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
! 
! ===============  FUNCTION Sys_Write  ===============
! 
_P_UserSystem_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Write,r1
	push	r1
	mov	7,r1
_Label_491:
	push	r0
	sub	r1,1,r1
	bne	_Label_491
	mov	140,r13		! source line 140
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0RE",r10
!   _temp_71 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=12  sizeInBytes=4
	mov	12,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_71  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	160,r13		! source line 160
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_70  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_70  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Write:
	.word	_sourceFileName
	.word	_Label_72
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_73
	.word	8
	.word	4
	.word	_Label_74
	.word	12
	.word	4
	.word	_Label_75
	.word	16
	.word	4
	.word	_Label_76
	.word	-12
	.word	4
	.word	_Label_77
	.word	-16
	.word	4
	.word	0
_Label_72:
	.ascii	"Sys_Write\0"
	.align
_Label_73:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_74:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_75:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
! 
! ===============  FUNCTION Sys_Seek  ===============
! 
_P_UserSystem_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Seek,r1
	push	r1
	mov	6,r1
_Label_492:
	push	r0
	sub	r1,1,r1
	bne	_Label_492
	mov	165,r13		! source line 165
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	186,r13		! source line 186
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_78  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_78  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_79
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_80
	.word	8
	.word	4
	.word	_Label_81
	.word	12
	.word	4
	.word	_Label_82
	.word	-12
	.word	4
	.word	0
_Label_79:
	.ascii	"Sys_Seek\0"
	.align
_Label_80:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_81:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
! 
! ===============  FUNCTION Sys_Close  ===============
! 
_P_UserSystem_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Close,r1
	push	r1
	mov	6,r1
_Label_493:
	push	r0
	sub	r1,1,r1
	bne	_Label_493
	mov	191,r13		! source line 191
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=14  sizeInBytes=4
	mov	14,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
! RETURN STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Close:
	.word	_sourceFileName
	.word	_Label_83
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_84
	.word	8
	.word	4
	.word	_Label_85
	.word	-12
	.word	4
	.word	0
_Label_83:
	.ascii	"Sys_Close\0"
	.align
_Label_84:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_85:
	.byte	'I'
	.ascii	"ignore\0"
	.align
! 
! ===============  FUNCTION Sys_GetPid  ===============
! 
_P_UserSystem_Sys_GetPid:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_GetPid,r1
	push	r1
	mov	6,r1
_Label_494:
	push	r0
	sub	r1,1,r1
	bne	_Label_494
	mov	203,r13		! source line 203
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_86  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_86  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_GetPid:
	.word	_sourceFileName
	.word	_Label_87
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_88
	.word	-12
	.word	4
	.word	0
_Label_87:
	.ascii	"Sys_GetPid\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
! 
! ===============  FUNCTION Sys_GetPPid  ===============
! 
_P_UserSystem_Sys_GetPPid:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_GetPPid,r1
	push	r1
	mov	6,r1
_Label_495:
	push	r0
	sub	r1,1,r1
	bne	_Label_495
	mov	211,r13		! source line 211
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_89  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_89  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_GetPPid:
	.word	_sourceFileName
	.word	_Label_90
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_91
	.word	-12
	.word	4
	.word	0
_Label_90:
	.ascii	"Sys_GetPPid\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
! 
! ===============  FUNCTION Sys_Pipe  ===============
! 
_P_UserSystem_Sys_Pipe:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Pipe,r1
	push	r1
	mov	7,r1
_Label_496:
	push	r0
	sub	r1,1,r1
	bne	_Label_496
	mov	218,r13		! source line 218
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0RE",r10
!   _temp_93 = fds		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=25  sizeInBytes=4
	mov	25,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_93  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_92  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_92  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Pipe:
	.word	_sourceFileName
	.word	_Label_94
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_95
	.word	8
	.word	4
	.word	_Label_96
	.word	-12
	.word	4
	.word	_Label_97
	.word	-16
	.word	4
	.word	0
_Label_94:
	.ascii	"Sys_Pipe\0"
	.align
_Label_95:
	.byte	'P'
	.ascii	"fds\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
! 
! ===============  FUNCTION Sys_Dup  ===============
! 
_P_UserSystem_Sys_Dup:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Dup,r1
	push	r1
	mov	6,r1
_Label_497:
	push	r0
	sub	r1,1,r1
	bne	_Label_497
	mov	225,r13		! source line 225
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=26  sizeInBytes=4
	mov	26,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_98  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_98  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Dup:
	.word	_sourceFileName
	.word	_Label_99
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_100
	.word	8
	.word	4
	.word	_Label_101
	.word	-12
	.word	4
	.word	0
_Label_99:
	.ascii	"Sys_Dup\0"
	.align
_Label_100:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
! 
! ===============  FUNCTION Sys_Stat  ===============
! 
_P_UserSystem_Sys_Stat:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Stat,r1
	push	r1
	mov	8,r1
_Label_498:
	push	r0
	sub	r1,1,r1
	bne	_Label_498
	mov	232,r13		! source line 232
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0RE",r10
!   _temp_103 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_104 = statPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=15  sizeInBytes=4
	mov	15,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_103  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_104  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	233,r13		! source line 233
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_102  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_102  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Stat:
	.word	_sourceFileName
	.word	_Label_105
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_106
	.word	8
	.word	4
	.word	_Label_107
	.word	12
	.word	4
	.word	_Label_108
	.word	-12
	.word	4
	.word	_Label_109
	.word	-16
	.word	4
	.word	_Label_110
	.word	-20
	.word	4
	.word	0
_Label_105:
	.ascii	"Sys_Stat\0"
	.align
_Label_106:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_107:
	.byte	'P'
	.ascii	"statPtr\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
! 
! ===============  FUNCTION Sys_ChMode  ===============
! 
_P_UserSystem_Sys_ChMode:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_ChMode,r1
	push	r1
	mov	7,r1
_Label_499:
	push	r0
	sub	r1,1,r1
	bne	_Label_499
	mov	239,r13		! source line 239
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0RE",r10
!   _temp_112 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=16  sizeInBytes=4
	mov	16,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_112  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=mode  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_111  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_111  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_ChMode:
	.word	_sourceFileName
	.word	_Label_113
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_114
	.word	8
	.word	4
	.word	_Label_115
	.word	12
	.word	4
	.word	_Label_116
	.word	-12
	.word	4
	.word	_Label_117
	.word	-16
	.word	4
	.word	0
_Label_113:
	.ascii	"Sys_ChMode\0"
	.align
_Label_114:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_115:
	.byte	'I'
	.ascii	"mode\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
! 
! ===============  FUNCTION Sys_Link  ===============
! 
_P_UserSystem_Sys_Link:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Link,r1
	push	r1
	mov	8,r1
_Label_500:
	push	r0
	sub	r1,1,r1
	bne	_Label_500
	mov	246,r13		! source line 246
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0RE",r10
!   _temp_119 = oldname		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_120 = newname		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=17  sizeInBytes=4
	mov	17,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_119  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_120  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_118  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_118  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Link:
	.word	_sourceFileName
	.word	_Label_121
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_122
	.word	8
	.word	4
	.word	_Label_123
	.word	12
	.word	4
	.word	_Label_124
	.word	-12
	.word	4
	.word	_Label_125
	.word	-16
	.word	4
	.word	_Label_126
	.word	-20
	.word	4
	.word	0
_Label_121:
	.ascii	"Sys_Link\0"
	.align
_Label_122:
	.byte	'P'
	.ascii	"oldname\0"
	.align
_Label_123:
	.byte	'P'
	.ascii	"newname\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
! 
! ===============  FUNCTION Sys_Unlink  ===============
! 
_P_UserSystem_Sys_Unlink:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Unlink,r1
	push	r1
	mov	7,r1
_Label_501:
	push	r0
	sub	r1,1,r1
	bne	_Label_501
	mov	253,r13		! source line 253
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
!   _temp_128 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=18  sizeInBytes=4
	mov	18,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_128  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_127  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_127  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Unlink:
	.word	_sourceFileName
	.word	_Label_129
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_130
	.word	8
	.word	4
	.word	_Label_131
	.word	-12
	.word	4
	.word	_Label_132
	.word	-16
	.word	4
	.word	0
_Label_129:
	.ascii	"Sys_Unlink\0"
	.align
_Label_130:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
! 
! ===============  FUNCTION Sys_Mkdir  ===============
! 
_P_UserSystem_Sys_Mkdir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Mkdir,r1
	push	r1
	mov	7,r1
_Label_502:
	push	r0
	sub	r1,1,r1
	bne	_Label_502
	mov	259,r13		! source line 259
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0RE",r10
!   _temp_134 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=19  sizeInBytes=4
	mov	19,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_134  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	260,r13		! source line 260
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_133  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_133  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Mkdir:
	.word	_sourceFileName
	.word	_Label_135
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_136
	.word	8
	.word	4
	.word	_Label_137
	.word	-12
	.word	4
	.word	_Label_138
	.word	-16
	.word	4
	.word	0
_Label_135:
	.ascii	"Sys_Mkdir\0"
	.align
_Label_136:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
! 
! ===============  FUNCTION Sys_Rmdir  ===============
! 
_P_UserSystem_Sys_Rmdir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Rmdir,r1
	push	r1
	mov	7,r1
_Label_503:
	push	r0
	sub	r1,1,r1
	bne	_Label_503
	mov	265,r13		! source line 265
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0RE",r10
!   _temp_140 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_140  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_139  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_139  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Rmdir:
	.word	_sourceFileName
	.word	_Label_141
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_142
	.word	8
	.word	4
	.word	_Label_143
	.word	-12
	.word	4
	.word	_Label_144
	.word	-16
	.word	4
	.word	0
_Label_141:
	.ascii	"Sys_Rmdir\0"
	.align
_Label_142:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
! 
! ===============  FUNCTION Sys_Chdir  ===============
! 
_P_UserSystem_Sys_Chdir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Chdir,r1
	push	r1
	mov	7,r1
_Label_504:
	push	r0
	sub	r1,1,r1
	bne	_Label_504
	mov	271,r13		! source line 271
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0RE",r10
!   _temp_146 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=21  sizeInBytes=4
	mov	21,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_146  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_145  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_145  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Chdir:
	.word	_sourceFileName
	.word	_Label_147
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_148
	.word	8
	.word	4
	.word	_Label_149
	.word	-12
	.word	4
	.word	_Label_150
	.word	-16
	.word	4
	.word	0
_Label_147:
	.ascii	"Sys_Chdir\0"
	.align
_Label_148:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
! 
! ===============  FUNCTION Sys_Opendir  ===============
! 
_P_UserSystem_Sys_Opendir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Opendir,r1
	push	r1
	mov	7,r1
_Label_505:
	push	r0
	sub	r1,1,r1
	bne	_Label_505
	mov	277,r13		! source line 277
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0RE",r10
!   _temp_152 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=22  sizeInBytes=4
	mov	22,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_152  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_151  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_151  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Opendir:
	.word	_sourceFileName
	.word	_Label_153
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_154
	.word	8
	.word	4
	.word	_Label_155
	.word	-12
	.word	4
	.word	_Label_156
	.word	-16
	.word	4
	.word	0
_Label_153:
	.ascii	"Sys_Opendir\0"
	.align
_Label_154:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
! 
! ===============  FUNCTION Sys_Readdir  ===============
! 
_P_UserSystem_Sys_Readdir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Readdir,r1
	push	r1
	mov	7,r1
_Label_506:
	push	r0
	sub	r1,1,r1
	bne	_Label_506
	mov	283,r13		! source line 283
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0RE",r10
!   _temp_158 = entPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=23  sizeInBytes=4
	mov	23,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=dfd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_158  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_157  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_157  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Readdir:
	.word	_sourceFileName
	.word	_Label_159
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_160
	.word	8
	.word	4
	.word	_Label_161
	.word	12
	.word	4
	.word	_Label_162
	.word	-12
	.word	4
	.word	_Label_163
	.word	-16
	.word	4
	.word	0
_Label_159:
	.ascii	"Sys_Readdir\0"
	.align
_Label_160:
	.byte	'I'
	.ascii	"dfd\0"
	.align
_Label_161:
	.byte	'P'
	.ascii	"entPtr\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
! 
! ===============  FUNCTION Sys_GetDiskInfo  ===============
! 
_P_UserSystem_Sys_GetDiskInfo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_GetDiskInfo,r1
	push	r1
	mov	7,r1
_Label_507:
	push	r0
	sub	r1,1,r1
	bne	_Label_507
	mov	289,r13		! source line 289
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0RE",r10
!   _temp_165 = diskData		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=24  sizeInBytes=4
	mov	24,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_165  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_164  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_164  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_GetDiskInfo:
	.word	_sourceFileName
	.word	_Label_166
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_167
	.word	8
	.word	4
	.word	_Label_168
	.word	-12
	.word	4
	.word	_Label_169
	.word	-16
	.word	4
	.word	0
_Label_166:
	.ascii	"Sys_GetDiskInfo\0"
	.align
_Label_167:
	.byte	'P'
	.ascii	"diskData\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
! 
! ===============  FUNCTION StrEqual  ===============
! 
_P_UserSystem_StrEqual:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_StrEqual,r1
	push	r1
	mov	9,r1
_Label_508:
	push	r0
	sub	r1,1,r1
	bne	_Label_508
	mov	296,r13		! source line 296
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_172 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_173 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if _temp_172 == _temp_173 then goto _Label_171		(int)
	load	[r14+-40],r1
	load	[r14+-36],r2
	cmp	r1,r2
	be	_Label_171
!	_Label_170	jmp	_Label_170
_Label_170:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_171:
! FOR STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_178 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_180 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_179 = _temp_180 - 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_178  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-44]
_Label_174:
!   Perform the FOR-LOOP termination test
!   if i > _temp_179 then goto _Label_177		
	load	[r14+-44],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_177
_Label_175:
	mov	305,r13		! source line 305
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_184
!     make sure index expr is >= 0
	load	[r14+-44],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: _temp_183 = *_temp_184  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_186
!     make sure index expr is >= 0
	load	[r14+-44],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_185 = *_temp_186  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_187 = _temp_183 XOR _temp_185		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_187 then goto _Label_181 else goto _Label_182
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_182
	jmp	_Label_181
_Label_181:
! THEN...
	mov	307,r13		! source line 307
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_182:
!   Increment the FOR-LOOP index variable and jump back
_Label_176:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_174
! END FOR
_Label_177:
! RETURN STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_StrEqual:
	.word	_sourceFileName
	.word	_Label_188
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_189
	.word	8
	.word	4
	.word	_Label_190
	.word	12
	.word	4
	.word	_Label_191
	.word	-9
	.word	1
	.word	_Label_192
	.word	-16
	.word	4
	.word	_Label_193
	.word	-10
	.word	1
	.word	_Label_194
	.word	-20
	.word	4
	.word	_Label_195
	.word	-11
	.word	1
	.word	_Label_196
	.word	-24
	.word	4
	.word	_Label_197
	.word	-28
	.word	4
	.word	_Label_198
	.word	-32
	.word	4
	.word	_Label_199
	.word	-36
	.word	4
	.word	_Label_200
	.word	-40
	.word	4
	.word	_Label_201
	.word	-44
	.word	4
	.word	0
_Label_188:
	.ascii	"StrEqual\0"
	.align
_Label_189:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_190:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_191:
	.byte	'C'
	.ascii	"_temp_187\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_193:
	.byte	'C'
	.ascii	"_temp_185\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_195:
	.byte	'C'
	.ascii	"_temp_183\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_201:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION StrCopy  ===============
! 
_P_UserSystem_StrCopy:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_StrCopy,r1
	push	r1
	mov	11,r1
_Label_509:
	push	r0
	sub	r1,1,r1
	bne	_Label_509
	mov	315,r13		! source line 315
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_202 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_203 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_202  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_203  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Call the function
	mov	329,r13		! source line 329
	mov	"\0\0CA",r10
	call	_P_UserSystem_Min
!   Retrieve Result: targetName=sz  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! FOR STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_208 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_209 = sz - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_208  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-40]
_Label_204:
!   Perform the FOR-LOOP termination test
!   if i > _temp_209 then goto _Label_207		
	load	[r14+-40],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_207
_Label_205:
	mov	330,r13		! source line 330
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_210
!     make sure index expr is >= 0
	load	[r14+-40],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_212
!     make sure index expr is >= 0
	load	[r14+-40],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_211 = *_temp_212  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_210 = _temp_211  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_206:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_204
! END FOR
_Label_207:
! RETURN STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_StrCopy:
	.word	_sourceFileName
	.word	_Label_213
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_214
	.word	8
	.word	4
	.word	_Label_215
	.word	12
	.word	4
	.word	_Label_216
	.word	-16
	.word	4
	.word	_Label_217
	.word	-9
	.word	1
	.word	_Label_218
	.word	-20
	.word	4
	.word	_Label_219
	.word	-24
	.word	4
	.word	_Label_220
	.word	-28
	.word	4
	.word	_Label_221
	.word	-32
	.word	4
	.word	_Label_222
	.word	-36
	.word	4
	.word	_Label_223
	.word	-40
	.word	4
	.word	_Label_224
	.word	-44
	.word	4
	.word	0
_Label_213:
	.ascii	"StrCopy\0"
	.align
_Label_214:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_215:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_217:
	.byte	'C'
	.ascii	"_temp_211\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_223:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_224:
	.byte	'I'
	.ascii	"sz\0"
	.align
! 
! ===============  FUNCTION StrCmp  ===============
! 
_P_UserSystem_StrCmp:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_StrCmp,r1
	push	r1
	mov	21,r1
_Label_510:
	push	r0
	sub	r1,1,r1
	bne	_Label_510
	mov	337,r13		! source line 337
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! sz
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_225 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_226 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_225  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_226  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CA",r10
	call	_P_UserSystem_Min
!   Retrieve Result: targetName=sz  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! FOR STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_231 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_232 = sz - 1		(int)
	load	[r14+-80],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_231  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_227:
!   Perform the FOR-LOOP termination test
!   if i > _temp_232 then goto _Label_230		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_230
_Label_228:
	mov	348,r13		! source line 348
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_237
!     make sure index expr is >= 0
	load	[r14+-84],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: _temp_236 = *_temp_237  (sizeInBytes=1)
	load	[r14+-56],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   _temp_235 = charToInt (_temp_236)
	loadb	[r14+-12],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-60]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_240
!     make sure index expr is >= 0
	load	[r14+-84],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_239 = *_temp_240  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_238 = charToInt (_temp_239)
	loadb	[r14+-11],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-52]
!   if _temp_235 >= _temp_238 then goto _Label_234		(int)
	load	[r14+-60],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_234
!	_Label_233	jmp	_Label_233
_Label_233:
! THEN...
	mov	350,r13		! source line 350
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_241
_Label_234:
! ELSE...
	mov	351,r13		! source line 351
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_246
!     make sure index expr is >= 0
	load	[r14+-84],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Data Move: _temp_245 = *_temp_246  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_244 = charToInt (_temp_245)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-44]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_249
!     make sure index expr is >= 0
	load	[r14+-84],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_248 = *_temp_249  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_247 = charToInt (_temp_248)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-36]
!   if _temp_244 <= _temp_247 then goto _Label_243		(int)
	load	[r14+-44],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_243
!	_Label_242	jmp	_Label_242
_Label_242:
! THEN...
	mov	352,r13		! source line 352
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_243:
! END IF...
_Label_241:
!   Increment the FOR-LOOP index variable and jump back
_Label_229:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_227
! END FOR
_Label_230:
! IF STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_252 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_253 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_252 >= _temp_253 then goto _Label_251		(int)
	load	[r14+-28],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_251
!	_Label_250	jmp	_Label_250
_Label_250:
! THEN...
	mov	356,r13		! source line 356
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_254
_Label_251:
! ELSE...
	mov	357,r13		! source line 357
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_257 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_258 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if _temp_257 <= _temp_258 then goto _Label_256		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_256
!	_Label_255	jmp	_Label_255
_Label_255:
! THEN...
	mov	358,r13		! source line 358
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_259
_Label_256:
! ELSE...
	mov	360,r13		! source line 360
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_259:
! END IF...
_Label_254:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_StrCmp:
	.word	_sourceFileName
	.word	_Label_260
	.word	8		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_261
	.word	8
	.word	4
	.word	_Label_262
	.word	12
	.word	4
	.word	_Label_263
	.word	-16
	.word	4
	.word	_Label_264
	.word	-20
	.word	4
	.word	_Label_265
	.word	-24
	.word	4
	.word	_Label_266
	.word	-28
	.word	4
	.word	_Label_267
	.word	-32
	.word	4
	.word	_Label_268
	.word	-9
	.word	1
	.word	_Label_269
	.word	-36
	.word	4
	.word	_Label_270
	.word	-40
	.word	4
	.word	_Label_271
	.word	-10
	.word	1
	.word	_Label_272
	.word	-44
	.word	4
	.word	_Label_273
	.word	-48
	.word	4
	.word	_Label_274
	.word	-11
	.word	1
	.word	_Label_275
	.word	-52
	.word	4
	.word	_Label_276
	.word	-56
	.word	4
	.word	_Label_277
	.word	-12
	.word	1
	.word	_Label_278
	.word	-60
	.word	4
	.word	_Label_279
	.word	-64
	.word	4
	.word	_Label_280
	.word	-68
	.word	4
	.word	_Label_281
	.word	-72
	.word	4
	.word	_Label_282
	.word	-76
	.word	4
	.word	_Label_283
	.word	-80
	.word	4
	.word	_Label_284
	.word	-84
	.word	4
	.word	0
_Label_260:
	.ascii	"StrCmp\0"
	.align
_Label_261:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_262:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_268:
	.byte	'C'
	.ascii	"_temp_248\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_271:
	.byte	'C'
	.ascii	"_temp_245\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_274:
	.byte	'C'
	.ascii	"_temp_239\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_277:
	.byte	'C'
	.ascii	"_temp_236\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_283:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_284:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Min  ===============
! 
_P_UserSystem_Min:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Min,r1
	push	r1
	mov	366,r13		! source line 366
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0IF",r10
!   if i >= j then goto _Label_286		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_286
!	_Label_285	jmp	_Label_285
_Label_285:
! THEN...
	mov	368,r13		! source line 368
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+8],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_287
_Label_286:
! ELSE...
	mov	370,r13		! source line 370
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0RE",r10
!   ReturnResult: j  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_287:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Min:
	.word	_sourceFileName
	.word	_Label_288
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_289
	.word	8
	.word	4
	.word	_Label_290
	.word	12
	.word	4
	.word	0
_Label_288:
	.ascii	"Min\0"
	.align
_Label_289:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_290:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  FUNCTION Max  ===============
! 
_P_UserSystem_Max:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Max,r1
	push	r1
	mov	376,r13		! source line 376
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0IF",r10
!   if i <= j then goto _Label_292		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_292
!	_Label_291	jmp	_Label_291
_Label_291:
! THEN...
	mov	378,r13		! source line 378
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+8],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_293
_Label_292:
! ELSE...
	mov	380,r13		! source line 380
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0RE",r10
!   ReturnResult: j  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_293:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Max:
	.word	_sourceFileName
	.word	_Label_294
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_295
	.word	8
	.word	4
	.word	_Label_296
	.word	12
	.word	4
	.word	0
_Label_294:
	.ascii	"Max\0"
	.align
_Label_295:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_296:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  FUNCTION printIntVar  ===============
! 
_P_UserSystem_printIntVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_printIntVar,r1
	push	r1
	mov	2,r1
_Label_511:
	push	r0
	sub	r1,1,r1
	bne	_Label_511
	mov	386,r13		! source line 386
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_297 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_printIntVar:
	.word	_sourceFileName
	.word	_Label_298
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_299
	.word	8
	.word	4
	.word	_Label_300
	.word	12
	.word	4
	.word	_Label_301
	.word	-12
	.word	4
	.word	0
_Label_298:
	.ascii	"printIntVar\0"
	.align
_Label_299:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_300:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
! 
! ===============  FUNCTION printHexVar  ===============
! 
_P_UserSystem_printHexVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_printHexVar,r1
	push	r1
	mov	2,r1
_Label_512:
	push	r0
	sub	r1,1,r1
	bne	_Label_512
	mov	402,r13		! source line 402
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_302 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	412,r13		! source line 412
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! RETURN STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_printHexVar:
	.word	_sourceFileName
	.word	_Label_303
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_304
	.word	8
	.word	4
	.word	_Label_305
	.word	12
	.word	4
	.word	_Label_306
	.word	-12
	.word	4
	.word	0
_Label_303:
	.ascii	"printHexVar\0"
	.align
_Label_304:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_305:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
! 
! ===============  FUNCTION printBoolVar  ===============
! 
_P_UserSystem_printBoolVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_printBoolVar,r1
	push	r1
	mov	2,r1
_Label_513:
	push	r0
	sub	r1,1,r1
	bne	_Label_513
	mov	418,r13		! source line 418
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_307 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=b  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! RETURN STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_printBoolVar:
	.word	_sourceFileName
	.word	_Label_308
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_309
	.word	8
	.word	4
	.word	_Label_310
	.word	12
	.word	1
	.word	_Label_311
	.word	-12
	.word	4
	.word	0
_Label_308:
	.ascii	"printBoolVar\0"
	.align
_Label_309:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_310:
	.byte	'B'
	.ascii	"b\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
! 
! ===============  FUNCTION printCharVar  ===============
! 
_P_UserSystem_printCharVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_printCharVar,r1
	push	r1
	mov	3,r1
_Label_514:
	push	r0
	sub	r1,1,r1
	bne	_Label_514
	mov	434,r13		! source line 434
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_312 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	443,r13		! source line 443
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	444,r13		! source line 444
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_313 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	445,r13		! source line 445
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_printCharVar:
	.word	_sourceFileName
	.word	_Label_314
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_315
	.word	8
	.word	4
	.word	_Label_316
	.word	12
	.word	1
	.word	_Label_317
	.word	-12
	.word	4
	.word	_Label_318
	.word	-16
	.word	4
	.word	0
_Label_314:
	.ascii	"printCharVar\0"
	.align
_Label_315:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_316:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
! 
! ===============  FUNCTION printPtr  ===============
! 
_P_UserSystem_printPtr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_printPtr,r1
	push	r1
	mov	3,r1
_Label_515:
	push	r0
	sub	r1,1,r1
	bne	_Label_515
	mov	450,r13		! source line 450
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	458,r13		! source line 458
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_319 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_320 = p		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	460,r13		! source line 460
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	461,r13		! source line 461
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! RETURN STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_printPtr:
	.word	_sourceFileName
	.word	_Label_321
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_322
	.word	8
	.word	4
	.word	_Label_323
	.word	12
	.word	4
	.word	_Label_324
	.word	-12
	.word	4
	.word	_Label_325
	.word	-16
	.word	4
	.word	0
_Label_321:
	.ascii	"printPtr\0"
	.align
_Label_322:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
! 
! ===============  FUNCTION nl  ===============
! 
_P_UserSystem_nl:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_nl,r1
	push	r1
	mov	1,r1
_Label_516:
	push	r0
	sub	r1,1,r1
	bne	_Label_516
	mov	466,r13		! source line 466
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	467,r13		! source line 467
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_nl:
	.word	_sourceFileName
	.word	_Label_326
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_326:
	.ascii	"nl\0"
	.align
! 
! ===============  FUNCTION printNullTerminatedString  ===============
! 
_function_25_printNullTerminatedString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_25_printNullTerminatedString,r1
	push	r1
	mov	2,r1
_Label_517:
	push	r0
	sub	r1,1,r1
	bne	_Label_517
	mov	472,r13		! source line 472
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0WH",r10
_Label_327:
!	_Label_328	jmp	_Label_328
_Label_328:
	mov	478,r13		! source line 478
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: ch = *p  (sizeInBytes=1)
	load	[r14+8],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! IF STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0IF",r10
!   _temp_332 = ch XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_332 then goto _Label_331 else goto _Label_330
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_330
	jmp	_Label_331
_Label_330:
! THEN...
	mov	481,r13		! source line 481
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_331:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CE",r10
	call	printChar
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   p = p + 1		(int)
	load	[r14+8],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! END WHILE...
	jmp	_Label_327
_Label_329:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_25_printNullTerminatedString:
	.word	_sourceFileName
	.word	_Label_333
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_334
	.word	8
	.word	4
	.word	_Label_335
	.word	-9
	.word	1
	.word	_Label_336
	.word	-10
	.word	1
	.word	0
_Label_333:
	.ascii	"printNullTerminatedString\0"
	.align
_Label_334:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_335:
	.byte	'C'
	.ascii	"_temp_332\0"
	.align
_Label_336:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION MemoryEqual  ===============
! 
_P_UserSystem_MemoryEqual:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_MemoryEqual,r1
	push	r1
	mov	4,r1
_Label_518:
	push	r0
	sub	r1,1,r1
	bne	_Label_518
	mov	490,r13		! source line 490
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_341 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_342 = len - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_341  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-24]
_Label_337:
!   Perform the FOR-LOOP termination test
!   if i > _temp_342 then goto _Label_340		
	load	[r14+-24],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_340
_Label_338:
	mov	495,r13		! source line 495
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_345 = *s1  (sizeInBytes=1)
	load	[r14+8],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_346 = *s2  (sizeInBytes=1)
	load	[r14+12],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_347 = _temp_345 XOR _temp_346		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_347 then goto _Label_343 else goto _Label_344
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_344
	jmp	_Label_343
_Label_343:
! THEN...
	mov	497,r13		! source line 497
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_344:
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   s1 = s1 + 1		(int)
	load	[r14+8],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   s2 = s2 + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_339:
!   i = i + 1
	load	[r14+-24],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
	jmp	_Label_337
! END FOR
_Label_340:
! RETURN STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_MemoryEqual:
	.word	_sourceFileName
	.word	_Label_348
	.word	12		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_349
	.word	8
	.word	4
	.word	_Label_350
	.word	12
	.word	4
	.word	_Label_351
	.word	16
	.word	4
	.word	_Label_352
	.word	-9
	.word	1
	.word	_Label_353
	.word	-10
	.word	1
	.word	_Label_354
	.word	-11
	.word	1
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	_Label_357
	.word	-24
	.word	4
	.word	0
_Label_348:
	.ascii	"MemoryEqual\0"
	.align
_Label_349:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_350:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_351:
	.byte	'I'
	.ascii	"len\0"
	.align
_Label_352:
	.byte	'C'
	.ascii	"_temp_347\0"
	.align
_Label_353:
	.byte	'C'
	.ascii	"_temp_346\0"
	.align
_Label_354:
	.byte	'C'
	.ascii	"_temp_345\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_357:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION KPLSystemInitialize  ===============
! 
_P_UserSystem_KPLSystemInitialize:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLSystemInitialize,r1
	push	r1
	mov	1,r1
_Label_519:
	push	r0
	sub	r1,1,r1
	bne	_Label_519
	mov	528,r13		! source line 528
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! p
!   p = &_Global_memoryArea
	set	_Global_memoryArea,r1
	store	r1,[r14+-12]
! ASSIGNMENT STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = 20000  (sizeInBytes=4)
	mov	20000,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLSystemInitialize:
	.word	_sourceFileName
	.word	_Label_358
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_359
	.word	-12
	.word	4
	.word	0
_Label_358:
	.ascii	"KPLSystemInitialize\0"
	.align
_Label_359:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION KPLMemoryAlloc  ===============
! 
_P_UserSystem_KPLMemoryAlloc:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLMemoryAlloc,r1
	push	r1
	mov	13,r1
_Label_520:
	push	r0
	sub	r1,1,r1
	bne	_Label_520
	mov	538,r13		! source line 538
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0IF",r10
!   if _Global_alreadyInAlloc then goto _Label_360 else goto _Label_361
	set	_Global_alreadyInAlloc,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_361
	jmp	_Label_360
_Label_360:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_362 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CA",r10
	call	_P_UserSystem_KPLSystemError
! END IF...
_Label_361:
! ASSIGNMENT STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0AS",r10
!   _Global_alreadyInAlloc = 1		(1 byte)
	mov	1,r1
	set	_Global_alreadyInAlloc,r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   i = _Global_nextCharToUse		(4 bytes)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0IF",r10
!   if byteCount > 0 then goto _Label_364		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_364
!	_Label_363	jmp	_Label_363
_Label_363:
! THEN...
	mov	563,r13		! source line 563
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_365 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	563,r13		! source line 563
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=byteCount  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	564,r13		! source line 564
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_366 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	565,r13		! source line 565
	mov	"\0\0CA",r10
	call	_P_UserSystem_KPLSystemError
! END IF...
_Label_364:
! ASSIGNMENT STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0AS",r10
!   byteCount = byteCount + 4		(int)
	load	[r14+8],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_369 = byteCount rem 8		(int)
	load	[r14+8],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if _temp_369 <= 0 then goto _Label_368		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_368
!	_Label_367	jmp	_Label_367
_Label_367:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0AS",r10
!   _temp_371 = byteCount div 8		(int)
	load	[r14+8],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   _temp_370 = _temp_371 + 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   byteCount = _temp_370 * 8		(int)
	load	[r14+-32],r1
	mov	8,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! END IF...
_Label_368:
! ASSIGNMENT STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0AS",r10
!   _Global_nextCharToUse = _Global_nextCharToUse + byteCount		(int)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextCharToUse,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0IF",r10
!   if _Global_nextCharToUse <= 20000 then goto _Label_373		(int)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	mov	20000,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_373
!	_Label_372	jmp	_Label_372
_Label_372:
! THEN...
	mov	589,r13		! source line 589
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_374 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CA",r10
	call	_P_UserSystem_KPLSystemError
! END IF...
_Label_373:
! ASSIGNMENT STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0AS",r10
!   _temp_375 = &_Global_memoryArea
	set	_Global_memoryArea,r1
	store	r1,[r14+-20]
!   Move address of _temp_375 [i ] into _temp_376
!     make sure index expr is >= 0
	load	[r14+-52],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   p = _temp_376		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = byteCount  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   _Global_alreadyInAlloc = 0		(1 byte)
	mov	0,r1
	set	_Global_alreadyInAlloc,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0RE",r10
!   _temp_377 = p + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   ReturnResult: _temp_377  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLMemoryAlloc:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-12
	.word	4
	.word	_Label_381
	.word	-16
	.word	4
	.word	_Label_382
	.word	-20
	.word	4
	.word	_Label_383
	.word	-24
	.word	4
	.word	_Label_384
	.word	-28
	.word	4
	.word	_Label_385
	.word	-32
	.word	4
	.word	_Label_386
	.word	-36
	.word	4
	.word	_Label_387
	.word	-40
	.word	4
	.word	_Label_388
	.word	-44
	.word	4
	.word	_Label_389
	.word	-48
	.word	4
	.word	_Label_390
	.word	-52
	.word	4
	.word	_Label_391
	.word	-56
	.word	4
	.word	0
_Label_378:
	.ascii	"KPLMemoryAlloc\0"
	.align
_Label_379:
	.byte	'I'
	.ascii	"byteCount\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_391:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION KPLMemoryFree  ===============
! 
_P_UserSystem_KPLMemoryFree:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLMemoryFree,r1
	push	r1
	mov	602,r13		! source line 602
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLMemoryFree:
	.word	_sourceFileName
	.word	_Label_392
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_393
	.word	8
	.word	4
	.word	0
_Label_392:
	.ascii	"KPLMemoryFree\0"
	.align
_Label_393:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION KPLSystemError  ===============
! 
_P_UserSystem_KPLSystemError:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLSystemError,r1
	push	r1
	mov	2,r1
_Label_521:
	push	r0
	sub	r1,1,r1
	bne	_Label_521
	mov	616,r13		! source line 616
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_394 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=message  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	TerminateWithError
! RETURN STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLSystemError:
	.word	_sourceFileName
	.word	_Label_395
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_396
	.word	8
	.word	4
	.word	_Label_397
	.word	-12
	.word	4
	.word	0
_Label_395:
	.ascii	"KPLSystemError\0"
	.align
_Label_396:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
! 
! ===============  FUNCTION KPLIsKindOf  ===============
! 
_P_UserSystem_KPLIsKindOf:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLIsKindOf,r1
	push	r1
	mov	13,r1
_Label_522:
	push	r0
	sub	r1,1,r1
	bne	_Label_522
	mov	681,r13		! source line 681
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0IF",r10
!   if intIsZero (objPtr) then goto _Label_398
	load	[r14+8],r1
	cmp	r1,r0
	be	_Label_398
	jmp	_Label_399
_Label_398:
! THEN...
	mov	696,r13		! source line 696
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_400 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CA",r10
	call	_P_UserSystem_KPLSystemError
! END IF...
_Label_399:
! ASSIGNMENT STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0AS",r10
!   if intIsZero (objPtr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_401 = objPtr + 0
	load	[r14+8],r1
	add	r1,0,r1
	store	r1,[r14+-40]
!   Data Move: dispTable = *_temp_401  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0IF",r10
!   if intIsZero (dispTable) then goto _Label_402
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_402
	jmp	_Label_403
_Label_402:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_403:
! ASSIGNMENT STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0AS",r10
!   if intIsZero (dispTable) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_404 = dispTable + 0
	load	[r14+-48],r1
	add	r1,0,r1
	store	r1,[r14+-36]
!   Data Move: classDesc = *_temp_404  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0IF",r10
!   if intIsZero (classDesc) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_408 = classDesc + 0
	load	[r14+-52],r1
	add	r1,0,r1
	store	r1,[r14+-28]
!   Data Move: _temp_407 = *_temp_408  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_407 == 1129070931 then goto _Label_406		(int)
	load	[r14+-32],r1
	set	1129070931,r2
	cmp	r1,r2
	be	_Label_406
!	_Label_405	jmp	_Label_405
_Label_405:
! THEN...
	mov	709,r13		! source line 709
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_409 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CA",r10
	call	_P_UserSystem_KPLSystemError
! END IF...
_Label_406:
! ASSIGNMENT STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0AS",r10
!   if intIsZero (classDesc) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_410 = classDesc + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   next = _temp_410		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-56]
! WHILE STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0WH",r10
_Label_411:
!	_Label_412	jmp	_Label_412
_Label_412:
	mov	714,r13		! source line 714
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0IF",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_416 = *next  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_416) then goto _Label_414
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_414
	jmp	_Label_415
_Label_414:
! THEN...
	mov	716,r13		! source line 716
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_417
_Label_415:
! ELSE...
	mov	717,r13		! source line 717
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0IF",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_420 = *next  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   if _temp_420 != typeDesc then goto _Label_419		(int)
	load	[r14+-12],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_419
!	_Label_418	jmp	_Label_418
_Label_418:
! THEN...
	mov	718,r13		! source line 718
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_419:
! END IF...
_Label_417:
! ASSIGNMENT STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0AS",r10
!   next = next + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! END WHILE...
	jmp	_Label_411
_Label_413:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLIsKindOf:
	.word	_sourceFileName
	.word	_Label_421
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_422
	.word	8
	.word	4
	.word	_Label_423
	.word	12
	.word	4
	.word	_Label_424
	.word	-12
	.word	4
	.word	_Label_425
	.word	-16
	.word	4
	.word	_Label_426
	.word	-20
	.word	4
	.word	_Label_427
	.word	-24
	.word	4
	.word	_Label_428
	.word	-28
	.word	4
	.word	_Label_429
	.word	-32
	.word	4
	.word	_Label_430
	.word	-36
	.word	4
	.word	_Label_431
	.word	-40
	.word	4
	.word	_Label_432
	.word	-44
	.word	4
	.word	_Label_433
	.word	-48
	.word	4
	.word	_Label_434
	.word	-52
	.word	4
	.word	_Label_435
	.word	-56
	.word	4
	.word	0
_Label_421:
	.ascii	"KPLIsKindOf\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"objPtr\0"
	.align
_Label_423:
	.byte	'P'
	.ascii	"typeDesc\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_433:
	.byte	'P'
	.ascii	"dispTable\0"
	.align
_Label_434:
	.byte	'P'
	.ascii	"classDesc\0"
	.align
_Label_435:
	.byte	'P'
	.ascii	"next\0"
	.align
! 
! ===============  FUNCTION KPLUncaughtThrow  ===============
! 
_P_UserSystem_KPLUncaughtThrow:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLUncaughtThrow,r1
	push	r1
	mov	10,r1
_Label_523:
	push	r0
	sub	r1,1,r1
	bne	_Label_523
	mov	726,r13		! source line 726
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_436 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_437 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   _temp_438 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   if intIsZero (rPtr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: charPtr = *rPtr  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=charPtr  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   _temp_439 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=line  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   _temp_440 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   rPtr = rPtr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0AS",r10
!   if intIsZero (rPtr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: charPtr = *rPtr  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=charPtr  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CA",r10
	call	_function_24_printCatchStack
! CALL STATEMENT...
!   _temp_441 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CE",r10
	call	print
! THROW STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0TH",r10
!   Prepare Argument: offset=8  value=errorID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=line  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=rPtr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Throw 'UncaughtThrowError'...
	set	_Error_P_UserSystem_UncaughtThrowError,r4
	jmp	_PerformThrow
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLUncaughtThrow:
	.word	_sourceFileName
	.word	_Label_442
	.word	12		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_443
	.word	8
	.word	4
	.word	_Label_444
	.word	12
	.word	4
	.word	_Label_445
	.word	16
	.word	4
	.word	_Label_446
	.word	-12
	.word	4
	.word	_Label_447
	.word	-16
	.word	4
	.word	_Label_448
	.word	-20
	.word	4
	.word	_Label_449
	.word	-24
	.word	4
	.word	_Label_450
	.word	-28
	.word	4
	.word	_Label_451
	.word	-32
	.word	4
	.word	_Label_452
	.word	-36
	.word	4
	.word	0
_Label_442:
	.ascii	"KPLUncaughtThrow\0"
	.align
_Label_443:
	.byte	'P'
	.ascii	"errorID\0"
	.align
_Label_444:
	.byte	'I'
	.ascii	"line\0"
	.align
_Label_445:
	.byte	'I'
	.ascii	"rPtr\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_452:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION printCatchStack  ===============
! 
_function_24_printCatchStack:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_24_printCatchStack,r1
	push	r1
	mov	13,r1
_Label_524:
	push	r0
	sub	r1,1,r1
	bne	_Label_524
	mov	759,r13		! source line 759
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! p
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	getCatchStack
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_453 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! WHILE STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0WH",r10
_Label_454:
!   if p == 0 then goto _Label_456		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_456
!	_Label_455	jmp	_Label_455
_Label_455:
	mov	774,r13		! source line 774
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_457 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_459 = p + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_458 = *_temp_459  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   _temp_460 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_462 = p + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Data Move: _temp_461 = *_temp_462  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_461  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_463 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_463  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_465 = p + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_464 = *_temp_465  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_464  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! ASSIGNMENT STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_466 = p + 0
	load	[r14+-56],r1
	add	r1,0,r1
	store	r1,[r14+-12]
!   Data Move: p = *_temp_466  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-56]
! END WHILE...
	jmp	_Label_454
_Label_456:
! RETURN STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_24_printCatchStack:
	.word	_sourceFileName
	.word	_Label_467
	.word	0		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_468
	.word	-12
	.word	4
	.word	_Label_469
	.word	-16
	.word	4
	.word	_Label_470
	.word	-20
	.word	4
	.word	_Label_471
	.word	-24
	.word	4
	.word	_Label_472
	.word	-28
	.word	4
	.word	_Label_473
	.word	-32
	.word	4
	.word	_Label_474
	.word	-36
	.word	4
	.word	_Label_475
	.word	-40
	.word	4
	.word	_Label_476
	.word	-44
	.word	4
	.word	_Label_477
	.word	-48
	.word	4
	.word	_Label_478
	.word	-52
	.word	4
	.word	_Label_479
	.word	-56
	.word	4
	.word	0
_Label_467:
	.ascii	"printCatchStack\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_479:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  CLASS Object  ===============
! 
! Dispatch Table:
! 
_P_UserSystem_Object:
	.word	_Label_480
	.word	0
! 
! Class descriptor:
! 
_Label_480:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_481
	.word	_sourceFileName
	.word	115		! line number
	.word	4		! size of instances, in bytes
	.word	_P_UserSystem_Object
	.word	0
_Label_481:
	.ascii	"Object\0"
	.align
