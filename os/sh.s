! Name of package being compiled: sh
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
	.import	_P_Environ_getEnv
	.import	_P_Environ_setEnv
	.import	_P_Environ_unsetEnv
	.import	_P_UserLib_ReadLine
	.import	_P_UserLib_dReadLine
	.import	_P_UserLib_GetChar
	.import	_P_UserLib_dGetChar
	.import	_P_UserLib_PutChar
	.import	_P_UserLib_dPutChar
	.import	_P_UserLib_Print
	.import	_P_UserLib_dPrint
	.import	_P_UserLib_PrintInt
	.import	_P_UserLib_dPrintInt
	.import	_P_UserLib_StringToInt
	.import	_P_UserLib_IntToString
	.import	_P_UserLib_ErrorString
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_UserSystem_Object
! The following class and its methods are from this package
	.export	_P_sh_stmtList
	.export	_Method_P_sh_stmtList_1
	.export	_Method_P_sh_stmtList_2
	.export	_Method_P_sh_stmtList_3
	.export	_Method_P_sh_stmtList_4
	.export	_Method_P_sh_stmtList_5
	.export	_Method_P_sh_stmtList_6
	.export	_Method_P_sh_stmtList_7
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_UserSystem_cmdArgs
	.import	_P_Environ_env
	.import	_P_Environ_numEnv
! Global variables in this package
	.data
_Global_commandLine:
	.skip	516
_Global_sList:
	.skip	134160
_Global_args:
	.skip	25804
_Global_argc:
	.skip	4
_Global_argv:
	.skip	204
_Global_exitVal:
	.skip	4
_Global_argOne:
	.skip	4
_Global_scrFd:
	.skip	4
_Global_doPrompt:
	.skip	1
	.align
! String constants
_StringConst_68:
	.word	2			! length
	.ascii	"\'\n"
	.align
_StringConst_67:
	.word	3			! length
	.ascii	"} \'"
	.align
_StringConst_66:
	.word	1			! length
	.ascii	","
	.align
_StringConst_65:
	.word	3			! length
	.ascii	"].{"
	.align
_StringConst_64:
	.word	3			! length
	.ascii	"SL["
	.align
_StringConst_63:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_62:
	.word	7			! length
	.ascii	" nused="
	.align
_StringConst_61:
	.word	14			! length
	.ascii	"Stmts: nalloc="
	.align
_StringConst_60:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_59:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_58:
	.word	4			! length
	.ascii	"sh: "
	.align
_StringConst_57:
	.word	5			! length
	.ascii	"/bin/"
	.align
_StringConst_56:
	.word	26			! length
	.ascii	"read built-in: read error\n"
	.align
_StringConst_55:
	.word	20			! length
	.ascii	"Usage: read VARNAME\n"
	.align
_StringConst_54:
	.word	4			! length
	.ascii	"read"
	.align
_StringConst_53:
	.word	5			! length
	.ascii	"false"
	.align
_StringConst_52:
	.word	4			! length
	.ascii	"true"
	.align
_StringConst_51:
	.word	18			! length
	.ascii	"Usage: unset name\n"
	.align
_StringConst_50:
	.word	5			! length
	.ascii	"unset"
	.align
_StringConst_49:
	.word	11			! length
	.ascii	": not set.\n"
	.align
_StringConst_48:
	.word	7			! length
	.ascii	"argv[1]"
	.align
_StringConst_47:
	.word	22			! length
	.ascii	"Usage: set name value\n"
	.align
_StringConst_46:
	.word	3			! length
	.ascii	"set"
	.align
_StringConst_45:
	.word	24			! length
	.ascii	"cd: too many arguments.\n"
	.align
_StringConst_44:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_43:
	.word	4			! length
	.ascii	"cd: "
	.align
_StringConst_42:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_41:
	.word	4			! length
	.ascii	"cd: "
	.align
_StringConst_40:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_39:
	.word	2			! length
	.ascii	"cd"
	.align
_StringConst_38:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_37:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_36:
	.word	2			! length
	.ascii	"-n"
	.align
_StringConst_35:
	.word	4			! length
	.ascii	"echo"
	.align
_StringConst_34:
	.word	27			! length
	.ascii	"[Shell process terminated]\n"
	.align
_StringConst_33:
	.word	4			! length
	.ascii	"exit"
	.align
_StringConst_32:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_31:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_30:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_29:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_28:
	.word	26			! length
	.ascii	"sh: Command line problems\n"
	.align
_StringConst_27:
	.word	31			! length
	.ascii	"sh: Missing name for redirect.\n"
	.align
_StringConst_26:
	.word	31			! length
	.ascii	"sh: Missing name for redirect.\n"
	.align
_StringConst_25:
	.word	32			! length
	.ascii	"Too many command line arguments\n"
	.align
_StringConst_24:
	.word	15			! length
	.ascii	"No Pipes left!\n"
	.align
_StringConst_23:
	.word	23			! length
	.ascii	"sh: expansion too long\n"
	.align
_StringConst_22:
	.word	20			! length
	.ascii	"Expansion too long.\n"
	.align
_StringConst_21:
	.word	14			! length
	.ascii	"sh: Missing )\n"
	.align
_StringConst_20:
	.word	27			! length
	.ascii	"sh: Variable name too long\n"
	.align
_StringConst_19:
	.word	14			! length
	.ascii	"sh: Missing }\n"
	.align
_StringConst_18:
	.word	17			! length
	.ascii	"sh: mismatched \"\n"
	.align
_StringConst_17:
	.word	30			! length
	.ascii	"Syntax Error: mis-placed else\n"
	.align
_StringConst_16:
	.word	32			! length
	.ascii	"EOF inside a statement, aborted\n"
	.align
_StringConst_15:
	.word	34			! length
	.ascii	"Input problems. Statement aborted\n"
	.align
_StringConst_14:
	.word	2			! length
	.ascii	"> "
	.align
_StringConst_13:
	.word	5			! length
	.ascii	"while"
	.align
_StringConst_12:
	.word	4			! length
	.ascii	"else"
	.align
_StringConst_11:
	.word	3			! length
	.ascii	"end"
	.align
_StringConst_10:
	.word	2			! length
	.ascii	"if"
	.align
_StringConst_9:
	.word	45			! length
	.ascii	"Syntax Error: else/end outside of statement.\n"
	.align
_StringConst_8:
	.word	42			! length
	.ascii	"Please use \'exit\' to terminate the shell.\n"
	.align
_StringConst_7:
	.word	2			! length
	.ascii	"% "
	.align
_StringConst_6:
	.word	51			! length
	.ascii	"  Type \'more help\' or \'more < help\' for more info.\n"
	.align
_StringConst_5:
	.word	28			! length
	.ascii	"  Type \'exit\' to terminate.\n"
	.align
_StringConst_4:
	.word	36			! length
	.ascii	"Welcome to the BLITZ Shell Program.\n"
	.align
_StringConst_3:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_2:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_1:
	.word	4			! length
	.ascii	"sh: "
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xe2e2246f,r3		! .  hashVal = -488496017
	call	_CheckVersion_P_sh_	! .
	cmp	r1,0			! .
	be	_Label_82		! .
	ret				! .
_Label_82:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"sh.k\0"
_packageName:
	.ascii	"sh\0"
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
_CheckVersion_P_sh_:
	.export	_CheckVersion_P_sh_
	set	0xe2e2246f,r4		! myHashVal = -488496017
	cmp	r3,r4
	be	_Label_83
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
_Label_83:
	mov	0,r1
! Make sure _P_Syscall_ has hash value 0x432b40fa (decimal 1126908154)
	set	_packageName,r2
	set	0x432b40fa,r3
	call	_CheckVersion_P_Syscall_
	.import	_CheckVersion_P_Syscall_
	cmp	r1,0
	bne	_Label_84
! Make sure _P_UserSystem_ has hash value 0x339c138e (decimal 865866638)
	set	_packageName,r2
	set	0x339c138e,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_84
! Make sure _P_Environ_ has hash value 0xc10def32 (decimal -1056051406)
	set	_packageName,r2
	set	0xc10def32,r3
	call	_CheckVersion_P_Environ_
	.import	_CheckVersion_P_Environ_
	cmp	r1,0
	bne	_Label_84
! Make sure _P_UserLib_ has hash value 0x192dcb0a (decimal 422431498)
	set	_packageName,r2
	set	0x192dcb0a,r3
	call	_CheckVersion_P_UserLib_
	.import	_CheckVersion_P_UserLib_
	cmp	r1,0
	bne	_Label_84
_Label_84:
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
	mov	6939,r1
_Label_1953:
	push	r0
	sub	r1,1,r1
	bne	_Label_1953
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   _temp_85 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-27736]
!   NEW ARRAY Constructor...
!   _temp_87 = &_temp_86
	add	r14,-27732,r1
	store	r1,[r14+-27216]
!   _temp_87 = _temp_87 + 4
	load	[r14+-27216],r1
	add	r1,4,r1
	store	r1,[r14+-27216]
!   Next value...
	mov	512,r1
	store	r1,[r14+-27212]
_Label_89:
!   Data Move: *_temp_87 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-27216],r2
	storeb	r1,[r2]
!   _temp_87 = _temp_87 + 1
	load	[r14+-27216],r1
	add	r1,1,r1
	store	r1,[r14+-27216]
!   _temp_88 = _temp_88 + -1
	load	[r14+-27212],r1
	add	r1,-1,r1
	store	r1,[r14+-27212]
!   if intNotZero (_temp_88) then goto _Label_89
	load	[r14+-27212],r1
	cmp	r1,r0
	bne	_Label_89
!   Initialize the array size...
	mov	512,r1
	store	r1,[r14+-27732]
!   _temp_90 = &_temp_86
	add	r14,-27732,r1
	store	r1,[r14+-27208]
!   make sure array has size 512
	load	[r14+-27736],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,0
	be	_Label_1954
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1954:
!   make sure array has size 512
	load	[r14+-27208],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_85 = *_temp_90  (sizeInBytes=516)
	load	[r14+-27208],r5
	load	[r14+-27736],r4
	mov	129,r3
_Label_1955:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1955
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_sList = zeros  (sizeInBytes=134160)
	set	_Global_sList,r4
	set	0x00008304,r3			! decimal = 33540
_Label_1956:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1956
!   _Global_sList = _P_sh_stmtList
	set	_P_sh_stmtList,r1
	set	_Global_sList,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   _temp_92 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-27200]
!   Send message Init
	load	[r14+-27200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _temp_93 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-27196]
!   NEW ARRAY Constructor...
!   _temp_95 = &_temp_94
	add	r14,-27192,r1
	store	r1,[r14+-26988]
!   _temp_95 = _temp_95 + 4
	load	[r14+-26988],r1
	add	r1,4,r1
	store	r1,[r14+-26988]
!   Next value...
	mov	50,r1
	store	r1,[r14+-26984]
_Label_97:
!   Data Move: *_temp_95 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-26988],r2
	store	r1,[r2]
!   _temp_95 = _temp_95 + 4
	load	[r14+-26988],r1
	add	r1,4,r1
	store	r1,[r14+-26988]
!   _temp_96 = _temp_96 + -1
	load	[r14+-26984],r1
	add	r1,-1,r1
	store	r1,[r14+-26984]
!   if intNotZero (_temp_96) then goto _Label_97
	load	[r14+-26984],r1
	cmp	r1,r0
	bne	_Label_97
!   Initialize the array size...
	mov	50,r1
	store	r1,[r14+-27192]
!   _temp_98 = &_temp_94
	add	r14,-27192,r1
	store	r1,[r14+-26980]
!   make sure array has size 50
	load	[r14+-27196],r1
	load	[r1],r1
	set	50, r2
	cmp	r1,0
	be	_Label_1957
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1957:
!   make sure array has size 50
	load	[r14+-26980],r1
	load	[r1],r1
	set	50, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_93 = *_temp_98  (sizeInBytes=204)
	load	[r14+-26980],r5
	load	[r14+-27196],r4
	mov	51,r3
_Label_1958:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1958
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   _temp_99 = &_Global_args
	set	_Global_args,r1
	store	r1,[r14+-26976]
!   NEW ARRAY Constructor...
!   _temp_101 = &_temp_100
	add	r14,-26972,r1
	store	r1,[r14+-1168]
!   _temp_101 = _temp_101 + 4
	load	[r14+-1168],r1
	add	r1,4,r1
	store	r1,[r14+-1168]
!   Next value...
!   _temp_103 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-1160]
!   make sure array has size 512
	load	[r14+-1160],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: _temp_104 = *_temp_103  (sizeInBytes=516)
	load	[r14+-1160],r5
	add	r14,-1156,r4
	mov	129,r3
_Label_1959:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1959
	mov	50,r1
	store	r1,[r14+-1164]
_Label_105:
!   Data Move: *_temp_101 = _temp_104  (sizeInBytes=516)
	add	r14,-1156,r5
	load	[r14+-1168],r4
	mov	129,r3
_Label_1960:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1960
!   _temp_101 = _temp_101 + 516
	load	[r14+-1168],r1
	add	r1,516,r1
	store	r1,[r14+-1168]
!   _temp_102 = _temp_102 + -1
	load	[r14+-1164],r1
	add	r1,-1,r1
	store	r1,[r14+-1164]
!   if intNotZero (_temp_102) then goto _Label_105
	load	[r14+-1164],r1
	cmp	r1,r0
	bne	_Label_105
!   Initialize the array size...
	mov	50,r1
	store	r1,[r14+-26972]
!   _temp_106 = &_temp_100
	add	r14,-26972,r1
	store	r1,[r14+-640]
!   make sure array has size 50
	load	[r14+-26976],r1
	load	[r1],r1
	set	50, r2
	cmp	r1,0
	be	_Label_1961
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1961:
!   make sure array has size 50
	load	[r14+-640],r1
	load	[r1],r1
	set	50, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_99 = *_temp_106  (sizeInBytes=25804)
	load	[r14+-640],r5
	load	[r14+-26976],r4
	mov	6451,r3
_Label_1962:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1962
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   _P_Environ_numEnv = 0		(4 bytes)
	mov	0,r1
	set	_P_Environ_numEnv,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   _Global_exitVal = 0		(4 bytes)
	mov	0,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0AS",r10
!   _Global_doPrompt = 1		(1 byte)
	mov	1,r1
	set	_Global_doPrompt,r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0AS",r10
!   _Global_scrFd = 0		(4 bytes)
	mov	0,r1
	set	_Global_scrFd,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0IF",r10
!   if intIsZero (_P_UserSystem_cmdArgs) then goto _Label_108
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	cmp	r1,r0
	be	_Label_108
!	_Label_107	jmp	_Label_107
_Label_107:
! THEN...
	mov	84,r13		! source line 84
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0AS",r10
!   if intIsZero (_P_UserSystem_cmdArgs) then goto _runtimeErrorNullPointer
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_112 = *_P_UserSystem_cmdArgs  (sizeInBytes=4)
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	load	[r1],r1
	store	r1,[r14+-636]
!   if _temp_112 >= 2 then goto _Label_110		(int)
	load	[r14+-636],r1
	mov	2,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_110
!	_Label_109	jmp	_Label_109
_Label_109:
!   _Global_doPrompt = 1		(1 byte)
	mov	1,r1
	set	_Global_doPrompt,r2
	storeb	r1,[r2]
	jmp	_Label_111
_Label_110:
!   _Global_doPrompt = 0		(1 byte)
	mov	0,r1
	set	_Global_doPrompt,r2
	storeb	r1,[r2]
_Label_111:
! IF STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0IF",r10
!   if intIsZero (_P_UserSystem_cmdArgs) then goto _runtimeErrorNullPointer
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_115 = *_P_UserSystem_cmdArgs  (sizeInBytes=4)
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	load	[r1],r1
	store	r1,[r14+-632]
!   if _temp_115 <= 1 then goto _Label_114		(int)
	load	[r14+-632],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_114
!	_Label_113	jmp	_Label_113
_Label_113:
! THEN...
	mov	87,r13		! source line 87
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
!   if intIsZero (_P_UserSystem_cmdArgs) then goto _runtimeErrorNullPointer
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _P_UserSystem_cmdArgs [1 ] into _temp_117
!     make sure index expr is >= 0
	mov	1,r2
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
	store	r2,[r14+-624]
!   Data Move: _temp_116 = *_temp_117  (sizeInBytes=4)
	load	[r14+-624],r1
	load	[r1],r1
	store	r1,[r14+-628]
!   Prepare Argument: offset=8  value=_temp_116  sizeInBytes=4
	load	[r14+-628],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=_Global_scrFd  sizeInBytes=4
	load	[r15],r1
	set	_Global_scrFd,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0IF",r10
!   if _Global_scrFd >= 0 then goto _Label_119		(int)
	set	_Global_scrFd,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_119
!	_Label_118	jmp	_Label_118
_Label_118:
! THEN...
	mov	89,r13		! source line 89
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0AS",r10
!   Call the function
	mov	89,r13		! source line 89
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-27740]
! CALL STATEMENT...
!   _temp_120 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-620]
!   Prepare Argument: offset=8  value=_temp_120  sizeInBytes=4
	load	[r14+-620],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   if intIsZero (_P_UserSystem_cmdArgs) then goto _runtimeErrorNullPointer
	set	_P_UserSystem_cmdArgs,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _P_UserSystem_cmdArgs [1 ] into _temp_122
!     make sure index expr is >= 0
	mov	1,r2
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
	store	r2,[r14+-612]
!   Data Move: _temp_121 = *_temp_122  (sizeInBytes=4)
	load	[r14+-612],r1
	load	[r1],r1
	store	r1,[r14+-616]
!   Prepare Argument: offset=8  value=_temp_121  sizeInBytes=4
	load	[r14+-616],r1
	store	r1,[r15+0]
!   Call the function
	mov	91,r13		! source line 91
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_123 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-608]
!   Prepare Argument: offset=8  value=_temp_123  sizeInBytes=4
	load	[r14+-608],r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-27740],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CA",r10
	call	_P_UserLib_ErrorString
!   Retrieve Result: targetName=_temp_124  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-604]
!   Prepare Argument: offset=8  value=_temp_124  sizeInBytes=4
	load	[r14+-604],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_125 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-600]
!   Prepare Argument: offset=8  value=_temp_125  sizeInBytes=4
	load	[r14+-600],r1
	store	r1,[r15+0]
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	95,r13		! source line 95
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_119:
! END IF...
_Label_114:
! END IF...
_Label_108:
! IF STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0IF",r10
!   if _Global_doPrompt then goto _Label_126 else goto _Label_127
	set	_Global_doPrompt,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_127
	jmp	_Label_126
_Label_126:
! THEN...
	mov	101,r13		! source line 101
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_128 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-596]
!   Prepare Argument: offset=8  value=_temp_128  sizeInBytes=4
	load	[r14+-596],r1
	store	r1,[r15+0]
!   Call the function
	mov	101,r13		! source line 101
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_129 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-592]
!   Prepare Argument: offset=8  value=_temp_129  sizeInBytes=4
	load	[r14+-592],r1
	store	r1,[r15+0]
!   Call the function
	mov	102,r13		! source line 102
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_130 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-588]
!   Prepare Argument: offset=8  value=_temp_130  sizeInBytes=4
	load	[r14+-588],r1
	store	r1,[r15+0]
!   Call the function
	mov	103,r13		! source line 103
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! END IF...
_Label_127:
! WHILE STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0WH",r10
_Label_131:
!	_Label_132	jmp	_Label_132
_Label_132:
	mov	106,r13		! source line 106
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0IF",r10
!   if _Global_doPrompt then goto _Label_134 else goto _Label_135
	set	_Global_doPrompt,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_135
	jmp	_Label_134
_Label_134:
! THEN...
	mov	110,r13		! source line 110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_136 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-584]
!   Prepare Argument: offset=8  value=_temp_136  sizeInBytes=4
	load	[r14+-584],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! END IF...
_Label_135:
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
!   _temp_137 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-580]
!   NEW ARRAY Constructor...
!   _temp_139 = &_temp_138
	add	r14,-576,r1
	store	r1,[r14+-60]
!   _temp_139 = _temp_139 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	512,r1
	store	r1,[r14+-56]
_Label_141:
!   Data Move: *_temp_139 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
!   _temp_139 = _temp_139 + 1
	load	[r14+-60],r1
	add	r1,1,r1
	store	r1,[r14+-60]
!   _temp_140 = _temp_140 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_140) then goto _Label_141
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_141
!   Initialize the array size...
	mov	512,r1
	store	r1,[r14+-576]
!   _temp_142 = &_temp_138
	add	r14,-576,r1
	store	r1,[r14+-52]
!   make sure array has size 512
	load	[r14+-580],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,0
	be	_Label_1963
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1963:
!   make sure array has size 512
	load	[r14+-52],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_137 = *_temp_142  (sizeInBytes=516)
	load	[r14+-52],r5
	load	[r14+-580],r4
	mov	129,r3
_Label_1964:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1964
! IF STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0IF",r10
!   if _Global_doPrompt then goto _Label_143 else goto _Label_144
	set	_Global_doPrompt,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_144
	jmp	_Label_143
_Label_143:
! THEN...
	mov	118,r13		! source line 118
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0IF",r10
!   _temp_148 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_148  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	118,r13		! source line 118
	mov	"\0\0CA",r10
	call	_P_UserLib_ReadLine
!   Retrieve Result: targetName=_temp_147  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_147 then goto _Label_146 else goto _Label_145
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_145
	jmp	_Label_146
_Label_145:
! THEN...
	mov	119,r13		! source line 119
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_149 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_149  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	119,r13		! source line 119
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! END IF...
_Label_146:
	jmp	_Label_150
_Label_144:
! ELSE...
	mov	122,r13		! source line 122
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0IF",r10
!   _temp_154 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_Global_scrFd  sizeInBytes=4
	set	_Global_scrFd,r1
	load	[r1],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_154  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Call the function
	mov	122,r13		! source line 122
	mov	"\0\0CA",r10
	call	_P_UserLib_dReadLine
!   Retrieve Result: targetName=_temp_153  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_153 then goto _Label_152 else goto _Label_151
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_151
	jmp	_Label_152
_Label_151:
! THEN...
	mov	123,r13		! source line 123
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	123,r13		! source line 123
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_152:
! END IF...
_Label_150:
! CALL STATEMENT...
!   _temp_155 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_155  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_function_69_RemoveComments
! ASSIGNMENT STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0AS",r10
!   _temp_156 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-32]
!   _temp_157 = &after
	add	r14,-27748,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_156  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_157  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CA",r10
	call	_function_81_FirstWord
!   Retrieve Result: targetName=kind  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-27744]
! IF STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0IF",r10
!   if kind != 5 then goto _Label_159		(int)
	load	[r14+-27744],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_159
!	_Label_158	jmp	_Label_158
_Label_158:
! THEN...
	mov	131,r13		! source line 131
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0AS",r10
!   _temp_160 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_160  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+12]
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CA",r10
	call	_function_74_ProcessLine
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-27740]
	jmp	_Label_161
_Label_159:
! ELSE...
	mov	132,r13		! source line 132
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0IF",r10
!   if kind != 1 then goto _Label_164		(int)
	load	[r14+-27744],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_164
	jmp	_Label_162
_Label_164:
!   if kind != 2 then goto _Label_163		(int)
	load	[r14+-27744],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_163
!	_Label_162	jmp	_Label_162
_Label_162:
! THEN...
	mov	133,r13		! source line 133
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_165 = &_Global_commandLine
	set	_Global_commandLine,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_165  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=after  sizeInBytes=4
	load	[r14+-27748],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=kind  sizeInBytes=4
	load	[r14+-27744],r1
	store	r1,[r15+8]
!   Call the function
	mov	133,r13		! source line 133
	mov	"\0\0CA",r10
	call	_function_80_ProcessStmts
	jmp	_Label_166
_Label_163:
! ELSE...
	mov	135,r13		! source line 135
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_167 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_167  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	135,r13		! source line 135
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! END IF...
_Label_166:
! END IF...
_Label_161:
! END WHILE...
	jmp	_Label_131
_Label_133:
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_168
	.word	0		! total size of parameters
	.word	27756		! frame size = 27756
	.word	_Label_169
	.word	-16
	.word	4
	.word	_Label_170
	.word	-20
	.word	4
	.word	_Label_171
	.word	-24
	.word	4
	.word	_Label_172
	.word	-28
	.word	4
	.word	_Label_173
	.word	-32
	.word	4
	.word	_Label_174
	.word	-36
	.word	4
	.word	_Label_175
	.word	-40
	.word	4
	.word	_Label_176
	.word	-9
	.word	1
	.word	_Label_177
	.word	-44
	.word	4
	.word	_Label_178
	.word	-48
	.word	4
	.word	_Label_179
	.word	-10
	.word	1
	.word	_Label_180
	.word	-52
	.word	4
	.word	_Label_181
	.word	-56
	.word	4
	.word	_Label_182
	.word	-60
	.word	4
	.word	_Label_183
	.word	-576
	.word	516
	.word	_Label_184
	.word	-580
	.word	4
	.word	_Label_185
	.word	-584
	.word	4
	.word	_Label_186
	.word	-588
	.word	4
	.word	_Label_187
	.word	-592
	.word	4
	.word	_Label_188
	.word	-596
	.word	4
	.word	_Label_189
	.word	-600
	.word	4
	.word	_Label_190
	.word	-604
	.word	4
	.word	_Label_191
	.word	-608
	.word	4
	.word	_Label_192
	.word	-612
	.word	4
	.word	_Label_193
	.word	-616
	.word	4
	.word	_Label_194
	.word	-620
	.word	4
	.word	_Label_195
	.word	-624
	.word	4
	.word	_Label_196
	.word	-628
	.word	4
	.word	_Label_197
	.word	-632
	.word	4
	.word	_Label_198
	.word	-636
	.word	4
	.word	_Label_199
	.word	-640
	.word	4
	.word	_Label_200
	.word	-1156
	.word	516
	.word	_Label_201
	.word	-1160
	.word	4
	.word	_Label_202
	.word	-1164
	.word	4
	.word	_Label_203
	.word	-1168
	.word	4
	.word	_Label_204
	.word	-26972
	.word	25804
	.word	_Label_205
	.word	-26976
	.word	4
	.word	_Label_206
	.word	-26980
	.word	4
	.word	_Label_207
	.word	-26984
	.word	4
	.word	_Label_208
	.word	-26988
	.word	4
	.word	_Label_209
	.word	-27192
	.word	204
	.word	_Label_210
	.word	-27196
	.word	4
	.word	_Label_211
	.word	-27200
	.word	4
	.word	_Label_212
	.word	-27204
	.word	4
	.word	_Label_213
	.word	-27208
	.word	4
	.word	_Label_214
	.word	-27212
	.word	4
	.word	_Label_215
	.word	-27216
	.word	4
	.word	_Label_216
	.word	-27732
	.word	516
	.word	_Label_217
	.word	-27736
	.word	4
	.word	_Label_218
	.word	-27740
	.word	4
	.word	_Label_219
	.word	-27744
	.word	4
	.word	_Label_220
	.word	-27748
	.word	4
	.word	0
_Label_168:
	.ascii	"main\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_176:
	.byte	'C'
	.ascii	"_temp_153\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_179:
	.byte	'C'
	.ascii	"_temp_147\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_218:
	.byte	'I'
	.ascii	"rv\0"
	.align
_Label_219:
	.byte	'I'
	.ascii	"kind\0"
	.align
_Label_220:
	.byte	'I'
	.ascii	"after\0"
	.align
! 
! ===============  FUNCTION FirstWord  ===============
! 
_function_81_FirstWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_81_FirstWord,r1
	push	r1
	mov	33,r1
_Label_1965:
	push	r0
	sub	r1,1,r1
	bne	_Label_1965
	mov	210,r13		! source line 210
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0AS",r10
!   _temp_221 = &word
	add	r14,-120,r1
	store	r1,[r14+-96]
!   NEW ARRAY Constructor...
!   _temp_223 = &_temp_222
	add	r14,-92,r1
	store	r1,[r14+-80]
