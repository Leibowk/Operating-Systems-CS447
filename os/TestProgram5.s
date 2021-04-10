! Name of package being compiled: TestProgram5
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
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_UserSystem_cmdArgs
! Global variables in this package
	.data
_Global_bigBuffer:
! Static array
	.word	9000		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.align
_Global_bigBuffer2:
! Static array
	.word	9000		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.align
	.align
! String constants
_StringConst_266:
	.word	37			! length
	.ascii	"Invalid entry; enter a single digit.\n"
	.align
_StringConst_265:
	.word	24			! length
	.ascii	"Unable to execute shell\n"
	.align
_StringConst_264:
	.word	7			! length
	.ascii	"/bin/sh"
	.align
_StringConst_263:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_262:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_261:
	.word	25			! length
	.ascii	"Please select by number: "
	.align
_StringConst_260:
	.word	13			! length
	.ascii	"  q  -  Quit\n"
	.align
_StringConst_259:
	.word	14			! length
	.ascii	"  s  -  Shell\n"
	.align
_StringConst_258:
	.word	34			! length
	.ascii	"  p  -  Test the Pipe system call\n"
	.align
_StringConst_257:
	.word	33			! length
	.ascii	"  d  -  Test the Dup system call\n"
	.align
_StringConst_256:
	.word	26			! length
	.ascii	"  7  -  TerminalErrorTest\n"
	.align
_StringConst_255:
	.word	30			! length
	.ascii	"  6  -  OpenCloseTerminalTest\n"
	.align
_StringConst_254:
	.word	16			! length
	.ascii	"  5  -  EOFTest\n"
	.align
_StringConst_253:
	.word	21			! length
	.ascii	"  4  -  LineEchoTest\n"
	.align
_StringConst_252:
	.word	17			! length
	.ascii	"  3  -  EchoTest\n"
	.align
_StringConst_251:
	.word	16			! length
	.ascii	"  2  -  KeyTest\n"
	.align
_StringConst_250:
	.word	24			! length
	.ascii	"  1  -  BasicSerialTest\n"
	.align
_StringConst_249:
	.word	49			! length
	.ascii	"====================  MENU  ====================\n"
	.align
_StringConst_248:
	.word	35			! length
	.ascii	"This menu works best in raw mode.\n\n"
	.align
_StringConst_247:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_246:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_245:
	.word	32			! length
	.ascii	"Opening \'stdin\' and \'stdout\'...\n"
	.align
_StringConst_244:
	.word	22			! length
	.ascii	"Done with pipe tests.\n"
	.align
_StringConst_243:
	.word	29			! length
	.ascii	"****** Checking Errors *****\n"
	.align
_StringConst_242:
	.word	52			! length
	.ascii	"******** ERROR -- Could not open pipe for test four\n"
	.align
_StringConst_241:
	.word	38			! length
	.ascii	"Pipe test four ... this may also hang\n"
	.align
_StringConst_240:
	.word	53			! length
	.ascii	"******** ERROR -- Could not open pipe for test three\n"
	.align
_StringConst_239:
	.word	39			! length
	.ascii	"Pipe test three ... this may also hang\n"
	.align
_StringConst_238:
	.word	51			! length
	.ascii	"******** ERROR -- Could not open pipe for test two\n"
	.align
_StringConst_237:
	.word	65			! length
	.ascii	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890.."
	.align
_StringConst_236:
	.word	46			! length
	.ascii	"Pipe test two...(may hang if you have a bug.)\n"
	.align
_StringConst_235:
	.word	59			! length
	.ascii	"*****  ERROR: all pipe tests will fail, can\'t open a pipe.\n"
	.align
_StringConst_234:
	.word	54			! length
	.ascii	"******  ERROR:  Data read different from data written\n"
	.align
_StringConst_233:
	.word	9			! length
	.ascii	"abcdefghi"
	.align
_StringConst_232:
	.word	17			! length
	.ascii	"Pipe test one...\n"
	.align
_StringConst_231:
	.word	37			! length
	.ascii	"****ERROR: can\'t read TestProgram5.k\n"
	.align
_StringConst_230:
	.word	14			! length
	.ascii	"TestProgram5.k"
	.align
_StringConst_229:
	.word	25			! length
	.ascii	"Preparing pipe tests....\n"
	.align
_StringConst_228:
	.word	31			! length
	.ascii	"Done testing Dup system call.\n\n"
	.align
_StringConst_227:
	.word	3			! length
	.ascii	").\n"
	.align
_StringConst_226:
	.word	45			! length
	.ascii	"***** ERROR: Dup returned unexpected number ("
	.align
_StringConst_225:
	.word	5			! length
	.ascii	"fileA"
	.align
_StringConst_224:
	.word	25			! length
	.ascii	"Testing Dup with a file.\n"
	.align
_StringConst_223:
	.word	2			! length
	.ascii	"\'\n"
	.align
_StringConst_222:
	.word	11			! length
	.ascii	"\nThat was \'"
	.align
_StringConst_221:
	.word	20			! length
	.ascii	"Type any character: "
	.align
_StringConst_220:
	.word	19			! length
	.ascii	"Duplicating stdin!\n"
	.align
_StringConst_219:
	.word	29			! length
	.ascii	"Testing the Dup System call.\n"
	.align
_StringConst_218:
	.word	23			! length
	.ascii	"\' instead  ***********\n"
	.align
_StringConst_217:
	.word	11			! length
	.ascii	"\' but was \'"
	.align
_StringConst_216:
	.word	62			! length
	.ascii	"*********  ERROR: The next input character is expected to be \'"
	.align
_StringConst_215:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_214:
	.word	30			! length
	.ascii	") is incorrect  *************\n"
	.align
_StringConst_213:
	.word	42			! length
	.ascii	"*********  ERROR: Return value from Read ("
	.align
_StringConst_212:
	.word	27			! length
	.ascii	") is incorrect  **********\n"
	.align
_StringConst_211:
	.word	44			! length
	.ascii	"********  ERROR: Return value from syscall ("
	.align
_StringConst_210:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_209:
	.word	26			! length
	.ascii	") is incorrect  *********\n"
	.align
_StringConst_208:
	.word	44			! length
	.ascii	"********  ERROR: Return value from syscall ("
	.align
_StringConst_207:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_206:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_205:
	.word	86			! length
	.ascii	"\nWriting with a pointer which isn\'t in our address space, which should be an error...\n"
	.align
_StringConst_204:
	.word	54			! length
	.ascii	"instead of 11 as expected  **************************\n"
	.align
_StringConst_203:
	.word	50			! length
	.ascii	"**************************  ERROR: Write returned "
	.align
_StringConst_202:
	.word	11			! length
	.ascii	"KERNEL CODE"
	.align
_StringConst_201:
	.word	24			! length
	.ascii	"                        "
	.align
_StringConst_200:
	.word	49			! length
	.ascii	"\n\n==== This should print \"KERNEL CODE\" next ====\n"
	.align
_StringConst_199:
	.word	77			! length
	.ascii	"Writing with a pointer to a page which is read-only, which should be okay...\n"
	.align
_StringConst_198:
	.word	9			! length
	.ascii	"GREETINGS"
	.align
_StringConst_197:
	.word	24			! length
	.ascii	"                        "
	.align
_StringConst_196:
	.word	47			! length
	.ascii	"\n\n==== This should print \"GREETINGS\" next ====\n"
	.align
_StringConst_195:
	.word	55			! length
	.ascii	"Writing with a pointer that crosses a page boundary...\n"
	.align
_StringConst_194:
	.word	37			! length
	.ascii	"Writing with negative sizeInBytes...\n"
	.align
_StringConst_193:
	.word	37			! length
	.ascii	"Writing with negative sizeInBytes...\n"
	.align
_StringConst_192:
	.word	114			! length
	.ascii	"**************************  ERROR: The characters were not stored in memory correctly  **************************\n"
	.align
_StringConst_191:
	.word	13			! length
	.ascii	"QWEabcdef\nRTY"
	.align
_StringConst_190:
	.word	13			! length
	.ascii	"QWEabcdef\nRTY"
	.align
_StringConst_189:
	.word	29			! length
	.ascii	"Please type \"abcdef\\n\" next.\n"
	.align
_StringConst_188:
	.word	55			! length
	.ascii	"Reading with a pointer that crosses a page boundary...\n"
	.align
_StringConst_187:
	.word	120			! length
	.ascii	"**************************  ERROR: Return code is -1 but the last 4 bytes have been altered  **************************\n"
	.align
_StringConst_186:
	.word	124			! length
	.ascii	"**************************  ERROR: Return code is 4, but did not set the last 4 bytes correctly  **************************\n"
	.align
_StringConst_185:
	.word	29			! length
	.ascii	"Please type \"123456\\n\" next.\n"
	.align
_StringConst_184:
	.word	69			! length
	.ascii	"Reading with a pointer which is near the end of our address space...\n"
	.align
_StringConst_183:
	.word	42			! length
	.ascii	"instead of 0 or -1 as expected  *********\n"
	.align
_StringConst_182:
	.word	30			! length
	.ascii	"*******  ERROR: Read returned "
	.align
_StringConst_181:
	.word	26			! length
	.ascii	"Please type \"xyz\\n\" next.\n"
	.align
_StringConst_180:
	.word	85			! length
	.ascii	"Reading with a pointer which isn\'t in our address space, which should be an error...\n"
	.align
_StringConst_179:
	.word	44			! length
	.ascii	"instead of 0 or -1 as expected  ***********\n"
	.align
_StringConst_178:
	.word	31			! length
	.ascii	"********  ERROR: Read returned "
	.align
_StringConst_177:
	.word	26			! length
	.ascii	"Please type \"abc\\n\" next.\n"
	.align
_StringConst_176:
	.word	81			! length
	.ascii	"Reading with a pointer to a page which is read-only, which should be an error...\n"
	.align
_StringConst_175:
	.word	37			! length
	.ascii	"Reading with negative sizeInBytes...\n"
	.align
_StringConst_174:
	.word	37			! length
	.ascii	"Reading with negative sizeInBytes...\n"
	.align
_StringConst_173:
	.word	46			! length
	.ascii	"********  ERROR: Opening terminal  **********\n"
	.align
_StringConst_172:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_171:
	.word	30			! length
	.ascii	"Opening \'/dev/serial\' file...\n"
	.align
_StringConst_170:
	.word	42			! length
	.ascii	"(This test should be run in cooked mode.)\n"
	.align
_StringConst_169:
	.word	44			! length
	.ascii	"\n==========  TerminalErrorTest  ==========\n\n"
	.align
_StringConst_168:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_167:
	.word	34			! length
	.ascii	"Closing all 10 fileDescriptors...\n"
	.align
_StringConst_166:
	.word	39			! length
	.ascii	"instead of -1 as expected  ***********\n"
	.align
_StringConst_165:
	.word	30			! length
	.ascii	"*******  ERROR: Open returned "
	.align
_StringConst_164:
	.word	34			! length
	.ascii	"The syscall correctly returns -1.\n"
	.align
_StringConst_163:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_162:
	.word	67			! length
	.ascii	"Attempting to open \'/dev/serial\' one more time, which should fail.\n"
	.align
_StringConst_161:
	.word	14			! length
	.ascii	")  **********\n"
	.align
_StringConst_160:
	.word	57			! length
	.ascii	"**********  ERROR: The syscall returns an unexpected fd ("
	.align
_StringConst_159:
	.word	42			! length
	.ascii	") indicating the open failed  ***********\n"
	.align
_StringConst_158:
	.word	50			! length
	.ascii	"********  ERROR: Open returned a negative number ("
	.align
_StringConst_157:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_156:
	.word	34			! length
	.ascii	"Opening \'/dev/serial\' 10 times...\n"
	.align
_StringConst_155:
	.word	34			! length
	.ascii	"Closing all 10 fileDescriptors...\n"
	.align
_StringConst_154:
	.word	14			! length
	.ascii	")  **********\n"
	.align
_StringConst_153:
	.word	56			! length
	.ascii	"*********  ERROR: The syscall returns an unexpected fd ("
	.align
_StringConst_152:
	.word	42			! length
	.ascii	") indicating the open failed  ***********\n"
	.align
_StringConst_151:
	.word	50			! length
	.ascii	"********  ERROR: Open returned a negative number ("
	.align
_StringConst_150:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_149:
	.word	34			! length
	.ascii	"Opening \'/dev/serial\' 10 times...\n"
	.align
_StringConst_148:
	.word	48			! length
	.ascii	"\n==========  OpenCloseTerminalTest  ==========\n\n"
	.align
_StringConst_147:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_146:
	.word	54			! length
	.ascii	"**********  ERROR: buffer is incorrect  *************\n"
	.align
_StringConst_145:
	.word	6			! length
	.ascii	"abc456"
	.align
_StringConst_144:
	.word	83			! length
	.ascii	"Please type \"abc\" followed by control-D.  The ENTER key should not be necessary...\n"
	.align
_StringConst_143:
	.word	54			! length
	.ascii	"*********  ERROR: buffer was modified  **************\n"
	.align
_StringConst_142:
	.word	6			! length
	.ascii	"123456"
	.align
_StringConst_141:
	.word	69			! length
	.ascii	"Please hit control-D next.  The ENTER key should not be necessary...\n"
	.align
_StringConst_140:
	.word	41			! length
	.ascii	"\n*********  ERROR: Problems with open, fd"
	.align
_StringConst_139:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_138:
	.word	48			! length
	.ascii	"many programs will interpret as \'end-of-file\'.\n\n"
	.align
_StringConst_137:
	.word	67			! length
	.ascii	"typed first, then the count returned from Read will be zero, which\n"
	.align
_StringConst_136:
	.word	64			! length
	.ascii	"return from the Read syscall.  If no other characters have been\n"
	.align
_StringConst_135:
	.word	65			! length
	.ascii	"enf-of-file character.  When typed, it should cause an immediate\n"
	.align
_StringConst_134:
	.word	65			! length
	.ascii	"This function tests the handling of control-D.  Control-D is the\n"
	.align
_StringConst_133:
	.word	40			! length
	.ascii	"This test should be run in \'raw\' mode.\n\n"
	.align
_StringConst_132:
	.word	34			! length
	.ascii	"\n==========  EOFTest  ==========\n\n"
	.align
_StringConst_131:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_130:
	.word	57			! length
	.ascii	"\n*********  ERROR: returned value from Write incorrect, j"
	.align
_StringConst_129:
	.word	29			! length
	.ascii	"\nNumber of characters entered"
	.align
_StringConst_128:
	.word	41			! length
	.ascii	"**********  ERROR: Problems with open, fd"
	.align
_StringConst_127:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_126:
	.word	91			! length
	.ascii	"To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n"
	.align
_StringConst_125:
	.word	82			! length
	.ascii	"(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n"
	.align
_StringConst_124:
	.word	67			! length
	.ascii	"This test will terminate when the first character entered is \'q\'.\n\n"
	.align
_StringConst_123:
	.word	89			! length
	.ascii	"  6. In cooked mode, see how the host (Unix) processes editing keys, such as backspace.\n\n"
	.align
_StringConst_122:
	.word	63			! length
	.ascii	"  5. See what happens when the size of the buffer is exceeded.\n"
	.align
_StringConst_121:
	.word	49			! length
	.ascii	"  4. See what happens when you hit cntl-D (EOF).\n"
	.align
_StringConst_120:
	.word	99			! length
	.ascii	"  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, and ESC.\n"
	.align
_StringConst_119:
	.word	92			! length
	.ascii	"  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n"
	.align
_StringConst_118:
	.word	29			! length
	.ascii	"  1. Start by typing \"abc\\n\"\n"
	.align
_StringConst_117:
	.word	58			! length
	.ascii	"line is complete, this program will (re) print the line.\n\n"
	.align
_StringConst_116:
	.word	80			! length
	.ascii	"mode.  In cooked mode, the host (Unix) will echo characters and then, after the\n"
	.align
_StringConst_115:
	.word	79			! length
	.ascii	"the entire line is completed by typing ENTER, when running the emulator in raw\n"
	.align
_StringConst_114:
	.word	79			! length
	.ascii	"does not echo characters as typed, you will not see the characters until after\n"
	.align
_StringConst_113:
	.word	75			! length
	.ascii	"After this program gets the entire line, it prints it.  Since this program\n"
	.align
_StringConst_112:
	.word	28			! length
	.ascii	" characters) into a buffer.\n"
	.align
_StringConst_111:
	.word	50			! length
	.ascii	"This program reads an entire line of input (up to "
	.align
_StringConst_110:
	.word	39			! length
	.ascii	"\n==========  LineEchoTest  ==========\n\n"
	.align
_StringConst_109:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_108:
	.word	57			! length
	.ascii	"\n*********  ERROR: returned value from Write incorrect, i"
	.align
_StringConst_107:
	.word	59			! length
	.ascii	"\n*********  ERROR: Returned value from Read is incorrect, i"
	.align
_StringConst_106:
	.word	98			! length
	.ascii	"\n*****  WARNING: Returned value from Read is zero; This should only occur when control-D is typed\n"
	.align
_StringConst_105:
	.word	42			! length
	.ascii	"\n**********  ERROR: Problems with open, fd"
	.align
_StringConst_104:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_103:
	.word	91			! length
	.ascii	"To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n"
	.align
_StringConst_102:
	.word	82			! length
	.ascii	"(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n"
	.align
_StringConst_101:
	.word	45			! length
	.ascii	"This test will terminate when \'q\' is typed.\n\n"
	.align
_StringConst_100:
	.word	19			! length
	.ascii	"         up-arrow\n\n"
	.align
_StringConst_99:
	.word	19			! length
	.ascii	"         control-g\n"
	.align
_StringConst_98:
	.word	22			! length
	.ascii	"         ESC  [  5  A\n"
	.align
_StringConst_97:
	.word	22			! length
	.ascii	"         ESC  [  7  m\n"
	.align
_StringConst_96:
	.word	46			! length
	.ascii	"     For example, try typing these sequences:\n"
	.align
_StringConst_95:
	.word	87			! length
	.ascii	"  6. While in raw mode, see what happens with sequences from page 342 in the textbook.\n"
	.align
_StringConst_94:
	.word	51			! length
	.ascii	"  5. Try this test in cooked mode and in raw mode.\n"
	.align
_StringConst_93:
	.word	49			! length
	.ascii	"  4. See what happens when you hit cntl-D (EOF).\n"
	.align
_StringConst_92:
	.word	99			! length
	.ascii	"  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, and ESC.\n"
	.align
_StringConst_91:
	.word	92			! length
	.ascii	"  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n"
	.align
_StringConst_90:
	.word	29			! length
	.ascii	"  1. Start by typing \"abc\\n\"\n"
	.align
_StringConst_89:
	.word	93			! length
	.ascii	"This test reads characters from the terminal.  It echoes each character, as it is received.\n\n"
	.align
_StringConst_88:
	.word	35			! length
	.ascii	"\n==========  EchoTest  ==========\n\n"
	.align
_StringConst_87:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_85:
	.word	10			! length
	.ascii	" (decimal "
	.align
_StringConst_84:
	.word	5			! length
	.ascii	"ch = "
	.align
_StringConst_83:
	.word	89			! length
	.ascii	"\n**************************  ERROR: Returned value from Read is incorrect; returned value"
	.align
_StringConst_82:
	.word	98			! length
	.ascii	"\n*****  WARNING: Returned value from Read is zero; This should only occur when control-D is typed\n"
	.align
_StringConst_81:
	.word	58			! length
	.ascii	"\n**************************  ERROR: Problems with open, fd"
	.align
_StringConst_80:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_79:
	.word	91			! length
	.ascii	"To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n"
	.align
_StringConst_78:
	.word	82			! length
	.ascii	"(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n"
	.align
_StringConst_77:
	.word	45			! length
	.ascii	"This test will terminate when \'q\' is typed.\n\n"
	.align
_StringConst_76:
	.word	52			! length
	.ascii	"  5. Try this test in cooked mode and in raw mode.\n\n"
	.align
_StringConst_75:
	.word	49			! length
	.ascii	"  4. See what happens when you hit cntl-D (EOF).\n"
	.align
_StringConst_74:
	.word	110			! length
	.ascii	"  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, ARROW KEYS and ESC.\n"
	.align
_StringConst_73:
	.word	92			! length
	.ascii	"  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n"
	.align
_StringConst_72:
	.word	33			! length
	.ascii	"  1. Start by typing \"abcABC123\"\n"
	.align
_StringConst_71:
	.word	85			! length
	.ascii	"This test waits for a single character and then prints the value of that character.\n\n"
	.align
_StringConst_70:
	.word	34			! length
	.ascii	"\n==========  KeyTest  ==========\n\n"
	.align
_StringConst_69:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_68:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_67:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_66:
	.word	63			! length
	.ascii	"\n******** ERROR: The user-level buffer was modified  *********\n"
	.align
_StringConst_65:
	.word	42			! length
	.ascii	"The buffer was not modified, as expected.\n"
	.align
_StringConst_64:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_63:
	.word	70			! length
	.ascii	"\n**********  ERROR: Returned value from Read was not 0; returned value"
	.align
_StringConst_62:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_61:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_60:
	.word	55			! length
	.ascii	"\nPlease type control-D.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_59:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_58:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_57:
	.word	68			! length
	.ascii	"\n*********  ERROR: The user-level buffer is not correct  **********\n"
	.align
_StringConst_56:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_55:
	.word	10			! length
	.ascii	"01\b3456789"
	.align
