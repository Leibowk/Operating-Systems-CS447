! Name of package being compiled: TestProgram3a
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
	.import	_Error_P_UserSystem_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	_P_Syscall_entSize
	.import	_P_UserSystem_Sys_Exit
	.import	_P_UserSystem_Sys_Shutdown
	.import	_P_UserSystem_Sys_GetError
	.import	_P_UserSystem_Sys_Yield
	.import	_P_UserSystem_Sys_Fork
	.import	_P_UserSystem_Sys_Join
	.import	_P_UserSystem_Sys_Exec
	.import	_P_UserSystem_Sys_Open
	.import	_P_UserSystem_Sys_Read
	.import	_P_UserSystem_Sys_Write
	.import	_P_UserSystem_Sys_Seek
	.import	_P_UserSystem_Sys_Close
	.import	_P_UserSystem_Sys_GetPid
	.import	_P_UserSystem_Sys_GetPPid
	.import	_P_UserSystem_Sys_Dup
	.import	_P_UserSystem_Sys_Pipe
	.import	_P_UserSystem_Sys_Stat
	.import	_P_UserSystem_Sys_ChMode
	.import	_P_UserSystem_Sys_Link
	.import	_P_UserSystem_Sys_Unlink
	.import	_P_UserSystem_Sys_Mkdir
	.import	_P_UserSystem_Sys_Rmdir
	.import	_P_UserSystem_Sys_Chdir
	.import	_P_UserSystem_Sys_Opendir
	.import	_P_UserSystem_Sys_Readdir
	.import	_P_UserSystem_Sys_GetDiskInfo
	.import	DoSyscall
	.import	TerminateWithError
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	printDouble
	.import	_P_UserSystem_StrEqual
	.import	_P_UserSystem_StrCopy
	.import	_P_UserSystem_StrCmp
	.import	_P_UserSystem_Min
	.import	_P_UserSystem_Max
	.import	_P_UserSystem_printIntVar
	.import	_P_UserSystem_printHexVar
	.import	_P_UserSystem_printBoolVar
	.import	_P_UserSystem_printCharVar
	.import	_P_UserSystem_printPtr
	.import	_P_UserSystem_nl
	.import	_P_UserSystem_MemoryEqual
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_UserSystem_KPLSystemInitialize
	.import	_P_UserSystem_KPLMemoryAlloc
	.import	_P_UserSystem_KPLMemoryFree
	.import	_P_UserSystem_KPLUncaughtThrow
	.import	_P_UserSystem_KPLIsKindOf
	.import	_P_UserSystem_KPLSystemError
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_UserSystem_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_UserSystem_cmdArgs
! Global variables in this package
	.data
	.align
! String constants
_StringConst_12:
	.word	39			! length
	.ascii	"Parent process spawned child with pid: "
	.align
_StringConst_11:
	.word	41			! length
	.ascii	"Success! args are the same in the child!\n"
	.align
_StringConst_10:
	.word	17			! length
	.ascii	"Parent\'s pid is: "
	.align
_StringConst_9:
	.word	24			! length
	.ascii	"Child\'s pid in child is "
	.align
_StringConst_8:
	.word	47			! length
	.ascii	"Failure, mismatching pid\'s from getpid/getppid\n"
	.align
_StringConst_7:
	.word	25			! length
	.ascii	"  Args differ in child!\n\n"
	.align
_StringConst_6:
	.word	33			! length
	.ascii	"Failed Fork with Arguments test!\n"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"Sys_Fork failed ... test failed\n"
	.align
_StringConst_4:
	.word	18			! length
	.ascii	"Last argument is: "
	.align
_StringConst_3:
	.word	37			! length
	.ascii	"Number of command line arguments is: "
	.align
_StringConst_2:
	.word	45			! length
	.ascii	"!!!!  Args test error: pid should be 1.  !!!!"
	.align
_StringConst_1:
	.word	37			! length
	.ascii	"\nTestProgram3a is now running as pid "
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xf456e672,r3		! .  hashVal = -195631502
	call	_CheckVersion_P_TestProgram3a_	! .
	cmp	r1,0			! .
	be	_Label_13		! .
	ret				! .
_Label_13:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"TestProgram3a.k\0"
_packageName:
	.ascii	"TestProgram3a\0"
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
_CheckVersion_P_TestProgram3a_:
	.export	_CheckVersion_P_TestProgram3a_
	set	0xf456e672,r4		! myHashVal = -195631502
	cmp	r3,r4
	be	_Label_14
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
_Label_14:
	mov	0,r1
! Make sure _P_Syscall_ has hash value 0x432b40fa (decimal 1126908154)
	set	_packageName,r2
	set	0x432b40fa,r3
	call	_CheckVersion_P_Syscall_
	.import	_CheckVersion_P_Syscall_
	cmp	r1,0
	bne	_Label_15
! Make sure _P_UserSystem_ has hash value 0x339c138e (decimal 865866638)
	set	_packageName,r2
	set	0x339c138e,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_15
_Label_15:
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
	mov	28,r1
_Label_79:
	push	r0
	sub	r1,1,r1
	bne	_Label_79
	mov	11,r13		! source line 11
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   if intIsZero (_P_UserSystem_cmdArgs) then goto _runtimeErrorNullPointer
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: argc = *_P_UserSystem_cmdArgs  (sizeInBytes=4)
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	load	[r1],r1
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   Call the function
	mov	19,r13		! source line 19
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetPid
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! CALL STATEMENT...
!   _temp_16 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_16  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=pid  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	21,r13		! source line 21
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! IF STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0IF",r10
!   if pid == 1 then goto _Label_18		(int)
	load	[r14+-104],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_18