!   _temp_223 = _temp_223 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Next value...
	mov	5,r1
	store	r1,[r14+-76]
_Label_225:
!   Data Move: *_temp_223 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-80],r2
	storeb	r1,[r2]
!   _temp_223 = _temp_223 + 1
	load	[r14+-80],r1
	add	r1,1,r1
	store	r1,[r14+-80]
!   _temp_224 = _temp_224 + -1
	load	[r14+-76],r1
	add	r1,-1,r1
	store	r1,[r14+-76]
!   if intNotZero (_temp_224) then goto _Label_225
	load	[r14+-76],r1
	cmp	r1,r0
	bne	_Label_225
!   Initialize the array size...
	mov	5,r1
	store	r1,[r14+-92]
!   _temp_226 = &_temp_222
	add	r14,-92,r1
	store	r1,[r14+-72]
!   make sure array has size 5
	load	[r14+-96],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,0
	be	_Label_1966
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1966:
!   make sure array has size 5
	load	[r14+-72],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_221 = *_temp_226  (sizeInBytes=12)
	load	[r14+-72],r5
	load	[r14+-96],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
!   start = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
!   pos = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0AS",r10
!   len = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
! IF STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0IF",r10
!   _temp_230 = &start
	add	r14,-100,r1
	store	r1,[r14+-68]
!   _temp_231 = &pos
	add	r14,-104,r1
	store	r1,[r14+-64]
!   _temp_232 = &len
	add	r14,-108,r1
	store	r1,[r14+-60]
!   _temp_233 = &kind
	add	r14,-9,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=cmd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_230  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_231  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_232  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_233  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+16]
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CA",r10
	call	_function_77_FindNextWord
!   if result==true then goto _Label_229 else goto _Label_228
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_228
	jmp	_Label_229
_Label_229:
!   if len > 5 then goto _Label_228		(int)
	load	[r14+-108],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_228
!	_Label_227	jmp	_Label_227
_Label_227:
! THEN...
	mov	219,r13		! source line 219
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_234 = &word
	add	r14,-120,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=cmd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_234  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=start  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=len  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+12]
!   Call the function
	mov	219,r13		! source line 219
	mov	"\0\0CA",r10
	call	_function_73_GetWord
! ASSIGNMENT STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0AS",r10
!   if intIsZero (after) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_235 = start + len		(int)
	load	[r14+-100],r1
	load	[r14+-108],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Data Move: *after = _temp_235  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r14+12],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0IF",r10
!   _temp_238 = &word
	add	r14,-120,r1
	store	r1,[r14+-44]
!   _temp_239 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_239  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_236 else goto _Label_237
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_237
	jmp	_Label_236
_Label_236:
! THEN...
	mov	222,r13		! source line 222
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_240
_Label_237:
! ELSE...
	mov	223,r13		! source line 223
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0IF",r10
!   _temp_243 = &word
	add	r14,-120,r1
	store	r1,[r14+-36]
!   _temp_244 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_244  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_241 else goto _Label_242
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_242
	jmp	_Label_241
_Label_241:
! THEN...
	mov	224,r13		! source line 224
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0RE",r10
!   ReturnResult: 4  (sizeInBytes=4)
	mov	4,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_245
_Label_242:
! ELSE...
	mov	225,r13		! source line 225
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0IF",r10
!   _temp_248 = &word
	add	r14,-120,r1
	store	r1,[r14+-28]
!   _temp_249 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_248  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_249  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_246 else goto _Label_247
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_247
	jmp	_Label_246
_Label_246:
! THEN...
	mov	226,r13		! source line 226
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0RE",r10
!   ReturnResult: 3  (sizeInBytes=4)
	mov	3,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_250
_Label_247:
! ELSE...
	mov	227,r13		! source line 227
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0IF",r10
!   _temp_253 = &word
	add	r14,-120,r1
	store	r1,[r14+-20]
!   _temp_254 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_254  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_251 else goto _Label_252
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_252
	jmp	_Label_251
_Label_251:
! THEN...
	mov	228,r13		! source line 228
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0RE",r10
!   ReturnResult: 2  (sizeInBytes=4)
	mov	2,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_252:
! END IF...
_Label_250:
! END IF...
_Label_245:
! END IF...
_Label_240:
! END IF...
_Label_228:
! RETURN STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0RE",r10
!   ReturnResult: 5  (sizeInBytes=4)
	mov	5,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_81_FirstWord:
	.word	_sourceFileName
	.word	_Label_255
	.word	8		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_256
	.word	8
	.word	4
	.word	_Label_257
	.word	12
	.word	4
	.word	_Label_258
	.word	-16
	.word	4
	.word	_Label_259
	.word	-20
	.word	4
	.word	_Label_260
	.word	-24
	.word	4
	.word	_Label_261
	.word	-28
	.word	4
	.word	_Label_262
	.word	-32
	.word	4
	.word	_Label_263
	.word	-36
	.word	4
	.word	_Label_264
	.word	-40
	.word	4
	.word	_Label_265
	.word	-44
	.word	4
	.word	_Label_266
	.word	-48
	.word	4
	.word	_Label_267
	.word	-52
	.word	4
	.word	_Label_268
	.word	-56
	.word	4
	.word	_Label_269
	.word	-60
	.word	4
	.word	_Label_270
	.word	-64
	.word	4
	.word	_Label_271
	.word	-68
	.word	4
	.word	_Label_272
	.word	-72
	.word	4
	.word	_Label_273
	.word	-76
	.word	4
	.word	_Label_274
	.word	-80
	.word	4
	.word	_Label_275
	.word	-92
	.word	12
	.word	_Label_276
	.word	-96
	.word	4
	.word	_Label_277
	.word	-100
	.word	4
	.word	_Label_278
	.word	-104
	.word	4
	.word	_Label_279
	.word	-108
	.word	4
	.word	_Label_280
	.word	-9
	.word	1
	.word	_Label_281
	.word	-120
	.word	12
	.word	0
_Label_255:
	.ascii	"FirstWord\0"
	.align
_Label_256:
	.byte	'P'
	.ascii	"cmd\0"
	.align
_Label_257:
	.byte	'P'
	.ascii	"after\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_277:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_278:
	.byte	'I'
	.ascii	"pos\0"
	.align
_Label_279:
	.byte	'I'
	.ascii	"len\0"
	.align
_Label_280:
	.byte	'C'
	.ascii	"kind\0"
	.align
_Label_281:
	.byte	'A'
	.ascii	"word\0"
	.align
! 
! ===============  FUNCTION ProcessStmts  ===============
! 
_function_80_ProcessStmts:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_80_ProcessStmts,r1
	push	r1
	mov	6,r1
_Label_1967:
	push	r0
	sub	r1,1,r1
	bne	_Label_1967
	mov	236,r13		! source line 236
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0SE",r10
!   _temp_282 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-16]
!   Send message newList
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=cmd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=after  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=kind  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CA",r10
	call	_function_79_readStmts
!   Retrieve Result: targetName=_temp_285  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_285 then goto _Label_284 else goto _Label_283
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_283
	jmp	_Label_284
_Label_283:
! THEN...
	mov	241,r13		! source line 241
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_284:
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_function_78_runStmts
!   Retrieve Result: targetName=x  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_80_ProcessStmts:
	.word	_sourceFileName
	.word	_Label_286
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_287
	.word	8
	.word	4
	.word	_Label_288
	.word	12
	.word	4
	.word	_Label_289
	.word	16
	.word	4
	.word	_Label_290
	.word	-9
	.word	1
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	0
_Label_286:
	.ascii	"ProcessStmts\0"
	.align
_Label_287:
	.byte	'P'
	.ascii	"cmd\0"
	.align
_Label_288:
	.byte	'I'
	.ascii	"after\0"
	.align
_Label_289:
	.byte	'I'
	.ascii	"kind\0"
	.align
_Label_290:
	.byte	'C'
	.ascii	"_temp_285\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_292:
	.byte	'I'
	.ascii	"x\0"
	.align
! 
! ===============  FUNCTION readStmts  ===============
! 
_function_79_readStmts:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_79_readStmts,r1
	push	r1
	mov	435,r1
_Label_1968:
	push	r0
	sub	r1,1,r1
	bne	_Label_1968
	mov	250,r13		! source line 250
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! numElses
!   numElses = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1204]
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
!   _temp_293 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-1200]
!   NEW ARRAY Constructor...
!   _temp_295 = &_temp_294
	add	r14,-1196,r1
	store	r1,[r14+-680]
!   _temp_295 = _temp_295 + 4
	load	[r14+-680],r1
	add	r1,4,r1
	store	r1,[r14+-680]
!   Next value...
	mov	512,r1
	store	r1,[r14+-676]
_Label_297:
!   Data Move: *_temp_295 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-680],r2
	storeb	r1,[r2]
!   _temp_295 = _temp_295 + 1
	load	[r14+-680],r1
	add	r1,1,r1
	store	r1,[r14+-680]
!   _temp_296 = _temp_296 + -1
	load	[r14+-676],r1
	add	r1,-1,r1
	store	r1,[r14+-676]
!   if intNotZero (_temp_296) then goto _Label_297
	load	[r14+-676],r1
	cmp	r1,r0
	bne	_Label_297
!   Initialize the array size...
	mov	512,r1
	store	r1,[r14+-1196]
!   _temp_298 = &_temp_294
	add	r14,-1196,r1
	store	r1,[r14+-672]
!   make sure array has size 512
	load	[r14+-1200],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,0
	be	_Label_1969
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1969:
!   make sure array has size 512
	load	[r14+-672],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_293 = *_temp_298  (sizeInBytes=516)
	load	[r14+-672],r5
	load	[r14+-1200],r4
	mov	129,r3
_Label_1970:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1970
! IF STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0IF",r10
!   if kind != 1 then goto _Label_300		(int)
	load	[r14+16],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_300
!	_Label_299	jmp	_Label_299
_Label_299:
! THEN...
	mov	261,r13		! source line 261
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0AS",r10
!   numElses = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-1204]
! END IF...
_Label_300:
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
	mov	264,r13		! source line 264
	mov	"\0\0SE",r10
!   _temp_301 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-668]
!   Send message numStmts
	load	[r14+-668],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=sStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1732]
! CALL STATEMENT...
!   _temp_302 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-664]
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_304 = *cmd  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-656]
!   _temp_303 = _temp_304 - after		(int)
	load	[r14+-656],r1
	load	[r14+12],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-660]
!   Prepare Argument: offset=8  value=cmd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_302  sizeInBytes=4
	load	[r14+-664],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=after  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_303  sizeInBytes=4
	load	[r14+-660],r1
	store	r1,[r15+12]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CA",r10
	call	_function_73_GetWord
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
	mov	267,r13		! source line 267
	mov	"\0\0SE",r10
!   _temp_308 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-652]
!   _temp_309 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-648]
!   Prepare Argument: offset=12  value=kind  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_308  sizeInBytes=4
	load	[r14+-652],r1
	store	r1,[r15+8]
!   Send message addStmt
	load	[r14+-648],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_307  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-15]
!   if _temp_307 then goto _Label_306 else goto _Label_305
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_305
	jmp	_Label_306
_Label_305:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1744,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_306:
! DO STATEMENT...
_Label_310:
	mov	272,r13		! source line 272
	mov	"\0\0DO",r10
! ASSIGNMENT STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0AS",r10
!   _temp_313 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-644]
!   if intIsZero (_temp_313) then goto _runtimeErrorNullPointer
	load	[r14+-644],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_313 = 512  (sizeInBytes=4)
	mov	512,r1
	load	[r14+-644],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0IF",r10
!   if _Global_doPrompt then goto _Label_314 else goto _Label_315
	set	_Global_doPrompt,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_315
	jmp	_Label_314
_Label_314:
! THEN...
	mov	275,r13		! source line 275
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_316 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-640]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
	load	[r14+-640],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0AS",r10
!   _temp_317 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-636]
!   NEW ARRAY Constructor...
!   _temp_319 = &_temp_318
	add	r14,-632,r1
	store	r1,[r14+-116]
!   _temp_319 = _temp_319 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Next value...
	mov	512,r1
	store	r1,[r14+-112]
_Label_321:
!   Data Move: *_temp_319 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-116],r2
	storeb	r1,[r2]
!   _temp_319 = _temp_319 + 1
	load	[r14+-116],r1
	add	r1,1,r1
	store	r1,[r14+-116]
!   _temp_320 = _temp_320 + -1
	load	[r14+-112],r1
	add	r1,-1,r1
	store	r1,[r14+-112]
!   if intNotZero (_temp_320) then goto _Label_321
	load	[r14+-112],r1
	cmp	r1,r0
	bne	_Label_321
!   Initialize the array size...
	mov	512,r1
	store	r1,[r14+-632]
!   _temp_322 = &_temp_318
	add	r14,-632,r1
	store	r1,[r14+-108]
!   make sure array has size 512
	load	[r14+-636],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,0
	be	_Label_1971
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1971:
!   make sure array has size 512
	load	[r14+-108],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_317 = *_temp_322  (sizeInBytes=516)
	load	[r14+-108],r5
	load	[r14+-636],r4
	mov	129,r3
_Label_1972:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1972
! IF STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0IF",r10
!   _temp_326 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CA",r10
	call	_P_UserLib_ReadLine
!   Retrieve Result: targetName=_temp_325  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   if _temp_325 then goto _Label_324 else goto _Label_323
	loadb	[r14+-14],r1
	cmp	r1,0
	be	_Label_323
	jmp	_Label_324
_Label_323:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_327 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1744,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_324:
	jmp	_Label_328
_Label_315:
! ELSE...
	mov	282,r13		! source line 282
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0IF",r10
!   _temp_332 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_Global_scrFd  sizeInBytes=4
	set	_Global_scrFd,r1
	load	[r1],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_332  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CA",r10
	call	_P_UserLib_dReadLine
!   Retrieve Result: targetName=_temp_331  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_331 then goto _Label_330 else goto _Label_329
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_329
	jmp	_Label_330
_Label_329:
! THEN...
	mov	283,r13		! source line 283
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_333 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1744,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_330:
! END IF...
_Label_328:
! CALL STATEMENT...
!   _temp_334 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CA",r10
	call	_function_69_RemoveComments
! ASSIGNMENT STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0AS",r10
!   _temp_335 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-84]
!   _temp_336 = &lAfter
	add	r14,-1728,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_336  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Call the function
	mov	289,r13		! source line 289
	mov	"\0\0CA",r10
	call	_function_81_FirstWord
!   Retrieve Result: targetName=lKind  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1724]
! SWITCH STATEMENT (using series of tests)...
	mov	291,r13		! source line 291
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+-1724],r1
	cmp	r1,1
	be	_Label_339
	cmp	r1,2
	be	_Label_340
	cmp	r1,3
	be	_Label_341
	cmp	r1,4
	be	_Label_342
	jmp	_Label_337
! CASE 1...
_Label_339:
! CASE 2...
_Label_340:
! IF STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0IF",r10
!   _temp_346 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=lAfter  sizeInBytes=4
	load	[r14+-1728],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=lKind  sizeInBytes=4
	load	[r14+-1724],r1
	store	r1,[r15+8]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CA",r10
	call	_function_79_readStmts
!   Retrieve Result: targetName=_temp_345  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_345 then goto _Label_344 else goto _Label_343
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_343
	jmp	_Label_344
_Label_343:
! THEN...
	mov	296,r13		! source line 296
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1744,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_344:
! BREAK STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0BR",r10
	jmp	_Label_338
! CASE 3...
_Label_341:
! IF STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0IF",r10
!   if numElses >= 1 then goto _Label_348		(int)
	load	[r14+-1204],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_348
!	_Label_347	jmp	_Label_347
_Label_347:
! THEN...
	mov	302,r13		! source line 302
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_349 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1744,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_348:
! ASSIGNMENT STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0AS",r10
!   numElses = numElses - 1		(int)
	load	[r14+-1204],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1204]
! SEND STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0SE",r10
	mov	306,r13		! source line 306
	mov	"\0\0SE",r10
!   _temp_351 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-64]
!   Send message numStmts
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=_temp_350  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
!   _temp_352 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=sStart  sizeInBytes=4
	load	[r14+-1732],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_350  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+8]
!   Send message setElsend
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
	mov	307,r13		! source line 307
	mov	"\0\0SE",r10
!   _temp_353 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-56]
!   Send message numStmts
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=sStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1732]
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_357 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-52]
!   _temp_358 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_357  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Send message addStmt
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_356  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_356 then goto _Label_355 else goto _Label_354
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_354
	jmp	_Label_355
_Label_354:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1744,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_355:
! BREAK STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0BR",r10
	jmp	_Label_338
! CASE 4...
_Label_342:
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   _temp_360 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-40]
!   Send message numStmts
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=_temp_359  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   _temp_361 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=sStart  sizeInBytes=4
	load	[r14+-1732],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_359  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Send message setElsend
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0IF",r10
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   _temp_365 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-32]
!   _temp_366 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_365  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+8]
!   Send message addStmt
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_364  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_364 then goto _Label_363 else goto _Label_362
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_362
	jmp	_Label_363
_Label_362:
! THEN...
	mov	315,r13		! source line 315
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1744,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_363:
! BREAK STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0BR",r10
	jmp	_Label_338
! DEFAULT CASE...
_Label_337:
! IF STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0IF",r10
	mov	320,r13		! source line 320
	mov	"\0\0SE",r10
!   _temp_370 = &Line
	add	r14,-1720,r1
	store	r1,[r14+-24]
!   _temp_371 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=lKind  sizeInBytes=4
	load	[r14+-1724],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_370  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+8]
!   Send message addStmt
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_369  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_369 then goto _Label_368 else goto _Label_367
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_367
	jmp	_Label_368
_Label_367:
! THEN...
	mov	321,r13		! source line 321
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	321,r13		! source line 321
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1744,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_368:
! END SWITCH...
_Label_338:
! UNTIL...
_Label_311:
	mov	325,r13		! source line 325
	mov	"\0\0DU",r10
!   if lKind != 4 then goto _Label_310		(int)
	load	[r14+-1724],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_310
!	_Label_312	jmp	_Label_312
_Label_312:
! RETURN STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,1744,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_79_readStmts:
	.word	_sourceFileName
	.word	_Label_372
	.word	12		! total size of parameters
	.word	1740		! frame size = 1740
	.word	_Label_373
	.word	8
	.word	4
	.word	_Label_374
	.word	12
	.word	4
	.word	_Label_375
	.word	16
	.word	4
	.word	_Label_376
	.word	-20
	.word	4
	.word	_Label_377
	.word	-24
	.word	4
	.word	_Label_378
	.word	-9
	.word	1
	.word	_Label_379
	.word	-28
	.word	4
	.word	_Label_380
	.word	-32
	.word	4
	.word	_Label_381
	.word	-10
	.word	1
	.word	_Label_382
	.word	-36
	.word	4
	.word	_Label_383
	.word	-40
	.word	4
	.word	_Label_384
	.word	-44
	.word	4
	.word	_Label_385
	.word	-48
	.word	4
	.word	_Label_386
	.word	-52
	.word	4
	.word	_Label_387
	.word	-11
	.word	1
	.word	_Label_388
	.word	-56
	.word	4
	.word	_Label_389
	.word	-60
	.word	4
	.word	_Label_390
	.word	-64
	.word	4
	.word	_Label_391
	.word	-68
	.word	4
	.word	_Label_392
	.word	-72
	.word	4
	.word	_Label_393
	.word	-76
	.word	4
	.word	_Label_394
	.word	-12
	.word	1
	.word	_Label_395
	.word	-80
	.word	4
	.word	_Label_396
	.word	-84
	.word	4
	.word	_Label_397
	.word	-88
	.word	4
	.word	_Label_398
	.word	-92
	.word	4
	.word	_Label_399
	.word	-96
	.word	4
	.word	_Label_400
	.word	-13
	.word	1
	.word	_Label_401
	.word	-100
	.word	4
	.word	_Label_402
	.word	-104
	.word	4
	.word	_Label_403
	.word	-14
	.word	1
	.word	_Label_404
	.word	-108
	.word	4
	.word	_Label_405
	.word	-112
	.word	4
	.word	_Label_406
	.word	-116
	.word	4
	.word	_Label_407
	.word	-632
	.word	516
	.word	_Label_408
	.word	-636
	.word	4
	.word	_Label_409
	.word	-640
	.word	4
	.word	_Label_410
	.word	-644
	.word	4
	.word	_Label_411
	.word	-648
	.word	4
	.word	_Label_412
	.word	-652
	.word	4
	.word	_Label_413
	.word	-15
	.word	1
	.word	_Label_414
	.word	-656
	.word	4
	.word	_Label_415
	.word	-660
	.word	4
	.word	_Label_416
	.word	-664
	.word	4
	.word	_Label_417
	.word	-668
	.word	4
	.word	_Label_418
	.word	-672
	.word	4
	.word	_Label_419
	.word	-676
	.word	4
	.word	_Label_420
	.word	-680
	.word	4
	.word	_Label_421
	.word	-1196
	.word	516
	.word	_Label_422
	.word	-1200
	.word	4
	.word	_Label_423
	.word	-1204
	.word	4
	.word	_Label_424
	.word	-1720
	.word	516
	.word	_Label_425
	.word	-1724
	.word	4
	.word	_Label_426
	.word	-1728
	.word	4
	.word	_Label_427
	.word	-1732
	.word	4
	.word	0
_Label_372:
	.ascii	"readStmts\0"
	.align
_Label_373:
	.byte	'P'
	.ascii	"cmd\0"
	.align
_Label_374:
	.byte	'I'
	.ascii	"after\0"
	.align
_Label_375:
	.byte	'I'
	.ascii	"kind\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_378:
	.byte	'C'
	.ascii	"_temp_369\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_381:
	.byte	'C'
	.ascii	"_temp_364\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_387:
	.byte	'C'
	.ascii	"_temp_356\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_394:
	.byte	'C'
	.ascii	"_temp_345\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_400:
	.byte	'C'
	.ascii	"_temp_331\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_403:
	.byte	'C'
	.ascii	"_temp_325\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_413:
	.byte	'C'
	.ascii	"_temp_307\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_423:
	.byte	'I'
	.ascii	"numElses\0"
	.align
_Label_424:
	.byte	'A'
	.ascii	"Line\0"
	.align
_Label_425:
	.byte	'I'
	.ascii	"lKind\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"lAfter\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"sStart\0"
	.align
! 
! ===============  FUNCTION runStmts  ===============
! 
_function_78_runStmts:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_78_runStmts,r1
	push	r1
	mov	47,r1
_Label_1973:
	push	r0
	sub	r1,1,r1
	bne	_Label_1973
	mov	332,r13		! source line 332
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ctlLine
	mov	335,r13		! source line 335
	mov	"\0\0SE",r10
!   _temp_428 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=startLoc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message getLine
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=ctlLine  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! DO STATEMENT...
_Label_429:
	mov	336,r13		! source line 336
	mov	"\0\0DO",r10
! IF STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0IF",r10
!   if intIsZero (ctlLine) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_436 = ctlLine + 8
	load	[r14+-180],r1
	add	r1,8,r1
	store	r1,[r14+-156]
!   _temp_435 = _temp_436		(4 bytes)
	load	[r14+-156],r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+12]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CA",r10
	call	_function_74_ProcessLine
!   Retrieve Result: targetName=_temp_434  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
!   if _temp_434 >= 0 then goto _Label_433		(int)
	load	[r14+-164],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_433
!	_Label_432	jmp	_Label_432
_Label_432:
! THEN...
	mov	338,r13		! source line 338
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0RE",r10
	mov	338,r13		! source line 338
	mov	"\0\0SE",r10
!   _temp_438 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-148]
!   Send message numStmts
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=_temp_437  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-152]
!   ReturnResult: _temp_437  (sizeInBytes=4)
	load	[r14+-152],r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_433:
! ASSIGNMENT STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0AS",r10
!   curLoc = startLoc + 1		(int)
	load	[r14+8],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
! IF STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0IF",r10
!   if intIsZero (_Global_exitVal) then goto _Label_440
	set	_Global_exitVal,r1
	load	[r1],r1
	cmp	r1,r0
	be	_Label_440
!	_Label_439	jmp	_Label_439
_Label_439:
! THEN...
	mov	342,r13		! source line 342
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0IF",r10
!   if intIsZero (ctlLine) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = ctlLine + 0
	load	[r14+-180],r1
	add	r1,0,r1
	store	r1,[r14+-140]
!   Data Move: _temp_443 = *_temp_444  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if _temp_443 != 2 then goto _Label_442		(int)
	load	[r14+-144],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_442
!	_Label_441	jmp	_Label_441
_Label_441:
! THEN...
	mov	343,r13		! source line 343
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0RE",r10
!   if intIsZero (ctlLine) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = ctlLine + 4
	load	[r14+-180],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Data Move: _temp_446 = *_temp_447  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   _temp_445 = _temp_446 + 1		(int)
	load	[r14+-132],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   ReturnResult: _temp_445  (sizeInBytes=4)
	load	[r14+-136],r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_442:
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   if intIsZero (ctlLine) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = ctlLine + 4
	load	[r14+-180],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Data Move: _temp_448 = *_temp_449  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   curLoc = _temp_448 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
! IF STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0IF",r10
	mov	346,r13		! source line 346
	mov	"\0\0SE",r10
!   _temp_454 = curLoc - 1		(int)
	load	[r14+-172],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   _temp_455 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_454  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message getLine
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_453  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_453) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_456 = _temp_453 + 0
	load	[r14+-112],r1
	add	r1,0,r1
	store	r1,[r14+-100]
!   Data Move: _temp_452 = *_temp_456  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if _temp_452 != 4 then goto _Label_451		(int)
	load	[r14+-116],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_451
!	_Label_450	jmp	_Label_450
_Label_450:
! THEN...
	mov	347,r13		! source line 347
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0RE",r10
!   ReturnResult: curLoc  (sizeInBytes=4)
	load	[r14+-172],r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_451:
! END IF...
_Label_440:
! IF STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0IF",r10
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
!   _temp_460 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-92]
!   Send message numStmts
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=_temp_459  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
!   if curLoc >= _temp_459 then goto _Label_458		(int)
	load	[r14+-172],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_458
!	_Label_457	jmp	_Label_457
_Label_457:
! THEN...
	mov	351,r13		! source line 351
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0WH",r10
_Label_461:
	mov	351,r13		! source line 351
	mov	"\0\0SE",r10
!   _temp_466 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=curLoc  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Send message getLine
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_465  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_465) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_467 = _temp_465 + 0
	load	[r14+-84],r1
	add	r1,0,r1
	store	r1,[r14+-76]
!   Data Move: _temp_464 = *_temp_467  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if _temp_464 == 4 then goto _Label_463		(int)
	load	[r14+-88],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_463
!	_Label_462	jmp	_Label_462
_Label_462:
	mov	351,r13		! source line 351
	mov	"\0\0WB",r10
! SWITCH STATEMENT (using series of tests)...
	mov	352,r13		! source line 352
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	mov	352,r13		! source line 352
	mov	"\0\0SE",r10
!   _temp_475 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=curLoc  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Send message getLine
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_474  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_474) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_476 = _temp_474 + 0
	load	[r14+-68],r1
	add	r1,0,r1
	store	r1,[r14+-60]
!   Data Move: _temp_473 = *_temp_476  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Branch to the right case label
	load	[r14+-72],r1
	cmp	r1,1
	be	_Label_470
	cmp	r1,2
	be	_Label_471
	cmp	r1,3
	be	_Label_472
	jmp	_Label_468
! CASE 1...
_Label_470:
! CASE 2...
_Label_471:
! ASSIGNMENT STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=curLoc  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CA",r10
	call	_function_78_runStmts
!   Retrieve Result: targetName=curLoc  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-172]
! BREAK STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0BR",r10
	jmp	_Label_469
! CASE 3...
_Label_472:
! RETURN STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0RE",r10
	mov	358,r13		! source line 358
	mov	"\0\0SE",r10