_StringConst_54:
	.word	72			! length
	.ascii	"\n************  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_53:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_51:
	.word	55			! length
	.ascii	"\nPlease type control-H.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_50:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_49:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_48:
	.word	69			! length
	.ascii	"\n*********  ERROR: The user-level buffer is not correct  ***********\n"
	.align
_StringConst_47:
	.word	84			! length
	.ascii	"The buffer was updated correctly; The kernel failed to translate CR into a NEWLINE.\n"
	.align
_StringConst_46:
	.word	10			! length
	.ascii	"01\r3456789"
	.align
_StringConst_45:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_44:
	.word	10			! length
	.ascii	"01\n3456789"
	.align
_StringConst_43:
	.word	70			! length
	.ascii	"\n**********  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_42:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_41:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_40:
	.word	55			! length
	.ascii	"\nPlease type control-M.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_39:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_38:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_37:
	.word	73			! length
	.ascii	"\n*************  ERROR: The user-level buffer is not correct  ***********\n"
	.align
_StringConst_36:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_35:
	.word	10			! length
	.ascii	"01\n3456789"
	.align
_StringConst_34:
	.word	69			! length
	.ascii	"\n*********  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_33:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_32:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_31:
	.word	55			! length
	.ascii	"\nPlease type control-J.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_30:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_29:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_28:
	.word	67			! length
	.ascii	"\n********  ERROR: The user-level buffer is not correct  **********\n"
	.align
_StringConst_27:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_26:
	.word	10			! length
	.ascii	"01hel56lo9"
	.align
_StringConst_25:
	.word	70			! length
	.ascii	"\n**********  ERROR: Returned value from Read was not 2; returned value"
	.align
_StringConst_24:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_23:
	.word	69			! length
	.ascii	"\n*********  ERROR: Returned value from Read was not 3; returned value"
	.align
_StringConst_22:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_21:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_20:
	.word	53			! length
	.ascii	"\nPlease type \"hello\".  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_19:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_18:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_17:
	.word	70			! length
	.ascii	"\n***********  ERROR: The user-level buffer is not correct  **********\n"
	.align
_StringConst_16:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_15:
	.word	10			! length
	.ascii	"01abc56789"
	.align
_StringConst_14:
	.word	70			! length
	.ascii	"\n**********  ERROR: Returned value from Read was not 3; returned value"
	.align
_StringConst_13:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_12:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_11:
	.word	51			! length
	.ascii	"\nPlease type \"abc\".  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_10:
	.word	77			! length
	.ascii	"\n**********  ERROR: Something strange was stored in the user-level buffer, ch"
	.align
_StringConst_9:
	.word	71			! length
	.ascii	"\n**********  ERROR: The user-level buffer was not changed  ***********\n"
	.align
_StringConst_8:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_7:
	.word	70			! length
	.ascii	"\n**********  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_6:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_5:
	.word	48			! length
	.ascii	"Hit the \"a\" key.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_4:
	.word	41			! length
	.ascii	"\n*********  ERROR: Problems with open, fd"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_2:
	.word	38			! length
	.ascii	"This test should be run in raw mode.\n\n"
	.align
_StringConst_1:
	.word	42			! length
	.ascii	"\n==========  BasicSerialTest  ==========\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x3378a90c,r3		! .  hashVal = 863545612
	call	_CheckVersion_P_TestProgram5_	! .
	cmp	r1,0			! .
	be	_Label_280		! .
	ret				! .
_Label_280:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"TestProgram5.k\0"
_packageName:
	.ascii	"TestProgram5\0"
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
_CheckVersion_P_TestProgram5_:
	.export	_CheckVersion_P_TestProgram5_
	set	0x3378a90c,r4		! myHashVal = 863545612
	cmp	r3,r4
	be	_Label_281
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
_Label_281:
	mov	0,r1
! Make sure _P_Syscall_ has hash value 0x432b40fa (decimal 1126908154)
	set	_packageName,r2
	set	0x432b40fa,r3
	call	_CheckVersion_P_Syscall_
	.import	_CheckVersion_P_Syscall_
	cmp	r1,0
	bne	_Label_282
! Make sure _P_UserSystem_ has hash value 0x339c138e (decimal 865866638)
	set	_packageName,r2
	set	0x339c138e,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_282
! Make sure _P_UserLib_ has hash value 0x192dcb0a (decimal 422431498)
	set	_packageName,r2
	set	0x192dcb0a,r3
	call	_CheckVersion_P_UserLib_
	.import	_CheckVersion_P_UserLib_
	cmp	r1,0
	bne	_Label_282
_Label_282:
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
	mov	16,r13		! source line 16
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	29,r13		! source line 29
	mov	"\0\0CA",r10
	call	_function_267_Menu
! CALL STATEMENT...
!   Call the function
	mov	31,r13		! source line 31
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Shutdown
! RETURN STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_283
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_283:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION BasicSerialTest  ===============
! 
_function_279_BasicSerialTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_279_BasicSerialTest,r1
	push	r1
	mov	134,r1
_Label_1870:
	push	r0
	sub	r1,1,r1
	bne	_Label_1870
	mov	36,r13		! source line 36
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! UserBuffer
!   NEW ARRAY Constructor...
!   _temp_285 = &_temp_284
	add	r14,-508,r1
	store	r1,[r14+-492]
!   _temp_285 = _temp_285 + 4
	load	[r14+-492],r1
	add	r1,4,r1
	store	r1,[r14+-492]
!   Next value...
	mov	10,r1
	store	r1,[r14+-488]
_Label_287:
!   Data Move: *_temp_285 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-492],r2
	storeb	r1,[r2]
!   _temp_285 = _temp_285 + 1
	load	[r14+-492],r1
	add	r1,1,r1
	store	r1,[r14+-492]
!   _temp_286 = _temp_286 + -1
	load	[r14+-488],r1
	add	r1,-1,r1
	store	r1,[r14+-488]
!   if intNotZero (_temp_286) then goto _Label_287
	load	[r14+-488],r1
	cmp	r1,r0
	bne	_Label_287
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-508]
!   _temp_288 = &_temp_284
	add	r14,-508,r1
	store	r1,[r14+-484]
!   make sure array has size 10
	load	[r14+-484],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: UserBuffer = *_temp_288  (sizeInBytes=16)
	load	[r14+-484],r5
	add	r14,-532,r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! CALL STATEMENT...
!   _temp_289 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-480]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
	load	[r14+-480],r1
	store	r1,[r15+0]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_290 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-476]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-476],r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0AS",r10
!   _temp_291 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-472]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
	load	[r14+-472],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-512]
! IF STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_293		(int)
	load	[r14+-512],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_293
!	_Label_292	jmp	_Label_292
_Label_292:
! THEN...
	mov	51,r13		! source line 51
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_294 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-468]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-468],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+4]
!   Call the function
	mov	51,r13		! source line 51
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_293:
! CALL STATEMENT...
!   _temp_295 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-464]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+0]
!   Call the function
	mov	55,r13		! source line 55
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0AS",r10
!   ch = 120		(1 byte)
	mov	120,r1
	storeb	r1,[r14+-11]
! ASSIGNMENT STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0AS",r10
!   _temp_296 = &ch
	add	r14,-11,r1
	store	r1,[r14+-460]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_296  sizeInBytes=4
	load	[r14+-460],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_298		(int)
	load	[r14+-516],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_298
!	_Label_297	jmp	_Label_297
_Label_297:
! THEN...
	mov	60,r13		! source line 60
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_299 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-456]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+0]
!   Call the function
	mov	60,r13		! source line 60
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_300
_Label_298:
! ELSE...
	mov	62,r13		! source line 62
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_301 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-452]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-452],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	62,r13		! source line 62
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_300:
! IF STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0IF",r10
!   _temp_304 = ch XOR 97		(bool)
	loadb	[r14+-11],r1
	mov	97,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_304 then goto _Label_303 else goto _Label_302
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_302
	jmp	_Label_303
_Label_302:
! THEN...
	mov	66,r13		! source line 66
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_305 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-448]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-448],r1
	store	r1,[r15+0]
!   Call the function
	mov	66,r13		! source line 66
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_306
_Label_303:
! ELSE...
	mov	67,r13		! source line 67
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0IF",r10
!   _temp_309 = ch XOR 120		(bool)
	loadb	[r14+-11],r1
	mov	120,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_309 then goto _Label_308 else goto _Label_307
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_307
	jmp	_Label_308
_Label_307:
! THEN...
	mov	68,r13		! source line 68
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_310 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-444]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+0]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_311
_Label_308:
! ELSE...
	mov	70,r13		! source line 70
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_312 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-440]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=ch  sizeInBytes=1
	loadb	[r14+-11],r1
	storeb	r1,[r15+4]
!   Call the function
	mov	70,r13		! source line 70
	mov	"\0\0CA",r10
	call	_P_UserSystem_printCharVar
! END IF...
_Label_311:
! END IF...
_Label_306:
! CALL STATEMENT...
!   _temp_313 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-436]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-436],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_314 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-432]
!   _temp_315 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-428]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_315  sizeInBytes=4
	load	[r14+-428],r1
	store	r1,[r15+4]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   _temp_317 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-420]
!   Move address of _temp_317 [2 ] into _temp_318
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
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
	store	r2,[r14+-416]
!   _temp_316 = _temp_318		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_316  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Call the function
	mov	76,r13		! source line 76
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0IF",r10
!   if i != 3 then goto _Label_320		(int)
	load	[r14+-516],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_320
!	_Label_319	jmp	_Label_319
_Label_319:
! THEN...
	mov	79,r13		! source line 79
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_321 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+0]
!   Call the function
	mov	79,r13		! source line 79
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_322
_Label_320:
! ELSE...
	mov	81,r13		! source line 81
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_323 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-408]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-408],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_322:
! IF STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0IF",r10
!   _temp_327 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-400]
!   _temp_328 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-396]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_328  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Call the function
	mov	84,r13		! source line 84
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_326  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-404]
!   if intIsZero (_temp_326) then goto _Label_324
	load	[r14+-404],r1
	cmp	r1,r0
	be	_Label_324
	jmp	_Label_325
_Label_324:
! THEN...
	mov	85,r13		! source line 85
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_329 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-392]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+0]
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_330
_Label_325:
! ELSE...
	mov	87,r13		! source line 87
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_331 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-388]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+0]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_332 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-384]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+0]
!   Call the function
	mov	88,r13		! source line 88
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_333 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-380]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+0]
!   Call the function
	mov	89,r13		! source line 89
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_334 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-376]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_330:
! CALL STATEMENT...
!   _temp_335 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-372]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+0]
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_336 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-368]
!   _temp_337 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-364]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_337  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Call the function
	mov	95,r13		! source line 95
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0AS",r10
!   _temp_339 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-356]
!   Move address of _temp_339 [2 ] into _temp_340
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-356],r1
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
	store	r2,[r14+-352]
!   _temp_338 = _temp_340		(4 bytes)
	load	[r14+-352],r1
	store	r1,[r14+-360]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_338  sizeInBytes=4
	load	[r14+-360],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Call the function
	mov	96,r13		! source line 96
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0IF",r10
!   if i != 3 then goto _Label_342		(int)
	load	[r14+-516],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_342
!	_Label_341	jmp	_Label_341
_Label_341:
! THEN...
	mov	99,r13		! source line 99
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_343 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-348]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+0]
!   Call the function
	mov	99,r13		! source line 99
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_344
_Label_342:
! ELSE...
	mov	101,r13		! source line 101
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_345 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-344]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-344],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	101,r13		! source line 101
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_344:
! ASSIGNMENT STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0AS",r10
!   _temp_347 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-336]
!   Move address of _temp_347 [7 ] into _temp_348
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-336],r1
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
	store	r2,[r14+-332]
!   _temp_346 = _temp_348		(4 bytes)
	load	[r14+-332],r1
	store	r1,[r14+-340]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_346  sizeInBytes=4
	load	[r14+-340],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Call the function
	mov	103,r13		! source line 103
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0IF",r10
!   if i != 2 then goto _Label_350		(int)
	load	[r14+-516],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_350
!	_Label_349	jmp	_Label_349
_Label_349:
! THEN...
	mov	106,r13		! source line 106
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_351 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-328]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_352
_Label_350:
! ELSE...
	mov	108,r13		! source line 108
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_353 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-324]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_352:
! IF STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0IF",r10
!   _temp_357 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-316]
!   _temp_358 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_358  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+4]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_356  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-320]
!   if intIsZero (_temp_356) then goto _Label_354
	load	[r14+-320],r1
	cmp	r1,r0
	be	_Label_354
	jmp	_Label_355
_Label_354:
! THEN...
	mov	112,r13		! source line 112
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_359 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-308]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_360
_Label_355:
! ELSE...
	mov	114,r13		! source line 114
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_361 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_362 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_363 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_364 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+0]
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_360:
! CALL STATEMENT...
!   _temp_365 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_366 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-284]
!   _temp_367 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_367  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Call the function
	mov	122,r13		! source line 122
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	123,r13		! source line 123
	mov	"\0\0AS",r10
!   _temp_369 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-272]
!   Move address of _temp_369 [2 ] into _temp_370
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-272],r1
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
!   _temp_368 = _temp_370		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_368  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	123,r13		! source line 123
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_372		(int)
	load	[r14+-516],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_372
!	_Label_371	jmp	_Label_371
_Label_371:
! THEN...
	mov	126,r13		! source line 126
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_373 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Call the function
	mov	126,r13		! source line 126
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_374
_Label_372:
! ELSE...
	mov	128,r13		! source line 128
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_375 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_374:
! IF STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0IF",r10
!   _temp_379 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-252]
!   _temp_380 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_380  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_378  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_378) then goto _Label_376
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_376
	jmp	_Label_377
_Label_376:
! THEN...
	mov	132,r13		! source line 132
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_381 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	132,r13		! source line 132
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_382
_Label_377:
! ELSE...
	mov	134,r13		! source line 134
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_383 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_384 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Call the function
	mov	135,r13		! source line 135
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_385 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	136,r13		! source line 136
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_386 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	137,r13		! source line 137
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_382:
! CALL STATEMENT...
!   _temp_387 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	141,r13		! source line 141
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_388 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-220]
!   _temp_389 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_389  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Call the function
	mov	142,r13		! source line 142
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0AS",r10
!   _temp_391 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-208]
!   Move address of _temp_391 [2 ] into _temp_392
!     make sure index expr is >= 0
	mov	2,r2
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
	store	r2,[r14+-204]
!   _temp_390 = _temp_392		(4 bytes)
	load	[r14+-204],r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_390  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_394		(int)
	load	[r14+-516],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_394
!	_Label_393	jmp	_Label_393
_Label_393:
! THEN...
	mov	146,r13		! source line 146
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_395 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_396
_Label_394:
! ELSE...
	mov	148,r13		! source line 148
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_397 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_396:
! IF STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0IF",r10
!   _temp_401 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-188]
!   _temp_402 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_402  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_400  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_400) then goto _Label_398
	load	[r14+-192],r1
	cmp	r1,r0
	be	_Label_398
	jmp	_Label_399
_Label_398:
! THEN...
	mov	152,r13		! source line 152
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_403 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_403  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_404
_Label_399:
! ELSE...
	mov	153,r13		! source line 153
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0IF",r10
!   _temp_408 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-172]
!   _temp_409 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_409  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Call the function
	mov	153,r13		! source line 153
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_407  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_407) then goto _Label_405
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_405
	jmp	_Label_406
_Label_405:
! THEN...
	mov	154,r13		! source line 154
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_410 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_411
_Label_406:
! ELSE...
	mov	156,r13		! source line 156
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_412 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	156,r13		! source line 156
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_413 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	157,r13		! source line 157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_414 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	158,r13		! source line 158
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_415 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	159,r13		! source line 159
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_411:
! END IF...
_Label_404:
! CALL STATEMENT...
!   _temp_416 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	163,r13		! source line 163
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_417 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-140]
!   _temp_418 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_418  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   _temp_420 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-128]
!   Move address of _temp_420 [2 ] into _temp_421
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   _temp_419 = _temp_421		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_419  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_423		(int)
	load	[r14+-516],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_423
!	_Label_422	jmp	_Label_422
_Label_422:
! THEN...
	mov	168,r13		! source line 168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_424 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_424  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_425
_Label_423:
! ELSE...
	mov	170,r13		! source line 170
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_426 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_426  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_425:
! IF STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0IF",r10
!   _temp_430 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-108]
!   _temp_431 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_430  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_431  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_429  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_429) then goto _Label_427
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_427
	jmp	_Label_428
_Label_427:
! THEN...
	mov	174,r13		! source line 174
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_432 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_433
_Label_428:
! ELSE...
	mov	176,r13		! source line 176
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_434 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_435 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_436 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_437 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	179,r13		! source line 179
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_433:
! CALL STATEMENT...
!   _temp_438 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	183,r13		! source line 183
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_439 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-76]
!   _temp_440 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_440  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Call the function
	mov	184,r13		! source line 184
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0AS",r10
!   _temp_442 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-64]
!   Move address of _temp_442 [2 ] into _temp_443
!     make sure index expr is >= 0
	mov	2,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_441 = _temp_443		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_441  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	185,r13		! source line 185
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_444
	load	[r14+-516],r1
	cmp	r1,r0
	be	_Label_444
	jmp	_Label_445
_Label_444:
! THEN...
	mov	188,r13		! source line 188
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_446 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	188,r13		! source line 188
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_447
_Label_445:
! ELSE...
	mov	190,r13		! source line 190
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_448 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_448  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	190,r13		! source line 190
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_447:
! IF STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0IF",r10
!   _temp_452 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-44]
!   _temp_453 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_453  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Call the function
	mov	193,r13		! source line 193
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_451  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_451) then goto _Label_449
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_449
	jmp	_Label_450