!	_Label_17	jmp	_Label_17
_Label_17:
! THEN...
	mov	23,r13		! source line 23
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_19 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_19  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	23,r13		! source line 23
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	23,r13		! source line 23
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! END IF...
_Label_18:
! CALL STATEMENT...
!   _temp_20 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_20  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=argc  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Call the function
	mov	25,r13		! source line 25
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   if intIsZero (_P_UserSystem_cmdArgs) then goto _runtimeErrorNullPointer
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_21 = argc - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Move address of _P_UserSystem_cmdArgs [_temp_21 ] into _temp_22
!     make sure index expr is >= 0
	load	[r14+-80],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   Data Move: lastArg = *_temp_22  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-112]
! CALL STATEMENT...
!   _temp_23 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_23  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=lastArg  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! ASSIGNMENT STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0AS",r10
!   Call the function
	mov	29,r13		! source line 29
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_25		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_25
!	_Label_24	jmp	_Label_24
_Label_24:
! THEN...
	mov	32,r13		! source line 32
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_26 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_26  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	32,r13		! source line 32
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_27
_Label_25:
! ELSE...
	mov	34,r13		! source line 34
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0IF",r10
!   if intIsZero (ret) then goto _Label_28
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_28
	jmp	_Label_29
_Label_28:
! THEN...
	mov	36,r13		! source line 36
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0IF",r10
!   if intIsZero (_P_UserSystem_cmdArgs) then goto _runtimeErrorNullPointer
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_33 = *_P_UserSystem_cmdArgs  (sizeInBytes=4)
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if argc == _temp_33 then goto _Label_32		(int)
	load	[r14+-108],r1
	load	[r14+-64],r2
	cmp	r1,r2
	be	_Label_32
	jmp	_Label_30
_Label_32:
!   if intIsZero (_P_UserSystem_cmdArgs) then goto _runtimeErrorNullPointer
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_35 = argc - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   Move address of _P_UserSystem_cmdArgs [_temp_35 ] into _temp_36
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_34 = *_temp_36  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if lastArg == _temp_34 then goto _Label_31		(int)
	load	[r14+-112],r1
	load	[r14+-60],r2
	cmp	r1,r2
	be	_Label_31
!	_Label_30	jmp	_Label_30
_Label_30:
! THEN...
	mov	38,r13		! source line 38
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_37 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_37  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	38,r13		! source line 38
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_38 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_38  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	39,r13		! source line 39
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_39
_Label_31:
! ELSE...
	mov	41,r13		! source line 41
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0IF",r10
!   Call the function
	mov	41,r13		! source line 41
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetPPid
!   Retrieve Result: targetName=_temp_42  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if pid == _temp_42 then goto _Label_41		(int)
	load	[r14+-104],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_41
!	_Label_40	jmp	_Label_40
_Label_40:
! THEN...
	mov	42,r13		! source line 42
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_43 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_43  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	42,r13		! source line 42
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_44
_Label_41:
! ELSE...
	mov	44,r13		! source line 44
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_45 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-32]
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetPid
!   Retrieve Result: targetName=_temp_46  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_45  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_46  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_47 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-24]
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetPPid
!   Retrieve Result: targetName=_temp_48  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_47  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_48  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_44:
! CALL STATEMENT...
!   _temp_49 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_49  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_39:
	jmp	_Label_50
_Label_29:
! ELSE...
	mov	50,r13		! source line 50
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=ret  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	50,r13		! source line 50
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=err  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   _temp_51 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_51  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=ret  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Call the function
	mov	51,r13		! source line 51
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	52,r13		! source line 52
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_50:
! END IF...
_Label_27:
! RETURN STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_52
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_53
	.word	-12
	.word	4
	.word	_Label_54
	.word	-16
	.word	4
	.word	_Label_55
	.word	-20
	.word	4
	.word	_Label_56
	.word	-24
	.word	4
	.word	_Label_57
	.word	-28
	.word	4
	.word	_Label_58
	.word	-32
	.word	4
	.word	_Label_59
	.word	-36
	.word	4
	.word	_Label_60
	.word	-40
	.word	4
	.word	_Label_61
	.word	-44
	.word	4
	.word	_Label_62
	.word	-48
	.word	4
	.word	_Label_63
	.word	-52
	.word	4
	.word	_Label_64
	.word	-56
	.word	4
	.word	_Label_65
	.word	-60
	.word	4
	.word	_Label_66
	.word	-64
	.word	4
	.word	_Label_67
	.word	-68
	.word	4
	.word	_Label_68
	.word	-72
	.word	4
	.word	_Label_69
	.word	-76
	.word	4
	.word	_Label_70
	.word	-80
	.word	4
	.word	_Label_71
	.word	-84
	.word	4
	.word	_Label_72
	.word	-88
	.word	4
	.word	_Label_73
	.word	-92
	.word	4
	.word	_Label_74
	.word	-96
	.word	4
	.word	_Label_75
	.word	-100
	.word	4
	.word	_Label_76
	.word	-104
	.word	4
	.word	_Label_77
	.word	-108
	.word	4
	.word	_Label_78
	.word	-112
	.word	4
	.word	0
_Label_52:
	.ascii	"main\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_56:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_57:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_58:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_59:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_60:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_61:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_62:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_63:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_64:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_22\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_21\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_20\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_19\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_74:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_75:
	.byte	'I'
	.ascii	"err\0"
	.align
_Label_76:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_77:
	.byte	'I'
	.ascii	"argc\0"
	.align
_Label_78:
	.byte	'P'
	.ascii	"lastArg\0"
	.align