!   _temp_480 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=curLoc  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Send message getLine
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_479  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_479) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_481 = _temp_479 + 4
	load	[r14+-48],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_478 = *_temp_481  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_477 = _temp_478 + 1		(int)
	load	[r14+-52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   ReturnResult: _temp_477  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_468:
! ASSIGNMENT STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0AS",r10
	mov	360,r13		! source line 360
	mov	"\0\0SE",r10
!   _temp_484 = &_Global_sList
	set	_Global_sList,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=curLoc  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Send message getLine
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_483  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_483) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_485 = _temp_483 + 8
	load	[r14+-32],r1
	add	r1,8,r1
	store	r1,[r14+-24]
!   _temp_482 = _temp_485		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_482  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+12]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CA",r10
	call	_function_74_ProcessLine
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0AS",r10
!   curLoc = curLoc + 1		(int)
	load	[r14+-172],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
! END SWITCH...
_Label_469:
! END WHILE...
	jmp	_Label_461
_Label_463:
! END IF...
_Label_458:
! IF STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0IF",r10
!   if intIsZero (ctlLine) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_489 = ctlLine + 0
	load	[r14+-180],r1
	add	r1,0,r1
	store	r1,[r14+-16]
!   Data Move: _temp_488 = *_temp_489  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if _temp_488 != 1 then goto _Label_487		(int)
	load	[r14+-20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_487
!	_Label_486	jmp	_Label_486
_Label_486:
! THEN...
	mov	366,r13		! source line 366
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0RE",r10
!   _temp_490 = curLoc + 1		(int)
	load	[r14+-172],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   ReturnResult: _temp_490  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_487:
! UNTIL...
_Label_430:
	mov	368,r13		! source line 368
	mov	"\0\0DU",r10
	jmp	_Label_429
_Label_431:
! RETURN STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,192,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_78_runStmts:
	.word	_sourceFileName
	.word	_Label_491
	.word	4		! total size of parameters
	.word	188		! frame size = 188
	.word	_Label_492
	.word	8
	.word	4
	.word	_Label_493
	.word	-12
	.word	4
	.word	_Label_494
	.word	-16
	.word	4
	.word	_Label_495
	.word	-20
	.word	4
	.word	_Label_496
	.word	-24
	.word	4
	.word	_Label_497
	.word	-28
	.word	4
	.word	_Label_498
	.word	-32
	.word	4
	.word	_Label_499
	.word	-36
	.word	4
	.word	_Label_500
	.word	-40
	.word	4
	.word	_Label_501
	.word	-44
	.word	4
	.word	_Label_502
	.word	-48
	.word	4
	.word	_Label_503
	.word	-52
	.word	4
	.word	_Label_504
	.word	-56
	.word	4
	.word	_Label_505
	.word	-60
	.word	4
	.word	_Label_506
	.word	-64
	.word	4
	.word	_Label_507
	.word	-68
	.word	4
	.word	_Label_508
	.word	-72
	.word	4
	.word	_Label_509
	.word	-76
	.word	4
	.word	_Label_510
	.word	-80
	.word	4
	.word	_Label_511
	.word	-84
	.word	4
	.word	_Label_512
	.word	-88
	.word	4
	.word	_Label_513
	.word	-92
	.word	4
	.word	_Label_514
	.word	-96
	.word	4
	.word	_Label_515
	.word	-100
	.word	4
	.word	_Label_516
	.word	-104
	.word	4
	.word	_Label_517
	.word	-108
	.word	4
	.word	_Label_518
	.word	-112
	.word	4
	.word	_Label_519
	.word	-116
	.word	4
	.word	_Label_520
	.word	-120
	.word	4
	.word	_Label_521
	.word	-124
	.word	4
	.word	_Label_522
	.word	-128
	.word	4
	.word	_Label_523
	.word	-132
	.word	4
	.word	_Label_524
	.word	-136
	.word	4
	.word	_Label_525
	.word	-140
	.word	4
	.word	_Label_526
	.word	-144
	.word	4
	.word	_Label_527
	.word	-148
	.word	4
	.word	_Label_528
	.word	-152
	.word	4
	.word	_Label_529
	.word	-156
	.word	4
	.word	_Label_530
	.word	-160
	.word	4
	.word	_Label_531
	.word	-164
	.word	4
	.word	_Label_532
	.word	-168
	.word	4
	.word	_Label_533
	.word	-172
	.word	4
	.word	_Label_534
	.word	-176
	.word	4
	.word	_Label_535
	.word	-180
	.word	4
	.word	0
_Label_491:
	.ascii	"runStmts\0"
	.align
_Label_492:
	.byte	'I'
	.ascii	"startLoc\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_533:
	.byte	'I'
	.ascii	"curLoc\0"
	.align
_Label_534:
	.byte	'I'
	.ascii	"rv\0"
	.align
_Label_535:
	.byte	'P'
	.ascii	"ctlLine\0"
	.align
! 
! ===============  FUNCTION FindNextWord  ===============
! 
_function_77_FindNextWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_77_FindNextWord,r1
	push	r1
	mov	49,r1
_Label_1974:
	push	r0
	sub	r1,1,r1
	bne	_Label_1974
	mov	375,r13		! source line 375
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0WH",r10
_Label_536:
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_540 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_541 = *cmd  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if _temp_540 >= _temp_541 then goto _Label_538		(int)
	load	[r14+-200],r1
	load	[r14+-196],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_538
!	_Label_539	jmp	_Label_539
_Label_539:
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_543 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   Move address of cmd [_temp_543 ] into _temp_544
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	store	r2,[r14+-188]
!   Data Move: _temp_542 = *_temp_544  (sizeInBytes=1)
	load	[r14+-188],r1
	loadb	[r1],r1
	storeb	r1,[r14+-24]
!   _temp_545 = _temp_542 XOR 32		(bool)
	loadb	[r14+-24],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-23]
!   if _temp_545 then goto _Label_538 else goto _Label_537
	loadb	[r14+-23],r1
	cmp	r1,0
	be	_Label_537
	jmp	_Label_538
_Label_537:
	mov	384,r13		! source line 384
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0AS",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_547 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   _temp_546 = _temp_547 + 1		(int)
	load	[r14+-180],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
!   Data Move: *pos = _temp_546  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r14+16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_536
_Label_538:
! ASSIGNMENT STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0AS",r10
!   if intIsZero (start) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_548 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   Data Move: *start = _temp_548  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r14+12],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0IF",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_551 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_552 = *cmd  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if _temp_551 < _temp_552 then goto _Label_550		(int)
	load	[r14+-172],r1
	load	[r14+-168],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_550
!	_Label_549	jmp	_Label_549
_Label_549:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
!   if intIsZero (kind) then goto _runtimeErrorNullPointer
	load	[r14+24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kind = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+24],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_550:
! IF STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0IF",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_556 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_557 = *cmd  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if _temp_556 >= _temp_557 then goto _Label_554		(int)
	load	[r14+-164],r1
	load	[r14+-160],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_554
!	_Label_555	jmp	_Label_555
_Label_555:
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_560 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   Move address of cmd [_temp_560 ] into _temp_561
!     make sure index expr is >= 0
	load	[r14+-156],r2
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
	store	r2,[r14+-152]
!   Data Move: _temp_559 = *_temp_561  (sizeInBytes=1)
	load	[r14+-152],r1
	loadb	[r1],r1
	storeb	r1,[r14+-22]
!   _temp_562 = _temp_559 XOR 60		(bool)
	loadb	[r14+-22],r1
	mov	60,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-21]
!   if _temp_562 then goto _Label_558 else goto _Label_553
	loadb	[r14+-21],r1
	cmp	r1,0
	be	_Label_553
	jmp	_Label_558
_Label_558:
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_564 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Move address of cmd [_temp_564 ] into _temp_565
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
	store	r2,[r14+-144]
!   Data Move: _temp_563 = *_temp_565  (sizeInBytes=1)
	load	[r14+-144],r1
	loadb	[r1],r1
	storeb	r1,[r14+-20]
!   _temp_566 = _temp_563 XOR 62		(bool)
	loadb	[r14+-20],r1
	mov	62,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-19]
!   if _temp_566 then goto _Label_554 else goto _Label_553
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_553
	jmp	_Label_554
_Label_553:
! THEN...
	mov	399,r13		! source line 399
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   if intIsZero (kind) then goto _runtimeErrorNullPointer
	load	[r14+24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_568 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   Move address of cmd [_temp_568 ] into _temp_569
!     make sure index expr is >= 0
	load	[r14+-140],r2
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
	store	r2,[r14+-136]
!   Data Move: _temp_567 = *_temp_569  (sizeInBytes=1)
	load	[r14+-136],r1
	loadb	[r1],r1
	storeb	r1,[r14+-18]
!   Data Move: *kind = _temp_567  (sizeInBytes=1)
	loadb	[r14+-18],r1
	load	[r14+24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0AS",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_571 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   _temp_570 = _temp_571 + 1		(int)
	load	[r14+-128],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   Data Move: *pos = _temp_570  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r14+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0AS",r10
!   if intIsZero (len) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *len = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_554:
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_575 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_576 = *cmd  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if _temp_575 >= _temp_576 then goto _Label_573		(int)
	load	[r14+-124],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_573
!	_Label_574	jmp	_Label_574
_Label_574:
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_578 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   Move address of cmd [_temp_578 ] into _temp_579
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	store	r2,[r14+-112]
!   Data Move: _temp_577 = *_temp_579  (sizeInBytes=1)
	load	[r14+-112],r1
	loadb	[r1],r1
	storeb	r1,[r14+-17]
!   _temp_580 = _temp_577 XOR 10		(bool)
	loadb	[r14+-17],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-16]
!   if _temp_580 then goto _Label_573 else goto _Label_572
	loadb	[r14+-16],r1
	cmp	r1,0
	be	_Label_572
	jmp	_Label_573
_Label_572:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0AS",r10
!   if intIsZero (kind) then goto _runtimeErrorNullPointer
	load	[r14+24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kind = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0AS",r10
!   if intIsZero (len) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *len = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_573:
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   if intIsZero (kind) then goto _runtimeErrorNullPointer
	load	[r14+24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kind = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+24],r2
	storeb	r1,[r2]
! WHILE STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0WH",r10
_Label_581:
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_584 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_585 = *cmd  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_584 >= _temp_585 then goto _Label_583		(int)
	load	[r14+-108],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_583
!	_Label_582	jmp	_Label_582
_Label_582:
	mov	414,r13		! source line 414
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_586 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   Move address of cmd [_temp_586 ] into _temp_587
!     make sure index expr is >= 0
	load	[r14+-100],r2
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
	store	r2,[r14+-96]
!   Data Move: ch = *_temp_587  (sizeInBytes=1)
	load	[r14+-96],r1
	loadb	[r1],r1
	storeb	r1,[r14+-25]
! IF STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0IF",r10
!   _temp_590 = ch XOR 34		(bool)
	loadb	[r14+-25],r1
	mov	34,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_590 then goto _Label_589 else goto _Label_588
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_588
	jmp	_Label_589
_Label_588:
! THEN...
	mov	417,r13		! source line 417
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_592 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_591 = _temp_592 + 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Data Move: *pos = _temp_591  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r14+16],r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0WH",r10
_Label_593:
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_596 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_597 = *cmd  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_596 >= _temp_597 then goto _Label_595		(int)
	load	[r14+-84],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_595
!	_Label_594	jmp	_Label_594
_Label_594:
	mov	418,r13		! source line 418
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0IF",r10
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_601 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   Move address of cmd [_temp_601 ] into _temp_602
!     make sure index expr is >= 0
	load	[r14+-76],r2
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
	store	r2,[r14+-72]
!   Data Move: _temp_600 = *_temp_602  (sizeInBytes=1)
	load	[r14+-72],r1
	loadb	[r1],r1
	storeb	r1,[r14+-14]
!   _temp_603 = _temp_600 XOR 34		(bool)
	loadb	[r14+-14],r1
	mov	34,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_603 then goto _Label_599 else goto _Label_598
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_598
	jmp	_Label_599
_Label_598:
! THEN...
	mov	420,r13		! source line 420
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0BR",r10
	jmp	_Label_595
	jmp	_Label_604
_Label_599:
! ELSE...
	mov	422,r13		! source line 422
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0AS",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_606 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_605 = _temp_606 + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Data Move: *pos = _temp_605  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r14+16],r2
	store	r1,[r2]
! END IF...
_Label_604:
! END WHILE...
	jmp	_Label_593
_Label_595:
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_609 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_610 = *cmd  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_609 < _temp_610 then goto _Label_608		(int)
	load	[r14+-60],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_608
!	_Label_607	jmp	_Label_607
_Label_607:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_611 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_611  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_608:
	jmp	_Label_612
_Label_589:
! ELSE...
	mov	429,r13		! source line 429
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0IF",r10
!   _temp_618 = ch XOR 32		(bool)
	loadb	[r14+-25],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-12]
!   if _temp_618 then goto _Label_617 else goto _Label_613
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_613
	jmp	_Label_617
_Label_617:
!   _temp_619 = ch XOR 10		(bool)
	loadb	[r14+-25],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_619 then goto _Label_616 else goto _Label_613
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_613
	jmp	_Label_616
_Label_616:
!   _temp_620 = ch XOR 60		(bool)
	loadb	[r14+-25],r1
	mov	60,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_620 then goto _Label_615 else goto _Label_613
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_613
	jmp	_Label_615
_Label_615:
!   _temp_621 = ch XOR 62		(bool)
	loadb	[r14+-25],r1
	mov	62,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_621 then goto _Label_614 else goto _Label_613
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_613
	jmp	_Label_614
_Label_613:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_583
! END IF...
_Label_614:
! END IF...
_Label_612:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_623 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_622 = _temp_623 + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Data Move: *pos = _temp_622  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r14+16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_581
_Label_583:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   if intIsZero (len) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (pos) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_625 = *pos  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (start) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_626 = *start  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   _temp_624 = _temp_625 - _temp_626		(int)
	load	[r14+-36],r1
	load	[r14+-32],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *len = _temp_624  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_77_FindNextWord:
	.word	_sourceFileName
	.word	_Label_627
	.word	20		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_628
	.word	8
	.word	4
	.word	_Label_629
	.word	12
	.word	4
	.word	_Label_630
	.word	16
	.word	4
	.word	_Label_631
	.word	20
	.word	4
	.word	_Label_632
	.word	24
	.word	4
	.word	_Label_633
	.word	-32
	.word	4
	.word	_Label_634
	.word	-36
	.word	4
	.word	_Label_635
	.word	-40
	.word	4
	.word	_Label_636
	.word	-44
	.word	4
	.word	_Label_637
	.word	-48
	.word	4
	.word	_Label_638
	.word	-9
	.word	1
	.word	_Label_639
	.word	-10
	.word	1
	.word	_Label_640
	.word	-11
	.word	1
	.word	_Label_641
	.word	-12
	.word	1
	.word	_Label_642
	.word	-52
	.word	4
	.word	_Label_643
	.word	-56
	.word	4
	.word	_Label_644
	.word	-60
	.word	4
	.word	_Label_645
	.word	-64
	.word	4
	.word	_Label_646
	.word	-68
	.word	4
	.word	_Label_647
	.word	-13
	.word	1
	.word	_Label_648
	.word	-72
	.word	4
	.word	_Label_649
	.word	-76
	.word	4
	.word	_Label_650
	.word	-14
	.word	1
	.word	_Label_651
	.word	-80
	.word	4
	.word	_Label_652
	.word	-84
	.word	4
	.word	_Label_653
	.word	-88
	.word	4
	.word	_Label_654
	.word	-92
	.word	4
	.word	_Label_655
	.word	-15
	.word	1
	.word	_Label_656
	.word	-96
	.word	4
	.word	_Label_657
	.word	-100
	.word	4
	.word	_Label_658
	.word	-104
	.word	4
	.word	_Label_659
	.word	-108
	.word	4
	.word	_Label_660
	.word	-16
	.word	1
	.word	_Label_661
	.word	-112
	.word	4
	.word	_Label_662
	.word	-116
	.word	4
	.word	_Label_663
	.word	-17
	.word	1
	.word	_Label_664
	.word	-120
	.word	4
	.word	_Label_665
	.word	-124
	.word	4
	.word	_Label_666
	.word	-128
	.word	4
	.word	_Label_667
	.word	-132
	.word	4
	.word	_Label_668
	.word	-136
	.word	4
	.word	_Label_669
	.word	-140
	.word	4
	.word	_Label_670
	.word	-18
	.word	1
	.word	_Label_671
	.word	-19
	.word	1
	.word	_Label_672
	.word	-144
	.word	4
	.word	_Label_673
	.word	-148
	.word	4
	.word	_Label_674
	.word	-20
	.word	1
	.word	_Label_675
	.word	-21
	.word	1
	.word	_Label_676
	.word	-152
	.word	4
	.word	_Label_677
	.word	-156
	.word	4
	.word	_Label_678
	.word	-22
	.word	1
	.word	_Label_679
	.word	-160
	.word	4
	.word	_Label_680
	.word	-164
	.word	4
	.word	_Label_681
	.word	-168
	.word	4
	.word	_Label_682
	.word	-172
	.word	4
	.word	_Label_683
	.word	-176
	.word	4
	.word	_Label_684
	.word	-180
	.word	4
	.word	_Label_685
	.word	-184
	.word	4
	.word	_Label_686
	.word	-23
	.word	1
	.word	_Label_687
	.word	-188
	.word	4
	.word	_Label_688
	.word	-192
	.word	4
	.word	_Label_689
	.word	-24
	.word	1
	.word	_Label_690
	.word	-196
	.word	4
	.word	_Label_691
	.word	-200
	.word	4
	.word	_Label_692
	.word	-25
	.word	1
	.word	0
_Label_627:
	.ascii	"FindNextWord\0"
	.align
_Label_628:
	.byte	'P'
	.ascii	"cmd\0"
	.align
_Label_629:
	.byte	'P'
	.ascii	"start\0"
	.align
_Label_630:
	.byte	'P'
	.ascii	"pos\0"
	.align
_Label_631:
	.byte	'P'
	.ascii	"len\0"
	.align
_Label_632:
	.byte	'P'
	.ascii	"kind\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_638:
	.byte	'C'
	.ascii	"_temp_621\0"
	.align
_Label_639:
	.byte	'C'
	.ascii	"_temp_620\0"
	.align
_Label_640:
	.byte	'C'
	.ascii	"_temp_619\0"
	.align
_Label_641:
	.byte	'C'
	.ascii	"_temp_618\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_647:
	.byte	'C'
	.ascii	"_temp_603\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_650:
	.byte	'C'
	.ascii	"_temp_600\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_655:
	.byte	'C'
	.ascii	"_temp_590\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_660:
	.byte	'C'
	.ascii	"_temp_580\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_663:
	.byte	'C'
	.ascii	"_temp_577\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_670:
	.byte	'C'
	.ascii	"_temp_567\0"
	.align
_Label_671:
	.byte	'C'
	.ascii	"_temp_566\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_674:
	.byte	'C'
	.ascii	"_temp_563\0"
	.align
_Label_675:
	.byte	'C'
	.ascii	"_temp_562\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_678:
	.byte	'C'
	.ascii	"_temp_559\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_686:
	.byte	'C'
	.ascii	"_temp_545\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_689:
	.byte	'C'
	.ascii	"_temp_542\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_692:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION expand  ===============
! 
_function_76_expand:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_76_expand,r1
	push	r1
	mov	406,r1
_Label_1975:
	push	r0
	sub	r1,1,r1
	bne	_Label_1975
	mov	444,r13		! source line 444
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *outStr = 512  (sizeInBytes=4)
	mov	512,r1
	load	[r14+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   NEW ARRAY Constructor...
!   _temp_694 = &_temp_693
	add	r14,-972,r1
	store	r1,[r14+-456]
!   _temp_694 = _temp_694 + 4
	load	[r14+-456],r1
	add	r1,4,r1
	store	r1,[r14+-456]
!   Next value...
	mov	512,r1
	store	r1,[r14+-452]
_Label_696:
!   Data Move: *_temp_694 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-456],r2
	storeb	r1,[r2]
!   _temp_694 = _temp_694 + 1
	load	[r14+-456],r1
	add	r1,1,r1
	store	r1,[r14+-456]
!   _temp_695 = _temp_695 + -1
	load	[r14+-452],r1
	add	r1,-1,r1
	store	r1,[r14+-452]
!   if intNotZero (_temp_695) then goto _Label_696
	load	[r14+-452],r1
	cmp	r1,r0
	bne	_Label_696
!   Initialize the array size...
	mov	512,r1
	store	r1,[r14+-972]
!   _temp_697 = &_temp_693
	add	r14,-972,r1
	store	r1,[r14+-448]
!   make sure array has size 512
	load	[r14+12],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   make sure array has size 512
	load	[r14+-448],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *outStr = *_temp_697  (sizeInBytes=516)
	load	[r14+-448],r5
	load	[r14+12],r4
	mov	129,r3
_Label_1976:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1976
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_698 = *inStr  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-444]
!   endIn = _temp_698 - 1		(int)
	load	[r14+-444],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-992]
! WHILE STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0WH",r10
_Label_699:
!   if endIn <= 0 then goto _Label_701		(int)
	load	[r14+-992],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_701
!	_Label_702	jmp	_Label_702
_Label_702:
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of inStr [endIn ] into _temp_704
!     make sure index expr is >= 0
	load	[r14+-992],r2
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
	store	r2,[r14+-440]
!   Data Move: _temp_703 = *_temp_704  (sizeInBytes=1)
	load	[r14+-440],r1
	loadb	[r1],r1
	storeb	r1,[r14+-32]
!   _temp_705 = _temp_703 XOR 32		(bool)
	loadb	[r14+-32],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-31]
!   if _temp_705 then goto _Label_701 else goto _Label_700
	loadb	[r14+-31],r1
	cmp	r1,0
	be	_Label_700
	jmp	_Label_701
_Label_700:
	mov	462,r13		! source line 462
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   endIn = endIn - 1		(int)
	load	[r14+-992],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-992]
! END WHILE...
	jmp	_Label_699
_Label_701:
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   inX = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-976]
! ASSIGNMENT STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0AS",r10
!   outX = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-980]
! WHILE STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0WH",r10
_Label_706:
!   if inX >= endIn then goto _Label_708		(int)
	load	[r14+-976],r1
	load	[r14+-992],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_708
!	_Label_709	jmp	_Label_709
_Label_709:
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_710 = *outStr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-436]
!   if outX >= _temp_710 then goto _Label_708		(int)
	load	[r14+-980],r1
	load	[r14+-436],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_708
!	_Label_707	jmp	_Label_707
_Label_707:
	mov	465,r13		! source line 465
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0IF",r10
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of inStr [inX ] into _temp_714
!     make sure index expr is >= 0
	load	[r14+-976],r2
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
	store	r2,[r14+-432]
!   Data Move: _temp_713 = *_temp_714  (sizeInBytes=1)
	load	[r14+-432],r1
	loadb	[r1],r1
	storeb	r1,[r14+-30]
!   _temp_715 = _temp_713 XOR 36		(bool)
	loadb	[r14+-30],r1
	mov	36,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-29]
!   if _temp_715 then goto _Label_712 else goto _Label_711
	loadb	[r14+-29],r1
	cmp	r1,0
	be	_Label_711
	jmp	_Label_712
_Label_711:
! THEN...
	mov	467,r13		! source line 467
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0AS",r10
!   inX = inX + 1		(int)
	load	[r14+-976],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-976]
! SWITCH STATEMENT (using series of tests)...
	mov	468,r13		! source line 468
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of inStr [inX ] into _temp_724
!     make sure index expr is >= 0
	load	[r14+-976],r2
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
	store	r2,[r14+-424]
!   Data Move: _temp_723 = *_temp_724  (sizeInBytes=1)
	load	[r14+-424],r1
	loadb	[r1],r1
	storeb	r1,[r14+-28]
!   _temp_722 = charToInt (_temp_723)
	loadb	[r14+-28],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-428]
!   Branch to the right case label
	load	[r14+-428],r1
	cmp	r1,123
	be	_Label_718
	cmp	r1,63
	be	_Label_719
	cmp	r1,36
	be	_Label_720
	cmp	r1,40
	be	_Label_721
	jmp	_Label_716
! CASE 123...
_Label_718:
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
!   inX = inX + 1		(int)
	load	[r14+-976],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-976]
! ASSIGNMENT STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0AS",r10
!   inY = inX		(4 bytes)
	load	[r14+-976],r1
	store	r1,[r14+-984]
! WHILE STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0WH",r10
_Label_725:
!   if inY >= endIn then goto _Label_727		(int)
	load	[r14+-984],r1
	load	[r14+-992],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_727
!	_Label_728	jmp	_Label_728
_Label_728:
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of inStr [inY ] into _temp_730
!     make sure index expr is >= 0
	load	[r14+-984],r2
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
	store	r2,[r14+-420]
!   Data Move: _temp_729 = *_temp_730  (sizeInBytes=1)
	load	[r14+-420],r1
	loadb	[r1],r1
	storeb	r1,[r14+-27]
!   _temp_731 = _temp_729 XOR 125		(bool)
	loadb	[r14+-27],r1
	mov	125,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-26]
!   if _temp_731 then goto _Label_726 else goto _Label_727
	loadb	[r14+-26],r1
	cmp	r1,0
	be	_Label_727
	jmp	_Label_726
_Label_726:
	mov	473,r13		! source line 473
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0AS",r10
!   inY = inY + 1		(int)
	load	[r14+-984],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-984]
! END WHILE...
	jmp	_Label_725
_Label_727:
! IF STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0IF",r10
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_734 = *inStr  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-416]
!   if inY != _temp_734 then goto _Label_733		(int)
	load	[r14+-984],r1
	load	[r14+-416],r2
	cmp	r1,r2
	bne	_Label_733
!	_Label_732	jmp	_Label_732
_Label_732:
! THEN...
	mov	477,r13		! source line 477
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_735 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1628,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_733:
! IF STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0IF",r10
!   _temp_738 = inY - inX		(int)
	load	[r14+-984],r1
	load	[r14+-976],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-408]
!   if _temp_738 <= 50 then goto _Label_737		(int)
	load	[r14+-408],r1
	mov	50,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_737
!	_Label_736	jmp	_Label_736
_Label_736:
! THEN...
	mov	481,r13		! source line 481
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_739 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-404]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-404],r1
	store	r1,[r15+0]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1628,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_737:
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   _temp_740 = &envName
	add	r14,-1068,r1
	store	r1,[r14+-400]
!   if intIsZero (_temp_740) then goto _runtimeErrorNullPointer
	load	[r14+-400],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_741 = inY - inX		(int)
	load	[r14+-984],r1
	load	[r14+-976],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
!   Data Move: *_temp_740 = _temp_741  (sizeInBytes=4)
	load	[r14+-396],r1
	load	[r14+-400],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_746 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
!   Calculate and save the FOR-LOOP ending value
!   _temp_748 = inY - inX		(int)
	load	[r14+-984],r1
	load	[r14+-976],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
!   _temp_747 = _temp_748 - 1		(int)
	load	[r14+-384],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
!   Initialize FOR-LOOP index variable
!   Data Move: cpX = _temp_746  (sizeInBytes=4)
	load	[r14+-392],r1
	store	r1,[r14+-988]
_Label_742:
!   Perform the FOR-LOOP termination test
!   if cpX > _temp_747 then goto _Label_745		
	load	[r14+-988],r1
	load	[r14+-388],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_745
_Label_743:
	mov	485,r13		! source line 485
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   _temp_749 = &envName
	add	r14,-1068,r1
	store	r1,[r14+-380]
!   Move address of _temp_749 [cpX ] into _temp_750
!     make sure index expr is >= 0
	load	[r14+-988],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-380],r1
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
	store	r2,[r14+-376]
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_752 = inX + cpX		(int)
	load	[r14+-976],r1
	load	[r14+-988],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
!   Move address of inStr [_temp_752 ] into _temp_753
!     make sure index expr is >= 0
	load	[r14+-372],r2
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
	store	r2,[r14+-368]