_Label_449:
! THEN...
	mov	194,r13		! source line 194
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_454 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	194,r13		! source line 194
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_455
_Label_450:
! ELSE...
	mov	196,r13		! source line 196
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_456 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_457 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_458 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_459 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_455:
! CALL STATEMENT...
!   _temp_460 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	202,r13		! source line 202
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0RE",r10
	add	r15,540,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_279_BasicSerialTest:
	.word	_sourceFileName
	.word	_Label_461
	.word	0		! total size of parameters
	.word	536		! frame size = 536
	.word	_Label_462
	.word	-16
	.word	4
	.word	_Label_463
	.word	-20
	.word	4
	.word	_Label_464
	.word	-24
	.word	4
	.word	_Label_465
	.word	-28
	.word	4
	.word	_Label_466
	.word	-32
	.word	4
	.word	_Label_467
	.word	-36
	.word	4
	.word	_Label_468
	.word	-40
	.word	4
	.word	_Label_469
	.word	-44
	.word	4
	.word	_Label_470
	.word	-48
	.word	4
	.word	_Label_471
	.word	-52
	.word	4
	.word	_Label_472
	.word	-56
	.word	4
	.word	_Label_473
	.word	-60
	.word	4
	.word	_Label_474
	.word	-64
	.word	4
	.word	_Label_475
	.word	-68
	.word	4
	.word	_Label_476
	.word	-72
	.word	4
	.word	_Label_477
	.word	-76
	.word	4
	.word	_Label_478
	.word	-80
	.word	4
	.word	_Label_479
	.word	-84
	.word	4
	.word	_Label_480
	.word	-88
	.word	4
	.word	_Label_481
	.word	-92
	.word	4
	.word	_Label_482
	.word	-96
	.word	4
	.word	_Label_483
	.word	-100
	.word	4
	.word	_Label_484
	.word	-104
	.word	4
	.word	_Label_485
	.word	-108
	.word	4
	.word	_Label_486
	.word	-112
	.word	4
	.word	_Label_487
	.word	-116
	.word	4
	.word	_Label_488
	.word	-120
	.word	4
	.word	_Label_489
	.word	-124
	.word	4
	.word	_Label_490
	.word	-128
	.word	4
	.word	_Label_491
	.word	-132
	.word	4
	.word	_Label_492
	.word	-136
	.word	4
	.word	_Label_493
	.word	-140
	.word	4
	.word	_Label_494
	.word	-144
	.word	4
	.word	_Label_495
	.word	-148
	.word	4
	.word	_Label_496
	.word	-152
	.word	4
	.word	_Label_497
	.word	-156
	.word	4
	.word	_Label_498
	.word	-160
	.word	4
	.word	_Label_499
	.word	-164
	.word	4
	.word	_Label_500
	.word	-168
	.word	4
	.word	_Label_501
	.word	-172
	.word	4
	.word	_Label_502
	.word	-176
	.word	4
	.word	_Label_503
	.word	-180
	.word	4
	.word	_Label_504
	.word	-184
	.word	4
	.word	_Label_505
	.word	-188
	.word	4
	.word	_Label_506
	.word	-192
	.word	4
	.word	_Label_507
	.word	-196
	.word	4
	.word	_Label_508
	.word	-200
	.word	4
	.word	_Label_509
	.word	-204
	.word	4
	.word	_Label_510
	.word	-208
	.word	4
	.word	_Label_511
	.word	-212
	.word	4
	.word	_Label_512
	.word	-216
	.word	4
	.word	_Label_513
	.word	-220
	.word	4
	.word	_Label_514
	.word	-224
	.word	4
	.word	_Label_515
	.word	-228
	.word	4
	.word	_Label_516
	.word	-232
	.word	4
	.word	_Label_517
	.word	-236
	.word	4
	.word	_Label_518
	.word	-240
	.word	4
	.word	_Label_519
	.word	-244
	.word	4
	.word	_Label_520
	.word	-248
	.word	4
	.word	_Label_521
	.word	-252
	.word	4
	.word	_Label_522
	.word	-256
	.word	4
	.word	_Label_523
	.word	-260
	.word	4
	.word	_Label_524
	.word	-264
	.word	4
	.word	_Label_525
	.word	-268
	.word	4
	.word	_Label_526
	.word	-272
	.word	4
	.word	_Label_527
	.word	-276
	.word	4
	.word	_Label_528
	.word	-280
	.word	4
	.word	_Label_529
	.word	-284
	.word	4
	.word	_Label_530
	.word	-288
	.word	4
	.word	_Label_531
	.word	-292
	.word	4
	.word	_Label_532
	.word	-296
	.word	4
	.word	_Label_533
	.word	-300
	.word	4
	.word	_Label_534
	.word	-304
	.word	4
	.word	_Label_535
	.word	-308
	.word	4
	.word	_Label_536
	.word	-312
	.word	4
	.word	_Label_537
	.word	-316
	.word	4
	.word	_Label_538
	.word	-320
	.word	4
	.word	_Label_539
	.word	-324
	.word	4
	.word	_Label_540
	.word	-328
	.word	4
	.word	_Label_541
	.word	-332
	.word	4
	.word	_Label_542
	.word	-336
	.word	4
	.word	_Label_543
	.word	-340
	.word	4
	.word	_Label_544
	.word	-344
	.word	4
	.word	_Label_545
	.word	-348
	.word	4
	.word	_Label_546
	.word	-352
	.word	4
	.word	_Label_547
	.word	-356
	.word	4
	.word	_Label_548
	.word	-360
	.word	4
	.word	_Label_549
	.word	-364
	.word	4
	.word	_Label_550
	.word	-368
	.word	4
	.word	_Label_551
	.word	-372
	.word	4
	.word	_Label_552
	.word	-376
	.word	4
	.word	_Label_553
	.word	-380
	.word	4
	.word	_Label_554
	.word	-384
	.word	4
	.word	_Label_555
	.word	-388
	.word	4
	.word	_Label_556
	.word	-392
	.word	4
	.word	_Label_557
	.word	-396
	.word	4
	.word	_Label_558
	.word	-400
	.word	4
	.word	_Label_559
	.word	-404
	.word	4
	.word	_Label_560
	.word	-408
	.word	4
	.word	_Label_561
	.word	-412
	.word	4
	.word	_Label_562
	.word	-416
	.word	4
	.word	_Label_563
	.word	-420
	.word	4
	.word	_Label_564
	.word	-424
	.word	4
	.word	_Label_565
	.word	-428
	.word	4
	.word	_Label_566
	.word	-432
	.word	4
	.word	_Label_567
	.word	-436
	.word	4
	.word	_Label_568
	.word	-440
	.word	4
	.word	_Label_569
	.word	-444
	.word	4
	.word	_Label_570
	.word	-9
	.word	1
	.word	_Label_571
	.word	-448
	.word	4
	.word	_Label_572
	.word	-10
	.word	1
	.word	_Label_573
	.word	-452
	.word	4
	.word	_Label_574
	.word	-456
	.word	4
	.word	_Label_575
	.word	-460
	.word	4
	.word	_Label_576
	.word	-464
	.word	4
	.word	_Label_577
	.word	-468
	.word	4
	.word	_Label_578
	.word	-472
	.word	4
	.word	_Label_579
	.word	-476
	.word	4
	.word	_Label_580
	.word	-480
	.word	4
	.word	_Label_581
	.word	-484
	.word	4
	.word	_Label_582
	.word	-488
	.word	4
	.word	_Label_583
	.word	-492
	.word	4
	.word	_Label_584
	.word	-508
	.word	16
	.word	_Label_585
	.word	-512
	.word	4
	.word	_Label_586
	.word	-516
	.word	4
	.word	_Label_587
	.word	-11
	.word	1
	.word	_Label_588
	.word	-532
	.word	16
	.word	0
_Label_461:
	.ascii	"BasicSerialTest\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_570:
	.byte	'C'
	.ascii	"_temp_309\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_572:
	.byte	'C'
	.ascii	"_temp_304\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_585:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_587:
	.byte	'C'
	.ascii	"ch\0"
	.align
_Label_588:
	.byte	'A'
	.ascii	"UserBuffer\0"
	.align
! 
! ===============  FUNCTION KeyTest  ===============
! 
_function_278_KeyTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_278_KeyTest,r1
	push	r1
	mov	27,r1
_Label_1871:
	push	r0
	sub	r1,1,r1
	bne	_Label_1871
	mov	209,r13		! source line 209
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_589 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_589  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_590 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	219,r13		! source line 219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_591 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_592 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_593 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_594 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_595 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_595  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_596 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_596  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_597 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_597  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	226,r13		! source line 226
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_598 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_598  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0AS",r10
!   _temp_599 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_599  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	229,r13		! source line 229
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! IF STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_601		(int)
	load	[r14+-100],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_601
!	_Label_600	jmp	_Label_600
_Label_600:
! THEN...
	mov	231,r13		! source line 231
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_602 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_602  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Call the function
	mov	231,r13		! source line 231
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_601:
! WHILE STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0WH",r10
_Label_603:
!	_Label_604	jmp	_Label_604
_Label_604:
	mov	234,r13		! source line 234
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   _temp_606 = &ch
	add	r14,-10,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_606  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	236,r13		! source line 236
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_607
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_607
	jmp	_Label_608
_Label_607:
! THEN...
	mov	238,r13		! source line 238
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_609 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_609  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_610
_Label_608:
! ELSE...
	mov	239,r13		! source line 239
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_612		(int)
	load	[r14+-104],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_612
!	_Label_611	jmp	_Label_611
_Label_611:
! THEN...
	mov	240,r13		! source line 240
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_613 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_613  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
	jmp	_Label_614
_Label_612:
! ELSE...
	mov	242,r13		! source line 242
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_615 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_615  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_616 = charToInt (ch)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_616  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_617 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_617  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_618 = charToInt (ch)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_618  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_619 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_619  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_614:
! END IF...
_Label_610:
! IF STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0IF",r10
!   _temp_622 = ch XOR 113		(bool)
	loadb	[r14+-10],r1
	mov	113,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_622 then goto _Label_621 else goto _Label_620
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_620
	jmp	_Label_621
_Label_620:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_623 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_623  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	252,r13		! source line 252
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	253,r13		! source line 253
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_621:
! END WHILE...
	jmp	_Label_603
_Label_605:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_278_KeyTest:
	.word	_sourceFileName
	.word	_Label_624
	.word	0		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_625
	.word	-16
	.word	4
	.word	_Label_626
	.word	-9
	.word	1
	.word	_Label_627
	.word	-20
	.word	4
	.word	_Label_628
	.word	-24
	.word	4
	.word	_Label_629
	.word	-28
	.word	4
	.word	_Label_630
	.word	-32
	.word	4
	.word	_Label_631
	.word	-36
	.word	4
	.word	_Label_632
	.word	-40
	.word	4
	.word	_Label_633
	.word	-44
	.word	4
	.word	_Label_634
	.word	-48
	.word	4
	.word	_Label_635
	.word	-52
	.word	4
	.word	_Label_636
	.word	-56
	.word	4
	.word	_Label_637
	.word	-60
	.word	4
	.word	_Label_638
	.word	-64
	.word	4
	.word	_Label_639
	.word	-68
	.word	4
	.word	_Label_640
	.word	-72
	.word	4
	.word	_Label_641
	.word	-76
	.word	4
	.word	_Label_642
	.word	-80
	.word	4
	.word	_Label_643
	.word	-84
	.word	4
	.word	_Label_644
	.word	-88
	.word	4
	.word	_Label_645
	.word	-92
	.word	4
	.word	_Label_646
	.word	-96
	.word	4
	.word	_Label_647
	.word	-100
	.word	4
	.word	_Label_648
	.word	-104
	.word	4
	.word	_Label_649
	.word	-10
	.word	1
	.word	0
_Label_624:
	.ascii	"KeyTest\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_626:
	.byte	'C'
	.ascii	"_temp_622\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_647:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_648:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_649:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION EchoTest  ===============
! 
_function_277_EchoTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_277_EchoTest,r1
	push	r1
	mov	30,r1
_Label_1872:
	push	r0
	sub	r1,1,r1
	bne	_Label_1872
	mov	262,r13		! source line 262
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_650 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_650  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_651 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_651  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_652 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_652  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_653 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_653  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_654 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_654  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	276,r13		! source line 276
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_655 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_655  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_656 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_656  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_657 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_657  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	279,r13		! source line 279
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_658 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_658  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_659 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_659  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	281,r13		! source line 281
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_660 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_661 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_661  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_662 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_662  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_663 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	285,r13		! source line 285
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_664 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	286,r13		! source line 286
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_665 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0AS",r10
!   _temp_666 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_666  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	289,r13		! source line 289
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! IF STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_668		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_668
!	_Label_667	jmp	_Label_667
_Label_667:
! THEN...
	mov	291,r13		! source line 291
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_669 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_669  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	291,r13		! source line 291
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_668:
! WHILE STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0WH",r10
_Label_670:
!	_Label_671	jmp	_Label_671
_Label_671:
	mov	294,r13		! source line 294
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   _temp_673 = &ch
	add	r14,-10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_673  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_674
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_674
	jmp	_Label_675
_Label_674:
! THEN...
	mov	299,r13		! source line 299
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_676 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_677
_Label_675:
! ELSE...
	mov	300,r13		! source line 300
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_679		(int)
	load	[r14+-116],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_679
!	_Label_678	jmp	_Label_678
_Label_678:
! THEN...
	mov	301,r13		! source line 301
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_680 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
	jmp	_Label_681
_Label_679:
! ELSE...
	mov	304,r13		! source line 304
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0AS",r10
!   _temp_682 = &ch
	add	r14,-10,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_682  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_684		(int)
	load	[r14+-116],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_684
!	_Label_683	jmp	_Label_683
_Label_683:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_685 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_684:
! END IF...
_Label_681:
! END IF...
_Label_677:
! IF STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0IF",r10
!   _temp_688 = ch XOR 113		(bool)
	loadb	[r14+-10],r1
	mov	113,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_688 then goto _Label_687 else goto _Label_686
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_686
	jmp	_Label_687
_Label_686:
! THEN...
	mov	311,r13		! source line 311
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	311,r13		! source line 311
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	312,r13		! source line 312
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_687:
! END WHILE...
	jmp	_Label_670
_Label_672:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_277_EchoTest:
	.word	_sourceFileName
	.word	_Label_690
	.word	0		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_691
	.word	-16
	.word	4
	.word	_Label_692
	.word	-9
	.word	1
	.word	_Label_693
	.word	-20
	.word	4
	.word	_Label_694
	.word	-24
	.word	4
	.word	_Label_695
	.word	-28
	.word	4
	.word	_Label_696
	.word	-32
	.word	4
	.word	_Label_697
	.word	-36
	.word	4
	.word	_Label_698
	.word	-40
	.word	4
	.word	_Label_699
	.word	-44
	.word	4
	.word	_Label_700
	.word	-48
	.word	4
	.word	_Label_701
	.word	-52
	.word	4
	.word	_Label_702
	.word	-56
	.word	4
	.word	_Label_703
	.word	-60
	.word	4
	.word	_Label_704
	.word	-64
	.word	4
	.word	_Label_705
	.word	-68
	.word	4
	.word	_Label_706
	.word	-72
	.word	4
	.word	_Label_707
	.word	-76
	.word	4
	.word	_Label_708
	.word	-80
	.word	4
	.word	_Label_709
	.word	-84
	.word	4
	.word	_Label_710
	.word	-88
	.word	4
	.word	_Label_711
	.word	-92
	.word	4
	.word	_Label_712
	.word	-96
	.word	4
	.word	_Label_713
	.word	-100
	.word	4
	.word	_Label_714
	.word	-104
	.word	4
	.word	_Label_715
	.word	-108
	.word	4
	.word	_Label_716
	.word	-112
	.word	4
	.word	_Label_717
	.word	-116
	.word	4
	.word	_Label_718
	.word	-10
	.word	1
	.word	0
_Label_690:
	.ascii	"EchoTest\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_692:
	.byte	'C'
	.ascii	"_temp_688\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_716:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_717:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_718:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION LineEchoTest  ===============
! 
_function_276_LineEchoTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_276_LineEchoTest,r1
	push	r1
	mov	58,r1
_Label_1873:
	push	r0
	sub	r1,1,r1
	bne	_Label_1873
	mov	323,r13		! source line 323
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! smallBuff
!   NEW ARRAY Constructor...
!   _temp_720 = &_temp_719
	add	r14,-180,r1
	store	r1,[r14+-144]
!   _temp_720 = _temp_720 + 4
	load	[r14+-144],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Next value...
	mov	30,r1
	store	r1,[r14+-140]
_Label_722:
!   Data Move: *_temp_720 = 45  (sizeInBytes=1)
	mov	45,r1
	load	[r14+-144],r2
	storeb	r1,[r2]
!   _temp_720 = _temp_720 + 1
	load	[r14+-144],r1
	add	r1,1,r1
	store	r1,[r14+-144]
!   _temp_721 = _temp_721 + -1
	load	[r14+-140],r1
	add	r1,-1,r1
	store	r1,[r14+-140]
!   if intNotZero (_temp_721) then goto _Label_722
	load	[r14+-140],r1
	cmp	r1,r0
	bne	_Label_722
!   Initialize the array size...
	mov	30,r1
	store	r1,[r14+-180]
!   _temp_723 = &_temp_719
	add	r14,-180,r1
	store	r1,[r14+-136]
!   make sure array has size 30
	load	[r14+-136],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: smallBuff = *_temp_723  (sizeInBytes=36)
	load	[r14+-136],r5
	add	r14,-228,r4
	mov	9,r3
_Label_1874:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1874
! CALL STATEMENT...
!   _temp_724 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	332,r13		! source line 332
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_725 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	333,r13		! source line 333
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_726 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_727 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_728 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_729 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_730 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_731 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	340,r13		! source line 340
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_732 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	341,r13		! source line 341
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_733 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_733  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	342,r13		! source line 342
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_734 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	343,r13		! source line 343
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_735 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_736 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	345,r13		! source line 345
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_737 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_738 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	347,r13		! source line 347
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_739 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_740 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	349,r13		! source line 349
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0AS",r10
!   _temp_741 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	351,r13		! source line 351
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_743		(int)
	load	[r14+-184],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_743
!	_Label_742	jmp	_Label_742
_Label_742:
! THEN...
	mov	353,r13		! source line 353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_744 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_743:
! WHILE STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0WH",r10
_Label_745:
!	_Label_746	jmp	_Label_746
_Label_746:
	mov	356,r13		! source line 356
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0AS",r10
!   _temp_749 = &smallBuff
	add	r14,-228,r1
	store	r1,[r14+-52]
!   Move address of _temp_749 [0 ] into _temp_750
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
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
!   _temp_748 = _temp_750		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_748  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
! CALL STATEMENT...
!   _temp_751 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0AS",r10
!   _temp_753 = &smallBuff
	add	r14,-228,r1
	store	r1,[r14+-36]
!   Move address of _temp_753 [0 ] into _temp_754
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_752 = _temp_754		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_752  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+8]
!   Call the function
	mov	359,r13		! source line 359
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! IF STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0IF",r10
!   if i == j then goto _Label_756		(int)
	load	[r14+-188],r1
	load	[r14+-192],r2
	cmp	r1,r2
	be	_Label_756
!	_Label_755	jmp	_Label_755
_Label_755:
! THEN...
	mov	361,r13		! source line 361
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_757 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+4]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_756:
! IF STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0IF",r10
!   _temp_761 = &smallBuff
	add	r14,-228,r1
	store	r1,[r14+-24]
!   Move address of _temp_761 [0 ] into _temp_762
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: _temp_760 = *_temp_762  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_763 = _temp_760 XOR 113		(bool)
	loadb	[r14+-10],r1
	mov	113,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_763 then goto _Label_759 else goto _Label_758
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_758
	jmp	_Label_759
_Label_758:
! THEN...
	mov	364,r13		! source line 364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_764 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	364,r13		! source line 364
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	365,r13		! source line 365
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0RE",r10
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_759:
! END WHILE...
	jmp	_Label_745
_Label_747:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_276_LineEchoTest:
	.word	_sourceFileName
	.word	_Label_765
	.word	0		! total size of parameters
	.word	232		! frame size = 232
	.word	_Label_766
	.word	-16
	.word	4
	.word	_Label_767
	.word	-9
	.word	1
	.word	_Label_768
	.word	-20
	.word	4
	.word	_Label_769
	.word	-24
	.word	4
	.word	_Label_770
	.word	-10
	.word	1
	.word	_Label_771
	.word	-28
	.word	4
	.word	_Label_772
	.word	-32
	.word	4
	.word	_Label_773
	.word	-36
	.word	4
	.word	_Label_774
	.word	-40
	.word	4
	.word	_Label_775
	.word	-44
	.word	4
	.word	_Label_776
	.word	-48
	.word	4
	.word	_Label_777
	.word	-52
	.word	4
	.word	_Label_778
	.word	-56
	.word	4
	.word	_Label_779
	.word	-60
	.word	4
	.word	_Label_780
	.word	-64
	.word	4
	.word	_Label_781
	.word	-68
	.word	4
	.word	_Label_782
	.word	-72
	.word	4
	.word	_Label_783
	.word	-76
	.word	4
	.word	_Label_784
	.word	-80
	.word	4
	.word	_Label_785
	.word	-84
	.word	4
	.word	_Label_786
	.word	-88
	.word	4
	.word	_Label_787
	.word	-92
	.word	4
	.word	_Label_788
	.word	-96
	.word	4
	.word	_Label_789
	.word	-100
	.word	4
	.word	_Label_790
	.word	-104
	.word	4
	.word	_Label_791
	.word	-108
	.word	4
	.word	_Label_792
	.word	-112
	.word	4
	.word	_Label_793
	.word	-116
	.word	4
	.word	_Label_794
	.word	-120
	.word	4
	.word	_Label_795
	.word	-124
	.word	4
	.word	_Label_796
	.word	-128
	.word	4
	.word	_Label_797
	.word	-132
	.word	4
	.word	_Label_798
	.word	-136
	.word	4
	.word	_Label_799
	.word	-140
	.word	4
	.word	_Label_800
	.word	-144
	.word	4
	.word	_Label_801
	.word	-180
	.word	36
	.word	_Label_802
	.word	-184
	.word	4
	.word	_Label_803
	.word	-188
	.word	4
	.word	_Label_804
	.word	-192
	.word	4
	.word	_Label_805
	.word	-228
	.word	36
	.word	0
_Label_765:
	.ascii	"LineEchoTest\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_767:
	.byte	'C'
	.ascii	"_temp_763\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_770:
	.byte	'C'
	.ascii	"_temp_760\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_802:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_803:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_804:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_805:
	.byte	'A'
	.ascii	"smallBuff\0"
	.align
! 
! ===============  FUNCTION EOFTest  ===============
! 
_function_275_EOFTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_275_EOFTest,r1
	push	r1
	mov	39,r1
_Label_1875:
	push	r0
	sub	r1,1,r1
	bne	_Label_1875
	mov	374,r13		! source line 374
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! buff
!   NEW ARRAY Constructor...
!   _temp_807 = &_temp_806
	add	r14,-132,r1
	store	r1,[r14+-120]
!   _temp_807 = _temp_807 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_807 = 49  (sizeInBytes=1)
	mov	49,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_807 = _temp_807 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_807 = 50  (sizeInBytes=1)
	mov	50,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_807 = _temp_807 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_807 = 51  (sizeInBytes=1)
	mov	51,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_807 = _temp_807 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_807 = 52  (sizeInBytes=1)
	mov	52,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_807 = _temp_807 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_807 = 53  (sizeInBytes=1)
	mov	53,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_807 = _temp_807 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_807 = 54  (sizeInBytes=1)
	mov	54,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_807 = _temp_807 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Initialize the array size...
	mov	6,r1
	store	r1,[r14+-132]
!   _temp_809 = &_temp_806
	add	r14,-132,r1
	store	r1,[r14+-112]
!   make sure array has size 6
	load	[r14+-112],r1
	load	[r1],r1
	set	6, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: buff = *_temp_809  (sizeInBytes=12)
	load	[r14+-112],r5
	add	r14,-152,r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
! CALL STATEMENT...
!   _temp_810 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_810  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	383,r13		! source line 383
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_811 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	384,r13		! source line 384
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_812 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_812  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	385,r13		! source line 385
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_813 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	386,r13		! source line 386
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_814 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	387,r13		! source line 387
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_815 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	388,r13		! source line 388
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_816 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	389,r13		! source line 389
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
!   _temp_817 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_817  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	391,r13		! source line 391
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! IF STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_819		(int)
	load	[r14+-136],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_819
!	_Label_818	jmp	_Label_818
_Label_818:
! THEN...
	mov	393,r13		! source line 393
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_820 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_820  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_819:
! CALL STATEMENT...
!   _temp_821 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_821  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   _temp_823 = &buff
	add	r14,-152,r1
	store	r1,[r14+-64]