!   Data Move: _temp_751 = *_temp_753  (sizeInBytes=1)
	load	[r14+-368],r1
	loadb	[r1],r1
	storeb	r1,[r14+-25]
!   Data Move: *_temp_750 = _temp_751  (sizeInBytes=1)
	loadb	[r14+-25],r1
	load	[r14+-376],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_744:
!   cpX = cpX + 1
	load	[r14+-988],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-988]
	jmp	_Label_742
! END FOR
_Label_745:
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   _temp_754 = &envName
	add	r14,-1068,r1
	store	r1,[r14+-364]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CA",r10
	call	_P_Environ_getEnv
!   Retrieve Result: targetName=valP  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1012]
! IF STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0IF",r10
!   if intIsZero (valP) then goto _Label_756
	load	[r14+-1012],r1
	cmp	r1,r0
	be	_Label_756
!	_Label_755	jmp	_Label_755
_Label_755:
! THEN...
	mov	490,r13		! source line 490
	mov	"\0\0TN",r10
! FOR STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_761 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-360]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (valP) then goto _runtimeErrorNullPointer
	load	[r14+-1012],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_763 = *valP  (sizeInBytes=4)
	load	[r14+-1012],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   _temp_762 = _temp_763 - 1		(int)
	load	[r14+-352],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-356]
!   Initialize FOR-LOOP index variable
!   Data Move: cpX = _temp_761  (sizeInBytes=4)
	load	[r14+-360],r1
	store	r1,[r14+-988]
_Label_757:
!   Perform the FOR-LOOP termination test
!   if cpX > _temp_762 then goto _Label_760		
	load	[r14+-988],r1
	load	[r14+-356],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_760
_Label_758:
	mov	490,r13		! source line 490
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of outStr [outX ] into _temp_764
!     make sure index expr is >= 0
	load	[r14+-980],r2
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
	store	r2,[r14+-348]
!   if intIsZero (valP) then goto _runtimeErrorNullPointer
	load	[r14+-1012],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of valP [cpX ] into _temp_766
!     make sure index expr is >= 0
	load	[r14+-988],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-1012],r1
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
	store	r2,[r14+-344]
!   Data Move: _temp_765 = *_temp_766  (sizeInBytes=1)
	load	[r14+-344],r1
	loadb	[r1],r1
	storeb	r1,[r14+-24]
!   Data Move: *_temp_764 = _temp_765  (sizeInBytes=1)
	loadb	[r14+-24],r1
	load	[r14+-348],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0AS",r10
!   outX = outX + 1		(int)
	load	[r14+-980],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-980]
!   Increment the FOR-LOOP index variable and jump back
_Label_759:
!   cpX = cpX + 1
	load	[r14+-988],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-988]
	jmp	_Label_757
! END FOR
_Label_760:
! END IF...
_Label_756:
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   inX = inY + 1		(int)
	load	[r14+-984],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-976]
! BREAK STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0BR",r10
	jmp	_Label_717
! CASE 63...
_Label_719:
! CASE 36...
_Label_720:
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   _temp_767 = &numStr
	add	r14,-1088,r1
	store	r1,[r14+-340]
!   if intIsZero (_temp_767) then goto _runtimeErrorNullPointer
	load	[r14+-340],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_767 = 14  (sizeInBytes=4)
	mov	14,r1
	load	[r14+-340],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0IF",r10
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of inStr [inX ] into _temp_771
!     make sure index expr is >= 0
	load	[r14+-976],r2
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
	store	r2,[r14+-336]
!   Data Move: _temp_770 = *_temp_771  (sizeInBytes=1)
	load	[r14+-336],r1
	loadb	[r1],r1
	storeb	r1,[r14+-23]
!   _temp_772 = _temp_770 XOR 63		(bool)
	loadb	[r14+-23],r1
	mov	63,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_772 then goto _Label_769 else goto _Label_768
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_768
	jmp	_Label_769
_Label_768:
! THEN...
	mov	502,r13		! source line 502
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_773 = &numStr
	add	r14,-1088,r1
	store	r1,[r14+-332]
!   Prepare Argument: offset=8  value=_Global_exitVal  sizeInBytes=4
	set	_Global_exitVal,r1
	load	[r1],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_773  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CA",r10
	call	_P_UserLib_IntToString
	jmp	_Label_774
_Label_769:
! ELSE...
	mov	504,r13		! source line 504
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetPid
!   Retrieve Result: targetName=_temp_775  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
!   _temp_776 = &numStr
	add	r14,-1088,r1
	store	r1,[r14+-324]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_776  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CA",r10
	call	_P_UserLib_IntToString
! END IF...
_Label_774:
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   cpX = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-988]
! WHILE STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0WH",r10
_Label_777:
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_781 = *outStr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   if outX >= _temp_781 then goto _Label_779		(int)
	load	[r14+-980],r1
	load	[r14+-320],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_779
!	_Label_780	jmp	_Label_780
_Label_780:
!   _temp_783 = &numStr
	add	r14,-1088,r1
	store	r1,[r14+-312]
!   Data Move: _temp_782 = *_temp_783  (sizeInBytes=4)
	load	[r14+-312],r1
	load	[r1],r1
	store	r1,[r14+-316]
!   if cpX >= _temp_782 then goto _Label_779		(int)
	load	[r14+-988],r1
	load	[r14+-316],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_779
!	_Label_778	jmp	_Label_778
_Label_778:
	mov	507,r13		! source line 507
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of outStr [outX ] into _temp_784
!     make sure index expr is >= 0
	load	[r14+-980],r2
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
	store	r2,[r14+-308]
!   _temp_786 = &numStr
	add	r14,-1088,r1
	store	r1,[r14+-304]
!   Move address of _temp_786 [cpX ] into _temp_787
!     make sure index expr is >= 0
	load	[r14+-988],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-304],r1
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
	store	r2,[r14+-300]
!   Data Move: _temp_785 = *_temp_787  (sizeInBytes=1)
	load	[r14+-300],r1
	loadb	[r1],r1
	storeb	r1,[r14+-21]
!   Data Move: *_temp_784 = _temp_785  (sizeInBytes=1)
	loadb	[r14+-21],r1
	load	[r14+-308],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   outX = outX + 1		(int)
	load	[r14+-980],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-980]
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   cpX = cpX + 1		(int)
	load	[r14+-988],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-988]
! END WHILE...
	jmp	_Label_777
_Label_779:
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   inX = inX + 1		(int)
	load	[r14+-976],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-976]
! BREAK STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0BR",r10
	jmp	_Label_717
! CASE 40...
_Label_721:
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   _temp_788 = &FDs
	add	r14,-1616,r1
	store	r1,[r14+-296]
!   NEW ARRAY Constructor...
!   _temp_790 = &_temp_789
	add	r14,-292,r1
	store	r1,[r14+-280]
!   _temp_790 = _temp_790 + 4
	load	[r14+-280],r1
	add	r1,4,r1
	store	r1,[r14+-280]
!   Next value...
	mov	2,r1
	store	r1,[r14+-276]
_Label_792:
!   Data Move: *_temp_790 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-280],r2
	store	r1,[r2]
!   _temp_790 = _temp_790 + 4
	load	[r14+-280],r1
	add	r1,4,r1
	store	r1,[r14+-280]
!   _temp_791 = _temp_791 + -1
	load	[r14+-276],r1
	add	r1,-1,r1
	store	r1,[r14+-276]
!   if intNotZero (_temp_791) then goto _Label_792
	load	[r14+-276],r1
	cmp	r1,r0
	bne	_Label_792
!   Initialize the array size...
	mov	2,r1
	store	r1,[r14+-292]
!   _temp_793 = &_temp_789
	add	r14,-292,r1
	store	r1,[r14+-272]
!   make sure array has size 2
	load	[r14+-296],r1
	load	[r1],r1
	set	2, r2
	cmp	r1,0
	be	_Label_1977
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1977:
!   make sure array has size 2
	load	[r14+-272],r1
	load	[r1],r1
	set	2, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_788 = *_temp_793  (sizeInBytes=12)
	load	[r14+-272],r5
	load	[r14+-296],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
! ASSIGNMENT STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0AS",r10
!   numParen = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-996]
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   inX = inX + 1		(int)
	load	[r14+-976],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-976]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   inY = inX		(4 bytes)
	load	[r14+-976],r1
	store	r1,[r14+-984]
! WHILE STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0WH",r10
_Label_794:
!   if inY >= endIn then goto _Label_796		(int)
	load	[r14+-984],r1
	load	[r14+-992],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_796
!	_Label_797	jmp	_Label_797
_Label_797:
!   if numParen <= 1 then goto _Label_798		(int)
	load	[r14+-996],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_798
	jmp	_Label_795
_Label_798:
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of inStr [inY ] into _temp_800
!     make sure index expr is >= 0
	load	[r14+-984],r2
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
	store	r2,[r14+-268]
!   Data Move: _temp_799 = *_temp_800  (sizeInBytes=1)
	load	[r14+-268],r1
	loadb	[r1],r1
	storeb	r1,[r14+-20]
!   _temp_801 = _temp_799 XOR 41		(bool)
	loadb	[r14+-20],r1
	mov	41,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-19]
!   if _temp_801 then goto _Label_795 else goto _Label_796
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_796
	jmp	_Label_795
_Label_795:
	mov	522,r13		! source line 522
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0IF",r10
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of inStr [inY ] into _temp_805
!     make sure index expr is >= 0
	load	[r14+-984],r2
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
	store	r2,[r14+-264]
!   Data Move: _temp_804 = *_temp_805  (sizeInBytes=1)
	load	[r14+-264],r1
	loadb	[r1],r1
	storeb	r1,[r14+-18]
!   _temp_806 = _temp_804 XOR 40		(bool)
	loadb	[r14+-18],r1
	mov	40,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_806 then goto _Label_803 else goto _Label_802
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_802
	jmp	_Label_803
_Label_802:
! THEN...
	mov	523,r13		! source line 523
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   numParen = numParen + 1		(int)
	load	[r14+-996],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-996]
! END IF...
_Label_803:
! IF STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0IF",r10
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of inStr [inY ] into _temp_810
!     make sure index expr is >= 0
	load	[r14+-984],r2
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
	store	r2,[r14+-260]
!   Data Move: _temp_809 = *_temp_810  (sizeInBytes=1)
	load	[r14+-260],r1
	loadb	[r1],r1
	storeb	r1,[r14+-16]
!   _temp_811 = _temp_809 XOR 41		(bool)
	loadb	[r14+-16],r1
	mov	41,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_811 then goto _Label_808 else goto _Label_807
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_807
	jmp	_Label_808
_Label_807:
! THEN...
	mov	524,r13		! source line 524
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   numParen = numParen - 1		(int)
	load	[r14+-996],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-996]
! END IF...
_Label_808:
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   inY = inY + 1		(int)
	load	[r14+-984],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-984]
! END WHILE...
	jmp	_Label_794
_Label_796:
! IF STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0IF",r10
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_814 = *inStr  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if inY != _temp_814 then goto _Label_813		(int)
	load	[r14+-984],r1
	load	[r14+-256],r2
	cmp	r1,r2
	bne	_Label_813
!	_Label_812	jmp	_Label_812
_Label_812:
! THEN...
	mov	528,r13		! source line 528
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_815 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1628,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_813:
! ASSIGNMENT STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0AS",r10
!   _temp_816 = &tempStr
	add	r14,-1604,r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_816) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_818 = inY - inX		(int)
	load	[r14+-984],r1
	load	[r14+-976],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
!   _temp_817 = _temp_818 + 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   Data Move: *_temp_816 = _temp_817  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r14+-248],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_823 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_825 = inY - inX		(int)
	load	[r14+-984],r1
	load	[r14+-976],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-228]
!   _temp_824 = _temp_825 - 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: cpX = _temp_823  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-988]
_Label_819:
!   Perform the FOR-LOOP termination test
!   if cpX > _temp_824 then goto _Label_822		
	load	[r14+-988],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_822
_Label_820:
	mov	532,r13		! source line 532
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0AS",r10
!   _temp_826 = &tempStr
	add	r14,-1604,r1
	store	r1,[r14+-224]
!   Move address of _temp_826 [cpX ] into _temp_827
!     make sure index expr is >= 0
	load	[r14+-988],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
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
	store	r2,[r14+-220]
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_829 = inX + cpX		(int)
	load	[r14+-976],r1
	load	[r14+-988],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   Move address of inStr [_temp_829 ] into _temp_830
!     make sure index expr is >= 0
	load	[r14+-216],r2
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
	store	r2,[r14+-212]
!   Data Move: _temp_828 = *_temp_830  (sizeInBytes=1)
	load	[r14+-212],r1
	loadb	[r1],r1
	storeb	r1,[r14+-14]
!   Data Move: *_temp_827 = _temp_828  (sizeInBytes=1)
	loadb	[r14+-14],r1
	load	[r14+-220],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_821:
!   cpX = cpX + 1
	load	[r14+-988],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-988]
	jmp	_Label_819
! END FOR
_Label_822:
! ASSIGNMENT STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0AS",r10
!   _temp_831 = &tempStr
	add	r14,-1604,r1
	store	r1,[r14+-208]
!   _temp_832 = inY - inX		(int)
	load	[r14+-984],r1
	load	[r14+-976],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   Move address of _temp_831 [_temp_832 ] into _temp_833
!     make sure index expr is >= 0
	load	[r14+-204],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-208],r1
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
	store	r2,[r14+-200]
!   Data Move: *_temp_833 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-200],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0AS",r10
!   inX = inY + 1		(int)
	load	[r14+-984],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-976]
! IF STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0IF",r10
!   _temp_837 = &FDs
	add	r14,-1616,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=_temp_837  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Call the function
	mov	540,r13		! source line 540
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Pipe
!   Retrieve Result: targetName=_temp_836  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
!   if _temp_836 >= 0 then goto _Label_835		(int)
	load	[r14+-196],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_835
!	_Label_834	jmp	_Label_834
_Label_834:
! THEN...
	mov	541,r13		! source line 541
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1628,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_835:
! ASSIGNMENT STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0AS",r10
!   _temp_838 = &tempStr
	add	r14,-1604,r1
	store	r1,[r14+-188]
!   _temp_840 = &FDs
	add	r14,-1616,r1
	store	r1,[r14+-180]
!   Move address of _temp_840 [1 ] into _temp_841
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
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
	store	r2,[r14+-176]
!   Data Move: _temp_839 = *_temp_841  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_839  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+12]
!   Call the function
	mov	545,r13		! source line 545
	mov	"\0\0CA",r10
	call	_function_74_ProcessLine
!   Retrieve Result: targetName=child  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1000]
! CALL STATEMENT...
!   _temp_843 = &FDs
	add	r14,-1616,r1
	store	r1,[r14+-168]
!   Move address of _temp_843 [1 ] into _temp_844
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   Data Move: _temp_842 = *_temp_844  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_842  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	546,r13		! source line 546
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
!   if child >= 0 then goto _Label_846		(int)
	load	[r14+-1000],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_846
!	_Label_845	jmp	_Label_845
_Label_845:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_848 = &FDs
	add	r14,-1616,r1
	store	r1,[r14+-156]
!   Move address of _temp_848 [0 ] into _temp_849
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
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
	store	r2,[r14+-152]
!   Data Move: _temp_847 = *_temp_849  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	548,r13		! source line 548
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1628,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_846:
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   outStrt = outX		(4 bytes)
	load	[r14+-980],r1
	store	r1,[r14+-1008]
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
!   charsRd = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-1004]
! WHILE STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0WH",r10
_Label_850:
!   if charsRd <= 0 then goto _Label_852		(int)
	load	[r14+-1004],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_852
!	_Label_853	jmp	_Label_853
_Label_853:
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_854 = *outStr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if outX >= _temp_854 then goto _Label_852		(int)
	load	[r14+-980],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_852
!	_Label_851	jmp	_Label_851
_Label_851:
	mov	555,r13		! source line 555
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0AS",r10
!   _temp_856 = &FDs
	add	r14,-1616,r1
	store	r1,[r14+-140]
!   Move address of _temp_856 [0 ] into _temp_857
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   Data Move: _temp_855 = *_temp_857  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of outStr [outX ] into _temp_859
!     make sure index expr is >= 0
	load	[r14+-980],r2
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
	store	r2,[r14+-128]
!   _temp_858 = _temp_859		(4 bytes)
	load	[r14+-128],r1
	store	r1,[r14+-132]
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_861 = *outStr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_860 = _temp_861 - outX		(int)
	load	[r14+-120],r1
	load	[r14+-980],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_855  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_858  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_860  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	556,r13		! source line 556
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=charsRd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1004]
! ASSIGNMENT STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0AS",r10
!   outX = outX + charsRd		(int)
	load	[r14+-980],r1
	load	[r14+-1004],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-980]
! END WHILE...
	jmp	_Label_850
_Label_852:
! IF STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0IF",r10
!   if intIsZero (charsRd) then goto _Label_863
	load	[r14+-1004],r1
	cmp	r1,r0
	be	_Label_863
!	_Label_862	jmp	_Label_862
_Label_862:
! THEN...
	mov	561,r13		! source line 561
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_864 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_864  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	561,r13		! source line 561
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! WHILE STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0WH",r10
_Label_865:
!   if intIsZero (charsRd) then goto _Label_867
	load	[r14+-1004],r1
	cmp	r1,r0
	be	_Label_867
!	_Label_866	jmp	_Label_866
_Label_866:
	mov	562,r13		! source line 562
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   _temp_869 = &FDs
	add	r14,-1616,r1
	store	r1,[r14+-108]
!   Move address of _temp_869 [0 ] into _temp_870
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
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
	store	r2,[r14+-104]
!   Data Move: _temp_868 = *_temp_870  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of outStr [0 ] into _temp_872
!     make sure index expr is >= 0
	mov	0,r2
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
	store	r2,[r14+-96]
!   _temp_871 = _temp_872		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-100]
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_873 = *outStr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_871  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_873  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Call the function
	mov	563,r13		! source line 563
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=charsRd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1004]
! END WHILE...
	jmp	_Label_865
_Label_867:
! CALL STATEMENT...
!   _temp_875 = &FDs
	add	r14,-1616,r1
	store	r1,[r14+-84]
!   Move address of _temp_875 [0 ] into _temp_876
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
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
	store	r2,[r14+-80]
!   Data Move: _temp_874 = *_temp_876  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_874  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	565,r13		! source line 565
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! IF STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0IF",r10
!   if child <= 0 then goto _Label_878		(int)
	load	[r14+-1000],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_878
!	_Label_877	jmp	_Label_877
_Label_877:
! THEN...
	mov	567,r13		! source line 567
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=child  sizeInBytes=4
	load	[r14+-1000],r1
	store	r1,[r15+0]
!   Call the function
	mov	567,r13		! source line 567
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_Global_exitVal  sizeInBytes=4
	load	[r15],r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! END IF...
_Label_878:
! RETURN STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1628,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_863:
! CALL STATEMENT...
!   _temp_880 = &FDs
	add	r14,-1616,r1
	store	r1,[r14+-72]
!   Move address of _temp_880 [0 ] into _temp_881
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-68]
!   Data Move: _temp_879 = *_temp_881  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_879  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	573,r13		! source line 573
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
!   if child <= 0 then goto _Label_883		(int)
	load	[r14+-1000],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_883
!	_Label_882	jmp	_Label_882
_Label_882:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	575,r13		! source line 575
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=child  sizeInBytes=4
	load	[r14+-1000],r1
	store	r1,[r15+0]
!   Call the function
	mov	575,r13		! source line 575
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_Global_exitVal  sizeInBytes=4
	load	[r15],r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! END IF...
_Label_883:
! IF STATEMENT...
	mov	579,r13		! source line 579
	mov	"\0\0IF",r10
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of outStr [outX ] into _temp_887
!     make sure index expr is >= 0
	load	[r14+-980],r2
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
	store	r2,[r14+-64]
!   Data Move: _temp_886 = *_temp_887  (sizeInBytes=1)
	load	[r14+-64],r1
	loadb	[r1],r1
	storeb	r1,[r14+-13]
!   _temp_888 = _temp_886 XOR 10		(bool)
	loadb	[r14+-13],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-12]
!   if _temp_888 then goto _Label_885 else goto _Label_884
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_884
	jmp	_Label_885
_Label_884:
! THEN...
	mov	580,r13		! source line 580
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	580,r13		! source line 580
	mov	"\0\0AS",r10
!   outX = outX - 1		(int)
	load	[r14+-980],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-980]
! END IF...
_Label_885:
! WHILE STATEMENT...
	mov	582,r13		! source line 582
	mov	"\0\0WH",r10
_Label_889:
!   if outStrt > outX then goto _Label_891		(int)
	load	[r14+-1008],r1
	load	[r14+-980],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_891
!	_Label_890	jmp	_Label_890
_Label_890:
	mov	582,r13		! source line 582
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0IF",r10
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of outStr [outStrt ] into _temp_895
!     make sure index expr is >= 0
	load	[r14+-1008],r2
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
	store	r2,[r14+-60]
!   Data Move: _temp_894 = *_temp_895  (sizeInBytes=1)
	load	[r14+-60],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_896 = _temp_894 XOR 10		(bool)
	loadb	[r14+-11],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_896 then goto _Label_893 else goto _Label_892
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_892
	jmp	_Label_893
_Label_892:
! THEN...
	mov	584,r13		! source line 584
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of outStr [outStrt ] into _temp_897
!     make sure index expr is >= 0
	load	[r14+-1008],r2
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
	store	r2,[r14+-56]
!   Data Move: *_temp_897 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-56],r2
	storeb	r1,[r2]
! END IF...
_Label_893:
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
!   outStrt = outStrt + 1		(int)
	load	[r14+-1008],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1008]
! END WHILE...
	jmp	_Label_889
_Label_891:
! BREAK STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0BR",r10
	jmp	_Label_717
! DEFAULT CASE...
_Label_716:
! ASSIGNMENT STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0AS",r10
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of outStr [outX ] into _temp_898
!     make sure index expr is >= 0
	load	[r14+-980],r2
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
	store	r2,[r14+-52]
!   Data Move: *_temp_898 = 36  (sizeInBytes=1)
	mov	36,r1
	load	[r14+-52],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   outX = outX + 1		(int)
	load	[r14+-980],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-980]
! END SWITCH...
_Label_717:
	jmp	_Label_899
_Label_712:
! ELSE...
	mov	595,r13		! source line 595
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0AS",r10
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of outStr [outX ] into _temp_900
!     make sure index expr is >= 0
	load	[r14+-980],r2
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
!   if intIsZero (inStr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of inStr [inX ] into _temp_902
!     make sure index expr is >= 0
	load	[r14+-976],r2
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
	store	r2,[r14+-44]
!   Data Move: _temp_901 = *_temp_902  (sizeInBytes=1)
	load	[r14+-44],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_900 = _temp_901  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0AS",r10
!   outX = outX + 1		(int)
	load	[r14+-980],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-980]
! ASSIGNMENT STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0AS",r10
!   inX = inX + 1		(int)
	load	[r14+-976],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-976]
! END IF...
_Label_899:
! END WHILE...
	jmp	_Label_706
_Label_708:
! IF STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0IF",r10
!   if intIsZero (outStr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_906 = *outStr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if outX < _temp_906 then goto _Label_904		(int)
	load	[r14+-980],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_904
!	_Label_905	jmp	_Label_905
_Label_905:
!   if inX >= endIn then goto _Label_904		(int)
	load	[r14+-976],r1
	load	[r14+-992],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_904
!	_Label_903	jmp	_Label_903
_Label_903:
! THEN...
	mov	601,r13		! source line 601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_907 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1628,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_904:
! RETURN STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,1628,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_76_expand:
	.word	_sourceFileName
	.word	_Label_908
	.word	8		! total size of parameters
	.word	1624		! frame size = 1624
	.word	_Label_909
	.word	8
	.word	4
	.word	_Label_910
	.word	12
	.word	4
	.word	_Label_911
	.word	-36
	.word	4
	.word	_Label_912
	.word	-40
	.word	4
	.word	_Label_913
	.word	-44
	.word	4
	.word	_Label_914
	.word	-9
	.word	1
	.word	_Label_915
	.word	-48
	.word	4
	.word	_Label_916
	.word	-52
	.word	4
	.word	_Label_917
	.word	-56
	.word	4
	.word	_Label_918
	.word	-10
	.word	1
	.word	_Label_919
	.word	-60
	.word	4
	.word	_Label_920
	.word	-11
	.word	1
	.word	_Label_921
	.word	-12
	.word	1
	.word	_Label_922
	.word	-64
	.word	4
	.word	_Label_923
	.word	-13
	.word	1
	.word	_Label_924
	.word	-68
	.word	4
	.word	_Label_925
	.word	-72
	.word	4
	.word	_Label_926
	.word	-76
	.word	4
	.word	_Label_927
	.word	-80
	.word	4
	.word	_Label_928
	.word	-84
	.word	4
	.word	_Label_929
	.word	-88
	.word	4
	.word	_Label_930
	.word	-92
	.word	4
	.word	_Label_931
	.word	-96
	.word	4
	.word	_Label_932
	.word	-100
	.word	4
	.word	_Label_933
	.word	-104
	.word	4
	.word	_Label_934
	.word	-108
	.word	4
	.word	_Label_935
	.word	-112
	.word	4
	.word	_Label_936
	.word	-116
	.word	4
	.word	_Label_937
	.word	-120
	.word	4
	.word	_Label_938
	.word	-124
	.word	4
	.word	_Label_939
	.word	-128
	.word	4
	.word	_Label_940
	.word	-132
	.word	4
	.word	_Label_941
	.word	-136
	.word	4
	.word	_Label_942
	.word	-140
	.word	4
	.word	_Label_943
	.word	-144
	.word	4
	.word	_Label_944
	.word	-148
	.word	4
	.word	_Label_945
	.word	-152
	.word	4
	.word	_Label_946
	.word	-156
	.word	4
	.word	_Label_947
	.word	-160
	.word	4
	.word	_Label_948
	.word	-164
	.word	4
	.word	_Label_949
	.word	-168
	.word	4
	.word	_Label_950
	.word	-172
	.word	4
	.word	_Label_951
	.word	-176
	.word	4
	.word	_Label_952
	.word	-180
	.word	4
	.word	_Label_953
	.word	-184
	.word	4
	.word	_Label_954
	.word	-188
	.word	4
	.word	_Label_955
	.word	-192
	.word	4
	.word	_Label_956
	.word	-196
	.word	4
	.word	_Label_957
	.word	-200
	.word	4
	.word	_Label_958
	.word	-204
	.word	4
	.word	_Label_959
	.word	-208
	.word	4
	.word	_Label_960
	.word	-212
	.word	4
	.word	_Label_961
	.word	-216
	.word	4
	.word	_Label_962
	.word	-14
	.word	1
	.word	_Label_963
	.word	-220
	.word	4
	.word	_Label_964
	.word	-224
	.word	4
	.word	_Label_965
	.word	-228
	.word	4
	.word	_Label_966
	.word	-232
	.word	4
	.word	_Label_967
	.word	-236
	.word	4
	.word	_Label_968
	.word	-240
	.word	4
	.word	_Label_969
	.word	-244
	.word	4
	.word	_Label_970
	.word	-248
	.word	4
	.word	_Label_971
	.word	-252
	.word	4
	.word	_Label_972
	.word	-256
	.word	4
	.word	_Label_973
	.word	-15
	.word	1
	.word	_Label_974
	.word	-260
	.word	4
	.word	_Label_975
	.word	-16
	.word	1
	.word	_Label_976
	.word	-17
	.word	1
	.word	_Label_977
	.word	-264
	.word	4
	.word	_Label_978
	.word	-18
	.word	1
	.word	_Label_979
	.word	-19
	.word	1
	.word	_Label_980
	.word	-268
	.word	4
	.word	_Label_981
	.word	-20
	.word	1
	.word	_Label_982
	.word	-272
	.word	4
	.word	_Label_983
	.word	-276
	.word	4
	.word	_Label_984
	.word	-280
	.word	4
	.word	_Label_985
	.word	-292
	.word	12
	.word	_Label_986
	.word	-296
	.word	4
	.word	_Label_987
	.word	-300
	.word	4
	.word	_Label_988
	.word	-304
	.word	4
	.word	_Label_989
	.word	-21
	.word	1
	.word	_Label_990
	.word	-308
	.word	4
	.word	_Label_991
	.word	-312
	.word	4
	.word	_Label_992
	.word	-316
	.word	4
	.word	_Label_993
	.word	-320
	.word	4
	.word	_Label_994
	.word	-324
	.word	4
	.word	_Label_995
	.word	-328
	.word	4
	.word	_Label_996
	.word	-332
	.word	4
	.word	_Label_997
	.word	-22
	.word	1
	.word	_Label_998
	.word	-336
	.word	4
	.word	_Label_999
	.word	-23
	.word	1
	.word	_Label_1000
	.word	-340
	.word	4
	.word	_Label_1001
	.word	-344
	.word	4
	.word	_Label_1002
	.word	-24
	.word	1
	.word	_Label_1003
	.word	-348
	.word	4
	.word	_Label_1004
	.word	-352
	.word	4
	.word	_Label_1005
	.word	-356
	.word	4
	.word	_Label_1006
	.word	-360
	.word	4
	.word	_Label_1007
	.word	-364
	.word	4
	.word	_Label_1008
	.word	-368
	.word	4
	.word	_Label_1009
	.word	-372
	.word	4
	.word	_Label_1010
	.word	-25
	.word	1
	.word	_Label_1011
	.word	-376
	.word	4
	.word	_Label_1012
	.word	-380
	.word	4
	.word	_Label_1013
	.word	-384
	.word	4
	.word	_Label_1014
	.word	-388
	.word	4
	.word	_Label_1015
	.word	-392
	.word	4
	.word	_Label_1016
	.word	-396
	.word	4
	.word	_Label_1017
	.word	-400
	.word	4
	.word	_Label_1018
	.word	-404
	.word	4
	.word	_Label_1019
	.word	-408
	.word	4
	.word	_Label_1020
	.word	-412
	.word	4
	.word	_Label_1021
	.word	-416
	.word	4
	.word	_Label_1022
	.word	-26
	.word	1
	.word	_Label_1023
	.word	-420
	.word	4
	.word	_Label_1024
	.word	-27
	.word	1
	.word	_Label_1025
	.word	-424
	.word	4
	.word	_Label_1026
	.word	-28
	.word	1
	.word	_Label_1027
	.word	-428
	.word	4
	.word	_Label_1028
	.word	-29
	.word	1
	.word	_Label_1029
	.word	-432
	.word	4
	.word	_Label_1030
	.word	-30
	.word	1
	.word	_Label_1031
	.word	-436
	.word	4
	.word	_Label_1032
	.word	-31
	.word	1
	.word	_Label_1033
	.word	-440
	.word	4
	.word	_Label_1034
	.word	-32
	.word	1
	.word	_Label_1035
	.word	-444
	.word	4
	.word	_Label_1036
	.word	-448
	.word	4
	.word	_Label_1037
	.word	-452
	.word	4
	.word	_Label_1038
	.word	-456
	.word	4
	.word	_Label_1039
	.word	-972
	.word	516
	.word	_Label_1040
	.word	-976
	.word	4
	.word	_Label_1041
	.word	-980
	.word	4
	.word	_Label_1042
	.word	-984
	.word	4
	.word	_Label_1043
	.word	-988
	.word	4
	.word	_Label_1044
	.word	-992
	.word	4
	.word	_Label_1045
	.word	-996
	.word	4
	.word	_Label_1046
	.word	-1000
	.word	4
	.word	_Label_1047
	.word	-1004
	.word	4
	.word	_Label_1048
	.word	-1008
	.word	4
	.word	_Label_1049
	.word	-1012
	.word	4
	.word	_Label_1050
	.word	-1068
	.word	56
	.word	_Label_1051
	.word	-1088
	.word	20
	.word	_Label_1052
	.word	-1604
	.word	516
	.word	_Label_1053
	.word	-1616
	.word	12
	.word	0
_Label_908:
	.ascii	"expand\0"
	.align
_Label_909:
	.byte	'P'
	.ascii	"inStr\0"
	.align
_Label_910:
	.byte	'P'
	.ascii	"outStr\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_914:
	.byte	'C'
	.ascii	"_temp_901\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_918:
	.byte	'C'
	.ascii	"_temp_896\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_920:
	.byte	'C'
	.ascii	"_temp_894\0"
	.align
_Label_921:
	.byte	'C'
	.ascii	"_temp_888\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_923:
	.byte	'C'
	.ascii	"_temp_886\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_962:
	.byte	'C'
	.ascii	"_temp_828\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_973:
	.byte	'C'
	.ascii	"_temp_811\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_975:
	.byte	'C'
	.ascii	"_temp_809\0"
	.align
_Label_976:
	.byte	'C'
	.ascii	"_temp_806\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_978:
	.byte	'C'
	.ascii	"_temp_804\0"
	.align
_Label_979:
	.byte	'C'
	.ascii	"_temp_801\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_981:
	.byte	'C'
	.ascii	"_temp_799\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_989:
	.byte	'C'
	.ascii	"_temp_785\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_997:
	.byte	'C'
	.ascii	"_temp_772\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_999:
	.byte	'C'
	.ascii	"_temp_770\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_1002:
	.byte	'C'
	.ascii	"_temp_765\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_1010:
	.byte	'C'
	.ascii	"_temp_751\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_1022:
	.byte	'C'
	.ascii	"_temp_731\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_1024:
	.byte	'C'
	.ascii	"_temp_729\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_1026:
	.byte	'C'
	.ascii	"_temp_723\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_1028:
	.byte	'C'
	.ascii	"_temp_715\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_1030:
	.byte	'C'
	.ascii	"_temp_713\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_1032:
	.byte	'C'
	.ascii	"_temp_705\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_1034:
	.byte	'C'
	.ascii	"_temp_703\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_1040:
	.byte	'I'
	.ascii	"inX\0"
	.align
_Label_1041:
	.byte	'I'
	.ascii	"outX\0"
	.align
_Label_1042:
	.byte	'I'
	.ascii	"inY\0"
	.align
_Label_1043:
	.byte	'I'
	.ascii	"cpX\0"
	.align
_Label_1044:
	.byte	'I'
	.ascii	"endIn\0"
	.align
_Label_1045:
	.byte	'I'
	.ascii	"numParen\0"
	.align
_Label_1046:
	.byte	'I'
	.ascii	"child\0"
	.align
_Label_1047:
	.byte	'I'
	.ascii	"charsRd\0"
	.align
_Label_1048:
	.byte	'I'
	.ascii	"outStrt\0"
	.align
_Label_1049:
	.byte	'P'
	.ascii	"valP\0"
	.align
_Label_1050:
	.byte	'A'
	.ascii	"envName\0"
	.align
_Label_1051:
	.byte	'A'
	.ascii	"numStr\0"
	.align
_Label_1052:
	.byte	'A'
	.ascii	"tempStr\0"
	.align
_Label_1053:
	.byte	'A'
	.ascii	"FDs\0"
	.align
! 
! ===============  FUNCTION closeRedir  ===============
! 
_function_75_closeRedir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_75_closeRedir,r1
	push	r1
	mov	1,r1
_Label_1978:
	push	r0
	sub	r1,1,r1
	bne	_Label_1978
	mov	609,r13		! source line 609
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0IF",r10
!   if cinFd == inFd then goto _Label_1055		(int)
	load	[r14+12],r1
	load	[r14+8],r2
	cmp	r1,r2
	be	_Label_1055
!	_Label_1054	jmp	_Label_1054
_Label_1054:
! THEN...
	mov	612,r13		! source line 612
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=cinFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_1055:
! IF STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0IF",r10
!   if coutFd == outFd then goto _Label_1057		(int)
	load	[r14+20],r1
	load	[r14+16],r2
	cmp	r1,r2
	be	_Label_1057
!	_Label_1056	jmp	_Label_1056
_Label_1056:
! THEN...
	mov	615,r13		! source line 615
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=coutFd  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_1057:
! RETURN STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_75_closeRedir:
	.word	_sourceFileName
	.word	_Label_1058
	.word	16		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1059
	.word	8
	.word	4
	.word	_Label_1060
	.word	12
	.word	4
	.word	_Label_1061
	.word	16
	.word	4
	.word	_Label_1062
	.word	20
	.word	4
	.word	0
_Label_1058:
	.ascii	"closeRedir\0"
	.align
_Label_1059:
	.byte	'I'
	.ascii	"inFd\0"
	.align
_Label_1060:
	.byte	'I'
	.ascii	"cinFd\0"
	.align
_Label_1061:
	.byte	'I'
	.ascii	"outFd\0"
	.align
_Label_1062:
	.byte	'I'
	.ascii	"coutFd\0"
	.align
! 
! ===============  FUNCTION ProcessLine  ===============
! 
_function_74_ProcessLine:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_74_ProcessLine,r1
	push	r1
	mov	771,r1
_Label_1979:
	push	r0
	sub	r1,1,r1
	bne	_Label_1979
	mov	621,r13		! source line 621
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! rv
!   rv = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1432]
! cinFd
!   cinFd = inFd		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-1436]
! coutFd
!   coutFd = outFd		(4 bytes)
	load	[r14+16],r1
	store	r1,[r14+-1440]
! children
!   NEW ARRAY Constructor...
!   _temp_1064 = &_temp_1063
	add	r14,-1420,r1
	store	r1,[r14+-1376]
!   _temp_1064 = _temp_1064 + 4
	load	[r14+-1376],r1
	add	r1,4,r1
	store	r1,[r14+-1376]
!   Next value...
	mov	10,r1
	store	r1,[r14+-1372]
_Label_1066:
!   Data Move: *_temp_1064 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-1376],r2
	store	r1,[r2]
!   _temp_1064 = _temp_1064 + 4
	load	[r14+-1376],r1
	add	r1,4,r1
	store	r1,[r14+-1376]
!   _temp_1065 = _temp_1065 + -1
	load	[r14+-1372],r1
	add	r1,-1,r1
	store	r1,[r14+-1372]
!   if intNotZero (_temp_1065) then goto _Label_1066
	load	[r14+-1372],r1
	cmp	r1,r0
	bne	_Label_1066
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1420]
!   _temp_1067 = &_temp_1063
	add	r14,-1420,r1
	store	r1,[r14+-1368]
!   make sure array has size 10
	load	[r14+-1368],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: children = *_temp_1067  (sizeInBytes=44)
	load	[r14+-1368],r5
	add	r14,-3056,r4
	mov	11,r3
_Label_1980:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1980
! pipeFD
!   NEW ARRAY Constructor...
!   _temp_1069 = &_temp_1068
	add	r14,-1364,r1
	store	r1,[r14+-1352]
!   _temp_1069 = _temp_1069 + 4
	load	[r14+-1352],r1
	add	r1,4,r1
	store	r1,[r14+-1352]
!   Next value...
	mov	2,r1
	store	r1,[r14+-1348]
_Label_1071:
!   Data Move: *_temp_1069 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-1352],r2
	store	r1,[r2]
!   _temp_1069 = _temp_1069 + 4
	load	[r14+-1352],r1
	add	r1,4,r1
	store	r1,[r14+-1352]
!   _temp_1070 = _temp_1070 + -1
	load	[r14+-1348],r1
	add	r1,-1,r1
	store	r1,[r14+-1348]
!   if intNotZero (_temp_1070) then goto _Label_1071
	load	[r14+-1348],r1
	cmp	r1,r0
	bne	_Label_1071
!   Initialize the array size...
	mov	2,r1
	store	r1,[r14+-1364]
!   _temp_1072 = &_temp_1068
	add	r14,-1364,r1
	store	r1,[r14+-1344]
!   make sure array has size 2
	load	[r14+-1344],r1
	load	[r1],r1
	set	2, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: pipeFD = *_temp_1072  (sizeInBytes=12)
	load	[r14+-1344],r5
	add	r14,-3072,r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
! ASSIGNMENT STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0AS",r10
!   _temp_1073 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-1340]
!   NEW ARRAY Constructor...
!   _temp_1075 = &_temp_1074
	add	r14,-1336,r1
	store	r1,[r14+-820]
!   _temp_1075 = _temp_1075 + 4
	load	[r14+-820],r1
	add	r1,4,r1
	store	r1,[r14+-820]
!   Next value...
	mov	512,r1
	store	r1,[r14+-816]
_Label_1077:
!   Data Move: *_temp_1075 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-820],r2
	storeb	r1,[r2]
!   _temp_1075 = _temp_1075 + 1
	load	[r14+-820],r1
	add	r1,1,r1
	store	r1,[r14+-820]
!   _temp_1076 = _temp_1076 + -1
	load	[r14+-816],r1
	add	r1,-1,r1
	store	r1,[r14+-816]
!   if intNotZero (_temp_1076) then goto _Label_1077
	load	[r14+-816],r1
	cmp	r1,r0
	bne	_Label_1077
!   Initialize the array size...
	mov	512,r1
	store	r1,[r14+-1336]
!   _temp_1078 = &_temp_1074
	add	r14,-1336,r1
	store	r1,[r14+-812]
!   make sure array has size 512
	load	[r14+-1340],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,0
	be	_Label_1981
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1981:
!   make sure array has size 512
	load	[r14+-812],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1073 = *_temp_1078  (sizeInBytes=516)
	load	[r14+-812],r5
	load	[r14+-1340],r4
	mov	129,r3
_Label_1982:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1982
! ASSIGNMENT STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0AS",r10
!   _temp_1079 = &outFile
	add	r14,-2484,r1
	store	r1,[r14+-808]
!   _temp_1080 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-804]
!   make sure array has size 512
	load	[r14+-808],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,0
	be	_Label_1983
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1983:
!   make sure array has size 512
	load	[r14+-804],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1079 = *_temp_1080  (sizeInBytes=516)
	load	[r14+-804],r5
	load	[r14+-808],r4
	mov	129,r3
_Label_1984:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1984
! ASSIGNMENT STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0AS",r10
!   _temp_1081 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-800]
!   _temp_1082 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-796]
!   make sure array has size 512
	load	[r14+-800],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,0
	be	_Label_1985
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1985:
!   make sure array has size 512
	load	[r14+-796],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1081 = *_temp_1082  (sizeInBytes=516)
	load	[r14+-796],r5
	load	[r14+-800],r4
	mov	129,r3
_Label_1986:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1986
! ASSIGNMENT STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0AS",r10
!   nextPos = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1444]
! ASSIGNMENT STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+8]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CA",r10
	call	_function_71_StrChr
!   Retrieve Result: targetName=nlLoc  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-3004]
! ASSIGNMENT STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextPos  sizeInBytes=4
	load	[r14+-1444],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=124  sizeInBytes=1
	mov	124,r1
	storeb	r1,[r15+8]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CA",r10
	call	_function_71_StrChr
!   Retrieve Result: targetName=pipeLoc  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-3060]
! IF STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0IF",r10
!   if pipeLoc < 0 then goto _Label_1084		(int)
	load	[r14+-3060],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1084
!	_Label_1085	jmp	_Label_1085
_Label_1085:
!   if pipeLoc >= nlLoc then goto _Label_1084		(int)
	load	[r14+-3060],r1
	load	[r14+-3004],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1084
!	_Label_1083	jmp	_Label_1083
_Label_1083:
! THEN...
	mov	657,r13		! source line 657
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0AS",r10
!   child = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-3008]
! ASSIGNMENT STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0AS",r10
!   childCnt = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-3012]
! WHILE STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0WH",r10
_Label_1086:
!   if pipeLoc <= 0 then goto _Label_1088		(int)
	load	[r14+-3060],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1088
!	_Label_1090	jmp	_Label_1090
_Label_1090:
!   if childCnt >= 10 then goto _Label_1088		(int)
	load	[r14+-3012],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1088
!	_Label_1089	jmp	_Label_1089
_Label_1089:
!   if child < 0 then goto _Label_1088		(int)
	load	[r14+-3008],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1088
!	_Label_1087	jmp	_Label_1087
_Label_1087:
	mov	659,r13		! source line 659
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0AS",r10
!   _temp_1091 = &pipeFD
	add	r14,-3072,r1
	store	r1,[r14+-792]
!   Prepare Argument: offset=8  value=_temp_1091  sizeInBytes=4
	load	[r14+-792],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Pipe
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1428]
! IF STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_1093
	load	[r14+-1428],r1
	cmp	r1,r0
	be	_Label_1093
!	_Label_1092	jmp	_Label_1092
_Label_1092:
! THEN...
	mov	662,r13		! source line 662
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1094 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-788]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-788],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! END IF...
_Label_1093:
! CALL STATEMENT...
!   _temp_1095 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-784]
!   _temp_1097 = pipeLoc - nextPos		(int)
	load	[r14+-3060],r1
	load	[r14+-1444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-776]
!   _temp_1096 = _temp_1097 + 1		(int)
	load	[r14+-776],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-780]
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1095  sizeInBytes=4
	load	[r14+-784],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=nextPos  sizeInBytes=4
	load	[r14+-1444],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1096  sizeInBytes=4
	load	[r14+-780],r1
	store	r1,[r15+12]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CA",r10
	call	_function_73_GetWord
! ASSIGNMENT STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0AS",r10
!   _temp_1098 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-772]
!   _temp_1099 = pipeLoc - nextPos		(int)
	load	[r14+-3060],r1
	load	[r14+-1444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-768]
!   Move address of _temp_1098 [_temp_1099 ] into _temp_1100
!     make sure index expr is >= 0
	load	[r14+-768],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-772],r1
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
	store	r2,[r14+-764]
!   Data Move: *_temp_1100 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-764],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0AS",r10
!   _temp_1101 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-760]
!   _temp_1103 = &pipeFD
	add	r14,-3072,r1
	store	r1,[r14+-752]
!   Move address of _temp_1103 [1 ] into _temp_1104
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-752],r1
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
	store	r2,[r14+-748]
!   Data Move: _temp_1102 = *_temp_1104  (sizeInBytes=4)
	load	[r14+-748],r1
	load	[r1],r1
	store	r1,[r14+-756]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
	load	[r14+-760],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1102  sizeInBytes=4
	load	[r14+-756],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+12]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CA",r10
	call	_function_74_ProcessLine
!   Retrieve Result: targetName=child  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-3008]
! IF STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0IF",r10
!   if child <= 0 then goto _Label_1106		(int)
	load	[r14+-3008],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1106
!	_Label_1105	jmp	_Label_1105
_Label_1105:
! THEN...
	mov	669,r13		! source line 669
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0AS",r10
!   _temp_1107 = &children
	add	r14,-3056,r1
	store	r1,[r14+-744]
!   Move address of _temp_1107 [childCnt ] into _temp_1108
!     make sure index expr is >= 0
	load	[r14+-3012],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-744],r1
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
	store	r2,[r14+-740]
!   Data Move: *_temp_1108 = child  (sizeInBytes=4)
	load	[r14+-3008],r1
	load	[r14+-740],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0AS",r10
!   childCnt = childCnt + 1		(int)
	load	[r14+-3012],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-3012]
! END IF...
_Label_1106:
! IF STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0IF",r10
!   if cinFd == inFd then goto _Label_1110		(int)
	load	[r14+-1436],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_1110
!	_Label_1109	jmp	_Label_1109
_Label_1109:
! THEN...
	mov	673,r13		! source line 673
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_1110:
! ASSIGNMENT STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0AS",r10
!   _temp_1111 = &pipeFD
	add	r14,-3072,r1
	store	r1,[r14+-736]
!   Move address of _temp_1111 [0 ] into _temp_1112
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-736],r1
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
	store	r2,[r14+-732]
!   Data Move: cinFd = *_temp_1112  (sizeInBytes=4)
	load	[r14+-732],r1
	load	[r1],r1
	store	r1,[r14+-1436]
! CALL STATEMENT...
!   _temp_1114 = &pipeFD
	add	r14,-3072,r1
	store	r1,[r14+-724]
!   Move address of _temp_1114 [1 ] into _temp_1115
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-724],r1
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
	store	r2,[r14+-720]
!   Data Move: _temp_1113 = *_temp_1115  (sizeInBytes=4)
	load	[r14+-720],r1
	load	[r1],r1
	store	r1,[r14+-728]
!   Prepare Argument: offset=8  value=_temp_1113  sizeInBytes=4
	load	[r14+-728],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	677,r13		! source line 677
	mov	"\0\0AS",r10
!   nextPos = pipeLoc + 1		(int)
	load	[r14+-3060],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1444]
! ASSIGNMENT STATEMENT...
	mov	678,r13		! source line 678
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextPos  sizeInBytes=4
	load	[r14+-1444],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=124  sizeInBytes=1
	mov	124,r1
	storeb	r1,[r15+8]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CA",r10
	call	_function_71_StrChr
!   Retrieve Result: targetName=pipeLoc  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-3060]
! END WHILE...
	jmp	_Label_1086
_Label_1088:
! IF STATEMENT...
	mov	681,r13		! source line 681
	mov	"\0\0IF",r10
!   if child < 0 then goto _Label_1117		(int)
	load	[r14+-3008],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1117
!	_Label_1116	jmp	_Label_1116
_Label_1116:
! THEN...
	mov	682,r13		! source line 682
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1118 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-716]
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1120 = *str  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-708]
!   _temp_1119 = _temp_1120 - nextPos		(int)
	load	[r14+-708],r1
	load	[r14+-1444],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-712]
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1118  sizeInBytes=4
	load	[r14+-716],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=nextPos  sizeInBytes=4
	load	[r14+-1444],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1119  sizeInBytes=4
	load	[r14+-712],r1
	store	r1,[r15+12]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CA",r10
	call	_function_73_GetWord
! ASSIGNMENT STATEMENT...
	mov	684,r13		! source line 684
	mov	"\0\0AS",r10
!   _temp_1121 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-704]
!   Prepare Argument: offset=8  value=_temp_1121  sizeInBytes=4
	load	[r14+-704],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+12]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CA",r10
	call	_function_74_ProcessLine
!   Retrieve Result: targetName=child  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-3008]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_1117:
! WHILE STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0WH",r10
_Label_1122:
!   if childCnt <= 0 then goto _Label_1124		(int)
	load	[r14+-3012],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1124
!	_Label_1123	jmp	_Label_1123
_Label_1123:
	mov	689,r13		! source line 689
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0AS",r10
!   childCnt = childCnt - 1		(int)
	load	[r14+-3012],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-3012]
! ASSIGNMENT STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0AS",r10
!   _temp_1126 = &children
	add	r14,-3056,r1
	store	r1,[r14+-696]
!   Move address of _temp_1126 [childCnt ] into _temp_1127
!     make sure index expr is >= 0
	load	[r14+-3012],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-696],r1
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
	store	r2,[r14+-692]
!   Data Move: _temp_1125 = *_temp_1127  (sizeInBytes=4)
	load	[r14+-692],r1
	load	[r1],r1
	store	r1,[r14+-700]
!   Prepare Argument: offset=8  value=_temp_1125  sizeInBytes=4
	load	[r14+-700],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_Global_exitVal  sizeInBytes=4
	load	[r15],r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_1122
_Label_1124:
! RETURN STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1084:
! IF STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0IF",r10
!   _temp_1131 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-688]
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1131  sizeInBytes=4
	load	[r14+-688],r1
	store	r1,[r15+4]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CA",r10
	call	_function_76_expand
!   Retrieve Result: targetName=_temp_1130  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-20]
!   if _temp_1130 then goto _Label_1129 else goto _Label_1128
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1128
	jmp	_Label_1129
_Label_1128:
! THEN...
	mov	700,r13		! source line 700
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1132
_Label_1129:
! ELSE...
	mov	702,r13		! source line 702
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0AS",r10
!   str = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+8]
! END IF...
_Label_1132:
! ASSIGNMENT STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0AS",r10
!   gotInFile = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-22]
! ASSIGNMENT STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0AS",r10
!   gotOutFile = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-23]
! ASSIGNMENT STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0AS",r10
!   _Global_argc = 0		(4 bytes)
	mov	0,r1
	set	_Global_argc,r2
	store	r1,[r2]
! WHILE STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0WH",r10
_Label_1133:
!	_Label_1134	jmp	_Label_1134
_Label_1134:
	mov	710,r13		! source line 710
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0IF",r10
!   _temp_1139 = &start
	add	r14,-1452,r1
	store	r1,[r14+-684]
!   _temp_1140 = &nextPos
	add	r14,-1444,r1
	store	r1,[r14+-680]
!   _temp_1141 = &len
	add	r14,-1448,r1
	store	r1,[r14+-676]
!   _temp_1142 = &kind
	add	r14,-21,r1
	store	r1,[r14+-672]
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1139  sizeInBytes=4
	load	[r14+-684],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1140  sizeInBytes=4
	load	[r14+-680],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1141  sizeInBytes=4
	load	[r14+-676],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_1142  sizeInBytes=4
	load	[r14+-672],r1
	store	r1,[r15+16]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CA",r10
	call	_function_77_FindNextWord
!   Retrieve Result: targetName=_temp_1138  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   if _temp_1138 then goto _Label_1137 else goto _Label_1136
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_1136
	jmp	_Label_1137
_Label_1136:
! THEN...
	mov	712,r13		! source line 712
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1137:
! IF STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0IF",r10
!   _temp_1145 = kind XOR 10		(bool)
	loadb	[r14+-21],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1145 then goto _Label_1144 else goto _Label_1143
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1143
	jmp	_Label_1144
_Label_1143:
! THEN...
	mov	715,r13		! source line 715
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0BR",r10
	jmp	_Label_1135
	jmp	_Label_1146
_Label_1144:
! ELSE...
	mov	716,r13		! source line 716
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0IF",r10
!   _temp_1149 = kind XOR 32		(bool)
	loadb	[r14+-21],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1149 then goto _Label_1148 else goto _Label_1147
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1147
	jmp	_Label_1148
_Label_1147:
! THEN...
	mov	717,r13		! source line 717
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0IF",r10
!   if _Global_argc != 50 then goto _Label_1151		(int)
	set	_Global_argc,r1
	load	[r1],r1
	mov	50,r2
	cmp	r1,r2
	bne	_Label_1151
!	_Label_1150	jmp	_Label_1150
_Label_1150:
! THEN...
	mov	718,r13		! source line 718
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1152 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-668]
!   Prepare Argument: offset=8  value=_temp_1152  sizeInBytes=4
	load	[r14+-668],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0AS",r10
!   _Global_argc = 0		(4 bytes)
	mov	0,r1
	set	_Global_argc,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! BREAK STATEMENT...
	mov	721,r13		! source line 721
	mov	"\0\0BR",r10
	jmp	_Label_1135
! END IF...
_Label_1151:
! CALL STATEMENT...
!   _temp_1154 = &_Global_args
	set	_Global_args,r1
	store	r1,[r14+-660]
!   Move address of _temp_1154 [_Global_argc ] into _temp_1155
!     make sure index expr is >= 0
	set	_Global_argc,r2
	load	[r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-660],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	516,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-656]
!   _temp_1153 = _temp_1155		(4 bytes)
	load	[r14+-656],r1
	store	r1,[r14+-664]
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1153  sizeInBytes=4
	load	[r14+-664],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=start  sizeInBytes=4
	load	[r14+-1452],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=len  sizeInBytes=4
	load	[r14+-1448],r1
	store	r1,[r15+12]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CA",r10
	call	_function_73_GetWord
! ASSIGNMENT STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0AS",r10
!   _Global_argc = _Global_argc + 1		(int)
	set	_Global_argc,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_argc,r2
	store	r1,[r2]
	jmp	_Label_1156
_Label_1148:
! ELSE...
	mov	726,r13		! source line 726
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0IF",r10
!   _temp_1160 = kind XOR 60		(bool)
	loadb	[r14+-21],r1
	mov	60,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-16]