!   Move address of _temp_823 [0 ] into _temp_824
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_822 = _temp_824		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_822  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_function_272_Check
! IF STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0IF",r10
!   _temp_828 = &buff
	add	r14,-152,r1
	store	r1,[r14+-56]
!   _temp_829 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_828  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_829  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   Retrieve Result: targetName=_temp_827  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_827 then goto _Label_826 else goto _Label_825
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_825
	jmp	_Label_826
_Label_825:
! THEN...
	mov	400,r13		! source line 400
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_830 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_830  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_826:
! CALL STATEMENT...
!   _temp_831 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_831  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0AS",r10
!   _temp_833 = &buff
	add	r14,-152,r1
	store	r1,[r14+-36]
!   Move address of _temp_833 [0 ] into _temp_834
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_832 = _temp_834		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_832  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Call the function
	mov	405,r13		! source line 405
	mov	"\0\0CA",r10
	call	_function_272_Check
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
!   _temp_838 = &buff
	add	r14,-152,r1
	store	r1,[r14+-28]
!   _temp_839 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_839  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   Retrieve Result: targetName=_temp_837  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_837 then goto _Label_836 else goto _Label_835
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_835
	jmp	_Label_836
_Label_835:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_840 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_840  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	407,r13		! source line 407
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_836:
! CALL STATEMENT...
!   _temp_841 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_841  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0RE",r10
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_275_EOFTest:
	.word	_sourceFileName
	.word	_Label_842
	.word	0		! total size of parameters
	.word	156		! frame size = 156
	.word	_Label_843
	.word	-16
	.word	4
	.word	_Label_844
	.word	-20
	.word	4
	.word	_Label_845
	.word	-24
	.word	4
	.word	_Label_846
	.word	-28
	.word	4
	.word	_Label_847
	.word	-9
	.word	1
	.word	_Label_848
	.word	-32
	.word	4
	.word	_Label_849
	.word	-36
	.word	4
	.word	_Label_850
	.word	-40
	.word	4
	.word	_Label_851
	.word	-44
	.word	4
	.word	_Label_852
	.word	-48
	.word	4
	.word	_Label_853
	.word	-52
	.word	4
	.word	_Label_854
	.word	-56
	.word	4
	.word	_Label_855
	.word	-10
	.word	1
	.word	_Label_856
	.word	-60
	.word	4
	.word	_Label_857
	.word	-64
	.word	4
	.word	_Label_858
	.word	-68
	.word	4
	.word	_Label_859
	.word	-72
	.word	4
	.word	_Label_860
	.word	-76
	.word	4
	.word	_Label_861
	.word	-80
	.word	4
	.word	_Label_862
	.word	-84
	.word	4
	.word	_Label_863
	.word	-88
	.word	4
	.word	_Label_864
	.word	-92
	.word	4
	.word	_Label_865
	.word	-96
	.word	4
	.word	_Label_866
	.word	-100
	.word	4
	.word	_Label_867
	.word	-104
	.word	4
	.word	_Label_868
	.word	-108
	.word	4
	.word	_Label_869
	.word	-112
	.word	4
	.word	_Label_870
	.word	-116
	.word	4
	.word	_Label_871
	.word	-120
	.word	4
	.word	_Label_872
	.word	-132
	.word	12
	.word	_Label_873
	.word	-136
	.word	4
	.word	_Label_874
	.word	-140
	.word	4
	.word	_Label_875
	.word	-152
	.word	12
	.word	0
_Label_842:
	.ascii	"EOFTest\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_847:
	.byte	'C'
	.ascii	"_temp_837\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_855:
	.byte	'C'
	.ascii	"_temp_827\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_873:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_874:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_875:
	.byte	'A'
	.ascii	"buff\0"
	.align
! 
! ===============  FUNCTION OpenCloseTerminalTest  ===============
! 
_function_274_OpenCloseTerminalTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_274_OpenCloseTerminalTest,r1
	push	r1
	mov	37,r1
_Label_1876:
	push	r0
	sub	r1,1,r1
	bne	_Label_1876
	mov	417,r13		! source line 417
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_876 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	423,r13		! source line 423
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_881 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-128]
!   Calculate and save the FOR-LOOP ending value
!   _temp_882 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-124]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_881  (sizeInBytes=4)
	load	[r14+-128],r1
	store	r1,[r14+-140]
_Label_877:
!   Perform the FOR-LOOP termination test
!   if j > _temp_882 then goto _Label_880		
	load	[r14+-140],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_880
_Label_878:
	mov	427,r13		! source line 427
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_883 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_883  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_888 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-116]
!   Calculate and save the FOR-LOOP ending value
!   _temp_889 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-112]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_888  (sizeInBytes=4)
	load	[r14+-116],r1
	store	r1,[r14+-136]
_Label_884:
!   Perform the FOR-LOOP termination test
!   if i > _temp_889 then goto _Label_887		
	load	[r14+-136],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_887
_Label_885:
	mov	429,r13		! source line 429
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
!   _temp_890 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_890  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_892		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_892
!	_Label_891	jmp	_Label_891
_Label_891:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_893 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_893  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	433,r13		! source line 433
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_894 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_895
_Label_892:
! ELSE...
	mov	435,r13		! source line 435
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0IF",r10
!   if fd == i then goto _Label_897		(int)
	load	[r14+-144],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_897
!	_Label_896	jmp	_Label_896
_Label_896:
! THEN...
	mov	436,r13		! source line 436
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_898 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_899 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_899  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_897:
! END IF...
_Label_895:
!   Increment the FOR-LOOP index variable and jump back
_Label_886:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_884
! END FOR
_Label_887:
! CALL STATEMENT...
!   _temp_900 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	443,r13		! source line 443
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_905 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_906 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_905  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-136]
_Label_901:
!   Perform the FOR-LOOP termination test
!   if i > _temp_906 then goto _Label_904		
	load	[r14+-136],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_904
_Label_902:
	mov	444,r13		! source line 444
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	445,r13		! source line 445
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
!   Increment the FOR-LOOP index variable and jump back
_Label_903:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_901
! END FOR
_Label_904:
!   Increment the FOR-LOOP index variable and jump back
_Label_879:
!   j = j + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_877
! END FOR
_Label_880:
! CALL STATEMENT...
!   _temp_907 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	449,r13		! source line 449
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_912 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_913 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_912  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-136]
_Label_908:
!   Perform the FOR-LOOP termination test
!   if i > _temp_913 then goto _Label_911		
	load	[r14+-136],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_911
_Label_909:
	mov	450,r13		! source line 450
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0AS",r10
!   _temp_914 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_914  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	451,r13		! source line 451
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_916		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_916
!	_Label_915	jmp	_Label_915
_Label_915:
! THEN...
	mov	453,r13		! source line 453
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_917 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_917  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_918 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_918  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	455,r13		! source line 455
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_919
_Label_916:
! ELSE...
	mov	456,r13		! source line 456
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0IF",r10
!   if fd == i then goto _Label_921		(int)
	load	[r14+-144],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_921
!	_Label_920	jmp	_Label_920
_Label_920:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_922 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_922  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	457,r13		! source line 457
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	458,r13		! source line 458
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_923 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_923  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_921:
! END IF...
_Label_919:
!   Increment the FOR-LOOP index variable and jump back
_Label_910:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_908
! END FOR
_Label_911:
! CALL STATEMENT...
!   _temp_924 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_924  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	463,r13		! source line 463
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0AS",r10
!   _temp_925 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_925  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	464,r13		! source line 464
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_927		(int)
	load	[r14+-144],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_927
!	_Label_926	jmp	_Label_926
_Label_926:
! THEN...
	mov	466,r13		! source line 466
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_928 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_928  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_929
_Label_927:
! ELSE...
	mov	468,r13		! source line 468
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_930 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	469,r13		! source line 469
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_931 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	470,r13		! source line 470
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_929:
! CALL STATEMENT...
!   _temp_932 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_932  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	474,r13		! source line 474
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_937 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_938 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_937  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-136]
_Label_933:
!   Perform the FOR-LOOP termination test
!   if i > _temp_938 then goto _Label_936		
	load	[r14+-136],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_936
_Label_934:
	mov	475,r13		! source line 475
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
!   Increment the FOR-LOOP index variable and jump back
_Label_935:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_933
! END FOR
_Label_936:
! CALL STATEMENT...
!   _temp_939 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_939  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0RE",r10
	add	r15,152,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_274_OpenCloseTerminalTest:
	.word	_sourceFileName
	.word	_Label_940
	.word	0		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_941
	.word	-12
	.word	4
	.word	_Label_942
	.word	-16
	.word	4
	.word	_Label_943
	.word	-20
	.word	4
	.word	_Label_944
	.word	-24
	.word	4
	.word	_Label_945
	.word	-28
	.word	4
	.word	_Label_946
	.word	-32
	.word	4
	.word	_Label_947
	.word	-36
	.word	4
	.word	_Label_948
	.word	-40
	.word	4
	.word	_Label_949
	.word	-44
	.word	4
	.word	_Label_950
	.word	-48
	.word	4
	.word	_Label_951
	.word	-52
	.word	4
	.word	_Label_952
	.word	-56
	.word	4
	.word	_Label_953
	.word	-60
	.word	4
	.word	_Label_954
	.word	-64
	.word	4
	.word	_Label_955
	.word	-68
	.word	4
	.word	_Label_956
	.word	-72
	.word	4
	.word	_Label_957
	.word	-76
	.word	4
	.word	_Label_958
	.word	-80
	.word	4
	.word	_Label_959
	.word	-84
	.word	4
	.word	_Label_960
	.word	-88
	.word	4
	.word	_Label_961
	.word	-92
	.word	4
	.word	_Label_962
	.word	-96
	.word	4
	.word	_Label_963
	.word	-100
	.word	4
	.word	_Label_964
	.word	-104
	.word	4
	.word	_Label_965
	.word	-108
	.word	4
	.word	_Label_966
	.word	-112
	.word	4
	.word	_Label_967
	.word	-116
	.word	4
	.word	_Label_968
	.word	-120
	.word	4
	.word	_Label_969
	.word	-124
	.word	4
	.word	_Label_970
	.word	-128
	.word	4
	.word	_Label_971
	.word	-132
	.word	4
	.word	_Label_972
	.word	-136
	.word	4
	.word	_Label_973
	.word	-140
	.word	4
	.word	_Label_974
	.word	-144
	.word	4
	.word	0
_Label_940:
	.ascii	"OpenCloseTerminalTest\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_972:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_973:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_974:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION TerminalErrorTest  ===============
! 
_function_273_TerminalErrorTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_273_TerminalErrorTest,r1
	push	r1
	mov	79,r1
_Label_1877:
	push	r0
	sub	r1,1,r1
	bne	_Label_1877
	mov	485,r13		! source line 485
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_975 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_976 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=8  value=_temp_976  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_977 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-284]
!   Prepare Argument: offset=8  value=_temp_977  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+0]
!   Call the function
	mov	496,r13		! source line 496
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_978 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=8  value=_temp_978  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	497,r13		! source line 497
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-300]
! IF STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_980		(int)
	load	[r14+-300],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_980
!	_Label_979	jmp	_Label_979
_Label_979:
! THEN...
	mov	499,r13		! source line 499
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_981 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	499,r13		! source line 499
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0RE",r10
	add	r15,320,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_980:
! CALL STATEMENT...
!   _temp_982 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=8  value=_temp_982  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+0]
!   Call the function
	mov	503,r13		! source line 503
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   _temp_984 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-264]
!   Move address of _temp_984 [0 ] into _temp_985
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-260]
!   _temp_983 = _temp_985		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_983  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	505,r13		! source line 505
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	507,r13		! source line 507
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_986 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-256]
!   Prepare Argument: offset=8  value=_temp_986  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   _temp_988 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-248]
!   Move address of _temp_988 [0 ] into _temp_989
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-248],r1
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
	store	r2,[r14+-244]
!   _temp_987 = _temp_989		(4 bytes)
	load	[r14+-244],r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_987  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-123123123  sizeInBytes=4
	set	-123123123,r1
	store	r1,[r15+8]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	513,r13		! source line 513
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_990 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_990  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	515,r13		! source line 515
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_991 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=8  value=_temp_991  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Call the function
	mov	516,r13		! source line 516
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   _temp_992 = main
	set	main,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_992  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if i == -1 then goto _Label_994		(int)
	load	[r14+-296],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_994
!	_Label_995	jmp	_Label_995
_Label_995:
!   if intIsZero (i) then goto _Label_994
	load	[r14+-296],r1
	cmp	r1,r0
	be	_Label_994
!	_Label_993	jmp	_Label_993
_Label_993:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_996 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_996  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	520,r13		! source line 520
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	521,r13		! source line 521
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_997 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	522,r13		! source line 522
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_994:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=97  sizeInBytes=1
	mov	97,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_function_270_NextInput
! CALL STATEMENT...
!   _temp_998 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=8  value=_temp_998  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_999 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	527,r13		! source line 527
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=268435455  sizeInBytes=4
	set	268435455,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! IF STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0IF",r10
!   if i == -1 then goto _Label_1001		(int)
	load	[r14+-296],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1001
!	_Label_1002	jmp	_Label_1002
_Label_1002:
!   if intIsZero (i) then goto _Label_1001
	load	[r14+-296],r1
	cmp	r1,r0
	be	_Label_1001
!	_Label_1000	jmp	_Label_1000
_Label_1000:
! THEN...
	mov	531,r13		! source line 531
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1003 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_1003  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Call the function
	mov	531,r13		! source line 531
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	532,r13		! source line 532
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1004 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_1004  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	533,r13		! source line 533
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1001:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=120  sizeInBytes=1
	mov	120,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	535,r13		! source line 535
	mov	"\0\0CA",r10
	call	_function_270_NextInput
! ASSIGNMENT STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0AS",r10
!   _temp_1006 = &fd
	add	r14,-300,r1
	store	r1,[r14+-200]
!   _temp_1005 = _temp_1006 AND -8192		(int)
	load	[r14+-200],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-204]
!   p = _temp_1005 OR 8188		(int)
	load	[r14+-204],r1
	mov	8188,r2
	or	r1,r2,r1
	store	r1,[r14+-304]
! CALL STATEMENT...
!   _temp_1007 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_1007  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	547,r13		! source line 547
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1008 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=_temp_1008  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Call the function
	mov	548,r13		! source line 548
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: save = *p  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-308]
! ASSIGNMENT STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	550,r13		! source line 550
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! IF STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0IF",r10
!   if i != 4 then goto _Label_1010		(int)
	load	[r14+-296],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1010
!	_Label_1009	jmp	_Label_1009
_Label_1009:
! THEN...
	mov	552,r13		! source line 552
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1013 = *p  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if 825373492 == _temp_1013 then goto _Label_1012		(int)
	set	825373492,r1
	load	[r14+-188],r2
	cmp	r1,r2
	be	_Label_1012
!	_Label_1011	jmp	_Label_1011
_Label_1011:
! THEN...
	mov	553,r13		! source line 553
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1014 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1014  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	553,r13		! source line 553
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1012:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=53  sizeInBytes=1
	mov	53,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	555,r13		! source line 555
	mov	"\0\0CA",r10
	call	_function_270_NextInput
	jmp	_Label_1015
_Label_1010:
! ELSE...
	mov	556,r13		! source line 556
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1017		(int)
	load	[r14+-296],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1017
!	_Label_1016	jmp	_Label_1016
_Label_1016:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1020 = *p  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if save == _temp_1020 then goto _Label_1019		(int)
	load	[r14+-308],r1
	load	[r14+-180],r2
	cmp	r1,r2
	be	_Label_1019
!	_Label_1018	jmp	_Label_1018
_Label_1018:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1021 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1021  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1019:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=49  sizeInBytes=1
	mov	49,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	560,r13		! source line 560
	mov	"\0\0CA",r10
	call	_function_270_NextInput
	jmp	_Label_1022
_Label_1017:
! ELSE...
	mov	562,r13		! source line 562
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	562,r13		! source line 562
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   Call the function
	mov	563,r13		! source line 563
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	564,r13		! source line 564
	mov	"\0\0CA",r10
	call	_function_272_Check
! END IF...
_Label_1022:
! END IF...
_Label_1015:
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-304],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = save  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0AS",r10
!   _temp_1025 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-164]
!   Move address of _temp_1025 [8999 ] into _temp_1026
!     make sure index expr is >= 0
	mov	8999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
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
	store	r2,[r14+-160]
!   _temp_1024 = _temp_1026		(4 bytes)
	load	[r14+-160],r1
	store	r1,[r14+-168]
!   _temp_1023 = _temp_1024 - 10		(int)
	load	[r14+-168],r1
	mov	10,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   p = _temp_1023 AND -8192		(int)
	load	[r14+-172],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-304]
! ASSIGNMENT STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0AS",r10
!   charPtr = p - 3		(int)
	load	[r14+-304],r1
	mov	3,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-312]
! CALL STATEMENT...
!   _temp_1027 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	576,r13		! source line 576
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1028 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	577,r13		! source line 577
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1029 = charPtr - 3		(int)
	load	[r14+-312],r1
	mov	3,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   _temp_1031 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1031) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1031 [0 ] into _temp_1032
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1030 = _temp_1032		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1029  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1030  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+8]
!   Call the function
	mov	578,r13		! source line 578
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	579,r13		! source line 579
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+8]
!   Call the function
	mov	579,r13		! source line 579
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	580,r13		! source line 580
	mov	"\0\0CA",r10
	call	_function_272_Check
! IF STATEMENT...
	mov	581,r13		! source line 581
	mov	"\0\0IF",r10
!   _temp_1036 = charPtr - 3		(int)
	load	[r14+-312],r1
	mov	3,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   _temp_1038 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1038) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1038 [0 ] into _temp_1039
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   _temp_1037 = _temp_1039		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1037  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+8]
!   Call the function
	mov	581,r13		! source line 581
	mov	"\0\0CA",r10
	call	_P_UserSystem_MemoryEqual
!   Retrieve Result: targetName=_temp_1035  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1035 then goto _Label_1034 else goto _Label_1033
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1033
	jmp	_Label_1034
_Label_1033:
! THEN...
	mov	582,r13		! source line 582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1040 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1040  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	582,r13		! source line 582
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1034:
! CALL STATEMENT...
!   _temp_1041 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
!   _temp_1043 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-104]
!   Move address of _temp_1043 [0 ] into _temp_1044
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
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
	store	r2,[r14+-100]
!   _temp_1042 = _temp_1044		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1042  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0AS",r10
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1045 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   _temp_1047 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-88]
!   Move address of _temp_1047 [0 ] into _temp_1048
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   _temp_1046 = _temp_1048		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1046  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-123123123  sizeInBytes=4
	set	-123123123,r1
	store	r1,[r15+8]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1049 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1049  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1050 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1050  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1051 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1051  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1052 = charPtr		(4 bytes)
	load	[r14+-312],r1
	store	r1,[r14+-68]
!   _temp_1054 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1054) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1054 [0 ] into _temp_1055
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
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
!   _temp_1053 = _temp_1055		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1052  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1053  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	601,r13		! source line 601
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1056 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1056  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1057 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1058 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1058  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0AS",r10
!   _temp_1060 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1060) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1060 [0 ] into _temp_1061
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1059 = _temp_1061		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1059  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+8]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   if i == 11 then goto _Label_1063		(int)
	load	[r14+-296],r1
	mov	11,r2
	cmp	r1,r2
	be	_Label_1063
!	_Label_1062	jmp	_Label_1062
_Label_1062:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1064 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1065 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1063:
! CALL STATEMENT...
!   _temp_1066 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=268435455  sizeInBytes=4
	set	268435455,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0AS",r10
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_1067 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0RE",r10
	add	r15,320,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_273_TerminalErrorTest:
	.word	_sourceFileName
	.word	_Label_1068
	.word	0		! total size of parameters
	.word	316		! frame size = 316
	.word	_Label_1069
	.word	-16
	.word	4
	.word	_Label_1070
	.word	-20
	.word	4
	.word	_Label_1071
	.word	-24
	.word	4
	.word	_Label_1072
	.word	-28
	.word	4
	.word	_Label_1073
	.word	-32
	.word	4
	.word	_Label_1074
	.word	-36
	.word	4
	.word	_Label_1075
	.word	-40
	.word	4
	.word	_Label_1076
	.word	-44
	.word	4
	.word	_Label_1077
	.word	-48
	.word	4
	.word	_Label_1078
	.word	-52
	.word	4
	.word	_Label_1079
	.word	-56
	.word	4
	.word	_Label_1080
	.word	-60
	.word	4
	.word	_Label_1081
	.word	-64
	.word	4
	.word	_Label_1082
	.word	-68
	.word	4
	.word	_Label_1083
	.word	-72
	.word	4
	.word	_Label_1084
	.word	-76
	.word	4
	.word	_Label_1085
	.word	-80
	.word	4
	.word	_Label_1086
	.word	-84
	.word	4
	.word	_Label_1087
	.word	-88
	.word	4
	.word	_Label_1088
	.word	-92
	.word	4
	.word	_Label_1089
	.word	-96
	.word	4
	.word	_Label_1090
	.word	-100
	.word	4
	.word	_Label_1091
	.word	-104
	.word	4
	.word	_Label_1092
	.word	-108
	.word	4
	.word	_Label_1093
	.word	-112
	.word	4
	.word	_Label_1094
	.word	-116
	.word	4
	.word	_Label_1095
	.word	-120
	.word	4
	.word	_Label_1096
	.word	-124
	.word	4
	.word	_Label_1097
	.word	-128
	.word	4
	.word	_Label_1098
	.word	-132
	.word	4
	.word	_Label_1099
	.word	-9
	.word	1
	.word	_Label_1100
	.word	-136
	.word	4
	.word	_Label_1101
	.word	-140
	.word	4
	.word	_Label_1102
	.word	-144
	.word	4
	.word	_Label_1103
	.word	-148
	.word	4
	.word	_Label_1104
	.word	-152
	.word	4
	.word	_Label_1105
	.word	-156
	.word	4
	.word	_Label_1106
	.word	-160
	.word	4
	.word	_Label_1107
	.word	-164
	.word	4
	.word	_Label_1108
	.word	-168
	.word	4
	.word	_Label_1109
	.word	-172
	.word	4
	.word	_Label_1110
	.word	-176
	.word	4
	.word	_Label_1111
	.word	-180
	.word	4
	.word	_Label_1112
	.word	-184
	.word	4
	.word	_Label_1113
	.word	-188
	.word	4
	.word	_Label_1114
	.word	-192
	.word	4
	.word	_Label_1115
	.word	-196
	.word	4
	.word	_Label_1116
	.word	-200
	.word	4
	.word	_Label_1117
	.word	-204
	.word	4
	.word	_Label_1118
	.word	-208
	.word	4
	.word	_Label_1119
	.word	-212
	.word	4
	.word	_Label_1120
	.word	-216
	.word	4
	.word	_Label_1121
	.word	-220
	.word	4
	.word	_Label_1122
	.word	-224
	.word	4
	.word	_Label_1123
	.word	-228
	.word	4
	.word	_Label_1124
	.word	-232
	.word	4
	.word	_Label_1125
	.word	-236
	.word	4
	.word	_Label_1126
	.word	-240
	.word	4
	.word	_Label_1127
	.word	-244
	.word	4
	.word	_Label_1128
	.word	-248
	.word	4
	.word	_Label_1129
	.word	-252
	.word	4
	.word	_Label_1130
	.word	-256
	.word	4
	.word	_Label_1131
	.word	-260
	.word	4
	.word	_Label_1132
	.word	-264
	.word	4
	.word	_Label_1133
	.word	-268
	.word	4
	.word	_Label_1134
	.word	-272
	.word	4
	.word	_Label_1135
	.word	-276
	.word	4
	.word	_Label_1136
	.word	-280
	.word	4
	.word	_Label_1137
	.word	-284
	.word	4
	.word	_Label_1138
	.word	-288
	.word	4
	.word	_Label_1139
	.word	-292
	.word	4
	.word	_Label_1140
	.word	-296
	.word	4
	.word	_Label_1141
	.word	-300
	.word	4
	.word	_Label_1142
	.word	-304
	.word	4
	.word	_Label_1143
	.word	-308
	.word	4
	.word	_Label_1144
	.word	-312
	.word	4
	.word	0
_Label_1068:
	.ascii	"TerminalErrorTest\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1099:
	.byte	'C'
	.ascii	"_temp_1035\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1140:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1141:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1142:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_1143:
	.byte	'I'
	.ascii	"save\0"
	.align
_Label_1144:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION Check  ===============
! 
_function_272_Check:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_272_Check,r1
	push	r1
	mov	4,r1
_Label_1878:
	push	r0
	sub	r1,1,r1
	bne	_Label_1878
	mov	629,r13		! source line 629
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0IF",r10
!   if i != expectedVal then goto _Label_1146		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_1146
!	_Label_1145	jmp	_Label_1145
_Label_1145:
! THEN...
	mov	635,r13		! source line 635
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1147 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1147  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1148
_Label_1146:
! ELSE...
	mov	637,r13		! source line 637
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1149 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1149  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1150 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1150  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1148:
! RETURN STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_272_Check:
	.word	_sourceFileName
	.word	_Label_1151
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1152
	.word	8
	.word	4
	.word	_Label_1153
	.word	12
	.word	4
	.word	_Label_1154
	.word	-12
	.word	4
	.word	_Label_1155
	.word	-16
	.word	4
	.word	_Label_1156
	.word	-20
	.word	4
	.word	0
_Label_1151:
	.ascii	"Check\0"
	.align
_Label_1152:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1153:
	.byte	'I'
	.ascii	"expectedVal\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
! 
! ===============  FUNCTION CheckCh  ===============
! 
_function_271_CheckCh:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_271_CheckCh,r1
	push	r1
	mov	5,r1
_Label_1879:
	push	r0
	sub	r1,1,r1
	bne	_Label_1879
	mov	646,r13		! source line 646
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0IF",r10
!   _temp_1159 = c XOR expectedVal		(bool)
	loadb	[r14+8],r1
	loadb	[r14+9],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1159 then goto _Label_1158 else goto _Label_1157
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1157
	jmp	_Label_1158
_Label_1157:
! THEN...
	mov	652,r13		! source line 652
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1160 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1160  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
	jmp	_Label_1161
_Label_1158:
! ELSE...
	mov	654,r13		! source line 654
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1162 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+8],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CA",r10
	call	_P_UserLib_PutChar
! CALL STATEMENT...
!   _temp_1163 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! END IF...
_Label_1161:
! RETURN STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_271_CheckCh:
	.word	_sourceFileName
	.word	_Label_1164
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1165
	.word	8
	.word	1
	.word	_Label_1166
	.word	9
	.word	1
	.word	_Label_1167
	.word	-16
	.word	4
	.word	_Label_1168
	.word	-20
	.word	4
	.word	_Label_1169
	.word	-24
	.word	4
	.word	_Label_1170
	.word	-9
	.word	1
	.word	0
_Label_1164:
	.ascii	"CheckCh\0"
	.align
_Label_1165:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1166:
	.byte	'C'
	.ascii	"expectedVal\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1170:
	.byte	'C'
	.ascii	"_temp_1159\0"
	.align
! 
! ===============  FUNCTION NextInput  ===============
! 
_function_270_NextInput:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_270_NextInput,r1
	push	r1
	mov	72,r1
_Label_1880:
	push	r0
	sub	r1,1,r1
	bne	_Label_1880
	mov	663,r13		! source line 663
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! buffer
!   NEW ARRAY Constructor...
!   _temp_1172 = &_temp_1171
	add	r14,-176,r1
	store	r1,[r14+-72]
!   _temp_1172 = _temp_1172 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
	mov	100,r1
	store	r1,[r14+-68]
_Label_1174:
!   Data Move: *_temp_1172 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-72],r2
	storeb	r1,[r2]
!   _temp_1172 = _temp_1172 + 1
	load	[r14+-72],r1
	add	r1,1,r1
	store	r1,[r14+-72]
!   _temp_1173 = _temp_1173 + -1
	load	[r14+-68],r1
	add	r1,-1,r1
	store	r1,[r14+-68]
!   if intNotZero (_temp_1173) then goto _Label_1174
	load	[r14+-68],r1
	cmp	r1,r0
	bne	_Label_1174
!   Initialize the array size...
	mov	100,r1
	store	r1,[r14+-176]
!   _temp_1175 = &_temp_1171
	add	r14,-176,r1
	store	r1,[r14+-64]
!   make sure array has size 100
	load	[r14+-64],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: buffer = *_temp_1175  (sizeInBytes=104)
	load	[r14+-64],r5
	add	r14,-284,r4
	mov	26,r3
_Label_1881:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1881
! ASSIGNMENT STATEMENT...
	mov	674,r13		! source line 674
	mov	"\0\0AS",r10
!   _temp_1176 = &inputChar
	add	r14,-11,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1176  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_1178		(int)
	load	[r14+-180],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_1178
!	_Label_1177	jmp	_Label_1177
_Label_1177:
! THEN...
	mov	676,r13		! source line 676
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1179 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1180 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1180  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1178:
! IF STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0IF",r10
!   _temp_1183 = inputChar XOR expectedChar		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+12],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_1183 then goto _Label_1182 else goto _Label_1181
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1181
	jmp	_Label_1182
_Label_1181:
! THEN...
	mov	683,r13		! source line 683
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1184 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1184  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	683,r13		! source line 683
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1185
_Label_1182:
! ELSE...
	mov	685,r13		! source line 685
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1186 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1186  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=expectedChar  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	686,r13		! source line 686
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_1187 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1187  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inputChar  sizeInBytes=1
	loadb	[r14+-11],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	688,r13		! source line 688
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_1188 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1188  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1185:
! IF STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0IF",r10
!   _temp_1191 = inputChar XOR 10		(bool)
	loadb	[r14+-11],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1191 then goto _Label_1189 else goto _Label_1190
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1190
	jmp	_Label_1189
_Label_1189:
! THEN...
	mov	694,r13		! source line 694
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0AS",r10
!   _temp_1193 = &buffer
	add	r14,-284,r1
	store	r1,[r14+-28]
!   Move address of _temp_1193 [0 ] into _temp_1194
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
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
!   _temp_1192 = _temp_1194		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_1196 = &buffer
	add	r14,-284,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1195 = *_temp_1196  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1192  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1195  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+8]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! END IF...
_Label_1190:
! RETURN STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0RE",r10
	add	r15,292,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_270_NextInput:
	.word	_sourceFileName
	.word	_Label_1197
	.word	8		! total size of parameters
	.word	288		! frame size = 288
	.word	_Label_1198
	.word	8
	.word	4
	.word	_Label_1199
	.word	12
	.word	1
	.word	_Label_1200
	.word	-16
	.word	4
	.word	_Label_1201
	.word	-20
	.word	4
	.word	_Label_1202
	.word	-24
	.word	4
	.word	_Label_1203
	.word	-28
	.word	4
	.word	_Label_1204
	.word	-32
	.word	4
	.word	_Label_1205
	.word	-9
	.word	1
	.word	_Label_1206
	.word	-36
	.word	4
	.word	_Label_1207
	.word	-40
	.word	4
	.word	_Label_1208
	.word	-44
	.word	4
	.word	_Label_1209
	.word	-48
	.word	4
	.word	_Label_1210
	.word	-10
	.word	1
	.word	_Label_1211
	.word	-52
	.word	4
	.word	_Label_1212
	.word	-56
	.word	4
	.word	_Label_1213
	.word	-60
	.word	4
	.word	_Label_1214
	.word	-64
	.word	4
	.word	_Label_1215
	.word	-68
	.word	4
	.word	_Label_1216
	.word	-72
	.word	4
	.word	_Label_1217
	.word	-176
	.word	104
	.word	_Label_1218
	.word	-180
	.word	4
	.word	_Label_1219
	.word	-11
	.word	1
	.word	_Label_1220
	.word	-284
	.word	104
	.word	0
_Label_1197:
	.ascii	"NextInput\0"
	.align
_Label_1198:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1199:
	.byte	'C'
	.ascii	"expectedChar\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1205:
	.byte	'C'
	.ascii	"_temp_1191\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1210:
	.byte	'C'
	.ascii	"_temp_1183\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1218:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1219:
	.byte	'C'
	.ascii	"inputChar\0"
	.align
_Label_1220:
	.byte	'A'
	.ascii	"buffer\0"
	.align
! 
! ===============  FUNCTION TestDup  ===============
! 
_function_269_TestDup:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_269_TestDup,r1
	push	r1
	mov	23,r1
_Label_1882:
	push	r0
	sub	r1,1,r1
	bne	_Label_1882
	mov	701,r13		! source line 701
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1221 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1222 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Dup
!   Retrieve Result: targetName=fd1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd1  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1223 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CA",r10
	call	_P_UserLib_dGetChar
!   Retrieve Result: targetName=ch  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
! CALL STATEMENT...
!   _temp_1224 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CA",r10
	call	_P_UserLib_PutChar
! CALL STATEMENT...
!   _temp_1225 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1225  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1226 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0AS",r10
!   _temp_1227 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd2  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd2  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	720,r13		! source line 720
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Dup
!   Retrieve Result: targetName=fd3  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd3  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd2  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CA",r10
	call	_P_UserLib_dGetChar
!   Retrieve Result: targetName=ch  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Prepare Argument: offset=9  value=97  sizeInBytes=1
	mov	97,r1
	storeb	r1,[r15+1]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_271_CheckCh
! ASSIGNMENT STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd3  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CA",r10
	call	_P_UserLib_dGetChar
!   Retrieve Result: targetName=ch  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Prepare Argument: offset=9  value=98  sizeInBytes=1
	mov	98,r1
	storeb	r1,[r15+1]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CA",r10
	call	_function_271_CheckCh
! ASSIGNMENT STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd2  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CA",r10
	call	_P_UserLib_dGetChar
!   Retrieve Result: targetName=ch  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Prepare Argument: offset=9  value=99  sizeInBytes=1
	mov	99,r1
	storeb	r1,[r15+1]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CA",r10
	call	_function_271_CheckCh
! ASSIGNMENT STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd3  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CA",r10
	call	_P_UserLib_dGetChar
!   Retrieve Result: targetName=ch  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Prepare Argument: offset=9  value=100  sizeInBytes=1
	mov	100,r1
	storeb	r1,[r15+1]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CA",r10
	call	_function_271_CheckCh
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd2  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	733,r13		! source line 733
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd3  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CA",r10
	call	_P_UserLib_dGetChar
!   Retrieve Result: targetName=ch  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Prepare Argument: offset=9  value=101  sizeInBytes=1
	mov	101,r1
	storeb	r1,[r15+1]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CA",r10
	call	_function_271_CheckCh
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd1  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd3  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! FOR STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1232 = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1233 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: ix = _temp_1232  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-84]
_Label_1228:
!   Perform the FOR-LOOP termination test
!   if ix > _temp_1233 then goto _Label_1231		
	load	[r14+-84],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1231
_Label_1229:
	mov	740,r13		! source line 740
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Dup
!   Retrieve Result: targetName=fd1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0IF",r10
!   if fd1 == ix then goto _Label_1235		(int)
	load	[r14+-72],r1
	load	[r14+-84],r2
	cmp	r1,r2
	be	_Label_1235
!	_Label_1234	jmp	_Label_1234
_Label_1234:
! THEN...
	mov	743,r13		! source line 743
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1236 = _StringConst_226
	set	_StringConst_226,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd1  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CA",r10
	call	_P_UserLib_PrintInt
! CALL STATEMENT...
!   _temp_1237 = _StringConst_227
	set	_StringConst_227,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! END IF...
_Label_1235:
!   Increment the FOR-LOOP index variable and jump back
_Label_1230:
!   ix = ix + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_1228
! END FOR
_Label_1231:
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Dup
!   Retrieve Result: targetName=fd1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd1  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0AS",r10
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_function_272_Check
! FOR STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1242 = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1243 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: ix = _temp_1242  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-84]
_Label_1238:
!   Perform the FOR-LOOP termination test
!   if ix > _temp_1243 then goto _Label_1241		
	load	[r14+-84],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1241
_Label_1239:
	mov	753,r13		! source line 753
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ix  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
!   Increment the FOR-LOOP index variable and jump back
_Label_1240:
!   ix = ix + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_1238
! END FOR
_Label_1241:
! ASSIGNMENT STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Dup
!   Retrieve Result: targetName=fd1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd1  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0AS",r10
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1244 = _StringConst_228
	set	_StringConst_228,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1244  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_269_TestDup:
	.word	_sourceFileName
	.word	_Label_1245
	.word	0		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1246
	.word	-16
	.word	4
	.word	_Label_1247
	.word	-20
	.word	4
	.word	_Label_1248
	.word	-24
	.word	4
	.word	_Label_1249
	.word	-28
	.word	4
	.word	_Label_1250
	.word	-32
	.word	4
	.word	_Label_1251
	.word	-36
	.word	4
	.word	_Label_1252
	.word	-40
	.word	4
	.word	_Label_1253
	.word	-44
	.word	4
	.word	_Label_1254
	.word	-48
	.word	4
	.word	_Label_1255
	.word	-52
	.word	4
	.word	_Label_1256
	.word	-56
	.word	4
	.word	_Label_1257
	.word	-60
	.word	4
	.word	_Label_1258
	.word	-64
	.word	4
	.word	_Label_1259
	.word	-68
	.word	4
	.word	_Label_1260
	.word	-72
	.word	4
	.word	_Label_1261
	.word	-76
	.word	4
	.word	_Label_1262
	.word	-80
	.word	4
	.word	_Label_1263
	.word	-84
	.word	4
	.word	_Label_1264
	.word	-88
	.word	4
	.word	_Label_1265
	.word	-9
	.word	1
	.word	0
_Label_1245:
	.ascii	"TestDup\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1260:
	.byte	'I'
	.ascii	"fd1\0"
	.align
_Label_1261:
	.byte	'I'
	.ascii	"fd2\0"
	.align
_Label_1262:
	.byte	'I'
	.ascii	"fd3\0"
	.align
_Label_1263:
	.byte	'I'
	.ascii	"ix\0"
	.align
_Label_1264:
	.byte	'I'
	.ascii	"rv\0"
	.align
_Label_1265:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION TestPipe  ===============
! 
_function_268_TestPipe:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_268_TestPipe,r1
	push	r1
	mov	746,r1
_Label_1883:
	push	r0
	sub	r1,1,r1
	bne	_Label_1883
	mov	768,r13		! source line 768
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! fd
!   NEW ARRAY Constructor...
!   _temp_1267 = &_temp_1266
	add	r14,-1940,r1
	store	r1,[r14+-1928]
!   _temp_1267 = _temp_1267 + 4
	load	[r14+-1928],r1
	add	r1,4,r1
	store	r1,[r14+-1928]
!   Next value...
	mov	2,r1
	store	r1,[r14+-1924]
_Label_1269:
!   Data Move: *_temp_1267 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-1928],r2
	store	r1,[r2]
!   _temp_1267 = _temp_1267 + 4
	load	[r14+-1928],r1
	add	r1,4,r1
	store	r1,[r14+-1928]
!   _temp_1268 = _temp_1268 + -1
	load	[r14+-1924],r1
	add	r1,-1,r1
	store	r1,[r14+-1924]
!   if intNotZero (_temp_1268) then goto _Label_1269
	load	[r14+-1924],r1
	cmp	r1,r0
	bne	_Label_1269
!   Initialize the array size...
	mov	2,r1
	store	r1,[r14+-1940]
!   _temp_1270 = &_temp_1266
	add	r14,-1940,r1
	store	r1,[r14+-1920]
!   make sure array has size 2
	load	[r14+-1920],r1
	load	[r1],r1
	set	2, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: fd = *_temp_1270  (sizeInBytes=12)
	load	[r14+-1920],r5
	add	r14,-1956,r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
! data
!   NEW ARRAY Constructor...
!   _temp_1272 = &_temp_1271
	add	r14,-1916,r1
	store	r1,[r14+-912]
!   _temp_1272 = _temp_1272 + 4
	load	[r14+-912],r1
	add	r1,4,r1
	store	r1,[r14+-912]
!   Next value...
	mov	1000,r1
	store	r1,[r14+-908]
_Label_1274:
!   Data Move: *_temp_1272 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-912],r2
	storeb	r1,[r2]
!   _temp_1272 = _temp_1272 + 1
	load	[r14+-912],r1
	add	r1,1,r1
	store	r1,[r14+-912]
!   _temp_1273 = _temp_1273 + -1
	load	[r14+-908],r1
	add	r1,-1,r1
	store	r1,[r14+-908]
!   if intNotZero (_temp_1273) then goto _Label_1274
	load	[r14+-908],r1
	cmp	r1,r0
	bne	_Label_1274
!   Initialize the array size...
	mov	1000,r1
	store	r1,[r14+-1916]
!   _temp_1275 = &_temp_1271
	add	r14,-1916,r1
	store	r1,[r14+-904]
!   make sure array has size 1000
	load	[r14+-904],r1
	load	[r1],r1
	set	1000, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: data = *_temp_1275  (sizeInBytes=1004)
	load	[r14+-904],r5
	add	r14,-2960,r4
	mov	251,r3
_Label_1884:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1884
! CALL STATEMENT...
!   _temp_1276 = _StringConst_229
	set	_StringConst_229,r1
	store	r1,[r14+-900]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-900],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
!   _temp_1277 = _StringConst_230
	set	_StringConst_230,r1
	store	r1,[r14+-896]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-896],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-2980]
! IF STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0IF",r10
!   if fd1 >= 0 then goto _Label_1279		(int)
	load	[r14+-2980],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1279
!	_Label_1278	jmp	_Label_1278
_Label_1278:
! THEN...
	mov	782,r13		! source line 782
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1280 = _StringConst_231
	set	_StringConst_231,r1
	store	r1,[r14+-892]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-892],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0RE",r10
	add	r15,2988,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1279:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd1  sizeInBytes=4
	load	[r14+-2980],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0AS",r10
!   _temp_1282 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-884]
!   Move address of _temp_1282 [0 ] into _temp_1283
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-884],r1
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
	store	r2,[r14+-880]
!   _temp_1281 = _temp_1283		(4 bytes)
	load	[r14+-880],r1
	store	r1,[r14+-888]
!   Prepare Argument: offset=8  value=fd1  sizeInBytes=4
	load	[r14+-2980],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1281  sizeInBytes=4
	load	[r14+-888],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9000  sizeInBytes=4
	mov	9000,r1
	store	r1,[r15+8]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9000  sizeInBytes=4
	mov	9000,r1
	store	r1,[r15+4]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd1  sizeInBytes=4
	load	[r14+-2980],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! FOR STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1288 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-876]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1289 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-872]