!   if _temp_1160 then goto _Label_1158 else goto _Label_1159
	loadb	[r14+-16],r1
	cmp	r1,0
	be	_Label_1159
	jmp	_Label_1158
_Label_1159:
!   if gotInFile then goto _Label_1158 else goto _Label_1157
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1157
	jmp	_Label_1158
_Label_1157:
! THEN...
	mov	727,r13		! source line 727
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0IF",r10
!   _temp_1164 = &start
	add	r14,-1452,r1
	store	r1,[r14+-652]
!   _temp_1165 = &nextPos
	add	r14,-1444,r1
	store	r1,[r14+-648]
!   _temp_1166 = &len
	add	r14,-1448,r1
	store	r1,[r14+-644]
!   _temp_1167 = &kind
	add	r14,-21,r1
	store	r1,[r14+-640]
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1164  sizeInBytes=4
	load	[r14+-652],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1165  sizeInBytes=4
	load	[r14+-648],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1166  sizeInBytes=4
	load	[r14+-644],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_1167  sizeInBytes=4
	load	[r14+-640],r1
	store	r1,[r15+16]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CA",r10
	call	_function_77_FindNextWord
!   Retrieve Result: targetName=_temp_1163  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-15]
!   if _temp_1163 then goto _Label_1162 else goto _Label_1161
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1161
	jmp	_Label_1162
_Label_1161:
! THEN...
	mov	728,r13		! source line 728
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1162:
! IF STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0IF",r10
!   _temp_1170 = kind XOR 32		(bool)
	loadb	[r14+-21],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-14]
!   if _temp_1170 then goto _Label_1169 else goto _Label_1168
	loadb	[r14+-14],r1
	cmp	r1,0
	be	_Label_1168
	jmp	_Label_1169
_Label_1168:
! THEN...
	mov	731,r13		! source line 731
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1171 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-636]
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1171  sizeInBytes=4
	load	[r14+-636],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=start  sizeInBytes=4
	load	[r14+-1452],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=len  sizeInBytes=4
	load	[r14+-1448],r1
	store	r1,[r15+12]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_function_73_GetWord
! ASSIGNMENT STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0AS",r10
!   gotInFile = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-22]
	jmp	_Label_1172
_Label_1169:
! ELSE...
	mov	734,r13		! source line 734
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1173 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-632]
!   Prepare Argument: offset=8  value=_temp_1173  sizeInBytes=4
	load	[r14+-632],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0AS",r10
!   _Global_argc = 0		(4 bytes)
	mov	0,r1
	set	_Global_argc,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! BREAK STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0BR",r10
	jmp	_Label_1135
! END IF...
_Label_1172:
	jmp	_Label_1174
_Label_1158:
! ELSE...
	mov	739,r13		! source line 739
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0IF",r10
!   _temp_1178 = kind XOR 62		(bool)
	loadb	[r14+-21],r1
	mov	62,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1178 then goto _Label_1176 else goto _Label_1177
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1177
	jmp	_Label_1176
_Label_1177:
!   if gotOutFile then goto _Label_1176 else goto _Label_1175
	loadb	[r14+-23],r1
	cmp	r1,0
	be	_Label_1175
	jmp	_Label_1176
_Label_1175:
! THEN...
	mov	740,r13		! source line 740
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0IF",r10
!   _temp_1182 = &start
	add	r14,-1452,r1
	store	r1,[r14+-628]
!   _temp_1183 = &nextPos
	add	r14,-1444,r1
	store	r1,[r14+-624]
!   _temp_1184 = &len
	add	r14,-1448,r1
	store	r1,[r14+-620]
!   _temp_1185 = &kind
	add	r14,-21,r1
	store	r1,[r14+-616]
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1182  sizeInBytes=4
	load	[r14+-628],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1183  sizeInBytes=4
	load	[r14+-624],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1184  sizeInBytes=4
	load	[r14+-620],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_1185  sizeInBytes=4
	load	[r14+-616],r1
	store	r1,[r15+16]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CA",r10
	call	_function_77_FindNextWord
!   Retrieve Result: targetName=_temp_1181  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1181 then goto _Label_1180 else goto _Label_1179
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1179
	jmp	_Label_1180
_Label_1179:
! THEN...
	mov	741,r13		! source line 741
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1180:
! IF STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0IF",r10
!   _temp_1188 = kind XOR 32		(bool)
	loadb	[r14+-21],r1
	mov	32,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1188 then goto _Label_1187 else goto _Label_1186
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1186
	jmp	_Label_1187
_Label_1186:
! THEN...
	mov	744,r13		! source line 744
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1189 = &outFile
	add	r14,-2484,r1
	store	r1,[r14+-612]
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1189  sizeInBytes=4
	load	[r14+-612],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=start  sizeInBytes=4
	load	[r14+-1452],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=len  sizeInBytes=4
	load	[r14+-1448],r1
	store	r1,[r15+12]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CA",r10
	call	_function_73_GetWord
! ASSIGNMENT STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0AS",r10
!   gotOutFile = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-23]
	jmp	_Label_1190
_Label_1187:
! ELSE...
	mov	747,r13		! source line 747
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1191 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-608]
!   Prepare Argument: offset=8  value=_temp_1191  sizeInBytes=4
	load	[r14+-608],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   _Global_argc = 0		(4 bytes)
	mov	0,r1
	set	_Global_argc,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! BREAK STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0BR",r10
	jmp	_Label_1135
! END IF...
_Label_1190:
	jmp	_Label_1192
_Label_1176:
! ELSE...
	mov	753,r13		! source line 753
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1193 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-604]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
	load	[r14+-604],r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0AS",r10
!   _Global_argc = 0		(4 bytes)
	mov	0,r1
	set	_Global_argc,r2
	store	r1,[r2]
! BREAK STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0BR",r10
	jmp	_Label_1135
! END IF...
_Label_1192:
! END IF...
_Label_1174:
! END IF...
_Label_1156:
! END IF...
_Label_1146:
! END WHILE...
	jmp	_Label_1133
_Label_1135:
! IF STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0IF",r10
!   if intIsZero (_Global_argc) then goto _Label_1194
	set	_Global_argc,r1
	load	[r1],r1
	cmp	r1,r0
	be	_Label_1194
	jmp	_Label_1195
_Label_1194:
! THEN...
	mov	761,r13		! source line 761
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1195:
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   _temp_1196 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-600]
!   if intIsZero (_temp_1196) then goto _runtimeErrorNullPointer
	load	[r14+-600],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1196 = _Global_argc  (sizeInBytes=4)
	set	_Global_argc,r1
	load	[r1],r1
	load	[r14+-600],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	767,r13		! source line 767
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1201 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-596]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1202 = _Global_argc - 1		(int)
	set	_Global_argc,r1
	load	[r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-592]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1201  (sizeInBytes=4)
	load	[r14+-596],r1
	store	r1,[r14+-1428]
_Label_1197:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1202 then goto _Label_1200		
	load	[r14+-1428],r1
	load	[r14+-592],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1200
_Label_1198:
	mov	767,r13		! source line 767
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0AS",r10
!   _temp_1203 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-588]
!   Move address of _temp_1203 [i ] into _temp_1204
!     make sure index expr is >= 0
	load	[r14+-1428],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-588],r1
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
	store	r2,[r14+-584]
!   _temp_1206 = &_Global_args
	set	_Global_args,r1
	store	r1,[r14+-576]
!   Move address of _temp_1206 [i ] into _temp_1207
!     make sure index expr is >= 0
	load	[r14+-1428],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-576],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	516,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-572]
!   _temp_1205 = _temp_1207		(4 bytes)
	load	[r14+-572],r1
	store	r1,[r14+-580]
!   Data Move: *_temp_1204 = _temp_1205  (sizeInBytes=4)
	load	[r14+-580],r1
	load	[r14+-584],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1199:
!   i = i + 1
	load	[r14+-1428],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1428]
	jmp	_Label_1197
! END FOR
_Label_1200:
! IF STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0IF",r10
!   if gotInFile then goto _Label_1208 else goto _Label_1209
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1209
	jmp	_Label_1208
_Label_1208:
! THEN...
	mov	774,r13		! source line 774
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0IF",r10
!   if cinFd == inFd then goto _Label_1211		(int)
	load	[r14+-1436],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_1211
!	_Label_1210	jmp	_Label_1210
_Label_1210:
! THEN...
	mov	775,r13		! source line 775
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_1211:
! ASSIGNMENT STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0AS",r10
!   _temp_1212 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-568]
!   Prepare Argument: offset=8  value=_temp_1212  sizeInBytes=4
	load	[r14+-568],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=cinFd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1436]
! IF STATEMENT...
	mov	778,r13		! source line 778
	mov	"\0\0IF",r10
!   if cinFd >= 0 then goto _Label_1214		(int)
	load	[r14+-1436],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1214
!	_Label_1213	jmp	_Label_1213
_Label_1213:
! THEN...
	mov	779,r13		! source line 779
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	779,r13		! source line 779
	mov	"\0\0AS",r10
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1432]
! CALL STATEMENT...
!   _temp_1215 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-564]
!   Prepare Argument: offset=8  value=_temp_1215  sizeInBytes=4
	load	[r14+-564],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1216 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-560]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-560],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1432],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_UserLib_ErrorString
!   Retrieve Result: targetName=_temp_1217  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-556]
!   Prepare Argument: offset=8  value=_temp_1217  sizeInBytes=4
	load	[r14+-556],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1218 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-552]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-552],r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1214:
! END IF...
_Label_1209:
! IF STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0IF",r10
!   if gotOutFile then goto _Label_1219 else goto _Label_1220
	loadb	[r14+-23],r1
	cmp	r1,0
	be	_Label_1220
	jmp	_Label_1219
_Label_1219:
! THEN...
	mov	789,r13		! source line 789
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0IF",r10
!   if coutFd == outFd then goto _Label_1222		(int)
	load	[r14+-1440],r1
	load	[r14+16],r2
	cmp	r1,r2
	be	_Label_1222
!	_Label_1221	jmp	_Label_1221
_Label_1221:
! THEN...
	mov	790,r13		! source line 790
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! END IF...
_Label_1222:
! ASSIGNMENT STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0AS",r10
!   _temp_1223 = &outFile
	add	r14,-2484,r1
	store	r1,[r14+-548]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-548],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=coutFd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1440]
! IF STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0IF",r10
!   if coutFd >= 0 then goto _Label_1225		(int)
	load	[r14+-1440],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1225
!	_Label_1224	jmp	_Label_1224
_Label_1224:
! THEN...
	mov	794,r13		! source line 794
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0AS",r10
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1432]
! CALL STATEMENT...
!   _temp_1226 = &outFile
	add	r14,-2484,r1
	store	r1,[r14+-544]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
	load	[r14+-544],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1227 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-540]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-540],r1
	store	r1,[r15+0]
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1432],r1
	store	r1,[r15+0]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CA",r10
	call	_P_UserLib_ErrorString
!   Retrieve Result: targetName=_temp_1228  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-536]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-536],r1
	store	r1,[r15+0]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1229 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-532]
!   Prepare Argument: offset=8  value=_temp_1229  sizeInBytes=4
	load	[r14+-532],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1225:
! END IF...
_Label_1220:
! ASSIGNMENT STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0AS",r10
!   _Global_exitVal = 0		(4 bytes)
	mov	0,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0IF",r10
!   _temp_1233 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-524]
!   Move address of _temp_1233 [0 ] into _temp_1234
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-524],r1
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
	store	r2,[r14+-520]
!   Data Move: _temp_1232 = *_temp_1234  (sizeInBytes=4)
	load	[r14+-520],r1
	load	[r1],r1
	store	r1,[r14+-528]
!   _temp_1235 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-516]
!   Prepare Argument: offset=8  value=_temp_1232  sizeInBytes=4
	load	[r14+-528],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1235  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_1230 else goto _Label_1231
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1231
	jmp	_Label_1230
_Label_1230:
! THEN...
	mov	807,r13		! source line 807
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1236 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-512]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! IF STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0IF",r10
!   _temp_1240 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-504]
!   Data Move: _temp_1239 = *_temp_1240  (sizeInBytes=4)
	load	[r14+-504],r1
	load	[r1],r1
	store	r1,[r14+-508]
!   if _temp_1239 <= 1 then goto _Label_1238		(int)
	load	[r14+-508],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1238
!	_Label_1237	jmp	_Label_1237
_Label_1237:
! THEN...
	mov	809,r13		! source line 809
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1243 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-492]
!   Move address of _temp_1243 [1 ] into _temp_1244
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-492],r1
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
	store	r2,[r14+-488]
!   Data Move: _temp_1242 = *_temp_1244  (sizeInBytes=4)
	load	[r14+-488],r1
	load	[r1],r1
	store	r1,[r14+-496]
!   Prepare Argument: offset=8  value=_temp_1242  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CA",r10
	call	_P_UserLib_StringToInt
!   Retrieve Result: targetName=_temp_1241  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-500]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
	load	[r14+-500],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1238:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1245
_Label_1231:
! ELSE...
	mov	812,r13		! source line 812
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0IF",r10
!   _temp_1249 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-480]
!   Move address of _temp_1249 [0 ] into _temp_1250
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-480],r1
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
	store	r2,[r14+-476]
!   Data Move: _temp_1248 = *_temp_1250  (sizeInBytes=4)
	load	[r14+-476],r1
	load	[r1],r1
	store	r1,[r14+-484]
!   _temp_1251 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-472]
!   Prepare Argument: offset=8  value=_temp_1248  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1251  sizeInBytes=4
	load	[r14+-472],r1
	store	r1,[r15+4]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_1246 else goto _Label_1247
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1247
	jmp	_Label_1246
_Label_1246:
! THEN...
	mov	813,r13		! source line 813
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0AS",r10
!   i = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-1428]
! IF STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0IF",r10
!   _temp_1256 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-464]
!   Data Move: _temp_1255 = *_temp_1256  (sizeInBytes=4)
	load	[r14+-464],r1
	load	[r1],r1
	store	r1,[r14+-468]
!   if _temp_1255 <= 1 then goto _Label_1253		(int)
	load	[r14+-468],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1253
!	_Label_1254	jmp	_Label_1254
_Label_1254:
!   _temp_1258 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-456]
!   Move address of _temp_1258 [1 ] into _temp_1259
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-456],r1
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
	store	r2,[r14+-452]
!   Data Move: _temp_1257 = *_temp_1259  (sizeInBytes=4)
	load	[r14+-452],r1
	load	[r1],r1
	store	r1,[r14+-460]
!   _temp_1260 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-448]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
	load	[r14+-460],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1260  sizeInBytes=4
	load	[r14+-448],r1
	store	r1,[r15+4]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_1252 else goto _Label_1253
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1253
	jmp	_Label_1252
_Label_1252:
! THEN...
	mov	815,r13		! source line 815
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0AS",r10
!   printNL = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0AS",r10
!   i = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-1428]
	jmp	_Label_1261
_Label_1253:
! ELSE...
	mov	818,r13		! source line 818
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0AS",r10
!   printNL = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-24]
! END IF...
_Label_1261:
! WHILE STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0WH",r10
_Label_1262:
!   _temp_1266 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-440]
!   Data Move: _temp_1265 = *_temp_1266  (sizeInBytes=4)
	load	[r14+-440],r1
	load	[r1],r1
	store	r1,[r14+-444]
!   if i >= _temp_1265 then goto _Label_1264		(int)
	load	[r14+-1428],r1
	load	[r14+-444],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1264
!	_Label_1263	jmp	_Label_1263
_Label_1263:
	mov	820,r13		! source line 820
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_1268 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-432]
!   Move address of _temp_1268 [i ] into _temp_1269
!     make sure index expr is >= 0
	load	[r14+-1428],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
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
	store	r2,[r14+-428]
!   Data Move: _temp_1267 = *_temp_1269  (sizeInBytes=4)
	load	[r14+-428],r1
	load	[r1],r1
	store	r1,[r14+-436]
!   Prepare Argument: offset=8  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1267  sizeInBytes=4
	load	[r14+-436],r1
	store	r1,[r15+4]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CA",r10
	call	_P_UserLib_dPrint
! IF STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0IF",r10
!   _temp_1274 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-416]
!   Data Move: _temp_1273 = *_temp_1274  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-420]
!   _temp_1272 = _temp_1273 - 1		(int)
	load	[r14+-420],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-424]
!   if i == _temp_1272 then goto _Label_1271		(int)
	load	[r14+-1428],r1
	load	[r14+-424],r2
	cmp	r1,r2
	be	_Label_1271
!	_Label_1270	jmp	_Label_1270
_Label_1270:
! THEN...
	mov	823,r13		! source line 823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1275 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=8  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1275  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CA",r10
	call	_P_UserLib_dPrint
! END IF...
_Label_1271:
! ASSIGNMENT STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-1428],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1428]
! END WHILE...
	jmp	_Label_1262
_Label_1264:
! IF STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0IF",r10
!   if printNL then goto _Label_1276 else goto _Label_1277
	loadb	[r14+-24],r1
	cmp	r1,0
	be	_Label_1277
	jmp	_Label_1276
_Label_1276:
! THEN...
	mov	828,r13		! source line 828
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1278 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-408]
!   Prepare Argument: offset=8  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1278  sizeInBytes=4
	load	[r14+-408],r1
	store	r1,[r15+4]
!   Call the function
	mov	828,r13		! source line 828
	mov	"\0\0CA",r10
	call	_P_UserLib_dPrint
! END IF...
_Label_1277:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+12]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CA",r10
	call	_function_75_closeRedir
! RETURN STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1279
_Label_1247:
! ELSE...
	mov	832,r13		! source line 832
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0IF",r10
!   _temp_1283 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-400]
!   Move address of _temp_1283 [0 ] into _temp_1284
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-400],r1
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
	store	r2,[r14+-396]
!   Data Move: _temp_1282 = *_temp_1284  (sizeInBytes=4)
	load	[r14+-396],r1
	load	[r1],r1
	store	r1,[r14+-404]
!   _temp_1285 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-392]
!   Prepare Argument: offset=8  value=_temp_1282  sizeInBytes=4
	load	[r14+-404],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1285  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+4]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_1280 else goto _Label_1281
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1281
	jmp	_Label_1280
_Label_1280:
! THEN...
	mov	833,r13		! source line 833
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	833,r13		! source line 833
	mov	"\0\0IF",r10
!   _temp_1289 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-384]
!   Data Move: _temp_1288 = *_temp_1289  (sizeInBytes=4)
	load	[r14+-384],r1
	load	[r1],r1
	store	r1,[r14+-388]
!   if _temp_1288 != 1 then goto _Label_1287		(int)
	load	[r14+-388],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1287
!	_Label_1286	jmp	_Label_1286
_Label_1286:
! THEN...
	mov	834,r13		! source line 834
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0AS",r10
!   _temp_1290 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-380]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+0]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Chdir
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1432]
! IF STATEMENT...
	mov	835,r13		! source line 835
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_1292
	load	[r14+-1432],r1
	cmp	r1,r0
	be	_Label_1292
!	_Label_1291	jmp	_Label_1291
_Label_1291:
! THEN...
	mov	836,r13		! source line 836
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0AS",r10
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1432]
! CALL STATEMENT...
!   _temp_1293 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-376]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1432],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CA",r10
	call	_P_UserLib_ErrorString
!   Retrieve Result: targetName=_temp_1294  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-372]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1295 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-368]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! END IF...
_Label_1292:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+12]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CA",r10
	call	_function_75_closeRedir
! RETURN STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1296
_Label_1287:
! ELSE...
	mov	842,r13		! source line 842
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0IF",r10
!   _temp_1300 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-360]
!   Data Move: _temp_1299 = *_temp_1300  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-364]
!   if _temp_1299 != 2 then goto _Label_1298		(int)
	load	[r14+-364],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1298
!	_Label_1297	jmp	_Label_1297
_Label_1297:
! THEN...
	mov	843,r13		! source line 843
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0AS",r10
!   _temp_1302 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-352]
!   Move address of _temp_1302 [1 ] into _temp_1303
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-352],r1
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
	store	r2,[r14+-348]
!   Data Move: _temp_1301 = *_temp_1303  (sizeInBytes=4)
	load	[r14+-348],r1
	load	[r1],r1
	store	r1,[r14+-356]
!   Prepare Argument: offset=8  value=_temp_1301  sizeInBytes=4
	load	[r14+-356],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Chdir
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1432]
! IF STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_1305
	load	[r14+-1432],r1
	cmp	r1,r0
	be	_Label_1305
!	_Label_1304	jmp	_Label_1304
_Label_1304:
! THEN...
	mov	845,r13		! source line 845
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0AS",r10
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1432]
! CALL STATEMENT...
!   _temp_1306 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-344]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-344],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1432],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CA",r10
	call	_P_UserLib_ErrorString
!   Retrieve Result: targetName=_temp_1307  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-340]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-340],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1308 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-336]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! END IF...
_Label_1305:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+12]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CA",r10
	call	_function_75_closeRedir
! RETURN STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1309
_Label_1298:
! ELSE...
	mov	852,r13		! source line 852
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1310 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-332]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+12]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CA",r10
	call	_function_75_closeRedir
! ASSIGNMENT STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1309:
! END IF...
_Label_1296:
	jmp	_Label_1311
_Label_1281:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   _temp_1315 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-324]
!   Move address of _temp_1315 [0 ] into _temp_1316
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-324],r1
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
	store	r2,[r14+-320]
!   Data Move: _temp_1314 = *_temp_1316  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r1],r1
	store	r1,[r14+-328]
!   _temp_1317 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-316]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1317  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+4]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_1312 else goto _Label_1313
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1313
	jmp	_Label_1312
_Label_1312:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0AS",r10
!   rv = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1432]
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   _temp_1321 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-308]
!   Data Move: _temp_1320 = *_temp_1321  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r1],r1
	store	r1,[r14+-312]
!   if _temp_1320 == 3 then goto _Label_1319		(int)
	load	[r14+-312],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_1319
!	_Label_1318	jmp	_Label_1318
_Label_1318:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1322 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_1322  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0AS",r10
!   rv = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-1432]
	jmp	_Label_1323
_Label_1319:
! ELSE...
	mov	864,r13		! source line 864
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0AS",r10
!   _temp_1325 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-296]
!   Move address of _temp_1325 [1 ] into _temp_1326
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-296],r1
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
	store	r2,[r14+-292]
!   Data Move: _temp_1324 = *_temp_1326  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   _temp_1328 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-284]
!   Move address of _temp_1328 [2 ] into _temp_1329
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-284],r1
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
	store	r2,[r14+-280]
!   Data Move: _temp_1327 = *_temp_1329  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=8  value=_temp_1324  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1327  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+4]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CA",r10
	call	_P_Environ_setEnv
!   Retrieve Result: targetName=bv  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
! ASSIGNMENT STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0AS",r10
!   bv = bv		(1 byte)
	loadb	[r14+-25],r1
	storeb	r1,[r14+-25]
! IF STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0IF",r10
!   if bv then goto _Label_1331 else goto _Label_1330
	loadb	[r14+-25],r1
	cmp	r1,0
	be	_Label_1330
	jmp	_Label_1331
_Label_1330:
! THEN...
	mov	867,r13		! source line 867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1332 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_1332  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1333 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=8  value=_temp_1333  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0AS",r10
!   rv = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-1432]
! END IF...
_Label_1331:
! END IF...
_Label_1323:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+12]
!   Call the function
	mov	872,r13		! source line 872
	mov	"\0\0CA",r10
	call	_function_75_closeRedir
! RETURN STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0RE",r10
!   ReturnResult: rv  (sizeInBytes=4)
	load	[r14+-1432],r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1334
_Label_1313:
! ELSE...
	mov	874,r13		! source line 874
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0IF",r10
!   _temp_1338 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-264]
!   Move address of _temp_1338 [0 ] into _temp_1339
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-264],r1
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
	store	r2,[r14+-260]
!   Data Move: _temp_1337 = *_temp_1339  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   _temp_1340 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-256]
!   Prepare Argument: offset=8  value=_temp_1337  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1340  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_1335 else goto _Label_1336
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1336
	jmp	_Label_1335
_Label_1335:
! THEN...
	mov	875,r13		! source line 875
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0AS",r10
!   rv = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1432]
! IF STATEMENT...
	mov	876,r13		! source line 876
	mov	"\0\0IF",r10
!   _temp_1344 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1343 = *_temp_1344  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if _temp_1343 == 2 then goto _Label_1342		(int)
	load	[r14+-252],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1342
!	_Label_1341	jmp	_Label_1341
_Label_1341:
! THEN...
	mov	877,r13		! source line 877
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1345 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=8  value=_temp_1345  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	878,r13		! source line 878
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0AS",r10
!   rv = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-1432]
	jmp	_Label_1346
_Label_1342:
! ELSE...
	mov	881,r13		! source line 881
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1348 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-236]
!   Move address of _temp_1348 [1 ] into _temp_1349
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-236],r1
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
	store	r2,[r14+-232]
!   Data Move: _temp_1347 = *_temp_1349  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_1347  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CA",r10
	call	_P_Environ_unsetEnv
! END IF...
_Label_1346:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+12]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CA",r10
	call	_function_75_closeRedir
! RETURN STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0RE",r10
!   ReturnResult: rv  (sizeInBytes=4)
	load	[r14+-1432],r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1350
_Label_1336:
! ELSE...
	mov	885,r13		! source line 885
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0IF",r10
!   _temp_1354 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-224]
!   Move address of _temp_1354 [0 ] into _temp_1355
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
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
	store	r2,[r14+-220]
!   Data Move: _temp_1353 = *_temp_1355  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   _temp_1356 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_1353  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1356  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_1351 else goto _Label_1352
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1352
	jmp	_Label_1351
_Label_1351:
! THEN...
	mov	886,r13		! source line 886
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   _Global_exitVal = 0		(4 bytes)
	mov	0,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+12]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CA",r10
	call	_function_75_closeRedir
! RETURN STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1357
_Label_1352:
! ELSE...
	mov	889,r13		! source line 889
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0IF",r10
!   _temp_1361 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-208]
!   Move address of _temp_1361 [0 ] into _temp_1362
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-208],r1
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
	store	r2,[r14+-204]
!   Data Move: _temp_1360 = *_temp_1362  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   _temp_1363 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_1360  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1363  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_1358 else goto _Label_1359
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1359
	jmp	_Label_1358
_Label_1358:
! THEN...
	mov	890,r13		! source line 890
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+12]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CA",r10
	call	_function_75_closeRedir
! RETURN STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1364
_Label_1359:
! ELSE...
	mov	893,r13		! source line 893
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0IF",r10
!   _temp_1368 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-192]
!   Move address of _temp_1368 [0 ] into _temp_1369
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-192],r1
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
	store	r2,[r14+-188]
!   Data Move: _temp_1367 = *_temp_1369  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_1370 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1367  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1370  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   if result==true then goto _Label_1365 else goto _Label_1366
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1366
	jmp	_Label_1365
_Label_1365:
! THEN...
	mov	894,r13		! source line 894
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   rv = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1432]
! IF STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0IF",r10
!   _temp_1374 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1373 = *_temp_1374  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if _temp_1373 == 2 then goto _Label_1372		(int)
	load	[r14+-180],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1372
!	_Label_1371	jmp	_Label_1371
_Label_1371:
! THEN...
	mov	896,r13		! source line 896
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1375 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1375  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0AS",r10
!   _Global_exitVal = 1		(4 bytes)
	mov	1,r1
	set	_Global_exitVal,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   rv = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-1432]
	jmp	_Label_1376
_Label_1372:
! ELSE...
	mov	901,r13		! source line 901
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0AS",r10
!   _temp_1377 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1377) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1377 = 512  (sizeInBytes=4)
	mov	512,r1
	load	[r14+-168],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0IF",r10
!   if intIsZero (cinFd) then goto _Label_1378
	load	[r14+-1436],r1
	cmp	r1,r0
	be	_Label_1378
	jmp	_Label_1379
_Label_1378:
! THEN...
	mov	903,r13		! source line 903
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0AS",r10
!   _temp_1380 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1380  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CA",r10
	call	_P_UserLib_ReadLine