!   Initialize FOR-LOOP index variable
!   Data Move: ix = _temp_1288  (sizeInBytes=4)
	load	[r14+-876],r1
	store	r1,[r14+-2964]
_Label_1284:
!   Perform the FOR-LOOP termination test
!   if ix > _temp_1289 then goto _Label_1287		
	load	[r14+-2964],r1
	load	[r14+-872],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1287
_Label_1285:
	mov	790,r13		! source line 790
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1291 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-868]
!   Move address of _temp_1291 [ix ] into _temp_1292
!     make sure index expr is >= 0
	load	[r14+-2964],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-868],r1
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
	store	r2,[r14+-864]
!   Data Move: _temp_1290 = *_temp_1292  (sizeInBytes=1)
	load	[r14+-864],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=1
	loadb	[r14+-12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CA",r10
	call	_P_UserLib_PutChar
!   Increment the FOR-LOOP index variable and jump back
_Label_1286:
!   ix = ix + 1
	load	[r14+-2964],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2964]
	jmp	_Label_1284
! END FOR
_Label_1287:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CA",r10
	call	_P_UserLib_PutChar
! ASSIGNMENT STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0AS",r10
!   _temp_1293 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-860]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-860],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Pipe
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! IF STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_1294
	load	[r14+-1944],r1
	cmp	r1,r0
	be	_Label_1294
	jmp	_Label_1295
_Label_1294:
! THEN...
	mov	796,r13		! source line 796
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1296 = _StringConst_232
	set	_StringConst_232,r1
	store	r1,[r14+-856]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
	load	[r14+-856],r1
	store	r1,[r15+0]
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1298 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-848]
!   Move address of _temp_1298 [0 ] into _temp_1299
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-848],r1
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
	store	r2,[r14+-844]
!   Data Move: _temp_1297 = *_temp_1299  (sizeInBytes=4)
	load	[r14+-844],r1
	load	[r1],r1
	store	r1,[r14+-852]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-852],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1301 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-836]
!   Move address of _temp_1301 [1 ] into _temp_1302
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-836],r1
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
	store	r2,[r14+-832]
!   Data Move: _temp_1300 = *_temp_1302  (sizeInBytes=4)
	load	[r14+-832],r1
	load	[r1],r1
	store	r1,[r14+-840]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-840],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1303 = &data
	add	r14,-2960,r1
	store	r1,[r14+-828]
!   _temp_1304 = _StringConst_233
	set	_StringConst_233,r1
	store	r1,[r14+-824]
!   Prepare Argument: offset=8  value=_temp_1303  sizeInBytes=4
	load	[r14+-828],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1304  sizeInBytes=4
	load	[r14+-824],r1
	store	r1,[r15+4]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0AS",r10
!   _temp_1306 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-816]
!   Move address of _temp_1306 [1 ] into _temp_1307
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-816],r1
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
	store	r2,[r14+-812]
!   Data Move: _temp_1305 = *_temp_1307  (sizeInBytes=4)
	load	[r14+-812],r1
	load	[r1],r1
	store	r1,[r14+-820]
!   _temp_1309 = &data
	add	r14,-2960,r1
	store	r1,[r14+-804]
!   Move address of _temp_1309 [0 ] into _temp_1310
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-804],r1
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
	store	r2,[r14+-800]
!   _temp_1308 = _temp_1310		(4 bytes)
	load	[r14+-800],r1
	store	r1,[r14+-808]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-820],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1308  sizeInBytes=4
	load	[r14+-808],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	801,r13		! source line 801
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0AS",r10
!   _temp_1312 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-792]
!   Move address of _temp_1312 [0 ] into _temp_1313
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-792],r1
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
	store	r2,[r14+-788]
!   Data Move: _temp_1311 = *_temp_1313  (sizeInBytes=4)
	load	[r14+-788],r1
	load	[r1],r1
	store	r1,[r14+-796]
!   _temp_1315 = &data
	add	r14,-2960,r1
	store	r1,[r14+-780]
!   Move address of _temp_1315 [10 ] into _temp_1316
!     make sure index expr is >= 0
	mov	10,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-780],r1
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
	store	r2,[r14+-776]
!   _temp_1314 = _temp_1316		(4 bytes)
	load	[r14+-776],r1
	store	r1,[r14+-784]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-796],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1314  sizeInBytes=4
	load	[r14+-784],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Call the function
	mov	802,r13		! source line 802
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	803,r13		! source line 803
	mov	"\0\0CA",r10
	call	_function_272_Check
! FOR STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1321 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-772]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1322 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-768]
!   Initialize FOR-LOOP index variable
!   Data Move: ix = _temp_1321  (sizeInBytes=4)
	load	[r14+-772],r1
	store	r1,[r14+-2964]
_Label_1317:
!   Perform the FOR-LOOP termination test
!   if ix > _temp_1322 then goto _Label_1320		
	load	[r14+-2964],r1
	load	[r14+-768],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1320
_Label_1318:
	mov	804,r13		! source line 804
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0IF",r10
!   _temp_1326 = &data
	add	r14,-2960,r1
	store	r1,[r14+-764]
!   Move address of _temp_1326 [ix ] into _temp_1327
!     make sure index expr is >= 0
	load	[r14+-2964],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-764],r1
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
	store	r2,[r14+-760]
!   Data Move: _temp_1325 = *_temp_1327  (sizeInBytes=1)
	load	[r14+-760],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_1329 = &data
	add	r14,-2960,r1
	store	r1,[r14+-756]
!   _temp_1330 = 10 + ix		(int)
	mov	10,r1
	load	[r14+-2964],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-752]
!   Move address of _temp_1329 [_temp_1330 ] into _temp_1331
!     make sure index expr is >= 0
	load	[r14+-752],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-756],r1
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
	store	r2,[r14+-748]
!   Data Move: _temp_1328 = *_temp_1331  (sizeInBytes=1)
	load	[r14+-748],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_1332 = _temp_1325 XOR _temp_1328		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1332 then goto _Label_1323 else goto _Label_1324
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1324
	jmp	_Label_1323
_Label_1323:
! THEN...
	mov	806,r13		! source line 806
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1333 = _StringConst_234
	set	_StringConst_234,r1
	store	r1,[r14+-744]
!   Prepare Argument: offset=8  value=_temp_1333  sizeInBytes=4
	load	[r14+-744],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! BREAK STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0BR",r10
	jmp	_Label_1320
! END IF...
_Label_1324:
!   Increment the FOR-LOOP index variable and jump back
_Label_1319:
!   ix = ix + 1
	load	[r14+-2964],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2964]
	jmp	_Label_1317
! END FOR
_Label_1320:
! CALL STATEMENT...
!   _temp_1335 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-736]
!   Move address of _temp_1335 [0 ] into _temp_1336
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
!   Data Move: _temp_1334 = *_temp_1336  (sizeInBytes=4)
	load	[r14+-732],r1
	load	[r1],r1
	store	r1,[r14+-740]
!   Prepare Argument: offset=8  value=_temp_1334  sizeInBytes=4
	load	[r14+-740],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_1338 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-724]
!   Move address of _temp_1338 [1 ] into _temp_1339
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
!   Data Move: _temp_1337 = *_temp_1339  (sizeInBytes=4)
	load	[r14+-720],r1
	load	[r1],r1
	store	r1,[r14+-728]
!   Prepare Argument: offset=8  value=_temp_1337  sizeInBytes=4
	load	[r14+-728],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
	jmp	_Label_1340
_Label_1295:
! ELSE...
	mov	813,r13		! source line 813
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1341 = _StringConst_235
	set	_StringConst_235,r1
	store	r1,[r14+-716]
!   Prepare Argument: offset=8  value=_temp_1341  sizeInBytes=4
	load	[r14+-716],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0RE",r10
	add	r15,2988,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1340:
! ASSIGNMENT STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0AS",r10
!   _temp_1342 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-712]
!   Prepare Argument: offset=8  value=_temp_1342  sizeInBytes=4
	load	[r14+-712],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Pipe
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! IF STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_1343
	load	[r14+-1944],r1
	cmp	r1,r0
	be	_Label_1343
	jmp	_Label_1344
_Label_1343:
! THEN...
	mov	820,r13		! source line 820
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1345 = _StringConst_236
	set	_StringConst_236,r1
	store	r1,[r14+-708]
!   Prepare Argument: offset=8  value=_temp_1345  sizeInBytes=4
	load	[r14+-708],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1347 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-700]
!   Move address of _temp_1347 [0 ] into _temp_1348
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-700],r1
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
	store	r2,[r14+-696]
!   Data Move: _temp_1346 = *_temp_1348  (sizeInBytes=4)
	load	[r14+-696],r1
	load	[r1],r1
	store	r1,[r14+-704]
!   Prepare Argument: offset=8  value=_temp_1346  sizeInBytes=4
	load	[r14+-704],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1350 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-688]
!   Move address of _temp_1350 [1 ] into _temp_1351
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-688],r1
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
	store	r2,[r14+-684]
!   Data Move: _temp_1349 = *_temp_1351  (sizeInBytes=4)
	load	[r14+-684],r1
	load	[r1],r1
	store	r1,[r14+-692]
!   Prepare Argument: offset=8  value=_temp_1349  sizeInBytes=4
	load	[r14+-692],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0AS",r10
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-2968]
! IF STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1352
	load	[r14+-2968],r1
	cmp	r1,r0
	be	_Label_1352
	jmp	_Label_1353
_Label_1352:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1355 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-676]
!   Move address of _temp_1355 [0 ] into _temp_1356
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-676],r1
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
	store	r2,[r14+-672]
!   Data Move: _temp_1354 = *_temp_1356  (sizeInBytes=4)
	load	[r14+-672],r1
	load	[r1],r1
	store	r1,[r14+-680]
!   Prepare Argument: offset=8  value=_temp_1354  sizeInBytes=4
	load	[r14+-680],r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_1357 = &data
	add	r14,-2960,r1
	store	r1,[r14+-668]
!   _temp_1358 = _StringConst_237
	set	_StringConst_237,r1
	store	r1,[r14+-664]
!   Prepare Argument: offset=8  value=_temp_1357  sizeInBytes=4
	load	[r14+-668],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1358  sizeInBytes=4
	load	[r14+-664],r1
	store	r1,[r15+4]
!   Call the function
	mov	828,r13		! source line 828
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0AS",r10
!   sum = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-2976]
! FOR STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1363 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-660]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1364 = 199		(4 bytes)
	mov	199,r1
	store	r1,[r14+-656]
!   Initialize FOR-LOOP index variable
!   Data Move: ix = _temp_1363  (sizeInBytes=4)
	load	[r14+-660],r1
	store	r1,[r14+-2964]
_Label_1359:
!   Perform the FOR-LOOP termination test
!   if ix > _temp_1364 then goto _Label_1362		
	load	[r14+-2964],r1
	load	[r14+-656],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1362
_Label_1360:
	mov	830,r13		! source line 830
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0AS",r10
!   _temp_1366 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-648]
!   Move address of _temp_1366 [1 ] into _temp_1367
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-648],r1
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
	store	r2,[r14+-644]
!   Data Move: _temp_1365 = *_temp_1367  (sizeInBytes=4)
	load	[r14+-644],r1
	load	[r1],r1
	store	r1,[r14+-652]
!   _temp_1369 = &data
	add	r14,-2960,r1
	store	r1,[r14+-636]
!   Move address of _temp_1369 [0 ] into _temp_1370
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-636],r1
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
	store	r2,[r14+-632]
!   _temp_1368 = _temp_1370		(4 bytes)
	load	[r14+-632],r1
	store	r1,[r14+-640]
!   Prepare Argument: offset=8  value=_temp_1365  sizeInBytes=4
	load	[r14+-652],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1368  sizeInBytes=4
	load	[r14+-640],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=64  sizeInBytes=4
	mov	64,r1
	store	r1,[r15+8]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! ASSIGNMENT STATEMENT...
	mov	832,r13		! source line 832
	mov	"\0\0AS",r10
!   sum = sum + rv		(int)
	load	[r14+-2976],r1
	load	[r14+-1944],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2976]
!   Increment the FOR-LOOP index variable and jump back
_Label_1361:
!   ix = ix + 1
	load	[r14+-2964],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2964]
	jmp	_Label_1359
! END FOR
_Label_1362:
! CALL STATEMENT...
!   _temp_1372 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-624]
!   Move address of _temp_1372 [1 ] into _temp_1373
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-624],r1
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
	store	r2,[r14+-620]
!   Data Move: _temp_1371 = *_temp_1373  (sizeInBytes=4)
	load	[r14+-620],r1
	load	[r1],r1
	store	r1,[r14+-628]
!   Prepare Argument: offset=8  value=_temp_1371  sizeInBytes=4
	load	[r14+-628],r1
	store	r1,[r15+0]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sum  sizeInBytes=4
	load	[r14+-2976],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1353:
! ASSIGNMENT STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0AS",r10
!   sum = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-2976]
! CALL STATEMENT...
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! ASSIGNMENT STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0AS",r10
!   sum = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-2976]
! CALL STATEMENT...
!   _temp_1375 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-612]
!   Move address of _temp_1375 [1 ] into _temp_1376
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-612],r1
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
	store	r2,[r14+-608]
!   Data Move: _temp_1374 = *_temp_1376  (sizeInBytes=4)
	load	[r14+-608],r1
	load	[r1],r1
	store	r1,[r14+-616]
!   Prepare Argument: offset=8  value=_temp_1374  sizeInBytes=4
	load	[r14+-616],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0AS",r10
!   _temp_1378 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-600]
!   Move address of _temp_1378 [0 ] into _temp_1379
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-600],r1
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
	store	r2,[r14+-596]
!   Data Move: _temp_1377 = *_temp_1379  (sizeInBytes=4)
	load	[r14+-596],r1
	load	[r1],r1
	store	r1,[r14+-604]
!   _temp_1381 = &data
	add	r14,-2960,r1
	store	r1,[r14+-588]
!   Move address of _temp_1381 [0 ] into _temp_1382
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-584]
!   _temp_1380 = _temp_1382		(4 bytes)
	load	[r14+-584],r1
	store	r1,[r14+-592]
!   Prepare Argument: offset=8  value=_temp_1377  sizeInBytes=4
	load	[r14+-604],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1380  sizeInBytes=4
	load	[r14+-592],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=64  sizeInBytes=4
	mov	64,r1
	store	r1,[r15+8]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! WHILE STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0WH",r10
_Label_1383:
!   if rv <= 0 then goto _Label_1385		(int)
	load	[r14+-1944],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1385
!	_Label_1384	jmp	_Label_1384
_Label_1384:
	mov	847,r13		! source line 847
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0AS",r10
!   sum = sum + rv		(int)
	load	[r14+-2976],r1
	load	[r14+-1944],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2976]
! ASSIGNMENT STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0AS",r10
!   _temp_1387 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-576]
!   Move address of _temp_1387 [0 ] into _temp_1388
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-572]
!   Data Move: _temp_1386 = *_temp_1388  (sizeInBytes=4)
	load	[r14+-572],r1
	load	[r1],r1
	store	r1,[r14+-580]
!   _temp_1390 = &data
	add	r14,-2960,r1
	store	r1,[r14+-564]
!   Move address of _temp_1390 [0 ] into _temp_1391
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-564],r1
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
	store	r2,[r14+-560]
!   _temp_1389 = _temp_1391		(4 bytes)
	load	[r14+-560],r1
	store	r1,[r14+-568]
!   Prepare Argument: offset=8  value=_temp_1386  sizeInBytes=4
	load	[r14+-580],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1389  sizeInBytes=4
	load	[r14+-568],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=64  sizeInBytes=4
	mov	64,r1
	store	r1,[r15+8]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! END WHILE...
	jmp	_Label_1383
_Label_1385:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sum  sizeInBytes=4
	load	[r14+-2976],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=12800  sizeInBytes=4
	mov	12800,r1
	store	r1,[r15+4]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1393 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-552]
!   Move address of _temp_1393 [0 ] into _temp_1394
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-552],r1
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
	store	r2,[r14+-548]
!   Data Move: _temp_1392 = *_temp_1394  (sizeInBytes=4)
	load	[r14+-548],r1
	load	[r1],r1
	store	r1,[r14+-556]
!   Prepare Argument: offset=8  value=_temp_1392  sizeInBytes=4
	load	[r14+-556],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-2968],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=12800  sizeInBytes=4
	mov	12800,r1
	store	r1,[r15+4]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CA",r10
	call	_function_272_Check
	jmp	_Label_1395
_Label_1344:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1396 = _StringConst_238
	set	_StringConst_238,r1
	store	r1,[r14+-544]
!   Prepare Argument: offset=8  value=_temp_1396  sizeInBytes=4
	load	[r14+-544],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1395:
! ASSIGNMENT STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0AS",r10
!   _temp_1397 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-540]
!   Prepare Argument: offset=8  value=_temp_1397  sizeInBytes=4
	load	[r14+-540],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Pipe
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! IF STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_1398
	load	[r14+-1944],r1
	cmp	r1,r0
	be	_Label_1398
	jmp	_Label_1399
_Label_1398:
! THEN...
	mov	864,r13		! source line 864
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1400 = _StringConst_239
	set	_StringConst_239,r1
	store	r1,[r14+-536]
!   Prepare Argument: offset=8  value=_temp_1400  sizeInBytes=4
	load	[r14+-536],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1402 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-528]
!   Move address of _temp_1402 [0 ] into _temp_1403
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-528],r1
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
	store	r2,[r14+-524]
!   Data Move: _temp_1401 = *_temp_1403  (sizeInBytes=4)
	load	[r14+-524],r1
	load	[r1],r1
	store	r1,[r14+-532]
!   Prepare Argument: offset=8  value=_temp_1401  sizeInBytes=4
	load	[r14+-532],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1405 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-516]
!   Move address of _temp_1405 [1 ] into _temp_1406
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-516],r1
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
	store	r2,[r14+-512]
!   Data Move: _temp_1404 = *_temp_1406  (sizeInBytes=4)
	load	[r14+-512],r1
	load	[r1],r1
	store	r1,[r14+-520]
!   Prepare Argument: offset=8  value=_temp_1404  sizeInBytes=4
	load	[r14+-520],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0AS",r10
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-2968]
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1407
	load	[r14+-2968],r1
	cmp	r1,r0
	be	_Label_1407
	jmp	_Label_1408
_Label_1407:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1410 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-504]
!   Move address of _temp_1410 [0 ] into _temp_1411
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-504],r1
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
	store	r2,[r14+-500]
!   Data Move: _temp_1409 = *_temp_1411  (sizeInBytes=4)
	load	[r14+-500],r1
	load	[r1],r1
	store	r1,[r14+-508]
!   Prepare Argument: offset=8  value=_temp_1409  sizeInBytes=4
	load	[r14+-508],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0AS",r10
!   _temp_1413 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-492]
!   Move address of _temp_1413 [1 ] into _temp_1414
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
!   Data Move: _temp_1412 = *_temp_1414  (sizeInBytes=4)
	load	[r14+-488],r1
	load	[r1],r1
	store	r1,[r14+-496]
!   _temp_1416 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-480]
!   Move address of _temp_1416 [0 ] into _temp_1417
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-476]
!   _temp_1415 = _temp_1417		(4 bytes)
	load	[r14+-476],r1
	store	r1,[r14+-484]
!   Prepare Argument: offset=8  value=_temp_1412  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1415  sizeInBytes=4
	load	[r14+-484],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9000  sizeInBytes=4
	mov	9000,r1
	store	r1,[r15+8]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9000  sizeInBytes=4
	mov	9000,r1
	store	r1,[r15+4]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Call the function
	mov	872,r13		! source line 872
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1408:
! ASSIGNMENT STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0AS",r10
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-2972]
! IF STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0IF",r10
!   if intIsZero (pid1) then goto _Label_1418
	load	[r14+-2972],r1
	cmp	r1,r0
	be	_Label_1418
	jmp	_Label_1419
_Label_1418:
! THEN...
	mov	876,r13		! source line 876
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1421 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-468]
!   Move address of _temp_1421 [0 ] into _temp_1422
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-468],r1
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
	store	r2,[r14+-464]
!   Data Move: _temp_1420 = *_temp_1422  (sizeInBytes=4)
	load	[r14+-464],r1
	load	[r1],r1
	store	r1,[r14+-472]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
	load	[r14+-472],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	877,r13		! source line 877
	mov	"\0\0AS",r10
!   _temp_1424 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-456]
!   Move address of _temp_1424 [1 ] into _temp_1425
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
!   Data Move: _temp_1423 = *_temp_1425  (sizeInBytes=4)
	load	[r14+-452],r1
	load	[r1],r1
	store	r1,[r14+-460]
!   _temp_1427 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-444]
!   Move address of _temp_1427 [0 ] into _temp_1428
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
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
!   _temp_1426 = _temp_1428		(4 bytes)
	load	[r14+-440],r1
	store	r1,[r14+-448]
!   Prepare Argument: offset=8  value=_temp_1423  sizeInBytes=4
	load	[r14+-460],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1426  sizeInBytes=4
	load	[r14+-448],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9000  sizeInBytes=4
	mov	9000,r1
	store	r1,[r15+8]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9000  sizeInBytes=4
	mov	9000,r1
	store	r1,[r15+4]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1419:
! CALL STATEMENT...
!   _temp_1430 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-432]
!   Move address of _temp_1430 [1 ] into _temp_1431
!     make sure index expr is >= 0
	mov	1,r2
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
!   Data Move: _temp_1429 = *_temp_1431  (sizeInBytes=4)
	load	[r14+-428],r1
	load	[r1],r1
	store	r1,[r14+-436]
!   Prepare Argument: offset=8  value=_temp_1429  sizeInBytes=4
	load	[r14+-436],r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0AS",r10
!   sum = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-2976]
! ASSIGNMENT STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0AS",r10
!   _temp_1433 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-420]
!   Move address of _temp_1433 [0 ] into _temp_1434
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
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
	store	r2,[r14+-416]
!   Data Move: _temp_1432 = *_temp_1434  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-424]
!   _temp_1436 = &data
	add	r14,-2960,r1
	store	r1,[r14+-408]
!   Move address of _temp_1436 [0 ] into _temp_1437
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-408],r1
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
	store	r2,[r14+-404]
!   _temp_1435 = _temp_1437		(4 bytes)
	load	[r14+-404],r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=8  value=_temp_1432  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1435  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=64  sizeInBytes=4
	mov	64,r1
	store	r1,[r15+8]
!   Call the function
	mov	884,r13		! source line 884
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! WHILE STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0WH",r10
_Label_1438:
!   if rv <= 0 then goto _Label_1440		(int)
	load	[r14+-1944],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1440
!	_Label_1439	jmp	_Label_1439
_Label_1439:
	mov	885,r13		! source line 885
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   sum = sum + rv		(int)
	load	[r14+-2976],r1
	load	[r14+-1944],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2976]
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0AS",r10
!   _temp_1442 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-396]
!   Move address of _temp_1442 [0 ] into _temp_1443
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-396],r1
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
	store	r2,[r14+-392]
!   Data Move: _temp_1441 = *_temp_1443  (sizeInBytes=4)
	load	[r14+-392],r1
	load	[r1],r1
	store	r1,[r14+-400]
!   _temp_1445 = &data
	add	r14,-2960,r1
	store	r1,[r14+-384]
!   Move address of _temp_1445 [0 ] into _temp_1446
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-384],r1
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
	store	r2,[r14+-380]
!   _temp_1444 = _temp_1446		(4 bytes)
	load	[r14+-380],r1
	store	r1,[r14+-388]
!   Prepare Argument: offset=8  value=_temp_1441  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1444  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=64  sizeInBytes=4
	mov	64,r1
	store	r1,[r15+8]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! END WHILE...
	jmp	_Label_1438
_Label_1440:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sum  sizeInBytes=4
	load	[r14+-2976],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=18000  sizeInBytes=4
	mov	18000,r1
	store	r1,[r15+4]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-2968],r1
	store	r1,[r15+0]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=sum  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-2976]
! ASSIGNMENT STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid1  sizeInBytes=4
	load	[r14+-2972],r1
	store	r1,[r15+0]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_1447  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-376]
!   sum = sum + _temp_1447		(int)
	load	[r14+-2976],r1
	load	[r14+-376],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2976]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sum  sizeInBytes=4
	load	[r14+-2976],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=18000  sizeInBytes=4
	mov	18000,r1
	store	r1,[r15+4]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1449 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-368]
!   Move address of _temp_1449 [0 ] into _temp_1450
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-368],r1
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
	store	r2,[r14+-364]
!   Data Move: _temp_1448 = *_temp_1450  (sizeInBytes=4)
	load	[r14+-364],r1
	load	[r1],r1
	store	r1,[r14+-372]
!   Prepare Argument: offset=8  value=_temp_1448  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
	jmp	_Label_1451
_Label_1399:
! ELSE...
	mov	896,r13		! source line 896
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1452 = _StringConst_240
	set	_StringConst_240,r1
	store	r1,[r14+-360]
!   Prepare Argument: offset=8  value=_temp_1452  sizeInBytes=4
	load	[r14+-360],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1451:
! ASSIGNMENT STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0AS",r10
!   _temp_1453 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-356]
!   Prepare Argument: offset=8  value=_temp_1453  sizeInBytes=4
	load	[r14+-356],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Pipe
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! IF STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0IF",r10
!   if intIsZero (rv) then goto _Label_1454
	load	[r14+-1944],r1
	cmp	r1,r0
	be	_Label_1454
	jmp	_Label_1455
_Label_1454:
! THEN...
	mov	901,r13		! source line 901
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1456 = _StringConst_241
	set	_StringConst_241,r1
	store	r1,[r14+-352]
!   Prepare Argument: offset=8  value=_temp_1456  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+0]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1458 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-344]
!   Move address of _temp_1458 [0 ] into _temp_1459
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-344],r1
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
	store	r2,[r14+-340]
!   Data Move: _temp_1457 = *_temp_1459  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-348]
!   Prepare Argument: offset=8  value=_temp_1457  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1461 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-332]
!   Move address of _temp_1461 [1 ] into _temp_1462
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-332],r1
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
	store	r2,[r14+-328]
!   Data Move: _temp_1460 = *_temp_1462  (sizeInBytes=4)
	load	[r14+-328],r1
	load	[r1],r1
	store	r1,[r14+-336]
!   Prepare Argument: offset=8  value=_temp_1460  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-2968]
! IF STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1463
	load	[r14+-2968],r1
	cmp	r1,r0
	be	_Label_1463
	jmp	_Label_1464
_Label_1463:
! THEN...
	mov	906,r13		! source line 906
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1466 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-320]
!   Move address of _temp_1466 [1 ] into _temp_1467
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-320],r1
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
	store	r2,[r14+-316]
!   Data Move: _temp_1465 = *_temp_1467  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-324]
!   Prepare Argument: offset=8  value=_temp_1465  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0AS",r10
!   sum = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-2976]
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   _temp_1469 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-308]
!   Move address of _temp_1469 [0 ] into _temp_1470
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-308],r1
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
	store	r2,[r14+-304]
!   Data Move: _temp_1468 = *_temp_1470  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-312]
!   _temp_1472 = &data
	add	r14,-2960,r1
	store	r1,[r14+-296]
!   Move address of _temp_1472 [0 ] into _temp_1473
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-292]
!   _temp_1471 = _temp_1473		(4 bytes)
	load	[r14+-292],r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_1468  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1471  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=500  sizeInBytes=4
	mov	500,r1
	store	r1,[r15+8]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! WHILE STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0WH",r10
_Label_1474:
!   if rv <= 0 then goto _Label_1476		(int)
	load	[r14+-1944],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1476
!	_Label_1475	jmp	_Label_1475
_Label_1475:
	mov	909,r13		! source line 909
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0AS",r10
!   sum = sum + rv		(int)
	load	[r14+-2976],r1
	load	[r14+-1944],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2976]
! ASSIGNMENT STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0AS",r10
!   _temp_1478 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-284]
!   Move address of _temp_1478 [0 ] into _temp_1479
!     make sure index expr is >= 0
	mov	0,r2
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
!   Data Move: _temp_1477 = *_temp_1479  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   _temp_1481 = &data
	add	r14,-2960,r1
	store	r1,[r14+-272]
!   Move address of _temp_1481 [0 ] into _temp_1482
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-272],r1
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
!   _temp_1480 = _temp_1482		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_1477  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1480  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=500  sizeInBytes=4
	mov	500,r1
	store	r1,[r15+8]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! END WHILE...
	jmp	_Label_1474
_Label_1476:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sum  sizeInBytes=4
	load	[r14+-2976],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1464:
! ASSIGNMENT STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0AS",r10
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-2972]
! IF STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0IF",r10
!   if intIsZero (pid1) then goto _Label_1483
	load	[r14+-2972],r1
	cmp	r1,r0
	be	_Label_1483
	jmp	_Label_1484
_Label_1483:
! THEN...
	mov	917,r13		! source line 917
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1486 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-260]
!   Move address of _temp_1486 [1 ] into _temp_1487
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-260],r1
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
	store	r2,[r14+-256]
!   Data Move: _temp_1485 = *_temp_1487  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0AS",r10
!   sum = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-2976]
! ASSIGNMENT STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0AS",r10
!   _temp_1489 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-248]
!   Move address of _temp_1489 [0 ] into _temp_1490
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-248],r1
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
	store	r2,[r14+-244]
!   Data Move: _temp_1488 = *_temp_1490  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   _temp_1492 = &data
	add	r14,-2960,r1
	store	r1,[r14+-236]
!   Move address of _temp_1492 [0 ] into _temp_1493
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-232]
!   _temp_1491 = _temp_1493		(4 bytes)
	load	[r14+-232],r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_1488  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1491  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=64  sizeInBytes=4
	mov	64,r1
	store	r1,[r15+8]
!   Call the function
	mov	919,r13		! source line 919
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! WHILE STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0WH",r10
_Label_1494:
!   if rv <= 0 then goto _Label_1496		(int)
	load	[r14+-1944],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1496
!	_Label_1495	jmp	_Label_1495
_Label_1495:
	mov	920,r13		! source line 920
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0AS",r10
!   sum = sum + rv		(int)
	load	[r14+-2976],r1
	load	[r14+-1944],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2976]
! ASSIGNMENT STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0AS",r10
!   _temp_1498 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-224]
!   Move address of _temp_1498 [0 ] into _temp_1499
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
!   Data Move: _temp_1497 = *_temp_1499  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   _temp_1501 = &data
	add	r14,-2960,r1
	store	r1,[r14+-212]
!   Move address of _temp_1501 [0 ] into _temp_1502
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-212],r1
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
	store	r2,[r14+-208]
!   _temp_1500 = _temp_1502		(4 bytes)
	load	[r14+-208],r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_1497  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1500  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=64  sizeInBytes=4
	mov	64,r1
	store	r1,[r15+8]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! END WHILE...
	jmp	_Label_1494
_Label_1496:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sum  sizeInBytes=4
	load	[r14+-2976],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1484:
! CALL STATEMENT...
!   _temp_1504 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-200]
!   Move address of _temp_1504 [0 ] into _temp_1505
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-200],r1
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
	store	r2,[r14+-196]
!   Data Move: _temp_1503 = *_temp_1505  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=8  value=_temp_1503  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0AS",r10
!   _temp_1507 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-188]
!   Move address of _temp_1507 [1 ] into _temp_1508
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-188],r1
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
	store	r2,[r14+-184]
!   Data Move: _temp_1506 = *_temp_1508  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   _temp_1510 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-176]
!   Move address of _temp_1510 [0 ] into _temp_1511
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   _temp_1509 = _temp_1511		(4 bytes)
	load	[r14+-172],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1509  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9000  sizeInBytes=4
	mov	9000,r1
	store	r1,[r15+8]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9000  sizeInBytes=4
	mov	9000,r1
	store	r1,[r15+4]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0AS",r10
!   _temp_1513 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-164]
!   Move address of _temp_1513 [1 ] into _temp_1514
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
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
	store	r2,[r14+-160]
!   Data Move: _temp_1512 = *_temp_1514  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   _temp_1516 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-152]
!   Move address of _temp_1516 [0 ] into _temp_1517
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
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
	store	r2,[r14+-148]
!   _temp_1515 = _temp_1517		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1515  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9000  sizeInBytes=4
	mov	9000,r1
	store	r1,[r15+8]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9000  sizeInBytes=4
	mov	9000,r1
	store	r1,[r15+4]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1519 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-140]
!   Move address of _temp_1519 [1 ] into _temp_1520
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
!   Data Move: _temp_1518 = *_temp_1520  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-2968],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=sum  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-2976]
! ASSIGNMENT STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid1  sizeInBytes=4
	load	[r14+-2972],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_1521  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
!   sum = sum + _temp_1521		(int)
	load	[r14+-2976],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2976]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sum  sizeInBytes=4
	load	[r14+-2976],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=18000  sizeInBytes=4
	mov	18000,r1
	store	r1,[r15+4]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_function_272_Check
	jmp	_Label_1522
_Label_1455:
! ELSE...
	mov	938,r13		! source line 938
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1523 = _StringConst_242
	set	_StringConst_242,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1523  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1522:
! CALL STATEMENT...
!   _temp_1524 = _StringConst_243
	set	_StringConst_243,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1524  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0AS",r10
!   _temp_1525 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1525  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Pipe
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	944,r13		! source line 944
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1527 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-112]
!   Move address of _temp_1527 [0 ] into _temp_1528
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
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
	store	r2,[r14+-108]
!   Data Move: _temp_1526 = *_temp_1528  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1526  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0AS",r10
!   _temp_1530 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-100]
!   Move address of _temp_1530 [1 ] into _temp_1531
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
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
	store	r2,[r14+-96]
!   Data Move: _temp_1529 = *_temp_1531  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_1533 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-88]
!   Move address of _temp_1533 [0 ] into _temp_1534
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   _temp_1532 = _temp_1534		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1529  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1532  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+8]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0AS",r10
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=12  sizeInBytes=4
	mov	12,r1
	store	r1,[r15+4]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1536 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-76]
!   Move address of _temp_1536 [1 ] into _temp_1537
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
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
	store	r2,[r14+-72]
!   Data Move: _temp_1535 = *_temp_1537  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1535  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0AS",r10
!   _temp_1538 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1538  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Pipe
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1540 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-60]
!   Move address of _temp_1540 [1 ] into _temp_1541
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
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
	store	r2,[r14+-56]
!   Data Move: _temp_1539 = *_temp_1541  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1539  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! ASSIGNMENT STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0AS",r10
!   _temp_1543 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-48]
!   Move address of _temp_1543 [0 ] into _temp_1544
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
!   Data Move: _temp_1542 = *_temp_1544  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_1546 = &data
	add	r14,-2960,r1
	store	r1,[r14+-36]
!   Move address of _temp_1546 [0 ] into _temp_1547
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1545 = _temp_1547		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1542  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1545  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+8]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=rv  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-1944]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=rv  sizeInBytes=4
	load	[r14+-1944],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1549 = &fd
	add	r14,-1956,r1
	store	r1,[r14+-24]
!   Move address of _temp_1549 [0 ] into _temp_1550
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: _temp_1548 = *_temp_1550  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1548  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_1551 = _StringConst_244
	set	_StringConst_244,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1551  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	959,r13		! source line 959
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! RETURN STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0RE",r10
	add	r15,2988,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_268_TestPipe:
	.word	_sourceFileName
	.word	_Label_1552
	.word	0		! total size of parameters
	.word	2984		! frame size = 2984
	.word	_Label_1553
	.word	-16
	.word	4
	.word	_Label_1554
	.word	-20
	.word	4
	.word	_Label_1555
	.word	-24
	.word	4
	.word	_Label_1556
	.word	-28
	.word	4
	.word	_Label_1557
	.word	-32
	.word	4
	.word	_Label_1558
	.word	-36
	.word	4
	.word	_Label_1559
	.word	-40
	.word	4
	.word	_Label_1560
	.word	-44
	.word	4
	.word	_Label_1561
	.word	-48
	.word	4
	.word	_Label_1562
	.word	-52
	.word	4
	.word	_Label_1563
	.word	-56
	.word	4
	.word	_Label_1564
	.word	-60
	.word	4
	.word	_Label_1565
	.word	-64
	.word	4
	.word	_Label_1566
	.word	-68
	.word	4
	.word	_Label_1567
	.word	-72
	.word	4
	.word	_Label_1568
	.word	-76
	.word	4
	.word	_Label_1569
	.word	-80
	.word	4
	.word	_Label_1570
	.word	-84
	.word	4
	.word	_Label_1571
	.word	-88
	.word	4
	.word	_Label_1572
	.word	-92
	.word	4
	.word	_Label_1573
	.word	-96
	.word	4
	.word	_Label_1574
	.word	-100
	.word	4
	.word	_Label_1575
	.word	-104
	.word	4
	.word	_Label_1576
	.word	-108
	.word	4
	.word	_Label_1577
	.word	-112
	.word	4
	.word	_Label_1578
	.word	-116
	.word	4
	.word	_Label_1579
	.word	-120
	.word	4
	.word	_Label_1580
	.word	-124
	.word	4
	.word	_Label_1581
	.word	-128
	.word	4
	.word	_Label_1582
	.word	-132
	.word	4
	.word	_Label_1583
	.word	-136
	.word	4
	.word	_Label_1584
	.word	-140
	.word	4
	.word	_Label_1585
	.word	-144
	.word	4
	.word	_Label_1586
	.word	-148
	.word	4
	.word	_Label_1587
	.word	-152
	.word	4
	.word	_Label_1588
	.word	-156
	.word	4
	.word	_Label_1589
	.word	-160
	.word	4
	.word	_Label_1590
	.word	-164
	.word	4
	.word	_Label_1591
	.word	-168
	.word	4
	.word	_Label_1592
	.word	-172
	.word	4
	.word	_Label_1593
	.word	-176
	.word	4
	.word	_Label_1594
	.word	-180
	.word	4
	.word	_Label_1595
	.word	-184
	.word	4
	.word	_Label_1596
	.word	-188
	.word	4
	.word	_Label_1597
	.word	-192
	.word	4
	.word	_Label_1598
	.word	-196
	.word	4
	.word	_Label_1599
	.word	-200
	.word	4
	.word	_Label_1600
	.word	-204
	.word	4
	.word	_Label_1601
	.word	-208
	.word	4
	.word	_Label_1602
	.word	-212
	.word	4
	.word	_Label_1603
	.word	-216
	.word	4
	.word	_Label_1604
	.word	-220
	.word	4
	.word	_Label_1605
	.word	-224
	.word	4
	.word	_Label_1606
	.word	-228
	.word	4
	.word	_Label_1607
	.word	-232
	.word	4
	.word	_Label_1608
	.word	-236
	.word	4
	.word	_Label_1609
	.word	-240
	.word	4
	.word	_Label_1610
	.word	-244
	.word	4
	.word	_Label_1611
	.word	-248
	.word	4
	.word	_Label_1612
	.word	-252
	.word	4
	.word	_Label_1613
	.word	-256
	.word	4
	.word	_Label_1614
	.word	-260
	.word	4
	.word	_Label_1615
	.word	-264
	.word	4
	.word	_Label_1616
	.word	-268
	.word	4
	.word	_Label_1617
	.word	-272
	.word	4
	.word	_Label_1618
	.word	-276
	.word	4
	.word	_Label_1619
	.word	-280
	.word	4
	.word	_Label_1620
	.word	-284
	.word	4
	.word	_Label_1621
	.word	-288
	.word	4
	.word	_Label_1622
	.word	-292
	.word	4
	.word	_Label_1623
	.word	-296
	.word	4
	.word	_Label_1624
	.word	-300
	.word	4
	.word	_Label_1625
	.word	-304
	.word	4
	.word	_Label_1626
	.word	-308
	.word	4
	.word	_Label_1627
	.word	-312
	.word	4
	.word	_Label_1628
	.word	-316
	.word	4
	.word	_Label_1629
	.word	-320
	.word	4
	.word	_Label_1630
	.word	-324
	.word	4
	.word	_Label_1631
	.word	-328
	.word	4
	.word	_Label_1632
	.word	-332
	.word	4
	.word	_Label_1633
	.word	-336
	.word	4
	.word	_Label_1634
	.word	-340
	.word	4
	.word	_Label_1635
	.word	-344
	.word	4
	.word	_Label_1636
	.word	-348
	.word	4
	.word	_Label_1637
	.word	-352
	.word	4
	.word	_Label_1638
	.word	-356
	.word	4
	.word	_Label_1639
	.word	-360
	.word	4
	.word	_Label_1640
	.word	-364
	.word	4
	.word	_Label_1641
	.word	-368
	.word	4
	.word	_Label_1642
	.word	-372
	.word	4
	.word	_Label_1643
	.word	-376
	.word	4
	.word	_Label_1644
	.word	-380
	.word	4
	.word	_Label_1645
	.word	-384
	.word	4
	.word	_Label_1646
	.word	-388
	.word	4
	.word	_Label_1647
	.word	-392
	.word	4
	.word	_Label_1648
	.word	-396
	.word	4
	.word	_Label_1649
	.word	-400
	.word	4
	.word	_Label_1650
	.word	-404
	.word	4
	.word	_Label_1651
	.word	-408
	.word	4
	.word	_Label_1652
	.word	-412
	.word	4
	.word	_Label_1653
	.word	-416
	.word	4
	.word	_Label_1654
	.word	-420
	.word	4
	.word	_Label_1655
	.word	-424
	.word	4
	.word	_Label_1656
	.word	-428
	.word	4
	.word	_Label_1657
	.word	-432
	.word	4
	.word	_Label_1658
	.word	-436
	.word	4
	.word	_Label_1659
	.word	-440
	.word	4
	.word	_Label_1660
	.word	-444
	.word	4
	.word	_Label_1661
	.word	-448
	.word	4
	.word	_Label_1662
	.word	-452
	.word	4
	.word	_Label_1663
	.word	-456
	.word	4
	.word	_Label_1664
	.word	-460
	.word	4
	.word	_Label_1665
	.word	-464
	.word	4
	.word	_Label_1666
	.word	-468
	.word	4
	.word	_Label_1667
	.word	-472
	.word	4
	.word	_Label_1668
	.word	-476
	.word	4
	.word	_Label_1669
	.word	-480
	.word	4
	.word	_Label_1670
	.word	-484
	.word	4
	.word	_Label_1671
	.word	-488
	.word	4
	.word	_Label_1672
	.word	-492
	.word	4
	.word	_Label_1673
	.word	-496
	.word	4
	.word	_Label_1674
	.word	-500
	.word	4
	.word	_Label_1675
	.word	-504
	.word	4
	.word	_Label_1676
	.word	-508
	.word	4
	.word	_Label_1677
	.word	-512
	.word	4
	.word	_Label_1678
	.word	-516
	.word	4
	.word	_Label_1679
	.word	-520
	.word	4
	.word	_Label_1680
	.word	-524
	.word	4
	.word	_Label_1681
	.word	-528
	.word	4
	.word	_Label_1682
	.word	-532
	.word	4
	.word	_Label_1683
	.word	-536
	.word	4
	.word	_Label_1684
	.word	-540
	.word	4
	.word	_Label_1685
	.word	-544
	.word	4
	.word	_Label_1686
	.word	-548
	.word	4
	.word	_Label_1687
	.word	-552
	.word	4
	.word	_Label_1688
	.word	-556
	.word	4
	.word	_Label_1689
	.word	-560
	.word	4
	.word	_Label_1690
	.word	-564
	.word	4
	.word	_Label_1691
	.word	-568
	.word	4
	.word	_Label_1692
	.word	-572
	.word	4
	.word	_Label_1693
	.word	-576
	.word	4
	.word	_Label_1694
	.word	-580
	.word	4
	.word	_Label_1695
	.word	-584
	.word	4
	.word	_Label_1696
	.word	-588
	.word	4
	.word	_Label_1697
	.word	-592
	.word	4
	.word	_Label_1698
	.word	-596
	.word	4
	.word	_Label_1699
	.word	-600
	.word	4
	.word	_Label_1700
	.word	-604
	.word	4
	.word	_Label_1701
	.word	-608
	.word	4
	.word	_Label_1702
	.word	-612
	.word	4
	.word	_Label_1703
	.word	-616
	.word	4
	.word	_Label_1704
	.word	-620
	.word	4
	.word	_Label_1705
	.word	-624
	.word	4
	.word	_Label_1706
	.word	-628
	.word	4
	.word	_Label_1707
	.word	-632
	.word	4
	.word	_Label_1708
	.word	-636
	.word	4
	.word	_Label_1709
	.word	-640
	.word	4
	.word	_Label_1710
	.word	-644
	.word	4
	.word	_Label_1711
	.word	-648
	.word	4
	.word	_Label_1712
	.word	-652
	.word	4
	.word	_Label_1713
	.word	-656
	.word	4
	.word	_Label_1714
	.word	-660
	.word	4
	.word	_Label_1715
	.word	-664
	.word	4
	.word	_Label_1716
	.word	-668
	.word	4
	.word	_Label_1717
	.word	-672
	.word	4
	.word	_Label_1718
	.word	-676
	.word	4
	.word	_Label_1719
	.word	-680
	.word	4
	.word	_Label_1720
	.word	-684
	.word	4
	.word	_Label_1721
	.word	-688
	.word	4
	.word	_Label_1722
	.word	-692
	.word	4
	.word	_Label_1723
	.word	-696
	.word	4
	.word	_Label_1724
	.word	-700
	.word	4
	.word	_Label_1725
	.word	-704
	.word	4
	.word	_Label_1726
	.word	-708
	.word	4
	.word	_Label_1727
	.word	-712
	.word	4
	.word	_Label_1728
	.word	-716
	.word	4
	.word	_Label_1729
	.word	-720
	.word	4
	.word	_Label_1730
	.word	-724
	.word	4
	.word	_Label_1731
	.word	-728
	.word	4
	.word	_Label_1732
	.word	-732
	.word	4
	.word	_Label_1733
	.word	-736
	.word	4
	.word	_Label_1734
	.word	-740
	.word	4
	.word	_Label_1735
	.word	-744
	.word	4
	.word	_Label_1736
	.word	-9
	.word	1
	.word	_Label_1737
	.word	-748
	.word	4
	.word	_Label_1738
	.word	-752
	.word	4
	.word	_Label_1739
	.word	-756
	.word	4
	.word	_Label_1740
	.word	-10
	.word	1
	.word	_Label_1741
	.word	-760
	.word	4
	.word	_Label_1742
	.word	-764
	.word	4
	.word	_Label_1743
	.word	-11
	.word	1
	.word	_Label_1744
	.word	-768
	.word	4
	.word	_Label_1745
	.word	-772
	.word	4
	.word	_Label_1746
	.word	-776
	.word	4
	.word	_Label_1747
	.word	-780
	.word	4
	.word	_Label_1748
	.word	-784
	.word	4
	.word	_Label_1749
	.word	-788
	.word	4
	.word	_Label_1750
	.word	-792
	.word	4
	.word	_Label_1751
	.word	-796
	.word	4
	.word	_Label_1752
	.word	-800
	.word	4
	.word	_Label_1753
	.word	-804
	.word	4
	.word	_Label_1754
	.word	-808
	.word	4
	.word	_Label_1755
	.word	-812
	.word	4
	.word	_Label_1756
	.word	-816
	.word	4
	.word	_Label_1757
	.word	-820
	.word	4
	.word	_Label_1758
	.word	-824
	.word	4
	.word	_Label_1759
	.word	-828
	.word	4
	.word	_Label_1760
	.word	-832
	.word	4
	.word	_Label_1761
	.word	-836
	.word	4
	.word	_Label_1762
	.word	-840
	.word	4
	.word	_Label_1763
	.word	-844
	.word	4
	.word	_Label_1764
	.word	-848
	.word	4
	.word	_Label_1765
	.word	-852
	.word	4
	.word	_Label_1766
	.word	-856
	.word	4
	.word	_Label_1767
	.word	-860
	.word	4
	.word	_Label_1768
	.word	-864
	.word	4
	.word	_Label_1769
	.word	-868
	.word	4
	.word	_Label_1770
	.word	-12
	.word	1
	.word	_Label_1771
	.word	-872
	.word	4
	.word	_Label_1772
	.word	-876
	.word	4
	.word	_Label_1773
	.word	-880
	.word	4
	.word	_Label_1774
	.word	-884
	.word	4
	.word	_Label_1775
	.word	-888
	.word	4
	.word	_Label_1776
	.word	-892
	.word	4
	.word	_Label_1777
	.word	-896
	.word	4
	.word	_Label_1778
	.word	-900
	.word	4
	.word	_Label_1779
	.word	-904
	.word	4
	.word	_Label_1780
	.word	-908
	.word	4
	.word	_Label_1781
	.word	-912
	.word	4
	.word	_Label_1782
	.word	-1916
	.word	1004
	.word	_Label_1783
	.word	-1920
	.word	4
	.word	_Label_1784
	.word	-1924
	.word	4
	.word	_Label_1785
	.word	-1928
	.word	4
	.word	_Label_1786
	.word	-1940
	.word	12
	.word	_Label_1787
	.word	-1944
	.word	4
	.word	_Label_1788
	.word	-1956
	.word	12
	.word	_Label_1789
	.word	-2960
	.word	1004
	.word	_Label_1790
	.word	-2964
	.word	4
	.word	_Label_1791
	.word	-2968
	.word	4
	.word	_Label_1792
	.word	-2972
	.word	4
	.word	_Label_1793
	.word	-2976
	.word	4
	.word	_Label_1794
	.word	-2980
	.word	4
	.word	0
_Label_1552:
	.ascii	"TestPipe\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1736:
	.byte	'C'
	.ascii	"_temp_1332\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1740:
	.byte	'C'
	.ascii	"_temp_1328\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1743:
	.byte	'C'
	.ascii	"_temp_1325\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1770:
	.byte	'C'
	.ascii	"_temp_1290\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1787:
	.byte	'I'
	.ascii	"rv\0"
	.align
_Label_1788:
	.byte	'A'
	.ascii	"fd\0"
	.align
_Label_1789:
	.byte	'A'
	.ascii	"data\0"
	.align
_Label_1790:
	.byte	'I'
	.ascii	"ix\0"
	.align
_Label_1791:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_1792:
	.byte	'I'
	.ascii	"pid1\0"
	.align
_Label_1793:
	.byte	'I'
	.ascii	"sum\0"
	.align
_Label_1794:
	.byte	'I'
	.ascii	"fd1\0"
	.align
! 
! ===============  FUNCTION Menu  ===============
! 
_function_267_Menu:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_267_Menu,r1
	push	r1
	mov	31,r1
_Label_1885:
	push	r0
	sub	r1,1,r1
	bne	_Label_1885
	mov	964,r13		! source line 964
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1795 = _StringConst_245
	set	_StringConst_245,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1795  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	971,r13		! source line 971
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   _temp_1796 = _StringConst_246
	set	_StringConst_246,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1796  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	973,r13		! source line 973
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
!   _temp_1797 = _StringConst_247
	set	_StringConst_247,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1797  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	974,r13		! source line 974
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CA",r10
	call	_function_272_Check
! CALL STATEMENT...
!   _temp_1798 = _StringConst_248
	set	_StringConst_248,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1798  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	976,r13		! source line 976
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! WHILE STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0WH",r10
_Label_1799:
!	_Label_1800	jmp	_Label_1800
_Label_1800:
	mov	977,r13		! source line 977
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_1802 = _StringConst_249
	set	_StringConst_249,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1802  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	978,r13		! source line 978
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1803 = _StringConst_250
	set	_StringConst_250,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1803  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	979,r13		! source line 979
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1804 = _StringConst_251
	set	_StringConst_251,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1804  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	980,r13		! source line 980
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1805 = _StringConst_252
	set	_StringConst_252,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1805  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	981,r13		! source line 981
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1806 = _StringConst_253
	set	_StringConst_253,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1806  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	982,r13		! source line 982
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1807 = _StringConst_254
	set	_StringConst_254,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1807  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1808 = _StringConst_255
	set	_StringConst_255,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1808  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	984,r13		! source line 984
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1809 = _StringConst_256
	set	_StringConst_256,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1809  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	985,r13		! source line 985
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1810 = _StringConst_257
	set	_StringConst_257,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1810  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	986,r13		! source line 986
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1811 = _StringConst_258
	set	_StringConst_258,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1811  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	987,r13		! source line 987
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1812 = _StringConst_259
	set	_StringConst_259,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1812  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	988,r13		! source line 988
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1813 = _StringConst_260
	set	_StringConst_260,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1813  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	989,r13		! source line 989
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   _temp_1814 = _StringConst_261
	set	_StringConst_261,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1814  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	990,r13		! source line 990
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! ASSIGNMENT STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0AS",r10
!   Call the function
	mov	991,r13		! source line 991
	mov	"\0\0CA",r10
	call	_P_UserLib_GetChar
!   Retrieve Result: targetName=c  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	992,r13		! source line 992
	mov	"\0\0CA",r10
	call	_P_UserLib_PutChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	993,r13		! source line 993
	mov	"\0\0CA",r10
	call	_P_UserLib_PutChar
! SWITCH STATEMENT (using an indirect jump table)...
	mov	994,r13		! source line 994
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   _temp_1828 = charToInt (c)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-40]
	load	[r14+-40],r1
!   If _temp_1828 is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1886
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_1815
_Label_1886:
!   If _temp_1828 is < 49 (==smallestCaseValue) goto default code
	cmp	r1,49
	bl	_Label_1815
!   If _temp_1828 is > 115 (==greatestCaseValue) goto default code
	cmp	r1,115
	bg	_Label_1815
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,49,r1
	sll	r1,2,r1
	set	_Label_1829,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_1829:
	jmp	_Label_1817	! 49:	
	jmp	_Label_1818	! 50:	
	jmp	_Label_1819	! 51:	
	jmp	_Label_1820	! 52:	
	jmp	_Label_1821	! 53:	
	jmp	_Label_1822	! 54:	
	jmp	_Label_1823	! 55:	
	jmp	_Label_1815	! 56:	missing - goto default code
	jmp	_Label_1815	! 57:	missing - goto default code
	jmp	_Label_1815	! 58:	missing - goto default code
	jmp	_Label_1815	! 59:	missing - goto default code
	jmp	_Label_1815	! 60:	missing - goto default code
	jmp	_Label_1815	! 61:	missing - goto default code
	jmp	_Label_1815	! 62:	missing - goto default code
	jmp	_Label_1815	! 63:	missing - goto default code
	jmp	_Label_1815	! 64:	missing - goto default code
	jmp	_Label_1815	! 65:	missing - goto default code
	jmp	_Label_1815	! 66:	missing - goto default code
	jmp	_Label_1815	! 67:	missing - goto default code
	jmp	_Label_1815	! 68:	missing - goto default code
	jmp	_Label_1815	! 69:	missing - goto default code
	jmp	_Label_1815	! 70:	missing - goto default code
	jmp	_Label_1815	! 71:	missing - goto default code
	jmp	_Label_1815	! 72:	missing - goto default code
	jmp	_Label_1815	! 73:	missing - goto default code
	jmp	_Label_1815	! 74:	missing - goto default code
	jmp	_Label_1815	! 75:	missing - goto default code
	jmp	_Label_1815	! 76:	missing - goto default code
	jmp	_Label_1815	! 77:	missing - goto default code
	jmp	_Label_1815	! 78:	missing - goto default code
	jmp	_Label_1815	! 79:	missing - goto default code
	jmp	_Label_1815	! 80:	missing - goto default code
	jmp	_Label_1815	! 81:	missing - goto default code
	jmp	_Label_1815	! 82:	missing - goto default code
	jmp	_Label_1815	! 83:	missing - goto default code
	jmp	_Label_1815	! 84:	missing - goto default code
	jmp	_Label_1815	! 85:	missing - goto default code
	jmp	_Label_1815	! 86:	missing - goto default code
	jmp	_Label_1815	! 87:	missing - goto default code
	jmp	_Label_1815	! 88:	missing - goto default code
	jmp	_Label_1815	! 89:	missing - goto default code
	jmp	_Label_1815	! 90:	missing - goto default code
	jmp	_Label_1815	! 91:	missing - goto default code
	jmp	_Label_1815	! 92:	missing - goto default code
	jmp	_Label_1815	! 93:	missing - goto default code
	jmp	_Label_1815	! 94:	missing - goto default code
	jmp	_Label_1815	! 95:	missing - goto default code
	jmp	_Label_1815	! 96:	missing - goto default code
	jmp	_Label_1815	! 97:	missing - goto default code
	jmp	_Label_1815	! 98:	missing - goto default code
	jmp	_Label_1815	! 99:	missing - goto default code
	jmp	_Label_1824	! 100:	
	jmp	_Label_1815	! 101:	missing - goto default code
	jmp	_Label_1815	! 102:	missing - goto default code
	jmp	_Label_1815	! 103:	missing - goto default code
	jmp	_Label_1815	! 104:	missing - goto default code
	jmp	_Label_1815	! 105:	missing - goto default code
	jmp	_Label_1815	! 106:	missing - goto default code
	jmp	_Label_1815	! 107:	missing - goto default code
	jmp	_Label_1815	! 108:	missing - goto default code
	jmp	_Label_1815	! 109:	missing - goto default code
	jmp	_Label_1815	! 110:	missing - goto default code
	jmp	_Label_1815	! 111:	missing - goto default code
	jmp	_Label_1825	! 112:	
	jmp	_Label_1827	! 113:	
	jmp	_Label_1815	! 114:	missing - goto default code
	jmp	_Label_1826	! 115:	
! CASE 49...
_Label_1817:
! CALL STATEMENT...
!   Call the function
	mov	996,r13		! source line 996
	mov	"\0\0CA",r10
	call	_function_279_BasicSerialTest
! BREAK STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0BR",r10
	jmp	_Label_1816
! CASE 50...
_Label_1818:
! CALL STATEMENT...
!   Call the function
	mov	999,r13		! source line 999
	mov	"\0\0CA",r10
	call	_function_278_KeyTest
! BREAK STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0BR",r10
	jmp	_Label_1816
! CASE 51...
_Label_1819:
! CALL STATEMENT...
!   Call the function
	mov	1002,r13		! source line 1002
	mov	"\0\0CA",r10
	call	_function_277_EchoTest
! BREAK STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0BR",r10
	jmp	_Label_1816
! CASE 52...
_Label_1820:
! CALL STATEMENT...
!   Call the function
	mov	1005,r13		! source line 1005
	mov	"\0\0CA",r10
	call	_function_276_LineEchoTest
! BREAK STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0BR",r10
	jmp	_Label_1816
! CASE 53...
_Label_1821:
! CALL STATEMENT...
!   Call the function
	mov	1008,r13		! source line 1008
	mov	"\0\0CA",r10
	call	_function_275_EOFTest
! BREAK STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0BR",r10
	jmp	_Label_1816
! CASE 54...
_Label_1822:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CA",r10
	call	_function_274_OpenCloseTerminalTest
! ASSIGNMENT STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0AS",r10
!   _temp_1830 = _StringConst_262
	set	_StringConst_262,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1830  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1015,r13		! source line 1015
	mov	"\0\0CA",r10
	call	_function_272_Check
! ASSIGNMENT STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0AS",r10
!   _temp_1831 = _StringConst_263
	set	_StringConst_263,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1831  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1017,r13		! source line 1017
	mov	"\0\0CA",r10
	call	_function_272_Check
! BREAK STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0BR",r10
	jmp	_Label_1816
! CASE 55...
_Label_1823:
! CALL STATEMENT...
!   Call the function
	mov	1020,r13		! source line 1020
	mov	"\0\0CA",r10
	call	_function_273_TerminalErrorTest
! BREAK STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0BR",r10
	jmp	_Label_1816
! CASE 100...
_Label_1824:
! CALL STATEMENT...
!   Call the function
	mov	1024,r13		! source line 1024
	mov	"\0\0CA",r10
	call	_function_269_TestDup
! BREAK STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0BR",r10
	jmp	_Label_1816
! CASE 112...
_Label_1825:
! CALL STATEMENT...
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CA",r10
	call	_function_268_TestPipe
! BREAK STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0BR",r10
	jmp	_Label_1816
! CASE 115...
_Label_1826:
! ASSIGNMENT STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0AS",r10
!   Call the function
	mov	1031,r13		! source line 1031
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1832
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_1832
	jmp	_Label_1833
_Label_1832:
! THEN...
	mov	1033,r13		! source line 1033
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0AS",r10
!   _temp_1834 = _StringConst_264
	set	_StringConst_264,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1834  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! CALL STATEMENT...
!   _temp_1835 = _StringConst_265
	set	_StringConst_265,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1835  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1035,r13		! source line 1035
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1836
_Label_1833:
! ELSE...
	mov	1037,r13		! source line 1037
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! END IF...
_Label_1836:
! BREAK STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0BR",r10
	jmp	_Label_1816
! CASE 113...
_Label_1827:
! IF STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0IF",r10
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetPid
!   Retrieve Result: targetName=_temp_1839  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_1839 != 1 then goto _Label_1838		(int)
	load	[r14+-20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1838
!	_Label_1837	jmp	_Label_1837
_Label_1837:
! THEN...
	mov	1042,r13		! source line 1042
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	1042,r13		! source line 1042
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Shutdown
! END IF...
_Label_1838:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1044,r13		! source line 1044
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! DEFAULT CASE...
_Label_1815:
! CALL STATEMENT...
!   _temp_1840 = _StringConst_266
	set	_StringConst_266,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1840  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1046,r13		! source line 1046
	mov	"\0\0CA",r10
	call	_P_UserLib_Print
! BREAK STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0BR",r10
	jmp	_Label_1816
! END SWITCH...
_Label_1816:
! END WHILE...
	jmp	_Label_1799
_Label_1801:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_267_Menu:
	.word	_sourceFileName
	.word	_Label_1841
	.word	0		! total size of parameters
	.word	124		! frame size = 124
	.word	_Label_1842
	.word	-16
	.word	4
	.word	_Label_1843
	.word	-20
	.word	4
	.word	_Label_1844
	.word	-24
	.word	4
	.word	_Label_1845
	.word	-28
	.word	4
	.word	_Label_1846
	.word	-32
	.word	4
	.word	_Label_1847
	.word	-36
	.word	4
	.word	_Label_1848
	.word	-40
	.word	4
	.word	_Label_1849
	.word	-44
	.word	4
	.word	_Label_1850
	.word	-48
	.word	4
	.word	_Label_1851
	.word	-52
	.word	4
	.word	_Label_1852
	.word	-56
	.word	4
	.word	_Label_1853
	.word	-60
	.word	4
	.word	_Label_1854
	.word	-64
	.word	4
	.word	_Label_1855
	.word	-68
	.word	4
	.word	_Label_1856
	.word	-72
	.word	4
	.word	_Label_1857
	.word	-76
	.word	4
	.word	_Label_1858
	.word	-80
	.word	4
	.word	_Label_1859
	.word	-84
	.word	4
	.word	_Label_1860
	.word	-88
	.word	4
	.word	_Label_1861
	.word	-92
	.word	4
	.word	_Label_1862
	.word	-96
	.word	4
	.word	_Label_1863
	.word	-100
	.word	4
	.word	_Label_1864
	.word	-104
	.word	4
	.word	_Label_1865
	.word	-108
	.word	4
	.word	_Label_1866
	.word	-112
	.word	4
	.word	_Label_1867
	.word	-116
	.word	4
	.word	_Label_1868
	.word	-120
	.word	4
	.word	_Label_1869
	.word	-9
	.word	1
	.word	0
_Label_1841:
	.ascii	"Menu\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1866:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1867:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_1868:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1869:
	.byte	'C'
	.ascii	"c\0"
	.align