!   Retrieve Result: targetName=bv  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
	jmp	_Label_1381
_Label_1379:
! ELSE...
	mov	905,r13		! source line 905
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   _temp_1382 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1382  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CA",r10
	call	_P_UserLib_dReadLine
!   Retrieve Result: targetName=bv  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
! END IF...
_Label_1381:
! IF STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0IF",r10
!   if bv then goto _Label_1383 else goto _Label_1384
	loadb	[r14+-25],r1
	cmp	r1,0
	be	_Label_1384
	jmp	_Label_1383
_Label_1383:
! THEN...
	mov	908,r13		! source line 908
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   _temp_1385 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1385  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+8]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CA",r10
	call	_function_71_StrChr
!   Retrieve Result: targetName=nlLoc  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-3004]
! CALL STATEMENT...
!   _temp_1386 = &inFile
	add	r14,-1968,r1
	store	r1,[r14+-152]
!   _temp_1387 = &outFile
	add	r14,-2484,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1386  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1387  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nlLoc  sizeInBytes=4
	load	[r14+-3004],r1
	store	r1,[r15+12]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CA",r10
	call	_function_73_GetWord
! ASSIGNMENT STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0AS",r10
!   _temp_1389 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-140]
!   Move address of _temp_1389 [1 ] into _temp_1390
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   Data Move: _temp_1388 = *_temp_1390  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   _temp_1391 = &outFile
	add	r14,-2484,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1388  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1391  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CA",r10
	call	_P_Environ_setEnv
!   Retrieve Result: targetName=bv  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
	jmp	_Label_1392
_Label_1384:
! ELSE...
	mov	912,r13		! source line 912
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1393 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1393  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0AS",r10
!   rv = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-1432]
! END IF...
_Label_1392:
! END IF...
_Label_1376:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+12]
!   Call the function
	mov	916,r13		! source line 916
	mov	"\0\0CA",r10
	call	_function_75_closeRedir
! RETURN STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1366:
! END IF...
_Label_1364:
! END IF...
_Label_1357:
! END IF...
_Label_1350:
! END IF...
_Label_1334:
! END IF...
_Label_1311:
! END IF...
_Label_1279:
! END IF...
_Label_1245:
! ASSIGNMENT STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0AS",r10
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1424]
! IF STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1394
	load	[r14+-1424],r1
	cmp	r1,r0
	be	_Label_1394
	jmp	_Label_1395
_Label_1394:
! THEN...
	mov	923,r13		! source line 923
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0IF",r10
!   if intIsZero (cinFd) then goto _Label_1397
	load	[r14+-1436],r1
	cmp	r1,r0
	be	_Label_1397
!	_Label_1396	jmp	_Label_1396
_Label_1396:
! THEN...
	mov	924,r13		! source line 924
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Dup
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1428]
! END IF...
_Label_1397:
! IF STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0IF",r10
!   if coutFd == 1 then goto _Label_1399		(int)
	load	[r14+-1440],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_1399
!	_Label_1398	jmp	_Label_1398
_Label_1398:
! THEN...
	mov	928,r13		! source line 928
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Dup
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1428]
! END IF...
_Label_1399:
! IF STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0IF",r10
!   _temp_1403 = &_Global_args
	set	_Global_args,r1
	store	r1,[r14+-124]
!   Move address of _temp_1403 [0 ] into _temp_1404
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	516,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Move address of _temp_1404 [0 ] into _temp_1405
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
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
	store	r2,[r14+-116]
!   Data Move: _temp_1402 = *_temp_1405  (sizeInBytes=1)
	load	[r14+-116],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_1406 = _temp_1402 XOR 47		(bool)
	loadb	[r14+-10],r1
	mov	47,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1406 then goto _Label_1400 else goto _Label_1401
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1401
	jmp	_Label_1400
_Label_1400:
! THEN...
	mov	932,r13		! source line 932
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0AS",r10
!   _temp_1407 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1407) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1407 = 512  (sizeInBytes=4)
	mov	512,r1
	load	[r14+-112],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_1408 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-108]
!   _temp_1409 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1408  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1409  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   _temp_1410 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1410) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1410 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-100],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_1411 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-96]
!   _temp_1413 = &_Global_args
	set	_Global_args,r1
	store	r1,[r14+-88]
!   Move address of _temp_1413 [0 ] into _temp_1414
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	516,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   _temp_1412 = _temp_1414		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1411  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1412  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+8]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CA",r10
	call	_function_72_Append
! ASSIGNMENT STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0AS",r10
!   _temp_1415 = &tempStr
	add	r14,-3000,r1
	store	r1,[r14+-80]
!   _temp_1416 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1415  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1416  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1428]
! END IF...
_Label_1401:
! ASSIGNMENT STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0AS",r10
!   _temp_1418 = &_Global_args
	set	_Global_args,r1
	store	r1,[r14+-68]
!   Move address of _temp_1418 [0 ] into _temp_1419
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	516,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   _temp_1417 = _temp_1419		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_1420 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1417  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1420  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1428]
! ASSIGNMENT STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0AS",r10
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1428]
! CALL STATEMENT...
!   _temp_1421 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1421  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	940,r13		! source line 940
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1423 = &_Global_argv
	set	_Global_argv,r1
	store	r1,[r14+-48]
!   Move address of _temp_1423 [0 ] into _temp_1424
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
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
	store	r2,[r14+-44]
!   Data Move: _temp_1422 = *_temp_1424  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1422  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	941,r13		! source line 941
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1425 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1425  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-1428],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CA",r10
	call	_P_UserLib_ErrorString
!   Retrieve Result: targetName=_temp_1426  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1426  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1427 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1427  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	944,r13		! source line 944
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=127  sizeInBytes=4
	mov	127,r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1428
_Label_1395:
! ELSE...
	mov	947,r13		! source line 947
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0IF",r10
!   if wait then goto _Label_1429 else goto _Label_1430
	loadb	[r14+20],r1
	cmp	r1,0
	be	_Label_1430
	jmp	_Label_1429
_Label_1429:
! THEN...
	mov	948,r13		! source line 948
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-1424],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_Global_exitVal  sizeInBytes=4
	load	[r15],r1
	set	_Global_exitVal,r2
	store	r1,[r2]
	jmp	_Label_1431
_Label_1430:
! ELSE...
	mov	950,r13		! source line 950
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0AS",r10
!   rv = pid		(4 bytes)
	load	[r14+-1424],r1
	store	r1,[r14+-1432]
! END IF...
_Label_1431:
! END IF...
_Label_1428:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inFd  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=cinFd  sizeInBytes=4
	load	[r14+-1436],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=outFd  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=coutFd  sizeInBytes=4
	load	[r14+-1440],r1
	store	r1,[r15+12]
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CA",r10
	call	_function_75_closeRedir
! RETURN STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0RE",r10
!   ReturnResult: rv  (sizeInBytes=4)
	load	[r14+-1432],r1
	store	r1,[r14+8]
	add	r15,3088,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_74_ProcessLine:
	.word	_sourceFileName
	.word	_Label_1432
	.word	16		! total size of parameters
	.word	3084		! frame size = 3084
	.word	_Label_1433
	.word	8
	.word	4
	.word	_Label_1434
	.word	12
	.word	4
	.word	_Label_1435
	.word	16
	.word	4
	.word	_Label_1436
	.word	20
	.word	1
	.word	_Label_1437
	.word	-32
	.word	4
	.word	_Label_1438
	.word	-36
	.word	4
	.word	_Label_1439
	.word	-40
	.word	4
	.word	_Label_1440
	.word	-44
	.word	4
	.word	_Label_1441
	.word	-48
	.word	4
	.word	_Label_1442
	.word	-52
	.word	4
	.word	_Label_1443
	.word	-56
	.word	4
	.word	_Label_1444
	.word	-60
	.word	4
	.word	_Label_1445
	.word	-64
	.word	4
	.word	_Label_1446
	.word	-68
	.word	4
	.word	_Label_1447
	.word	-72
	.word	4
	.word	_Label_1448
	.word	-76
	.word	4
	.word	_Label_1449
	.word	-80
	.word	4
	.word	_Label_1450
	.word	-84
	.word	4
	.word	_Label_1451
	.word	-88
	.word	4
	.word	_Label_1452
	.word	-92
	.word	4
	.word	_Label_1453
	.word	-96
	.word	4
	.word	_Label_1454
	.word	-100
	.word	4
	.word	_Label_1455
	.word	-104
	.word	4
	.word	_Label_1456
	.word	-108
	.word	4
	.word	_Label_1457
	.word	-112
	.word	4
	.word	_Label_1458
	.word	-9
	.word	1
	.word	_Label_1459
	.word	-116
	.word	4
	.word	_Label_1460
	.word	-120
	.word	4
	.word	_Label_1461
	.word	-124
	.word	4
	.word	_Label_1462
	.word	-10
	.word	1
	.word	_Label_1463
	.word	-128
	.word	4
	.word	_Label_1464
	.word	-132
	.word	4
	.word	_Label_1465
	.word	-136
	.word	4
	.word	_Label_1466
	.word	-140
	.word	4
	.word	_Label_1467
	.word	-144
	.word	4
	.word	_Label_1468
	.word	-148
	.word	4
	.word	_Label_1469
	.word	-152
	.word	4
	.word	_Label_1470
	.word	-156
	.word	4
	.word	_Label_1471
	.word	-160
	.word	4
	.word	_Label_1472
	.word	-164
	.word	4
	.word	_Label_1473
	.word	-168
	.word	4
	.word	_Label_1474
	.word	-172
	.word	4
	.word	_Label_1475
	.word	-176
	.word	4
	.word	_Label_1476
	.word	-180
	.word	4
	.word	_Label_1477
	.word	-184
	.word	4
	.word	_Label_1478
	.word	-188
	.word	4
	.word	_Label_1479
	.word	-192
	.word	4
	.word	_Label_1480
	.word	-196
	.word	4
	.word	_Label_1481
	.word	-200
	.word	4
	.word	_Label_1482
	.word	-204
	.word	4
	.word	_Label_1483
	.word	-208
	.word	4
	.word	_Label_1484
	.word	-212
	.word	4
	.word	_Label_1485
	.word	-216
	.word	4
	.word	_Label_1486
	.word	-220
	.word	4
	.word	_Label_1487
	.word	-224
	.word	4
	.word	_Label_1488
	.word	-228
	.word	4
	.word	_Label_1489
	.word	-232
	.word	4
	.word	_Label_1490
	.word	-236
	.word	4
	.word	_Label_1491
	.word	-240
	.word	4
	.word	_Label_1492
	.word	-244
	.word	4
	.word	_Label_1493
	.word	-248
	.word	4
	.word	_Label_1494
	.word	-252
	.word	4
	.word	_Label_1495
	.word	-256
	.word	4
	.word	_Label_1496
	.word	-260
	.word	4
	.word	_Label_1497
	.word	-264
	.word	4
	.word	_Label_1498
	.word	-268
	.word	4
	.word	_Label_1499
	.word	-272
	.word	4
	.word	_Label_1500
	.word	-276
	.word	4
	.word	_Label_1501
	.word	-280
	.word	4
	.word	_Label_1502
	.word	-284
	.word	4
	.word	_Label_1503
	.word	-288
	.word	4
	.word	_Label_1504
	.word	-292
	.word	4
	.word	_Label_1505
	.word	-296
	.word	4
	.word	_Label_1506
	.word	-300
	.word	4
	.word	_Label_1507
	.word	-304
	.word	4
	.word	_Label_1508
	.word	-308
	.word	4
	.word	_Label_1509
	.word	-312
	.word	4
	.word	_Label_1510
	.word	-316
	.word	4
	.word	_Label_1511
	.word	-320
	.word	4
	.word	_Label_1512
	.word	-324
	.word	4
	.word	_Label_1513
	.word	-328
	.word	4
	.word	_Label_1514
	.word	-332
	.word	4
	.word	_Label_1515
	.word	-336
	.word	4
	.word	_Label_1516
	.word	-340
	.word	4
	.word	_Label_1517
	.word	-344
	.word	4
	.word	_Label_1518
	.word	-348
	.word	4
	.word	_Label_1519
	.word	-352
	.word	4
	.word	_Label_1520
	.word	-356
	.word	4
	.word	_Label_1521
	.word	-360
	.word	4
	.word	_Label_1522
	.word	-364
	.word	4
	.word	_Label_1523
	.word	-368
	.word	4
	.word	_Label_1524
	.word	-372
	.word	4
	.word	_Label_1525
	.word	-376
	.word	4
	.word	_Label_1526
	.word	-380
	.word	4
	.word	_Label_1527
	.word	-384
	.word	4
	.word	_Label_1528
	.word	-388
	.word	4
	.word	_Label_1529
	.word	-392
	.word	4
	.word	_Label_1530
	.word	-396
	.word	4
	.word	_Label_1531
	.word	-400
	.word	4
	.word	_Label_1532
	.word	-404
	.word	4
	.word	_Label_1533
	.word	-408
	.word	4
	.word	_Label_1534
	.word	-412
	.word	4
	.word	_Label_1535
	.word	-416
	.word	4
	.word	_Label_1536
	.word	-420
	.word	4
	.word	_Label_1537
	.word	-424
	.word	4
	.word	_Label_1538
	.word	-428
	.word	4
	.word	_Label_1539
	.word	-432
	.word	4
	.word	_Label_1540
	.word	-436
	.word	4
	.word	_Label_1541
	.word	-440
	.word	4
	.word	_Label_1542
	.word	-444
	.word	4
	.word	_Label_1543
	.word	-448
	.word	4
	.word	_Label_1544
	.word	-452
	.word	4
	.word	_Label_1545
	.word	-456
	.word	4
	.word	_Label_1546
	.word	-460
	.word	4
	.word	_Label_1547
	.word	-464
	.word	4
	.word	_Label_1548
	.word	-468
	.word	4
	.word	_Label_1549
	.word	-472
	.word	4
	.word	_Label_1550
	.word	-476
	.word	4
	.word	_Label_1551
	.word	-480
	.word	4
	.word	_Label_1552
	.word	-484
	.word	4
	.word	_Label_1553
	.word	-488
	.word	4
	.word	_Label_1554
	.word	-492
	.word	4
	.word	_Label_1555
	.word	-496
	.word	4
	.word	_Label_1556
	.word	-500
	.word	4
	.word	_Label_1557
	.word	-504
	.word	4
	.word	_Label_1558
	.word	-508
	.word	4
	.word	_Label_1559
	.word	-512
	.word	4
	.word	_Label_1560
	.word	-516
	.word	4
	.word	_Label_1561
	.word	-520
	.word	4
	.word	_Label_1562
	.word	-524
	.word	4
	.word	_Label_1563
	.word	-528
	.word	4
	.word	_Label_1564
	.word	-532
	.word	4
	.word	_Label_1565
	.word	-536
	.word	4
	.word	_Label_1566
	.word	-540
	.word	4
	.word	_Label_1567
	.word	-544
	.word	4
	.word	_Label_1568
	.word	-548
	.word	4
	.word	_Label_1569
	.word	-552
	.word	4
	.word	_Label_1570
	.word	-556
	.word	4
	.word	_Label_1571
	.word	-560
	.word	4
	.word	_Label_1572
	.word	-564
	.word	4
	.word	_Label_1573
	.word	-568
	.word	4
	.word	_Label_1574
	.word	-572
	.word	4
	.word	_Label_1575
	.word	-576
	.word	4
	.word	_Label_1576
	.word	-580
	.word	4
	.word	_Label_1577
	.word	-584
	.word	4
	.word	_Label_1578
	.word	-588
	.word	4
	.word	_Label_1579
	.word	-592
	.word	4
	.word	_Label_1580
	.word	-596
	.word	4
	.word	_Label_1581
	.word	-600
	.word	4
	.word	_Label_1582
	.word	-604
	.word	4
	.word	_Label_1583
	.word	-608
	.word	4
	.word	_Label_1584
	.word	-612
	.word	4
	.word	_Label_1585
	.word	-11
	.word	1
	.word	_Label_1586
	.word	-616
	.word	4
	.word	_Label_1587
	.word	-620
	.word	4
	.word	_Label_1588
	.word	-624
	.word	4
	.word	_Label_1589
	.word	-628
	.word	4
	.word	_Label_1590
	.word	-12
	.word	1
	.word	_Label_1591
	.word	-13
	.word	1
	.word	_Label_1592
	.word	-632
	.word	4
	.word	_Label_1593
	.word	-636
	.word	4
	.word	_Label_1594
	.word	-14
	.word	1
	.word	_Label_1595
	.word	-640
	.word	4
	.word	_Label_1596
	.word	-644
	.word	4
	.word	_Label_1597
	.word	-648
	.word	4
	.word	_Label_1598
	.word	-652
	.word	4
	.word	_Label_1599
	.word	-15
	.word	1
	.word	_Label_1600
	.word	-16
	.word	1
	.word	_Label_1601
	.word	-656
	.word	4
	.word	_Label_1602
	.word	-660
	.word	4
	.word	_Label_1603
	.word	-664
	.word	4
	.word	_Label_1604
	.word	-668
	.word	4
	.word	_Label_1605
	.word	-17
	.word	1
	.word	_Label_1606
	.word	-18
	.word	1
	.word	_Label_1607
	.word	-672
	.word	4
	.word	_Label_1608
	.word	-676
	.word	4
	.word	_Label_1609
	.word	-680
	.word	4
	.word	_Label_1610
	.word	-684
	.word	4
	.word	_Label_1611
	.word	-19
	.word	1
	.word	_Label_1612
	.word	-688
	.word	4
	.word	_Label_1613
	.word	-20
	.word	1
	.word	_Label_1614
	.word	-692
	.word	4
	.word	_Label_1615
	.word	-696
	.word	4
	.word	_Label_1616
	.word	-700
	.word	4
	.word	_Label_1617
	.word	-704
	.word	4
	.word	_Label_1618
	.word	-708
	.word	4
	.word	_Label_1619
	.word	-712
	.word	4
	.word	_Label_1620
	.word	-716
	.word	4
	.word	_Label_1621
	.word	-720
	.word	4
	.word	_Label_1622
	.word	-724
	.word	4
	.word	_Label_1623
	.word	-728
	.word	4
	.word	_Label_1624
	.word	-732
	.word	4
	.word	_Label_1625
	.word	-736
	.word	4
	.word	_Label_1626
	.word	-740
	.word	4
	.word	_Label_1627
	.word	-744
	.word	4
	.word	_Label_1628
	.word	-748
	.word	4
	.word	_Label_1629
	.word	-752
	.word	4
	.word	_Label_1630
	.word	-756
	.word	4
	.word	_Label_1631
	.word	-760
	.word	4
	.word	_Label_1632
	.word	-764
	.word	4
	.word	_Label_1633
	.word	-768
	.word	4
	.word	_Label_1634
	.word	-772
	.word	4
	.word	_Label_1635
	.word	-776
	.word	4
	.word	_Label_1636
	.word	-780
	.word	4
	.word	_Label_1637
	.word	-784
	.word	4
	.word	_Label_1638
	.word	-788
	.word	4
	.word	_Label_1639
	.word	-792
	.word	4
	.word	_Label_1640
	.word	-796
	.word	4
	.word	_Label_1641
	.word	-800
	.word	4
	.word	_Label_1642
	.word	-804
	.word	4
	.word	_Label_1643
	.word	-808
	.word	4
	.word	_Label_1644
	.word	-812
	.word	4
	.word	_Label_1645
	.word	-816
	.word	4
	.word	_Label_1646
	.word	-820
	.word	4
	.word	_Label_1647
	.word	-1336
	.word	516
	.word	_Label_1648
	.word	-1340
	.word	4
	.word	_Label_1649
	.word	-1344
	.word	4
	.word	_Label_1650
	.word	-1348
	.word	4
	.word	_Label_1651
	.word	-1352
	.word	4
	.word	_Label_1652
	.word	-1364
	.word	12
	.word	_Label_1653
	.word	-1368
	.word	4
	.word	_Label_1654
	.word	-1372
	.word	4
	.word	_Label_1655
	.word	-1376
	.word	4
	.word	_Label_1656
	.word	-1420
	.word	44
	.word	_Label_1657
	.word	-1424
	.word	4
	.word	_Label_1658
	.word	-1428
	.word	4
	.word	_Label_1659
	.word	-1432
	.word	4
	.word	_Label_1660
	.word	-1436
	.word	4
	.word	_Label_1661
	.word	-1440
	.word	4
	.word	_Label_1662
	.word	-1444
	.word	4
	.word	_Label_1663
	.word	-1448
	.word	4
	.word	_Label_1664
	.word	-1452
	.word	4
	.word	_Label_1665
	.word	-21
	.word	1
	.word	_Label_1666
	.word	-22
	.word	1
	.word	_Label_1667
	.word	-23
	.word	1
	.word	_Label_1668
	.word	-1968
	.word	516
	.word	_Label_1669
	.word	-2484
	.word	516
	.word	_Label_1670
	.word	-3000
	.word	516
	.word	_Label_1671
	.word	-24
	.word	1
	.word	_Label_1672
	.word	-3004
	.word	4
	.word	_Label_1673
	.word	-3008
	.word	4
	.word	_Label_1674
	.word	-3012
	.word	4
	.word	_Label_1675
	.word	-3056
	.word	44
	.word	_Label_1676
	.word	-3060
	.word	4
	.word	_Label_1677
	.word	-3072
	.word	12
	.word	_Label_1678
	.word	-25
	.word	1
	.word	0
_Label_1432:
	.ascii	"ProcessLine\0"
	.align
_Label_1433:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_1434:
	.byte	'I'
	.ascii	"inFd\0"
	.align
_Label_1435:
	.byte	'I'
	.ascii	"outFd\0"
	.align
_Label_1436:
	.byte	'B'
	.ascii	"wait\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1458:
	.byte	'C'
	.ascii	"_temp_1406\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1462:
	.byte	'C'
	.ascii	"_temp_1402\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1585:
	.byte	'C'
	.ascii	"_temp_1188\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1590:
	.byte	'C'
	.ascii	"_temp_1181\0"
	.align
_Label_1591:
	.byte	'C'
	.ascii	"_temp_1178\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1594:
	.byte	'C'
	.ascii	"_temp_1170\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1599:
	.byte	'C'
	.ascii	"_temp_1163\0"
	.align
_Label_1600:
	.byte	'C'
	.ascii	"_temp_1160\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1605:
	.byte	'C'
	.ascii	"_temp_1149\0"
	.align
_Label_1606:
	.byte	'C'
	.ascii	"_temp_1145\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1611:
	.byte	'C'
	.ascii	"_temp_1138\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1613:
	.byte	'C'
	.ascii	"_temp_1130\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1657:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_1658:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1659:
	.byte	'I'
	.ascii	"rv\0"
	.align
_Label_1660:
	.byte	'I'
	.ascii	"cinFd\0"
	.align
_Label_1661:
	.byte	'I'
	.ascii	"coutFd\0"
	.align
_Label_1662:
	.byte	'I'
	.ascii	"nextPos\0"
	.align
_Label_1663:
	.byte	'I'
	.ascii	"len\0"
	.align
_Label_1664:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_1665:
	.byte	'C'
	.ascii	"kind\0"
	.align
_Label_1666:
	.byte	'B'
	.ascii	"gotInFile\0"
	.align
_Label_1667:
	.byte	'B'
	.ascii	"gotOutFile\0"
	.align
_Label_1668:
	.byte	'A'
	.ascii	"inFile\0"
	.align
_Label_1669:
	.byte	'A'
	.ascii	"outFile\0"
	.align
_Label_1670:
	.byte	'A'
	.ascii	"tempStr\0"
	.align
_Label_1671:
	.byte	'B'
	.ascii	"printNL\0"
	.align
_Label_1672:
	.byte	'I'
	.ascii	"nlLoc\0"
	.align
_Label_1673:
	.byte	'I'
	.ascii	"child\0"
	.align
_Label_1674:
	.byte	'I'
	.ascii	"childCnt\0"
	.align
_Label_1675:
	.byte	'A'
	.ascii	"children\0"
	.align
_Label_1676:
	.byte	'I'
	.ascii	"pipeLoc\0"
	.align
_Label_1677:
	.byte	'A'
	.ascii	"pipeFD\0"
	.align
_Label_1678:
	.byte	'B'
	.ascii	"bv\0"
	.align
! 
! ===============  FUNCTION GetWord  ===============
! 
_function_73_GetWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_73_GetWord,r1
	push	r1
	mov	9,r1
_Label_1987:
	push	r0
	sub	r1,1,r1
	bne	_Label_1987
	mov	962,r13		! source line 962
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *str = len  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
!   dx = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! FOR STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1683 = start		(4 bytes)
	load	[r14+16],r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1685 = start + len		(int)
	load	[r14+16],r1
	load	[r14+20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   _temp_1684 = _temp_1685 - 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: sx = _temp_1683  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-40]
_Label_1679:
!   Perform the FOR-LOOP termination test
!   if sx > _temp_1684 then goto _Label_1682		
	load	[r14+-40],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1682
_Label_1680:
	mov	972,r13		! source line 972
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0IF",r10
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of cmd [sx ] into _temp_1689
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
	store	r2,[r14+-24]
!   Data Move: _temp_1688 = *_temp_1689  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_1690 = _temp_1688 XOR 34		(bool)
	loadb	[r14+-11],r1
	mov	34,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_1690 then goto _Label_1686 else goto _Label_1687
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1687
	jmp	_Label_1686
_Label_1686:
! THEN...
	mov	974,r13		! source line 974
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [dx ] into _temp_1691
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
	store	r2,[r14+-20]
!   if intIsZero (cmd) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of cmd [sx ] into _temp_1693
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
	store	r2,[r14+-16]
!   Data Move: _temp_1692 = *_temp_1693  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1691 = _temp_1692  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   dx = dx + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! END IF...
_Label_1687:
!   Increment the FOR-LOOP index variable and jump back
_Label_1681:
!   sx = sx + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_1679
! END FOR
_Label_1682:
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *str = dx  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_73_GetWord:
	.word	_sourceFileName
	.word	_Label_1694
	.word	16		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1695
	.word	8
	.word	4
	.word	_Label_1696
	.word	12
	.word	4
	.word	_Label_1697
	.word	16
	.word	4
	.word	_Label_1698
	.word	20
	.word	4
	.word	_Label_1699
	.word	-16
	.word	4
	.word	_Label_1700
	.word	-9
	.word	1
	.word	_Label_1701
	.word	-20
	.word	4
	.word	_Label_1702
	.word	-10
	.word	1
	.word	_Label_1703
	.word	-24
	.word	4
	.word	_Label_1704
	.word	-11
	.word	1
	.word	_Label_1705
	.word	-28
	.word	4
	.word	_Label_1706
	.word	-32
	.word	4
	.word	_Label_1707
	.word	-36
	.word	4
	.word	_Label_1708
	.word	-40
	.word	4
	.word	_Label_1709
	.word	-44
	.word	4
	.word	0
_Label_1694:
	.ascii	"GetWord\0"
	.align
_Label_1695:
	.byte	'P'
	.ascii	"cmd\0"
	.align
_Label_1696:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_1697:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_1698:
	.byte	'I'
	.ascii	"len\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1700:
	.byte	'C'
	.ascii	"_temp_1692\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1702:
	.byte	'C'
	.ascii	"_temp_1690\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1704:
	.byte	'C'
	.ascii	"_temp_1688\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1708:
	.byte	'I'
	.ascii	"sx\0"
	.align
_Label_1709:
	.byte	'I'
	.ascii	"dx\0"
	.align
! 
! ===============  FUNCTION Append  ===============
! 
_function_72_Append:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_72_Append,r1
	push	r1
	mov	11,r1
_Label_1988:
	push	r0
	sub	r1,1,r1
	bne	_Label_1988
	mov	981,r13		! source line 981
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! toCopy
!   if intIsZero (toAppend) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: toCopy = *toAppend  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-48]
! start
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: start = *str  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0IF",r10
!   _temp_1712 = start + toCopy		(int)
	load	[r14+-52],r1
	load	[r14+-48],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   if _temp_1712 <= maxLen then goto _Label_1711		(int)
	load	[r14+-40],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1711
!	_Label_1710	jmp	_Label_1710
_Label_1710:
! THEN...
	mov	987,r13		! source line 987
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0AS",r10
!   toCopy = maxLen - start		(int)
	load	[r14+16],r1
	load	[r14+-52],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! END IF...
_Label_1711:
! ASSIGNMENT STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1713 = start + toCopy		(int)
	load	[r14+-52],r1
	load	[r14+-48],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Data Move: *str = _temp_1713  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r14+8],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1718 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1719 = toCopy - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: ix = _temp_1718  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-44]
_Label_1714:
!   Perform the FOR-LOOP termination test
!   if ix > _temp_1719 then goto _Label_1717		
	load	[r14+-44],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1717
_Label_1715:
	mov	991,r13		! source line 991
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1720 = start + ix		(int)
	load	[r14+-52],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Move address of str [_temp_1720 ] into _temp_1721
!     make sure index expr is >= 0
	load	[r14+-24],r2
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
!   if intIsZero (toAppend) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of toAppend [ix ] into _temp_1723
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
!   Data Move: _temp_1722 = *_temp_1723  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1721 = _temp_1722  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1716:
!   ix = ix + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_1714
! END FOR
_Label_1717:
! RETURN STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_72_Append:
	.word	_sourceFileName
	.word	_Label_1724
	.word	12		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1725
	.word	8
	.word	4
	.word	_Label_1726
	.word	12
	.word	4
	.word	_Label_1727
	.word	16
	.word	4
	.word	_Label_1728
	.word	-16
	.word	4
	.word	_Label_1729
	.word	-9
	.word	1
	.word	_Label_1730
	.word	-20
	.word	4
	.word	_Label_1731
	.word	-24
	.word	4
	.word	_Label_1732
	.word	-28
	.word	4
	.word	_Label_1733
	.word	-32
	.word	4
	.word	_Label_1734
	.word	-36
	.word	4
	.word	_Label_1735
	.word	-40
	.word	4
	.word	_Label_1736
	.word	-44
	.word	4
	.word	_Label_1737
	.word	-48
	.word	4
	.word	_Label_1738
	.word	-52
	.word	4
	.word	0
_Label_1724:
	.ascii	"Append\0"
	.align
_Label_1725:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_1726:
	.byte	'P'
	.ascii	"toAppend\0"
	.align
_Label_1727:
	.byte	'I'
	.ascii	"maxLen\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1729:
	.byte	'C'
	.ascii	"_temp_1722\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1736:
	.byte	'I'
	.ascii	"ix\0"
	.align
_Label_1737:
	.byte	'I'
	.ascii	"toCopy\0"
	.align
_Label_1738:
	.byte	'I'
	.ascii	"start\0"
	.align
! 
! ===============  FUNCTION StrChr  ===============
! 
_function_71_StrChr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_71_StrChr,r1
	push	r1
	mov	6,r1
_Label_1989:
	push	r0
	sub	r1,1,r1
	bne	_Label_1989
	mov	999,r13		! source line 999
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1743 = start		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1745 = *str  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1744 = _temp_1745 - 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: ix = _temp_1743  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-32]
_Label_1739:
!   Perform the FOR-LOOP termination test
!   if ix > _temp_1744 then goto _Label_1742		
	load	[r14+-32],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1742
_Label_1740:
	mov	1001,r13		! source line 1001
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0IF",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [ix ] into _temp_1749
!     make sure index expr is >= 0
	load	[r14+-32],r2
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
	store	r2,[r14+-16]
!   Data Move: _temp_1748 = *_temp_1749  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_1750 = _temp_1748 XOR ch		(bool)
	loadb	[r14+-10],r1
	loadb	[r14+16],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1750 then goto _Label_1747 else goto _Label_1746
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1746
	jmp	_Label_1747
_Label_1746:
! THEN...
	mov	1003,r13		! source line 1003
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0RE",r10
!   ReturnResult: ix  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1747:
!   Increment the FOR-LOOP index variable and jump back
_Label_1741:
!   ix = ix + 1
	load	[r14+-32],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
	jmp	_Label_1739
! END FOR
_Label_1742:
! RETURN STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_71_StrChr:
	.word	_sourceFileName
	.word	_Label_1751
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1752
	.word	8
	.word	4
	.word	_Label_1753
	.word	12
	.word	4
	.word	_Label_1754
	.word	16
	.word	1
	.word	_Label_1755
	.word	-9
	.word	1
	.word	_Label_1756
	.word	-16
	.word	4
	.word	_Label_1757
	.word	-10
	.word	1
	.word	_Label_1758
	.word	-20
	.word	4
	.word	_Label_1759
	.word	-24
	.word	4
	.word	_Label_1760
	.word	-28
	.word	4
	.word	_Label_1761
	.word	-32
	.word	4
	.word	0
_Label_1751:
	.ascii	"StrChr\0"
	.align
_Label_1752:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_1753:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_1754:
	.byte	'C'
	.ascii	"ch\0"
	.align
_Label_1755:
	.byte	'C'
	.ascii	"_temp_1750\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1757:
	.byte	'C'
	.ascii	"_temp_1748\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1761:
	.byte	'I'
	.ascii	"ix\0"
	.align
! 
! ===============  FUNCTION PrintStr  ===============
! 
_function_70_PrintStr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_70_PrintStr,r1
	push	r1
	mov	8,r1
_Label_1990:
	push	r0
	sub	r1,1,r1
	bne	_Label_1990
	mov	1010,r13		! source line 1010
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ix
!   ix = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0WH",r10
_Label_1762:
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1767 = *str  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1766 = _temp_1767 - 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if ix >= _temp_1766 then goto _Label_1764		(int)
	load	[r14+-32],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1764
!	_Label_1765	jmp	_Label_1765
_Label_1765:
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [ix ] into _temp_1769
!     make sure index expr is >= 0
	load	[r14+-32],r2
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
!   Data Move: _temp_1768 = *_temp_1769  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_1770 = _temp_1768 XOR 10		(bool)
	loadb	[r14+-11],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_1770 then goto _Label_1763 else goto _Label_1764
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1764
	jmp	_Label_1763
_Label_1763:
	mov	1012,r13		! source line 1012
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [ix ] into _temp_1772
!     make sure index expr is >= 0
	load	[r14+-32],r2
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
	store	r2,[r14+-16]
!   Data Move: _temp_1771 = *_temp_1772  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1771  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+4]
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CA",r10
	call	_P_UserLib_dPutChar
! ASSIGNMENT STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0AS",r10
!   ix = ix + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! END WHILE...
	jmp	_Label_1762
_Label_1764:
! RETURN STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_70_PrintStr:
	.word	_sourceFileName
	.word	_Label_1773
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1774
	.word	8
	.word	4
	.word	_Label_1775
	.word	-16
	.word	4
	.word	_Label_1776
	.word	-9
	.word	1
	.word	_Label_1777
	.word	-10
	.word	1
	.word	_Label_1778
	.word	-20
	.word	4
	.word	_Label_1779
	.word	-11
	.word	1
	.word	_Label_1780
	.word	-24
	.word	4
	.word	_Label_1781
	.word	-28
	.word	4
	.word	_Label_1782
	.word	-32
	.word	4
	.word	0
_Label_1773:
	.ascii	"PrintStr\0"
	.align
_Label_1774:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1776:
	.byte	'C'
	.ascii	"_temp_1771\0"
	.align
_Label_1777:
	.byte	'C'
	.ascii	"_temp_1770\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1779:
	.byte	'C'
	.ascii	"_temp_1768\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1782:
	.byte	'I'
	.ascii	"ix\0"
	.align
! 
! ===============  FUNCTION RemoveComments  ===============
! 
_function_69_RemoveComments:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_69_RemoveComments,r1
	push	r1
	mov	8,r1
_Label_1991:
	push	r0
	sub	r1,1,r1
	bne	_Label_1991
	mov	1021,r13		! source line 1021
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ix
!   ix = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0WH",r10
_Label_1783:
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1787 = *str  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   _temp_1786 = _temp_1787 - 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if ix >= _temp_1786 then goto _Label_1785		(int)
	load	[r14+-40],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1785
!	_Label_1784	jmp	_Label_1784
_Label_1784:
	mov	1023,r13		! source line 1023
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0IF",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [ix ] into _temp_1791
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
	store	r2,[r14+-28]
!   Data Move: _temp_1790 = *_temp_1791  (sizeInBytes=1)
	load	[r14+-28],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   _temp_1792 = _temp_1790 XOR 9		(bool)
	loadb	[r14+-12],r1
	mov	9,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1792 then goto _Label_1789 else goto _Label_1788
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1788
	jmp	_Label_1789
_Label_1788:
! THEN...
	mov	1025,r13		! source line 1025
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [ix ] into _temp_1793
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
	store	r2,[r14+-24]
!   Data Move: *_temp_1793 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-24],r2
	storeb	r1,[r2]
	jmp	_Label_1794
_Label_1789:
! ELSE...
	mov	1026,r13		! source line 1026
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0IF",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [ix ] into _temp_1798
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
!   Data Move: _temp_1797 = *_temp_1798  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_1799 = _temp_1797 XOR 35		(bool)
	loadb	[r14+-10],r1
	mov	35,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1799 then goto _Label_1796 else goto _Label_1795
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1795
	jmp	_Label_1796
_Label_1795:
! THEN...
	mov	1027,r13		! source line 1027
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [ix ] into _temp_1800
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
	store	r2,[r14+-16]
!   Data Move: *_temp_1800 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1796:
! END IF...
_Label_1794:
! ASSIGNMENT STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0AS",r10
!   ix = ix + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1783
_Label_1785:
! RETURN STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_69_RemoveComments:
	.word	_sourceFileName
	.word	_Label_1801
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1802
	.word	8
	.word	4
	.word	_Label_1803
	.word	-16
	.word	4
	.word	_Label_1804
	.word	-9
	.word	1
	.word	_Label_1805
	.word	-20
	.word	4
	.word	_Label_1806
	.word	-10
	.word	1
	.word	_Label_1807
	.word	-24
	.word	4
	.word	_Label_1808
	.word	-11
	.word	1
	.word	_Label_1809
	.word	-28
	.word	4
	.word	_Label_1810
	.word	-12
	.word	1
	.word	_Label_1811
	.word	-32
	.word	4
	.word	_Label_1812
	.word	-36
	.word	4
	.word	_Label_1813
	.word	-40
	.word	4
	.word	0
_Label_1801:
	.ascii	"RemoveComments\0"
	.align
_Label_1802:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1804:
	.byte	'C'
	.ascii	"_temp_1799\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1806:
	.byte	'C'
	.ascii	"_temp_1797\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1808:
	.byte	'C'
	.ascii	"_temp_1792\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1810:
	.byte	'C'
	.ascii	"_temp_1790\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1813:
	.byte	'I'
	.ascii	"ix\0"
	.align
! 
! ===============  CLASS stmtList  ===============
! 
! Dispatch Table:
! 
_P_sh_stmtList:
	.word	_Label_1814
	jmp	_Method_P_sh_stmtList_1	! 4:	Init
	jmp	_Method_P_sh_stmtList_2	! 8:	newList
	jmp	_Method_P_sh_stmtList_3	! 12:	addStmt
	jmp	_Method_P_sh_stmtList_4	! 16:	setElsend
	jmp	_Method_P_sh_stmtList_5	! 20:	getLine
	jmp	_Method_P_sh_stmtList_6	! 24:	numStmts
	jmp	_Method_P_sh_stmtList_7	! 28:	printStmts
	.word	0
! 
! Class descriptor:
! 
_Label_1814:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1815
	.word	_sourceFileName
	.word	22		! line number
	.word	134160		! size of instances, in bytes
	.word	_P_sh_stmtList
	.word	_P_UserSystem_Object
	.word	0
_Label_1815:
	.ascii	"stmtList\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_sh_stmtList_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_sh_stmtList_1,r1
	push	r1
	mov	1,r1
_Label_1992:
	push	r0
	sub	r1,1,r1
	bne	_Label_1992
	mov	146,r13		! source line 146
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0AS",r10
!   nalloc = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r11
	set	134152,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0AS",r10
!   nused = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r11
	set	134156,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0AS",r10
!   _temp_1816 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1816) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1816 = 256  (sizeInBytes=4)
	mov	256,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_sh_stmtList_1:
	.word	_sourceFileName
	.word	_Label_1817
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1819
	.word	-12
	.word	4
	.word	0
_Label_1817:
	.ascii	"stmtList"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1818:
	.ascii	"Pself\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
! 
! ===============  METHOD newList  ===============
! 
_Method_P_sh_stmtList_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_sh_stmtList_2,r1
	push	r1
	mov	152,r13		! source line 152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0AS",r10
!   nused = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r11
	set	134156,r2
	store	r1,[r11+r2]
! RETURN STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_sh_stmtList_2:
	.word	_sourceFileName
	.word	_Label_1820
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1821
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_1820:
	.ascii	"stmtList"
	.ascii	"::"
	.ascii	"newList\0"
	.align
_Label_1821:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD addStmt  ===============
! 
_Method_P_sh_stmtList_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_sh_stmtList_3,r1
	push	r1
	mov	407,r1
_Label_1993:
	push	r0
	sub	r1,1,r1
	bne	_Label_1993
	mov	156,r13		! source line 156
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	157,r13		! source line 157
	mov	"\0\0IF",r10
!   if nused != nalloc then goto _Label_1823		(int)
	load	[r14+8],r11
	set	134156,r1
	load	[r11+r1],r1
	load	[r14+8],r11
	set	134152,r2
	load	[r11+r2],r2
	cmp	r1,r2
	bne	_Label_1823
!	_Label_1822	jmp	_Label_1822
_Label_1822:
! THEN...
	mov	158,r13		! source line 158
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0IF",r10
!   if nalloc != 256 then goto _Label_1825		(int)
	load	[r14+8],r11
	set	134152,r1
	load	[r11+r1],r1
	mov	256,r2
	cmp	r1,r2
	bne	_Label_1825
!	_Label_1824	jmp	_Label_1824
_Label_1824:
! THEN...
	mov	159,r13		! source line 159
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	159,r13		! source line 159
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,1632,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1825:
! ASSIGNMENT STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0AS",r10
!   _temp_1826 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1628]
!   Move address of _temp_1826 [nalloc ] into _temp_1827
!     make sure index expr is >= 0
	load	[r14+8],r11
	set	134152,r2
	load	[r11+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-1628],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	524,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-1624]
!   NEW RECORD Constructor...
!   _temp_1829 = _temp_1828.kind
	add	r14,-1620,r1
	add	r1,0,r1
	store	r1,[r14+-1096]
!   Data Move: *_temp_1829 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-1096],r2
	store	r1,[r2]
!   _temp_1829 = _temp_1828.elsend
	add	r14,-1620,r1
	add	r1,4,r1
	store	r1,[r14+-1096]
!   Data Move: *_temp_1829 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-1096],r2
	store	r1,[r2]
!   NEW ARRAY Constructor...
!   _temp_1831 = &_temp_1830
	add	r14,-1092,r1
	store	r1,[r14+-576]
!   _temp_1831 = _temp_1831 + 4
	load	[r14+-576],r1
	add	r1,4,r1
	store	r1,[r14+-576]
!   Next value...
	mov	512,r1
	store	r1,[r14+-572]
_Label_1833:
!   Data Move: *_temp_1831 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-576],r2
	storeb	r1,[r2]
!   _temp_1831 = _temp_1831 + 1
	load	[r14+-576],r1
	add	r1,1,r1
	store	r1,[r14+-576]
!   _temp_1832 = _temp_1832 + -1
	load	[r14+-572],r1
	add	r1,-1,r1
	store	r1,[r14+-572]
!   if intNotZero (_temp_1832) then goto _Label_1833
	load	[r14+-572],r1
	cmp	r1,r0
	bne	_Label_1833
!   Initialize the array size...
	mov	512,r1
	store	r1,[r14+-1092]
!   _temp_1834 = &_temp_1830
	add	r14,-1092,r1
	store	r1,[r14+-568]
!   make sure array has size 512
	load	[r14+-568],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: _temp_1835 = *_temp_1834  (sizeInBytes=516)
	load	[r14+-568],r5
	add	r14,-564,r4
	mov	129,r3
_Label_1994:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1994
!   _temp_1829 = _temp_1828.cmd
	add	r14,-1620,r1
	add	r1,8,r1
	store	r1,[r14+-1096]
!   Data Move: *_temp_1829 = _temp_1835  (sizeInBytes=516)
	add	r14,-564,r5
	load	[r14+-1096],r4
	mov	129,r3
_Label_1995:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1995
!   Data Move: *_temp_1827 = _temp_1828  (sizeInBytes=524)
	add	r14,-1620,r5
	load	[r14+-1624],r4
	mov	131,r3
_Label_1996:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1996
! ASSIGNMENT STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0AS",r10
!   nalloc = nalloc + 1		(int)
	load	[r14+8],r11
	set	134152,r1
	load	[r11+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r11
	set	134152,r2
	store	r1,[r11+r2]
! END IF...
_Label_1823:
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   _temp_1836 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Move address of _temp_1836 [nused ] into _temp_1837
!     make sure index expr is >= 0
	load	[r14+8],r11
	set	134156,r2
	load	[r11+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	524,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_1838 = _temp_1837 + 0
	load	[r14+-44],r1
	add	r1,0,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1838 = kind  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-40],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0AS",r10
!   _temp_1839 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1839 [nused ] into _temp_1840
!     make sure index expr is >= 0
	load	[r14+8],r11
	set	134156,r2
	load	[r11+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	524,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1841 = _temp_1840 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1841 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_1843 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1843 [nused ] into _temp_1844
!     make sure index expr is >= 0
	load	[r14+8],r11
	set	134156,r2
	load	[r11+r2],r2
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
	set	524,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1845 = _temp_1844 + 8
	load	[r14+-16],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   _temp_1842 = _temp_1845		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1842  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=line  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0AS",r10
!   nused = nused + 1		(int)
	load	[r14+8],r11
	set	134156,r1
	load	[r11+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r11
	set	134156,r2
	store	r1,[r11+r2]
! RETURN STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,1632,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_sh_stmtList_3:
	.word	_sourceFileName
	.word	_Label_1846
	.word	12		! total size of parameters
	.word	1628		! frame size = 1628
	.word	_Label_1847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1848
	.word	12
	.word	4
	.word	_Label_1849
	.word	16
	.word	4
	.word	_Label_1850
	.word	-12
	.word	4
	.word	_Label_1851
	.word	-16
	.word	4
	.word	_Label_1852
	.word	-20
	.word	4
	.word	_Label_1853
	.word	-24
	.word	4
	.word	_Label_1854
	.word	-28
	.word	4
	.word	_Label_1855
	.word	-32
	.word	4
	.word	_Label_1856
	.word	-36
	.word	4
	.word	_Label_1857
	.word	-40
	.word	4
	.word	_Label_1858
	.word	-44
	.word	4
	.word	_Label_1859
	.word	-48
	.word	4
	.word	_Label_1860
	.word	-564
	.word	516
	.word	_Label_1861
	.word	-568
	.word	4
	.word	_Label_1862
	.word	-572
	.word	4
	.word	_Label_1863
	.word	-576
	.word	4
	.word	_Label_1864
	.word	-1092
	.word	516
	.word	_Label_1865
	.word	-1096
	.word	4
	.word	_Label_1866
	.word	-1620
	.word	524
	.word	_Label_1867
	.word	-1624
	.word	4
	.word	_Label_1868
	.word	-1628
	.word	4
	.word	0
_Label_1846:
	.ascii	"stmtList"
	.ascii	"::"
	.ascii	"addStmt\0"
	.align
_Label_1847:
	.ascii	"Pself\0"
	.align
_Label_1848:
	.byte	'I'
	.ascii	"kind\0"
	.align
_Label_1849:
	.byte	'P'
	.ascii	"line\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
! 
! ===============  METHOD setElsend  ===============
! 
_Method_P_sh_stmtList_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_sh_stmtList_4,r1
	push	r1
	mov	3,r1
_Label_1997:
	push	r0
	sub	r1,1,r1
	bne	_Label_1997
	mov	172,r13		! source line 172
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0IF",r10
!   if src < nused then goto _Label_1870		(int)
	load	[r14+12],r1
	load	[r14+8],r11
	set	134156,r2
	load	[r11+r2],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1870
!	_Label_1869	jmp	_Label_1869
_Label_1869:
! THEN...
	mov	174,r13		! source line 174
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1870:
! ASSIGNMENT STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0AS",r10
!   _temp_1871 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1871 [src ] into _temp_1872
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	524,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1873 = _temp_1872 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1873 = dest  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_sh_stmtList_4:
	.word	_sourceFileName
	.word	_Label_1874
	.word	12		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1876
	.word	12
	.word	4
	.word	_Label_1877
	.word	16
	.word	4
	.word	_Label_1878
	.word	-12
	.word	4
	.word	_Label_1879
	.word	-16
	.word	4
	.word	_Label_1880
	.word	-20
	.word	4
	.word	0
_Label_1874:
	.ascii	"stmtList"
	.ascii	"::"
	.ascii	"setElsend\0"
	.align
_Label_1875:
	.ascii	"Pself\0"
	.align
_Label_1876:
	.byte	'I'
	.ascii	"src\0"
	.align
_Label_1877:
	.byte	'I'
	.ascii	"dest\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
! 
! ===============  METHOD getLine  ===============
! 
_Method_P_sh_stmtList_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_sh_stmtList_5,r1
	push	r1
	mov	7,r1
_Label_1998:
	push	r0
	sub	r1,1,r1
	bne	_Label_1998
	mov	179,r13		! source line 179
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0IF",r10
!   if loc >= nused then goto _Label_1882		(int)
	load	[r14+12],r1
	load	[r14+8],r11
	set	134156,r2
	load	[r11+r2],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1882
!	_Label_1881	jmp	_Label_1881
_Label_1881:
! THEN...
	mov	184,r13		! source line 184
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0RE",r10
!   _temp_1884 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1884 [loc ] into _temp_1885
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	524,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1883 = _temp_1885		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1883  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1882:
! RETURN STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0RE",r10
!   _temp_1887 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1888 = nused - 1		(int)
	load	[r14+8],r11
	set	134156,r1
	load	[r11+r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Move address of _temp_1887 [_temp_1888 ] into _temp_1889
!     make sure index expr is >= 0
	load	[r14+-16],r2
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
	set	524,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   _temp_1886 = _temp_1889		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1886  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_sh_stmtList_5:
	.word	_sourceFileName
	.word	_Label_1890
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1892
	.word	12
	.word	4
	.word	_Label_1893
	.word	-12
	.word	4
	.word	_Label_1894
	.word	-16
	.word	4
	.word	_Label_1895
	.word	-20
	.word	4
	.word	_Label_1896
	.word	-24
	.word	4
	.word	_Label_1897
	.word	-28
	.word	4
	.word	_Label_1898
	.word	-32
	.word	4
	.word	_Label_1899
	.word	-36
	.word	4
	.word	0
_Label_1890:
	.ascii	"stmtList"
	.ascii	"::"
	.ascii	"getLine\0"
	.align
_Label_1891:
	.ascii	"Pself\0"
	.align
_Label_1892:
	.byte	'I'
	.ascii	"loc\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
! 
! ===============  METHOD numStmts  ===============
! 
_Method_P_sh_stmtList_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_sh_stmtList_6,r1
	push	r1
	mov	189,r13		! source line 189
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0RE",r10
!   ReturnResult: nused  (sizeInBytes=4)
	load	[r14+8],r11
	set	134156,r1
	load	[r11+r1],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_sh_stmtList_6:
	.word	_sourceFileName
	.word	_Label_1900
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1901
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_1900:
	.ascii	"stmtList"
	.ascii	"::"
	.ascii	"numStmts\0"
	.align
_Label_1901:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD printStmts  ===============
! 
_Method_P_sh_stmtList_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_sh_stmtList_7,r1
	push	r1
	mov	24,r1
_Label_1999:
	push	r0
	sub	r1,1,r1
	bne	_Label_1999
	mov	193,r13		! source line 193
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1902 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1902  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nalloc  sizeInBytes=4
	load	[r14+8],r11
	set	134152,r1
	load	[r11+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CA",r10
	call	_P_UserLib_PrintInt
! CALL STATEMENT...
!   _temp_1903 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1903  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nused  sizeInBytes=4
	load	[r14+8],r11
	set	134156,r1
	load	[r11+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CA",r10
	call	_P_UserLib_PrintInt
! CALL STATEMENT...
!   _temp_1904 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1904  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! FOR STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1909 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1910 = nused - 1		(int)
	load	[r14+8],r11
	set	134156,r1
	load	[r11+r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1909  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-100]
_Label_1905:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1910 then goto _Label_1908		
	load	[r14+-100],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1908
_Label_1906:
	mov	197,r13		! source line 197
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1911 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1911  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CA",r10
	call	_P_UserLib_PrintInt
! CALL STATEMENT...
!   _temp_1912 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1912  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1914 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1914 [i ] into _temp_1915
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	524,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_1916 = _temp_1915 + 0
	load	[r14+-60],r1
	add	r1,0,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1913 = *_temp_1916  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1913  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CA",r10
	call	_P_UserLib_PrintInt
! CALL STATEMENT...
!   _temp_1917 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1917  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1919 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1919 [i ] into _temp_1920
!     make sure index expr is >= 0
	load	[r14+-100],r2
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
	set	524,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1921 = _temp_1920 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1918 = *_temp_1921  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1918  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CA",r10
	call	_P_UserLib_PrintInt
! CALL STATEMENT...
!   _temp_1922 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1922  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1924 = &stmts
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Move address of _temp_1924 [i ] into _temp_1925
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	524,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   _temp_1926 = _temp_1925 + 8
	load	[r14+-20],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   _temp_1923 = _temp_1926		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1923  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	201,r13		! source line 201
	mov	"\0\0CA",r10
	call	_function_70_PrintStr
! CALL STATEMENT...
!   _temp_1927 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1927  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	201,r13		! source line 201
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
!   Increment the FOR-LOOP index variable and jump back
_Label_1907:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_1905
! END FOR
_Label_1908:
! RETURN STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_sh_stmtList_7:
	.word	_sourceFileName
	.word	_Label_1928
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1929
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1930
	.word	-12
	.word	4
	.word	_Label_1931
	.word	-16
	.word	4
	.word	_Label_1932
	.word	-20
	.word	4
	.word	_Label_1933
	.word	-24
	.word	4
	.word	_Label_1934
	.word	-28
	.word	4
	.word	_Label_1935
	.word	-32
	.word	4
	.word	_Label_1936
	.word	-36
	.word	4
	.word	_Label_1937
	.word	-40
	.word	4
	.word	_Label_1938
	.word	-44
	.word	4
	.word	_Label_1939
	.word	-48
	.word	4
	.word	_Label_1940
	.word	-52
	.word	4
	.word	_Label_1941
	.word	-56
	.word	4
	.word	_Label_1942
	.word	-60
	.word	4
	.word	_Label_1943
	.word	-64
	.word	4
	.word	_Label_1944
	.word	-68
	.word	4
	.word	_Label_1945
	.word	-72
	.word	4
	.word	_Label_1946
	.word	-76
	.word	4
	.word	_Label_1947
	.word	-80
	.word	4
	.word	_Label_1948
	.word	-84
	.word	4
	.word	_Label_1949
	.word	-88
	.word	4
	.word	_Label_1950
	.word	-92
	.word	4
	.word	_Label_1951
	.word	-96
	.word	4
	.word	_Label_1952
	.word	-100
	.word	4
	.word	0
_Label_1928:
	.ascii	"stmtList"
	.ascii	"::"
	.ascii	"printStmts\0"
	.align
_Label_1929:
	.ascii	"Pself\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1952:
	.byte	'I'
	.ascii	"i\0"
	.align
