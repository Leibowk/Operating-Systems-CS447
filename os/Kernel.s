! Name of package being compiled: Kernel
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
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_Handle_Sys_Stat
	.export	_P_Kernel_Handle_Sys_Pipe
	.export	_P_Kernel_Handle_Sys_Dup
	.export	_P_Kernel_Handle_Sys_Chdir
	.export	_P_Kernel_validatePointers
	.export	_P_Kernel_ResumeChildAfterFork
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
	.export	_P_Kernel_SerialHandlerFunction
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
	.export	_Method_P_Kernel_ProcessManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
	.export	_Method_P_Kernel_FrameManager_6
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
	.export	_Method_P_Kernel_FileManager_9
	.export	_Method_P_Kernel_FileManager_10
	.export	_Method_P_Kernel_FileManager_11
	.export	_Method_P_Kernel_FileManager_12
! The following class and its methods are from this package
	.export	_P_Kernel_ToyFs
	.export	_Method_P_Kernel_ToyFs_1
	.export	_Method_P_Kernel_ToyFs_2
	.export	_Method_P_Kernel_ToyFs_3
	.export	_Method_P_Kernel_ToyFs_4
	.export	_Method_P_Kernel_ToyFs_5
	.export	_Method_P_Kernel_ToyFs_6
	.export	_Method_P_Kernel_ToyFs_7
	.export	_Method_P_Kernel_ToyFs_8
	.export	_Method_P_Kernel_ToyFs_9
	.export	_Method_P_Kernel_ToyFs_10
	.export	_Method_P_Kernel_ToyFs_11
	.export	_Method_P_Kernel_ToyFs_12
	.export	_Method_P_Kernel_ToyFs_13
	.export	_Method_P_Kernel_ToyFs_14
	.export	_Method_P_Kernel_ToyFs_15
	.export	_Method_P_Kernel_ToyFs_16
! The following class and its methods are from this package
	.export	_P_Kernel_InodeData
	.export	_Method_P_Kernel_InodeData_1
	.export	_Method_P_Kernel_InodeData_2
	.export	_Method_P_Kernel_InodeData_3
	.export	_Method_P_Kernel_InodeData_4
	.export	_Method_P_Kernel_InodeData_5
	.export	_Method_P_Kernel_InodeData_6
	.export	_Method_P_Kernel_InodeData_7
	.export	_Method_P_Kernel_InodeData_8
	.export	_Method_P_Kernel_InodeData_9
	.export	_Method_P_Kernel_InodeData_10
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
	.export	_Method_P_Kernel_FileControlBlock_3
	.export	_Method_P_Kernel_FileControlBlock_4
	.export	_Method_P_Kernel_FileControlBlock_5
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
	.export	_Method_P_Kernel_OpenFile_5
	.export	_Method_P_Kernel_OpenFile_6
	.export	_Method_P_Kernel_OpenFile_7
	.export	_Method_P_Kernel_OpenFile_8
	.export	_Method_P_Kernel_OpenFile_9
	.export	_Method_P_Kernel_OpenFile_10
! The following class and its methods are from this package
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
! The following class and its methods are from this package
	.export	_P_Kernel_Pipe
	.export	_Method_P_Kernel_Pipe_1
	.export	_Method_P_Kernel_Pipe_2
	.export	_Method_P_Kernel_Pipe_3
	.export	_Method_P_Kernel_Pipe_4
	.export	_Method_P_Kernel_Pipe_5
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
	.export	_P_Kernel_fileSystem
	.export	_P_Kernel_serialDriver
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	2960
_P_Kernel_threadManager:
	.skip	41700
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	8056
_P_Kernel_fileSystem:
	.skip	80
_P_Kernel_serialDriver:
	.skip	4312
	.align
! String constants
_StringConst_237:
	.word	45			! length
	.ascii	"Error with CopyBytesFromVirt in pipeWrite!!!\n"
	.align
_StringConst_236:
	.word	48			! length
	.ascii	"Error with CopyBytesFromVirt in pipeReadMain!!!\n"
	.align
_StringConst_235:
	.word	49			! length
	.ascii	"Error with CopyBytesFromVirt in pipeReadOther!!!\n"
	.align
_StringConst_234:
	.word	13			! length
	.ascii	" was ingored\n"
	.align
_StringConst_233:
	.word	41			! length
	.ascii	"\nSerial input buffer overrun - character "
	.align
_StringConst_232:
	.word	12			! length
	.ascii	"serialThread"
	.align
_StringConst_231:
	.word	31			! length
	.ascii	"Initializing Serial Driver... \n"
	.align
_StringConst_230:
	.word	17			! length
	.ascii	"RemoveEntry Bug!\n"
	.align
_StringConst_229:
	.word	2			! length
	.ascii	".."
	.align
_StringConst_228:
	.word	1			! length
	.ascii	"."
	.align
_StringConst_227:
	.word	36			! length
	.ascii	"RemoveEntry on a non-Directory file."
	.align
_StringConst_226:
	.word	40			! length
	.ascii	"OpenFile.AddEntry incorrectly set addPos"
	.align
_StringConst_225:
	.word	21			! length
	.ascii	"AddEntry: found name "
	.align
_StringConst_224:
	.word	33			! length
	.ascii	"AddEntry on a non-Directory file."
	.align
_StringConst_223:
	.word	37			! length
	.ascii	"GetNextEntry on a non-Directory file."
	.align
_StringConst_222:
	.word	31			! length
	.ascii	"Lookup on a non-Directory file."
	.align
_StringConst_221:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_220:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_219:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_218:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_217:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_216:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_215:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_214:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_213:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_212:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_211:
	.word	50			! length
	.ascii	" match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_210:
	.word	45			! length
	.ascii	"LoadExecutable: The environment size does not"
	.align
_StringConst_209:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_208:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_207:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_206:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_205:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_204:
	.word	12			! length
	.ascii	" numOfUsers="
	.align
_StringConst_203:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_202:
	.word	44			! length
	.ascii	"FCB.Flush ... no disk segment to flush to..."
	.align
_StringConst_201:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_200:
	.word	7			! length
	.ascii	"Inode: "
	.align
_StringConst_199:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_198:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_197:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_196:
	.word	13			! length
	.ascii	"inode.number="
	.align
_StringConst_195:
	.word	30			! length
	.ascii	"SaveIndirect with no indirect!"
	.align
_StringConst_194:
	.word	38			! length
	.ascii	"GetIndirect: no indirect block to get."
	.align
_StringConst_193:
	.word	32			! length
	.ascii	"Double Indirect not implemented."
	.align
_StringConst_192:
	.word	2			! length
	.ascii	"] "
	.align
_StringConst_191:
	.word	1			! length
	.ascii	"["
	.align
_StringConst_190:
	.word	6			! length
	.ascii	" dirty"
	.align
_StringConst_189:
	.word	2			! length
	.ascii	"] "
	.align
_StringConst_188:
	.word	1			! length
	.ascii	","
	.align
_StringConst_187:
	.word	3			! length
	.ascii	") ["
	.align
_StringConst_186:
	.word	2			! length
	.ascii	" ("
	.align
_StringConst_185:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_184:
	.word	2			! length
	.ascii	"- "
	.align
_StringConst_183:
	.word	2			! length
	.ascii	"x "
	.align
_StringConst_182:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_181:
	.word	1			! length
	.ascii	"w"
	.align
_StringConst_180:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_179:
	.word	1			! length
	.ascii	"r"
	.align
_StringConst_178:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_177:
	.word	1			! length
	.ascii	"d"
	.align
_StringConst_176:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_175:
	.word	4			! length
	.ascii	"IN: "
	.align
_StringConst_174:
	.word	32			! length
	.ascii	"ToyFs . MakeDir Not Implemented."
	.align
_StringConst_173:
	.word	32			! length
	.ascii	"ToyFs . MakeDir Not Implemented."
	.align
_StringConst_172:
	.word	32			! length
	.ascii	"ToyFs . MakeDir Not Implemented."
	.align
_StringConst_171:
	.word	32			! length
	.ascii	"ToyFs . MakeDir Not Implemented."
	.align
_StringConst_170:
	.word	35			! length
	.ascii	"ToyFs . CreateFile Not Implemented."
	.align
_StringConst_169:
	.word	37			! length
	.ascii	"NameToInodeNum on non-Directory file."
	.align
_StringConst_168:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_167:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_166:
	.word	52			! length
	.ascii	"Magic number in sector 0 of ToyFs file system is bad"
	.align
_StringConst_165:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_164:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_163:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_162:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_161:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_160:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_159:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_158:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_157:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_156:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_155:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_154:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_153:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_152:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_151:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_150:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_149:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_148:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_147:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_146:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_145:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_144:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_143:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_142:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_141:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_140:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_139:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_136:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_133:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_130:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_127:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_126:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_125:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_123:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_121:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_120:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_119:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_118:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_117:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_116:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_115:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_114:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_113:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_112:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_111:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_110:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_109:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_108:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_107:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_106:
	.word	32			! length
	.ascii	"Initializing Process Manager...\n"
	.align
_StringConst_105:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_104:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_103:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_102:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_101:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_100:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_99:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_98:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_97:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_96:
	.word	14			! length
	.ascii	" Working Dir: "
	.align
_StringConst_95:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_94:
	.word	22			! length
	.ascii	"    File Descriptors:\n"
	.align
_StringConst_93:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_92:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_91:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_89:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_88:
	.word	9			! length
	.ascii	" a thread"
	.align
_StringConst_87:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_86:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_85:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_84:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_83:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_82:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_81:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_80:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_79:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_78:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_77:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_76:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_75:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_74:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_73:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_72:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_71:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_70:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_69:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_68:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_67:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_66:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_65:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_64:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_63:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_62:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_61:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_60:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_59:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_58:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_57:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_56:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_55:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_54:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_53:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_52:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_51:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_50:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_49:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_48:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_47:
	.word	45			! length
	.ascii	"Error with CopyBytesFromVirt in sys_write!!!\n"
	.align
_StringConst_46:
	.word	42			! length
	.ascii	"Error with CopyBytesToVirt in sys_read!!!\n"
	.align
_StringConst_45:
	.word	11			! length
	.ascii	"/dev/serial"
	.align
_StringConst_44:
	.word	14			! length
	.ascii	"num characters"
	.align
_StringConst_43:
	.word	10			! length
	.ascii	"addiOffset"
	.align
_StringConst_42:
	.word	10			! length
	.ascii	"arg offset"
	.align
_StringConst_41:
	.word	24			! length
	.ascii	"Number of arguments is: "
	.align
_StringConst_40:
	.word	33			! length
	.ascii	"error with copyFromVirt argsAddi\n"
	.align
_StringConst_39:
	.word	11			! length
	.ascii	"myNewThread"
	.align
_StringConst_38:
	.word	28			! length
	.ascii	"Handle_Sys_Shutdown invoked!"
	.align
_StringConst_37:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_36:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_35:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_34:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_33:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_32:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_25:
	.word	40			! length
	.ascii	"Error getting initPC from LoadExecutable"
	.align
_StringConst_24:
	.word	42			! length
	.ascii	"Problem Opening File in FileManager . Open"
	.align
_StringConst_23:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_22:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_21:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_20:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_19:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_17:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_16:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_14:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_13:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_12:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_11:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_10:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_9:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_8:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_7:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_5:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_4:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_2:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_1:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.k\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x6c1f1c3a,r4		! myHashVal = 1813978170
	cmp	r3,r4
	be	_Label_248
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
_Label_248:
	mov	0,r1
! Make sure _P_Syscall_ has hash value 0x432b40fa (decimal 1126908154)
	set	_packageName,r2
	set	0x432b40fa,r3
	call	_CheckVersion_P_Syscall_
	.import	_CheckVersion_P_Syscall_
	cmp	r1,0
	bne	_Label_249
! Make sure _P_System_ has hash value 0xba42d652 (decimal -1170024878)
	set	_packageName,r2
	set	0xba42d652,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_249
! Make sure _P_BitMap_ has hash value 0x93947b8f (decimal -1818985585)
	set	_packageName,r2
	set	0x93947b8f,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_249
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_249
_Label_249:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_7111:
	push	r0
	sub	r1,1,r1
	bne	_Label_7111
	mov	10,r13		! source line 10
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	17,r13		! source line 17
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_250 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	18,r13		! source line 18
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_7112:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7112
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_254 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-44]
!   _temp_255 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_254  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   _temp_256 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_257 = _temp_256 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_257 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_7113:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7113
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_259 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-24]
!   _temp_260 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_259  sizeInBytes=4
	load	[r14+-24],r1
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
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_261 = _function_247_IdleFunction
	set	_function_247_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_262 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_261  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	30,r13		! source line 30
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_263
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_264
	.word	-12
	.word	4
	.word	_Label_265
	.word	-16
	.word	4
	.word	_Label_266
	.word	-20
	.word	4
	.word	_Label_267
	.word	-24
	.word	4
	.word	_Label_268
	.word	-28
	.word	4
	.word	_Label_269
	.word	-32
	.word	4
	.word	_Label_270
	.word	-36
	.word	4
	.word	_Label_271
	.word	-40
	.word	4
	.word	_Label_272
	.word	-44
	.word	4
	.word	_Label_273
	.word	-48
	.word	4
	.word	_Label_274
	.word	-52
	.word	4
	.word	_Label_275
	.word	-56
	.word	4
	.word	_Label_276
	.word	-60
	.word	4
	.word	0
_Label_263:
	.ascii	"InitializeScheduler\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_247_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_247_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_7114:
	push	r0
	sub	r1,1,r1
	bne	_Label_7114
	mov	35,r13		! source line 35
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0WH",r10
_Label_277:
!	_Label_278	jmp	_Label_278
_Label_278:
	mov	45,r13		! source line 45
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0IF",r10
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   _temp_282 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_280 else goto _Label_281
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_281
	jmp	_Label_280
_Label_280:
! THEN...
	mov	48,r13		! source line 48
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_283
_Label_281:
! ELSE...
	mov	50,r13		! source line 50
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_283:
! END WHILE...
	jmp	_Label_277
_Label_279:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_247_IdleFunction:
	.word	_sourceFileName
	.word	_Label_284
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_285
	.word	8
	.word	4
	.word	_Label_286
	.word	-12
	.word	4
	.word	_Label_287
	.word	-16
	.word	4
	.word	0
_Label_284:
	.ascii	"IdleFunction\0"
	.align
_Label_285:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_287:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_7115:
	push	r0
	sub	r1,1,r1
	bne	_Label_7115
	mov	57,r13		! source line 57
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_290 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_290 ) then goto _Label_289		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_289
!	_Label_288	jmp	_Label_288
_Label_288:
! THEN...
	mov	74,r13		! source line 74
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_292 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_292 [0 ] into _temp_293
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_291 = _temp_293		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_289:
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_294 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_294 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0WH",r10
_Label_295:
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_299 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_298  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_298 then goto _Label_297 else goto _Label_296
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_296
	jmp	_Label_297
_Label_296:
	mov	87,r13		! source line 87
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0AS",r10
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_300 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_301 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_295
_Label_297:
! IF STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_304 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_304 ) then goto _Label_303		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_303
!	_Label_302	jmp	_Label_302
_Label_302:
! THEN...
	mov	93,r13		! source line 93
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_306 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_306 [0 ] into _temp_307
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_305 = _temp_307		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_309 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_308 = *_temp_309  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_308) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _temp_308 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_303:
! RETURN STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_311
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_312
	.word	8
	.word	4
	.word	_Label_313
	.word	-16
	.word	4
	.word	_Label_314
	.word	-20
	.word	4
	.word	_Label_315
	.word	-24
	.word	4
	.word	_Label_316
	.word	-28
	.word	4
	.word	_Label_317
	.word	-32
	.word	4
	.word	_Label_318
	.word	-36
	.word	4
	.word	_Label_319
	.word	-40
	.word	4
	.word	_Label_320
	.word	-44
	.word	4
	.word	_Label_321
	.word	-48
	.word	4
	.word	_Label_322
	.word	-52
	.word	4
	.word	_Label_323
	.word	-9
	.word	1
	.word	_Label_324
	.word	-56
	.word	4
	.word	_Label_325
	.word	-60
	.word	4
	.word	_Label_326
	.word	-64
	.word	4
	.word	_Label_327
	.word	-68
	.word	4
	.word	_Label_328
	.word	-72
	.word	4
	.word	_Label_329
	.word	-76
	.word	4
	.word	_Label_330
	.word	-80
	.word	4
	.word	0
_Label_311:
	.ascii	"Run\0"
	.align
_Label_312:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_323:
	.byte	'C'
	.ascii	"_temp_298\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_329:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_330:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_7116:
	push	r0
	sub	r1,1,r1
	bne	_Label_7116
	mov	100,r13		! source line 100
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_331 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_332 = _function_246_ThreadPrintShort
	set	_function_246_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_333 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_332  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_334
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_335
	.word	-12
	.word	4
	.word	_Label_336
	.word	-16
	.word	4
	.word	_Label_337
	.word	-20
	.word	4
	.word	_Label_338
	.word	-24
	.word	4
	.word	0
_Label_334:
	.ascii	"PrintReadyList\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_338:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_7117:
	push	r0
	sub	r1,1,r1
	bne	_Label_7117
	mov	115,r13		! source line 115
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_339 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_339  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_341 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_340 = *_temp_341  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	129,r13		! source line 129
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_342 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	131,r13		! source line 131
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_343
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_344
	.word	-12
	.word	4
	.word	_Label_345
	.word	-16
	.word	4
	.word	_Label_346
	.word	-20
	.word	4
	.word	_Label_347
	.word	-24
	.word	4
	.word	_Label_348
	.word	-28
	.word	4
	.word	_Label_349
	.word	-32
	.word	4
	.word	0
_Label_343:
	.ascii	"ThreadStartMain\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_348:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_349:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_7118:
	push	r0
	sub	r1,1,r1
	bne	_Label_7118
	mov	136,r13		! source line 136
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0SE",r10
!   _temp_350 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_351 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	154,r13		! source line 154
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_352
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_353
	.word	-12
	.word	4
	.word	_Label_354
	.word	-16
	.word	4
	.word	_Label_355
	.word	-20
	.word	4
	.word	0
_Label_352:
	.ascii	"ThreadFinish\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_355:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_7119:
	push	r0
	sub	r1,1,r1
	bne	_Label_7119
	mov	159,r13		! source line 159
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_356 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_358		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_358
!	_Label_357	jmp	_Label_357
_Label_357:
! THEN...
	mov	170,r13		! source line 170
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_359 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_361 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_360 = *_temp_361  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_358:
! CALL STATEMENT...
!   _temp_362 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_363 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_364 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_365
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_366
	.word	8
	.word	4
	.word	_Label_367
	.word	-12
	.word	4
	.word	_Label_368
	.word	-16
	.word	4
	.word	_Label_369
	.word	-20
	.word	4
	.word	_Label_370
	.word	-24
	.word	4
	.word	_Label_371
	.word	-28
	.word	4
	.word	_Label_372
	.word	-32
	.word	4
	.word	_Label_373
	.word	-36
	.word	4
	.word	_Label_374
	.word	-40
	.word	4
	.word	0
_Label_365:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_366:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_374:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_7120:
	push	r0
	sub	r1,1,r1
	bne	_Label_7120
	mov	182,r13		! source line 182
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_376		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_376
!	_Label_375	jmp	_Label_375
_Label_375:
! THEN...
	mov	198,r13		! source line 198
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_377
_Label_376:
! ELSE...
	mov	201,r13		! source line 201
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	202,r13		! source line 202
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_377:
! RETURN STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-12
	.word	4
	.word	0
_Label_378:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_379:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_380:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_246_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_246_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_7121:
	push	r0
	sub	r1,1,r1
	bne	_Label_7121
	mov	643,r13		! source line 643
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_384		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_384
!   _temp_383 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_385
_Label_384:
!   _temp_383 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_385:
!   if _temp_383 then goto _Label_382 else goto _Label_381
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_381
	jmp	_Label_382
_Label_381:
! THEN...
	mov	652,r13		! source line 652
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_386 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_382:
! CALL STATEMENT...
!   _temp_387 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_389 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_388 = *_temp_389  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_390 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	658,r13		! source line 658
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_399 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_398 = *_temp_399  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_393
	cmp	r1,2
	be	_Label_394
	cmp	r1,3
	be	_Label_395
	cmp	r1,4
	be	_Label_396
	cmp	r1,5
	be	_Label_397
	jmp	_Label_391
! CASE 1...
_Label_393:
! CALL STATEMENT...
!   _temp_400 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	661,r13		! source line 661
	mov	"\0\0BR",r10
	jmp	_Label_392
! CASE 2...
_Label_394:
! CALL STATEMENT...
!   _temp_401 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0BR",r10
	jmp	_Label_392
! CASE 3...
_Label_395:
! CALL STATEMENT...
!   _temp_402 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0BR",r10
	jmp	_Label_392
! CASE 4...
_Label_396:
! CALL STATEMENT...
!   _temp_403 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_403  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0BR",r10
	jmp	_Label_392
! CASE 5...
_Label_397:
! CALL STATEMENT...
!   _temp_404 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0BR",r10
	jmp	_Label_392
! DEFAULT CASE...
_Label_391:
! CALL STATEMENT...
!   _temp_405 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	675,r13		! source line 675
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_392:
! CALL STATEMENT...
!   _temp_406 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_407 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_408 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_246_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_409
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_410
	.word	8
	.word	4
	.word	_Label_411
	.word	-16
	.word	4
	.word	_Label_412
	.word	-20
	.word	4
	.word	_Label_413
	.word	-24
	.word	4
	.word	_Label_414
	.word	-28
	.word	4
	.word	_Label_415
	.word	-32
	.word	4
	.word	_Label_416
	.word	-36
	.word	4
	.word	_Label_417
	.word	-40
	.word	4
	.word	_Label_418
	.word	-44
	.word	4
	.word	_Label_419
	.word	-48
	.word	4
	.word	_Label_420
	.word	-52
	.word	4
	.word	_Label_421
	.word	-56
	.word	4
	.word	_Label_422
	.word	-60
	.word	4
	.word	_Label_423
	.word	-64
	.word	4
	.word	_Label_424
	.word	-68
	.word	4
	.word	_Label_425
	.word	-72
	.word	4
	.word	_Label_426
	.word	-76
	.word	4
	.word	_Label_427
	.word	-9
	.word	1
	.word	_Label_428
	.word	-80
	.word	4
	.word	0
_Label_409:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_410:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_427:
	.byte	'C'
	.ascii	"_temp_383\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_245_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_245_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_7122:
	push	r0
	sub	r1,1,r1
	bne	_Label_7122
	mov	1079,r13		! source line 1079
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_429 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1083,r13		! source line 1083
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1084,r13		! source line 1084
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1084,r13		! source line 1084
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_245_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_430
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_431
	.word	8
	.word	4
	.word	_Label_432
	.word	-12
	.word	4
	.word	0
_Label_430:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_431:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	30,r1
_Label_7123:
	push	r0
	sub	r1,1,r1
	bne	_Label_7123
	mov	1089,r13		! source line 1089
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_433 = *_temp_434  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_433) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_435 = _temp_433 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-100]
!   Data Move: *_temp_435 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1105,r13		! source line 1105
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_437 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_436 = *_temp_437  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_436) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_438 = _temp_436 + 24
	load	[r14+-96],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Data Move: *_temp_438 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-88],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_439 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: zombieProcess = *_temp_439  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_440 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-80],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_441 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-76],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! FOR STATEMENT...
	mov	1118,r13		! source line 1118
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_446 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_447 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_446  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-116]
_Label_442:
!   Perform the FOR-LOOP termination test
!   if i > _temp_447 then goto _Label_445		
	load	[r14+-116],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_445
_Label_443:
	mov	1118,r13		! source line 1118
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0IF",r10
!   if intIsZero (zombieProcess) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = zombieProcess + 244
	load	[r14+-120],r1
	add	r1,244,r1
	store	r1,[r14+-60]
!   Move address of _temp_451 [i ] into _temp_452
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
!   Data Move: _temp_450 = *_temp_452  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_450) then goto _Label_449
	load	[r14+-64],r1
	cmp	r1,r0
	be	_Label_449
!	_Label_448	jmp	_Label_448
_Label_448:
! THEN...
	mov	1121,r13		! source line 1121
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
!   if intIsZero (zombieProcess) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_454 = zombieProcess + 244
	load	[r14+-120],r1
	add	r1,244,r1
	store	r1,[r14+-48]
!   Move address of _temp_454 [i ] into _temp_455
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
!   Data Move: _temp_453 = *_temp_455  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_456 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_453  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! END IF...
_Label_449:
!   Increment the FOR-LOOP index variable and jump back
_Label_444:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_442
! END FOR
_Label_445:
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   if intIsZero (zombieProcess) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_458 = zombieProcess + 240
	load	[r14+-120],r1
	add	r1,240,r1
	store	r1,[r14+-32]
!   Data Move: _temp_457 = *_temp_458  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_459 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_457  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   if intIsZero (zombieProcess) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_461 = zombieProcess + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_460 = _temp_461		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_462 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_460  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_463 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=zombieProcess  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_464
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_465
	.word	8
	.word	4
	.word	_Label_466
	.word	-12
	.word	4
	.word	_Label_467
	.word	-16
	.word	4
	.word	_Label_468
	.word	-20
	.word	4
	.word	_Label_469
	.word	-24
	.word	4
	.word	_Label_470
	.word	-28
	.word	4
	.word	_Label_471
	.word	-32
	.word	4
	.word	_Label_472
	.word	-36
	.word	4
	.word	_Label_473
	.word	-40
	.word	4
	.word	_Label_474
	.word	-44
	.word	4
	.word	_Label_475
	.word	-48
	.word	4
	.word	_Label_476
	.word	-52
	.word	4
	.word	_Label_477
	.word	-56
	.word	4
	.word	_Label_478
	.word	-60
	.word	4
	.word	_Label_479
	.word	-64
	.word	4
	.word	_Label_480
	.word	-68
	.word	4
	.word	_Label_481
	.word	-72
	.word	4
	.word	_Label_482
	.word	-76
	.word	4
	.word	_Label_483
	.word	-80
	.word	4
	.word	_Label_484
	.word	-84
	.word	4
	.word	_Label_485
	.word	-88
	.word	4
	.word	_Label_486
	.word	-92
	.word	4
	.word	_Label_487
	.word	-96
	.word	4
	.word	_Label_488
	.word	-100
	.word	4
	.word	_Label_489
	.word	-104
	.word	4
	.word	_Label_490
	.word	-108
	.word	4
	.word	_Label_491
	.word	-112
	.word	4
	.word	_Label_492
	.word	-116
	.word	4
	.word	_Label_493
	.word	-120
	.word	4
	.word	0
_Label_464:
	.ascii	"ProcessFinish\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_491:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_492:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_493:
	.byte	'P'
	.ascii	"zombieProcess\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	6,r1
_Label_7124:
	push	r0
	sub	r1,1,r1
	bne	_Label_7124
	mov	1139,r13		! source line 1139
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_494 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-16]
!   Send message GetANewThread
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=userProgram  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   _temp_495 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_495  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_496
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_497
	.word	-12
	.word	4
	.word	_Label_498
	.word	-16
	.word	4
	.word	_Label_499
	.word	-20
	.word	4
	.word	0
_Label_496:
	.ascii	"InitFirstProcess\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_499:
	.byte	'P'
	.ascii	"userProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	35,r1
_Label_7125:
	push	r0
	sub	r1,1,r1
	bne	_Label_7125
	mov	1156,r13		! source line 1156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0AS",r10
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
!   _temp_500 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-104]
!   Send message GetANewProcess
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=thisPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0AS",r10
!   if intIsZero (thisPCB) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_501 = thisPCB + 240
	load	[r14+-108],r1
	add	r1,240,r1
	store	r1,[r14+-100]
!   _temp_503 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-92]
!   _temp_504 = _temp_503 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Data Move: _temp_502 = *_temp_504  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   Data Move: *_temp_501 = _temp_502  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_505 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: *_temp_505 = thisPCB  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r14+-84],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0AS",r10
!   if intIsZero (thisPCB) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_506 = thisPCB + 24
	load	[r14+-108],r1
	add	r1,24,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_506 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-80],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0AS",r10
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   _temp_507 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-76]
!   _temp_509 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-68]
!   _temp_510 = _temp_509 + 4
	load	[r14+-68],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Data Move: _temp_508 = *_temp_510  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_511 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_507  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_508  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+16]
!   Send message Open
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=myFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! IF STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0IF",r10
!   if intIsZero (myFile) then goto _Label_512
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_512
	jmp	_Label_513
_Label_512:
! THEN...
	mov	1174,r13		! source line 1174
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_514 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1174,r13		! source line 1174
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_513:
! ASSIGNMENT STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0AS",r10
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
!   if intIsZero (thisPCB) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_516 = thisPCB + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_515 = _temp_516		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (myFile) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_515  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_518		(int)
	load	[r14+-116],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_518
!	_Label_517	jmp	_Label_517
_Label_517:
! THEN...
	mov	1180,r13		! source line 1180
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_519 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1180,r13		! source line 1180
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_518:
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_520 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=myFile  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0AS",r10
!   if intIsZero (thisPCB) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_522 = thisPCB + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_523 = _temp_522 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_521 = *_temp_523  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   InitUserStackTop = _temp_521 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_524 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_524 [999 ] into _temp_525
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_525		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-124]
! ASSIGNMENT STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! SEND STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0SE",r10
!   if intIsZero (thisPCB) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_526 = thisPCB + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_527 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_527 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Call the function
	mov	1211,r13		! source line 1211
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_528
	.word	4		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_529
	.word	8
	.word	4
	.word	_Label_530
	.word	-12
	.word	4
	.word	_Label_531
	.word	-16
	.word	4
	.word	_Label_532
	.word	-20
	.word	4
	.word	_Label_533
	.word	-24
	.word	4
	.word	_Label_534
	.word	-28
	.word	4
	.word	_Label_535
	.word	-32
	.word	4
	.word	_Label_536
	.word	-36
	.word	4
	.word	_Label_537
	.word	-40
	.word	4
	.word	_Label_538
	.word	-44
	.word	4
	.word	_Label_539
	.word	-48
	.word	4
	.word	_Label_540
	.word	-52
	.word	4
	.word	_Label_541
	.word	-56
	.word	4
	.word	_Label_542
	.word	-60
	.word	4
	.word	_Label_543
	.word	-64
	.word	4
	.word	_Label_544
	.word	-68
	.word	4
	.word	_Label_545
	.word	-72
	.word	4
	.word	_Label_546
	.word	-76
	.word	4
	.word	_Label_547
	.word	-80
	.word	4
	.word	_Label_548
	.word	-84
	.word	4
	.word	_Label_549
	.word	-88
	.word	4
	.word	_Label_550
	.word	-92
	.word	4
	.word	_Label_551
	.word	-96
	.word	4
	.word	_Label_552
	.word	-100
	.word	4
	.word	_Label_553
	.word	-104
	.word	4
	.word	_Label_554
	.word	-108
	.word	4
	.word	_Label_555
	.word	-112
	.word	4
	.word	_Label_556
	.word	-116
	.word	4
	.word	_Label_557
	.word	-120
	.word	4
	.word	_Label_558
	.word	-124
	.word	4
	.word	_Label_559
	.word	-128
	.word	4
	.word	0
_Label_528:
	.ascii	"StartUserProcess\0"
	.align
_Label_529:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_554:
	.byte	'P'
	.ascii	"thisPCB\0"
	.align
_Label_555:
	.byte	'P'
	.ascii	"myFile\0"
	.align
_Label_556:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_559:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_P_Kernel_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_7126:
	push	r0
	sub	r1,1,r1
	bne	_Label_7126
	mov	1219,r13		! source line 1219
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0SE",r10
!   _temp_560 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_561
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_562
	.word	-12
	.word	4
	.word	0
_Label_561:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_7127:
	push	r0
	sub	r1,1,r1
	bne	_Label_7127
	mov	1753,r13		! source line 1753
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1766,r13		! source line 1766
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1766,r13		! source line 1766
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_563
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_563:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_7128:
	push	r0
	sub	r1,1,r1
	bne	_Label_7128
	mov	1771,r13		! source line 1771
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1783,r13		! source line 1783
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0IF",r10
!   _temp_567 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_568 = _temp_567 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_566 = *_temp_568  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_566 == 0 then goto _Label_565		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_565
!	_Label_564	jmp	_Label_564
_Label_564:
! THEN...
	mov	1786,r13		! source line 1786
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0SE",r10
!   _temp_570 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_571 = _temp_570 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_569 = *_temp_571  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_569) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_565:
! RETURN STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_572
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_573
	.word	-12
	.word	4
	.word	_Label_574
	.word	-16
	.word	4
	.word	_Label_575
	.word	-20
	.word	4
	.word	_Label_576
	.word	-24
	.word	4
	.word	_Label_577
	.word	-28
	.word	4
	.word	_Label_578
	.word	-32
	.word	4
	.word	0
_Label_572:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	5,r1
_Label_7129:
	push	r0
	sub	r1,1,r1
	bne	_Label_7129
	mov	1793,r13		! source line 1793
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0IF",r10
!   _temp_581 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-24]
!   _temp_582 = _temp_581 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   if boolIsZero (_temp_582 ) then goto _Label_580		(int)
	load	[r14+-20],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_580
!	_Label_579	jmp	_Label_579
_Label_579:
! THEN...
	mov	1804,r13		! source line 1804
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0SE",r10
!   _temp_583 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_584 = _temp_583 + 128
	load	[r14+-16],r1
	add	r1,128,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_580:
! RETURN STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_585
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_586
	.word	-12
	.word	4
	.word	_Label_587
	.word	-16
	.word	4
	.word	_Label_588
	.word	-20
	.word	4
	.word	_Label_589
	.word	-24
	.word	4
	.word	0
_Label_585:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_7130:
	push	r0
	sub	r1,1,r1
	bne	_Label_7130
	mov	1810,r13		! source line 1810
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_590 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_591
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_592
	.word	-12
	.word	4
	.word	0
_Label_591:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_7131:
	push	r0
	sub	r1,1,r1
	bne	_Label_7131
	mov	1822,r13		! source line 1822
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_593 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_594
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_595
	.word	-12
	.word	4
	.word	0
_Label_594:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_7132:
	push	r0
	sub	r1,1,r1
	bne	_Label_7132
	mov	1834,r13		! source line 1834
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_596 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_596  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1841,r13		! source line 1841
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_597
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_598
	.word	-12
	.word	4
	.word	0
_Label_597:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_7133:
	push	r0
	sub	r1,1,r1
	bne	_Label_7133
	mov	1846,r13		! source line 1846
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_599 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_599  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1853,r13		! source line 1853
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_600
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_601
	.word	-12
	.word	4
	.word	0
_Label_600:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_7134:
	push	r0
	sub	r1,1,r1
	bne	_Label_7134
	mov	1858,r13		! source line 1858
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_602 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_602  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_603
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_604
	.word	-12
	.word	4
	.word	0
_Label_603:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_7135:
	push	r0
	sub	r1,1,r1
	bne	_Label_7135
	mov	1870,r13		! source line 1870
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_605 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_605  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1877,r13		! source line 1877
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_606
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_607
	.word	-12
	.word	4
	.word	0
_Label_606:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_7136:
	push	r0
	sub	r1,1,r1
	bne	_Label_7136
	mov	1882,r13		! source line 1882
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_608 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_608  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1889,r13		! source line 1889
	mov	"\0\0CA",r10
	call	_function_244_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_609
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_610
	.word	-12
	.word	4
	.word	0
_Label_609:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_244_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_244_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_7137:
	push	r0
	sub	r1,1,r1
	bne	_Label_7137
	mov	1894,r13		! source line 1894
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_611 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_611  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_612 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_612  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_615 = *_temp_616  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_615 == 0 then goto _Label_614		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_614
!	_Label_613	jmp	_Label_613
_Label_613:
! THEN...
	mov	1905,r13		! source line 1905
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_617 = *_temp_618  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_617) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_619
_Label_614:
! ELSE...
	mov	1907,r13		! source line 1907
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_620 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_620  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1907,r13		! source line 1907
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_619:
! SEND STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1915,r13		! source line 1915
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_244_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_621
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_622
	.word	8
	.word	4
	.word	_Label_623
	.word	-12
	.word	4
	.word	_Label_624
	.word	-16
	.word	4
	.word	_Label_625
	.word	-20
	.word	4
	.word	_Label_626
	.word	-24
	.word	4
	.word	_Label_627
	.word	-28
	.word	4
	.word	_Label_628
	.word	-32
	.word	4
	.word	_Label_629
	.word	-36
	.word	4
	.word	0
_Label_621:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_622:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	32,r1
_Label_7138:
	push	r0
	sub	r1,1,r1
	bne	_Label_7138
	mov	1920,r13		! source line 1920
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0IF",r10
!   if syscallCodeNum != 2 then goto _Label_631		(int)
	load	[r14+8],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_631
!	_Label_630	jmp	_Label_630
_Label_630:
! THEN...
	mov	1942,r13		! source line 1942
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0RE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_634 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_633 = *_temp_634  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_633) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_635 = _temp_633 + 236
	load	[r14+-120],r1
	add	r1,236,r1
	store	r1,[r14+-112]
!   Data Move: _temp_632 = *_temp_635  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   ReturnResult: _temp_632  (sizeInBytes=4)
	load	[r14+-124],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_631:
! ASSIGNMENT STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_636 = *_temp_637  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_636 + 236
	load	[r14+-108],r1
	add	r1,236,r1
	store	r1,[r14+-100]
!   Data Move: *_temp_638 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1945,r13		! source line 1945
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_7139
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_639
_Label_7139:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_639
!   If syscallCodeNum is > 26 (==greatestCaseValue) goto default code
	cmp	r1,26
	bg	_Label_639
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_659,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_659:
	jmp	_Label_646	! 1:	
	jmp	_Label_639	! 2:	missing - goto default code
	jmp	_Label_656	! 3:	
	jmp	_Label_643	! 4:	
	jmp	_Label_657	! 5:	
	jmp	_Label_658	! 6:	
	jmp	_Label_641	! 7:	
	jmp	_Label_645	! 8:	
	jmp	_Label_644	! 9:	
	jmp	_Label_650	! 10:	
	jmp	_Label_651	! 11:	
	jmp	_Label_652	! 12:	
	jmp	_Label_653	! 13:	
	jmp	_Label_654	! 14:	
	jmp	_Label_647	! 15:	
	jmp	_Label_639	! 16:	missing - goto default code
	jmp	_Label_639	! 17:	missing - goto default code
	jmp	_Label_639	! 18:	missing - goto default code
	jmp	_Label_639	! 19:	missing - goto default code
	jmp	_Label_639	! 20:	missing - goto default code
	jmp	_Label_649	! 21:	
	jmp	_Label_639	! 22:	missing - goto default code
	jmp	_Label_639	! 23:	missing - goto default code
	jmp	_Label_642	! 24:	
	jmp	_Label_648	! 25:	
	jmp	_Label_655	! 26:	
! CASE 7...
_Label_641:
! RETURN STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0RE",r10
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_660  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
!   ReturnResult: _temp_660  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 24...
_Label_642:
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CA",r10
	call	_function_243_Handle_Sys_GetDiskInfo
!   Retrieve Result: targetName=_temp_661  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   ReturnResult: _temp_661  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 4...
_Label_643:
! CALL STATEMENT...
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1952,r13		! source line 1952
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_644:
! RETURN STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_662  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
!   ReturnResult: _temp_662  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_645:
! RETURN STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_663  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   ReturnResult: _temp_663  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_646:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 15...
_Label_647:
! RETURN STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1962,r13		! source line 1962
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Stat
!   Retrieve Result: targetName=_temp_664  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
!   ReturnResult: _temp_664  (sizeInBytes=4)
	load	[r14+-80],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 25...
_Label_648:
! RETURN STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Pipe
!   Retrieve Result: targetName=_temp_665  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
!   ReturnResult: _temp_665  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 21...
_Label_649:
! RETURN STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Chdir
!   Retrieve Result: targetName=_temp_666  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
!   ReturnResult: _temp_666  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_650:
! RETURN STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_667  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
!   ReturnResult: _temp_667  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_651:
! RETURN STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1970,r13		! source line 1970
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_668  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   ReturnResult: _temp_668  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_652:
! RETURN STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_669  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   ReturnResult: _temp_669  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 13...
_Label_653:
! RETURN STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_670  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   ReturnResult: _temp_670  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 14...
_Label_654:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 26...
_Label_655:
! RETURN STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Dup
!   Retrieve Result: targetName=_temp_671  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   ReturnResult: _temp_671  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_656:
! CALL STATEMENT...
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_657:
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0RE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_674 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_673 = *_temp_674  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_673) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_675 = _temp_673 + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: _temp_672 = *_temp_675  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_672  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_658:
! RETURN STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0RE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_678 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_677 = *_temp_678  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_677) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_679 = _temp_677 + 16
	load	[r14+-28],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: _temp_676 = *_temp_679  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_676  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_639:
! CALL STATEMENT...
!   _temp_680 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1989,r13		! source line 1989
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1990,r13		! source line 1990
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_681 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1991,r13		! source line 1991
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_640:
! RETURN STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_682
	.word	20		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_683
	.word	8
	.word	4
	.word	_Label_684
	.word	12
	.word	4
	.word	_Label_685
	.word	16
	.word	4
	.word	_Label_686
	.word	20
	.word	4
	.word	_Label_687
	.word	24
	.word	4
	.word	_Label_688
	.word	-12
	.word	4
	.word	_Label_689
	.word	-16
	.word	4
	.word	_Label_690
	.word	-20
	.word	4
	.word	_Label_691
	.word	-24
	.word	4
	.word	_Label_692
	.word	-28
	.word	4
	.word	_Label_693
	.word	-32
	.word	4
	.word	_Label_694
	.word	-36
	.word	4
	.word	_Label_695
	.word	-40
	.word	4
	.word	_Label_696
	.word	-44
	.word	4
	.word	_Label_697
	.word	-48
	.word	4
	.word	_Label_698
	.word	-52
	.word	4
	.word	_Label_699
	.word	-56
	.word	4
	.word	_Label_700
	.word	-60
	.word	4
	.word	_Label_701
	.word	-64
	.word	4
	.word	_Label_702
	.word	-68
	.word	4
	.word	_Label_703
	.word	-72
	.word	4
	.word	_Label_704
	.word	-76
	.word	4
	.word	_Label_705
	.word	-80
	.word	4
	.word	_Label_706
	.word	-84
	.word	4
	.word	_Label_707
	.word	-88
	.word	4
	.word	_Label_708
	.word	-92
	.word	4
	.word	_Label_709
	.word	-96
	.word	4
	.word	_Label_710
	.word	-100
	.word	4
	.word	_Label_711
	.word	-104
	.word	4
	.word	_Label_712
	.word	-108
	.word	4
	.word	_Label_713
	.word	-112
	.word	4
	.word	_Label_714
	.word	-116
	.word	4
	.word	_Label_715
	.word	-120
	.word	4
	.word	_Label_716
	.word	-124
	.word	4
	.word	0
_Label_682:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_683:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_684:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_685:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_686:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_687:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_GetDiskInfo  ===============
! 
_function_243_Handle_Sys_GetDiskInfo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_243_Handle_Sys_GetDiskInfo,r1
	push	r1
	mov	16,r1
_Label_7140:
	push	r0
	sub	r1,1,r1
	bne	_Label_7140
	mov	1998,r13		! source line 1998
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0IF",r10
!   _temp_720 = buffPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if _temp_720 >= 0 then goto _Label_719		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_719
	jmp	_Label_717
_Label_719:
!   _temp_722 = buffPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-56]
!   _temp_721 = _temp_722 + 20		(int)
	load	[r14+-56],r1
	mov	20,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_726 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_725 = *_temp_726  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_725) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_727 = _temp_725 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_728 = _temp_727 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_724 = *_temp_728  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_723 = _temp_724 * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   if _temp_721 <= _temp_723 then goto _Label_718		(int)
	load	[r14+-60],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_718
!	_Label_717	jmp	_Label_717
_Label_717:
! THEN...
	mov	2002,r13		! source line 2002
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_730 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_729 = *_temp_730  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_729) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_731 = _temp_729 + 236
	load	[r14+-28],r1
	add	r1,236,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_731 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_718:
! RETURN STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0RE",r10
	mov	2006,r13		! source line 2006
	mov	"\0\0SE",r10
!   _temp_733 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=buffPtr  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message GetDiskInfo
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_732  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_732  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_243_Handle_Sys_GetDiskInfo:
	.word	_sourceFileName
	.word	_Label_734
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_735
	.word	8
	.word	4
	.word	_Label_736
	.word	-12
	.word	4
	.word	_Label_737
	.word	-16
	.word	4
	.word	_Label_738
	.word	-20
	.word	4
	.word	_Label_739
	.word	-24
	.word	4
	.word	_Label_740
	.word	-28
	.word	4
	.word	_Label_741
	.word	-32
	.word	4
	.word	_Label_742
	.word	-36
	.word	4
	.word	_Label_743
	.word	-40
	.word	4
	.word	_Label_744
	.word	-44
	.word	4
	.word	_Label_745
	.word	-48
	.word	4
	.word	_Label_746
	.word	-52
	.word	4
	.word	_Label_747
	.word	-56
	.word	4
	.word	_Label_748
	.word	-60
	.word	4
	.word	_Label_749
	.word	-64
	.word	4
	.word	0
_Label_734:
	.ascii	"Handle_Sys_GetDiskInfo\0"
	.align
_Label_735:
	.byte	'P'
	.ascii	"buffPtr\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1,r1
_Label_7141:
	push	r0
	sub	r1,1,r1
	bne	_Label_7141
	mov	2012,r13		! source line 2012
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2013,r13		! source line 2013
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_750
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_751
	.word	8
	.word	4
	.word	0
_Label_750:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_751:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_7142:
	push	r0
	sub	r1,1,r1
	bne	_Label_7142
	mov	2018,r13		! source line 2018
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_752 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_753
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_754
	.word	-12
	.word	4
	.word	0
_Label_753:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1,r1
_Label_7143:
	push	r0
	sub	r1,1,r1
	bne	_Label_7143
	mov	2025,r13		! source line 2025
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_755
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_755:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	75,r1
_Label_7144:
	push	r0
	sub	r1,1,r1
	bne	_Label_7144
	mov	2034,r13		! source line 2034
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
	mov	2043,r13		! source line 2043
	mov	"\0\0SE",r10
!   _temp_756 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-276]
!   Send message GetANewThread
	load	[r14+-276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
	mov	2044,r13		! source line 2044
	mov	"\0\0SE",r10
!   _temp_757 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-272]
!   Send message GetANewProcess
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_758 = newPCB + 24
	load	[r14+-284],r1
	add	r1,24,r1
	store	r1,[r14+-268]
!   Data Move: *_temp_758 = newThread  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r14+-268],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_759 = newPCB + 16
	load	[r14+-284],r1
	add	r1,16,r1
	store	r1,[r14+-264]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_762 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-252]
!   Data Move: _temp_761 = *_temp_762  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_761) then goto _runtimeErrorNullPointer
	load	[r14+-256],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_763 = _temp_761 + 12
	load	[r14+-256],r1
	add	r1,12,r1
	store	r1,[r14+-248]
!   Data Move: _temp_760 = *_temp_763  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   Data Move: *_temp_759 = _temp_760  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r14+-264],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_764 = newThread + 72
	load	[r14+-280],r1
	add	r1,72,r1
	store	r1,[r14+-244]
!   _temp_765 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-240]
!   Data Move: *_temp_764 = _temp_765  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r14+-244],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_766 = newThread + 76
	load	[r14+-280],r1
	add	r1,76,r1
	store	r1,[r14+-236]
!   Data Move: *_temp_766 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-236],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_767 = newThread + 4160
	load	[r14+-280],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: *_temp_767 = newPCB  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r14+-232],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_769 = newThread + 4096
	load	[r14+-280],r1
	add	r1,4096,r1
	store	r1,[r14+-224]
!   Move address of _temp_769 [0 ] into _temp_770
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
!   _temp_768 = _temp_770		(4 bytes)
	load	[r14+-220],r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_768  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2055,r13		! source line 2055
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_771 = newThread + 68
	load	[r14+-280],r1
	add	r1,68,r1
	store	r1,[r14+-216]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_773 = newThread + 88
	load	[r14+-280],r1
	add	r1,88,r1
	store	r1,[r14+-208]
!   Move address of _temp_773 [999 ] into _temp_774
!     make sure index expr is >= 0
	mov	999,r2
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
!   _temp_772 = _temp_774		(4 bytes)
	load	[r14+-204],r1
	store	r1,[r14+-212]
!   Data Move: *_temp_771 = _temp_772  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_775 = newPCB + 240
	load	[r14+-284],r1
	add	r1,240,r1
	store	r1,[r14+-200]
!   _temp_777 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-192]
!   _temp_778 = _temp_777 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-188]
!   Data Move: _temp_776 = *_temp_778  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   Data Move: *_temp_775 = _temp_776  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r14+-200],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_783 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-184]
!   Calculate and save the FOR-LOOP ending value
!   _temp_784 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-180]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_783  (sizeInBytes=4)
	load	[r14+-184],r1
	store	r1,[r14+-292]
_Label_779:
!   Perform the FOR-LOOP termination test
!   if i > _temp_784 then goto _Label_782		
	load	[r14+-292],r1
	load	[r14+-180],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_782
_Label_780:
	mov	2065,r13		! source line 2065
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_789 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-168]
!   Data Move: _temp_788 = *_temp_789  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_788) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_790 = _temp_788 + 244
	load	[r14+-172],r1
	add	r1,244,r1
	store	r1,[r14+-164]
!   Move address of _temp_790 [i ] into _temp_791
!     make sure index expr is >= 0
	load	[r14+-292],r2
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
!   Data Move: _temp_787 = *_temp_791  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_787) then goto _Label_786
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_786
!	_Label_785	jmp	_Label_785
_Label_785:
! THEN...
	mov	2067,r13		! source line 2067
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_792 = newPCB + 244
	load	[r14+-284],r1
	add	r1,244,r1
	store	r1,[r14+-156]
!   Move address of _temp_792 [i ] into _temp_793
!     make sure index expr is >= 0
	load	[r14+-292],r2
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
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_797 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_796 = *_temp_797  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_796) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_798 = _temp_796 + 244
	load	[r14+-140],r1
	add	r1,244,r1
	store	r1,[r14+-132]
!   Move address of _temp_798 [i ] into _temp_799
!     make sure index expr is >= 0
	load	[r14+-292],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
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
	store	r2,[r14+-128]
!   Data Move: _temp_795 = *_temp_799  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_795) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_794  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
!   Data Move: *_temp_793 = _temp_794  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-152],r2
	store	r1,[r2]
! END IF...
_Label_786:
!   Increment the FOR-LOOP index variable and jump back
_Label_781:
!   i = i + 1
	load	[r14+-292],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
	jmp	_Label_779
! END FOR
_Label_782:
! SEND STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_801 = newPCB + 32
	load	[r14+-284],r1
	add	r1,32,r1
	store	r1,[r14+-120]
!   _temp_800 = _temp_801		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-124]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_804 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_803 = *_temp_804  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_803) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_805 = _temp_803 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   _temp_806 = _temp_805 + 4
	load	[r14+-104],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Data Move: _temp_802 = *_temp_806  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   _temp_807 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_800  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_802  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_812 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_816 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_815 = *_temp_816  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_815) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_817 = _temp_815 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_818 = _temp_817 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Data Move: _temp_814 = *_temp_818  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_813 = _temp_814 - 1		(int)
	load	[r14+-84],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_812  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-292]
_Label_808:
!   Perform the FOR-LOOP termination test
!   if i > _temp_813 then goto _Label_811		
	load	[r14+-292],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_811
_Label_809:
	mov	2075,r13		! source line 2075
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_820 = newPCB + 32
	load	[r14+-284],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_819  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
	mov	2076,r13		! source line 2076
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_823 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_822 = *_temp_823  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_822) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_824 = _temp_822 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_821  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_819  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_821  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	2076,r13		! source line 2076
	mov	"\0\0CE",r10
	call	MemoryCopy
!   Increment the FOR-LOOP index variable and jump back
_Label_810:
!   i = i + 1
	load	[r14+-292],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
	jmp	_Label_808
! END FOR
_Label_811:
! IF STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0IF",r10
	mov	2080,r13		! source line 2080
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_827 = *_temp_828  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_827) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_829 = _temp_827 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_825 else goto _Label_826
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_826
	jmp	_Label_825
_Label_825:
! THEN...
	mov	2081,r13		! source line 2081
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_830 = newPCB + 32
	load	[r14+-284],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_831
_Label_826:
! ELSE...
	mov	2083,r13		! source line 2083
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_832 = newPCB + 32
	load	[r14+-284],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! END IF...
_Label_831:
! ASSIGNMENT STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0AS",r10
!   Call the function
	mov	2086,r13		! source line 2086
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
! SEND STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0SE",r10
!   _temp_833 = _P_Kernel_ResumeChildAfterFork
	set	_P_Kernel_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-280],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_833  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_835 = newPCB + 12
	load	[r14+-284],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_834 = *_temp_835  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_834  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,304,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_836
	.word	0		! total size of parameters
	.word	300		! frame size = 300
	.word	_Label_837
	.word	-12
	.word	4
	.word	_Label_838
	.word	-16
	.word	4
	.word	_Label_839
	.word	-20
	.word	4
	.word	_Label_840
	.word	-24
	.word	4
	.word	_Label_841
	.word	-28
	.word	4
	.word	_Label_842
	.word	-32
	.word	4
	.word	_Label_843
	.word	-36
	.word	4
	.word	_Label_844
	.word	-40
	.word	4
	.word	_Label_845
	.word	-44
	.word	4
	.word	_Label_846
	.word	-48
	.word	4
	.word	_Label_847
	.word	-52
	.word	4
	.word	_Label_848
	.word	-56
	.word	4
	.word	_Label_849
	.word	-60
	.word	4
	.word	_Label_850
	.word	-64
	.word	4
	.word	_Label_851
	.word	-68
	.word	4
	.word	_Label_852
	.word	-72
	.word	4
	.word	_Label_853
	.word	-76
	.word	4
	.word	_Label_854
	.word	-80
	.word	4
	.word	_Label_855
	.word	-84
	.word	4
	.word	_Label_856
	.word	-88
	.word	4
	.word	_Label_857
	.word	-92
	.word	4
	.word	_Label_858
	.word	-96
	.word	4
	.word	_Label_859
	.word	-100
	.word	4
	.word	_Label_860
	.word	-104
	.word	4
	.word	_Label_861
	.word	-108
	.word	4
	.word	_Label_862
	.word	-112
	.word	4
	.word	_Label_863
	.word	-116
	.word	4
	.word	_Label_864
	.word	-120
	.word	4
	.word	_Label_865
	.word	-124
	.word	4
	.word	_Label_866
	.word	-128
	.word	4
	.word	_Label_867
	.word	-132
	.word	4
	.word	_Label_868
	.word	-136
	.word	4
	.word	_Label_869
	.word	-140
	.word	4
	.word	_Label_870
	.word	-144
	.word	4
	.word	_Label_871
	.word	-148
	.word	4
	.word	_Label_872
	.word	-152
	.word	4
	.word	_Label_873
	.word	-156
	.word	4
	.word	_Label_874
	.word	-160
	.word	4
	.word	_Label_875
	.word	-164
	.word	4
	.word	_Label_876
	.word	-168
	.word	4
	.word	_Label_877
	.word	-172
	.word	4
	.word	_Label_878
	.word	-176
	.word	4
	.word	_Label_879
	.word	-180
	.word	4
	.word	_Label_880
	.word	-184
	.word	4
	.word	_Label_881
	.word	-188
	.word	4
	.word	_Label_882
	.word	-192
	.word	4
	.word	_Label_883
	.word	-196
	.word	4
	.word	_Label_884
	.word	-200
	.word	4
	.word	_Label_885
	.word	-204
	.word	4
	.word	_Label_886
	.word	-208
	.word	4
	.word	_Label_887
	.word	-212
	.word	4
	.word	_Label_888
	.word	-216
	.word	4
	.word	_Label_889
	.word	-220
	.word	4
	.word	_Label_890
	.word	-224
	.word	4
	.word	_Label_891
	.word	-228
	.word	4
	.word	_Label_892
	.word	-232
	.word	4
	.word	_Label_893
	.word	-236
	.word	4
	.word	_Label_894
	.word	-240
	.word	4
	.word	_Label_895
	.word	-244
	.word	4
	.word	_Label_896
	.word	-248
	.word	4
	.word	_Label_897
	.word	-252
	.word	4
	.word	_Label_898
	.word	-256
	.word	4
	.word	_Label_899
	.word	-260
	.word	4
	.word	_Label_900
	.word	-264
	.word	4
	.word	_Label_901
	.word	-268
	.word	4
	.word	_Label_902
	.word	-272
	.word	4
	.word	_Label_903
	.word	-276
	.word	4
	.word	_Label_904
	.word	-280
	.word	4
	.word	_Label_905
	.word	-284
	.word	4
	.word	_Label_906
	.word	-288
	.word	4
	.word	_Label_907
	.word	-292
	.word	4
	.word	_Label_908
	.word	-296
	.word	4
	.word	0
_Label_836:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_904:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_905:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_906:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_907:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_908:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_P_Kernel_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ResumeChildAfterFork,r1
	push	r1
	mov	20,r1
_Label_7145:
	push	r0
	sub	r1,1,r1
	bne	_Label_7145
	mov	2098,r13		! source line 2098
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2104,r13		! source line 2104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_910 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_909 = *_temp_910  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_909) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_911 = _temp_909 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Send message SetToThisPageTable
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_913 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-44]
!   Move address of _temp_913 [0 ] into _temp_914
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_912 = _temp_914		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2107,r13		! source line 2107
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_915 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_915 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_916 = _P_Kernel_currentThread + 68
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,68,r1
	store	r1,[r14+-32]
!   Data Move: InitUserStackTop = *_temp_916  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_917 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_917 [999 ] into _temp_918
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_918		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-68]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_920 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_920 [14 ] into _temp_921
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_919 = *_temp_921  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_919  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=oldUserPC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Call the function
	mov	2114,r13		! source line 2114
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_922
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_923
	.word	8
	.word	4
	.word	_Label_924
	.word	-12
	.word	4
	.word	_Label_925
	.word	-16
	.word	4
	.word	_Label_926
	.word	-20
	.word	4
	.word	_Label_927
	.word	-24
	.word	4
	.word	_Label_928
	.word	-28
	.word	4
	.word	_Label_929
	.word	-32
	.word	4
	.word	_Label_930
	.word	-36
	.word	4
	.word	_Label_931
	.word	-40
	.word	4
	.word	_Label_932
	.word	-44
	.word	4
	.word	_Label_933
	.word	-48
	.word	4
	.word	_Label_934
	.word	-52
	.word	4
	.word	_Label_935
	.word	-56
	.word	4
	.word	_Label_936
	.word	-60
	.word	4
	.word	_Label_937
	.word	-64
	.word	4
	.word	_Label_938
	.word	-68
	.word	4
	.word	_Label_939
	.word	-72
	.word	4
	.word	0
_Label_922:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_923:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_937:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_938:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_939:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	17,r1
_Label_7146:
	push	r0
	sub	r1,1,r1
	bne	_Label_7146
	mov	2120,r13		! source line 2120
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0AS",r10
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   _temp_940 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message FindProcess
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=myProcess  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0IF",r10
!   if intIsZero (myProcess) then goto _Label_942
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_942
!	_Label_944	jmp	_Label_944
_Label_944:
!   if intIsZero (myProcess) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_946 = myProcess + 16
	load	[r14+-68],r1
	add	r1,16,r1
	store	r1,[r14+-56]
!   Data Move: _temp_945 = *_temp_946  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_949 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_948 = *_temp_949  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_948) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_950 = _temp_948 + 12
	load	[r14+-48],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Data Move: _temp_947 = *_temp_950  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_945 != _temp_947 then goto _Label_942		(int)
	load	[r14+-60],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bne	_Label_942
!	_Label_943	jmp	_Label_943
_Label_943:
!   if intIsZero (myProcess) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_952 = myProcess + 20
	load	[r14+-68],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_951 = *_temp_952  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if _temp_951 == 3 then goto _Label_942		(int)
	load	[r14+-36],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_942
!	_Label_941	jmp	_Label_941
_Label_941:
! THEN...
	mov	2127,r13		! source line 2127
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0RE",r10
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   _temp_954 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=myProcess  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_953  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_953  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_955
_Label_942:
! ELSE...
	mov	2129,r13		! source line 2129
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_957 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_956 = *_temp_957  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_956) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_958 = _temp_956 + 236
	load	[r14+-20],r1
	add	r1,236,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_958 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_955:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_959
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_960
	.word	8
	.word	4
	.word	_Label_961
	.word	-12
	.word	4
	.word	_Label_962
	.word	-16
	.word	4
	.word	_Label_963
	.word	-20
	.word	4
	.word	_Label_964
	.word	-24
	.word	4
	.word	_Label_965
	.word	-28
	.word	4
	.word	_Label_966
	.word	-32
	.word	4
	.word	_Label_967
	.word	-36
	.word	4
	.word	_Label_968
	.word	-40
	.word	4
	.word	_Label_969
	.word	-44
	.word	4
	.word	_Label_970
	.word	-48
	.word	4
	.word	_Label_971
	.word	-52
	.word	4
	.word	_Label_972
	.word	-56
	.word	4
	.word	_Label_973
	.word	-60
	.word	4
	.word	_Label_974
	.word	-64
	.word	4
	.word	_Label_975
	.word	-68
	.word	4
	.word	0
_Label_959:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_960:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_975:
	.byte	'P'
	.ascii	"myProcess\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	220,r1
_Label_7147:
	push	r0
	sub	r1,1,r1
	bne	_Label_7147
	mov	2137,r13		! source line 2137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=204)
	add	r14,-608,r4
	mov	51,r3
_Label_7148:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7148
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-608]
! IF STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _Label_977
	load	[r14+8],r1
	cmp	r1,r0
	be	_Label_977
	jmp	_Label_978
_Label_977:
! THEN...
	mov	2151,r13		! source line 2151
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_980 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-336]
!   Data Move: _temp_979 = *_temp_980  (sizeInBytes=4)
	load	[r14+-336],r1
	load	[r1],r1
	store	r1,[r14+-340]
!   if intIsZero (_temp_979) then goto _runtimeErrorNullPointer
	load	[r14+-340],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_981 = _temp_979 + 236
	load	[r14+-340],r1
	add	r1,236,r1
	store	r1,[r14+-332]
!   Data Move: *_temp_981 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-332],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,884,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_978:
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
	mov	2165,r13		! source line 2165
	mov	"\0\0SE",r10
!   _temp_982 = &strBuffer
	add	r14,-868,r1
	store	r1,[r14+-328]
!   _temp_983 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-324]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_985 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-316]
!   Data Move: _temp_984 = *_temp_985  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   if intIsZero (_temp_984) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = _temp_984 + 32
	load	[r14+-320],r1
	add	r1,32,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=12  value=_temp_982  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_983  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-348]
! IF STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_988		(int)
	load	[r14+-348],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_988
!	_Label_987	jmp	_Label_987
_Label_987:
! THEN...
	mov	2171,r13		! source line 2171
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,884,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_988:
! ASSIGNMENT STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0AS",r10
	mov	2176,r13		! source line 2176
	mov	"\0\0SE",r10
!   _temp_989 = &strBuffer
	add	r14,-868,r1
	store	r1,[r14+-308]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_992 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-296]
!   Data Move: _temp_991 = *_temp_992  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_991) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_993 = _temp_991 + 240
	load	[r14+-300],r1
	add	r1,240,r1
	store	r1,[r14+-292]
!   Data Move: _temp_990 = *_temp_993  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   _temp_994 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=12  value=_temp_989  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_990  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+16]
!   Send message Open
	load	[r14+-288],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=myFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-404]
! IF STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0IF",r10
!   if intIsZero (myFile) then goto _Label_995
	load	[r14+-404],r1
	cmp	r1,r0
	be	_Label_995
	jmp	_Label_996
_Label_995:
! THEN...
	mov	2178,r13		! source line 2178
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,884,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_996:
! SEND STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0SE",r10
!   _temp_997 = &newAddrSpace
	add	r14,-608,r1
	store	r1,[r14+-284]
!   Send message Init
	load	[r14+-284],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
	mov	2184,r13		! source line 2184
	mov	"\0\0SE",r10
!   _temp_998 = &newAddrSpace
	add	r14,-608,r1
	store	r1,[r14+-280]
!   if intIsZero (myFile) then goto _runtimeErrorNullPointer
	load	[r14+-404],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_998  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-404],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-352]
! IF STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_1000		(int)
	load	[r14+-352],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1000
!	_Label_999	jmp	_Label_999
_Label_999:
! THEN...
	mov	2187,r13		! source line 2187
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1002 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-272]
!   Data Move: _temp_1001 = *_temp_1002  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r1],r1
	store	r1,[r14+-276]
!   if intIsZero (_temp_1001) then goto _runtimeErrorNullPointer
	load	[r14+-276],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1003 = _temp_1001 + 236
	load	[r14+-276],r1
	add	r1,236,r1
	store	r1,[r14+-268]
!   Data Move: *_temp_1003 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-268],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0SE",r10
!   _temp_1004 = &newAddrSpace
	add	r14,-608,r1
	store	r1,[r14+-264]
!   _temp_1005 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=12  value=_temp_1004  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,884,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1000:
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0AS",r10
!   argsAddi = args		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-368]
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
	mov	2194,r13		! source line 2194
	mov	"\0\0SE",r10
!   _temp_1006 = &numArgs
	add	r14,-380,r1
	store	r1,[r14+-256]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1008 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1007 = *_temp_1008  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1007) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1009 = _temp_1007 + 32
	load	[r14+-252],r1
	add	r1,32,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=12  value=_temp_1006  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=argsAddi  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=trash  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-396]
! IF STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0IF",r10
!   if trash != -1 then goto _Label_1011		(int)
	load	[r14+-396],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1011
!	_Label_1010	jmp	_Label_1010
_Label_1010:
! THEN...
	mov	2197,r13		! source line 2197
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1012 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_1012  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	2197,r13		! source line 2197
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,884,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1011:
! CALL STATEMENT...
!   _temp_1013 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=8  value=_temp_1013  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Call the function
	mov	2201,r13		! source line 2201
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numArgs  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+0]
!   Call the function
	mov	2202,r13		! source line 2202
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2203,r13		! source line 2203
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0AS",r10
!   _temp_1014 = numArgs + 1		(int)
	load	[r14+-380],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
!   argOffset = 4 * _temp_1014		(int)
	mov	4,r1
	load	[r14+-232],r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1017 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-220]
!   Data Move: _temp_1016 = *_temp_1017  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1016) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1018 = _temp_1016 + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-216]
!   _temp_1019 = _temp_1018 + 4
	load	[r14+-216],r1
	add	r1,4,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1015 = *_temp_1019  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   InitUserStackTop = _temp_1015 * 8192		(int)
	load	[r14+-228],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-356]
! ASSIGNMENT STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
	mov	2212,r13		! source line 2212
	mov	"\0\0SE",r10
!   _temp_1021 = &newAddrSpace
	add	r14,-608,r1
	store	r1,[r14+-204]
!   _temp_1022 = _temp_1021 + 4
	load	[r14+-204],r1
	add	r1,4,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1020 = *_temp_1022  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_1023 = &newAddrSpace
	add	r14,-608,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=12  value=_temp_1020  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=physicalAddi  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   physicalAddi = physicalAddi + 8192		(int)
	load	[r14+-400],r1
	mov	8192,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0AS",r10
!   _temp_1024 = physicalAddi - argOffset		(int)
	load	[r14+-400],r1
	load	[r14+-376],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   if intIsZero (_temp_1024) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1024 = numArgs  (sizeInBytes=4)
	load	[r14+-380],r1
	load	[r14+-192],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   addiOffset = argOffset - 4		(int)
	load	[r14+-376],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
! FOR STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1029 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-188]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1030 = numArgs - 1		(int)
	load	[r14+-380],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1029  (sizeInBytes=4)
	load	[r14+-188],r1
	store	r1,[r14+-348]
_Label_1025:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1030 then goto _Label_1028		
	load	[r14+-348],r1
	load	[r14+-184],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1028
_Label_1026:
	mov	2220,r13		! source line 2220
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1031 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=argOffset  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+4]
!   Call the function
	mov	2221,r13		! source line 2221
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1032 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=addiOffset  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+4]
!   Call the function
	mov	2222,r13		! source line 2222
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0AS",r10
	mov	2225,r13		! source line 2225
	mov	"\0\0SE",r10
!   _temp_1033 = &stringAddi
	add	r14,-384,r1
	store	r1,[r14+-172]
!   _temp_1036 = i + 1		(int)
	load	[r14+-348],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   _temp_1035 = 4 * _temp_1036		(int)
	mov	4,r1
	load	[r14+-160],r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
!   _temp_1034 = argsAddi + _temp_1035		(int)
	load	[r14+-368],r1
	load	[r14+-164],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1038 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1037 = *_temp_1038  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_1037) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1039 = _temp_1037 + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=12  value=_temp_1033  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1034  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=trash  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-396]
! IF STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0IF",r10
!   if trash != -1 then goto _Label_1041		(int)
	load	[r14+-396],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1041
!	_Label_1040	jmp	_Label_1040
_Label_1040:
! THEN...
	mov	2227,r13		! source line 2227
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,884,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1041:
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   _temp_1042 = &origChars
	add	r14,-388,r1
	store	r1,[r14+-144]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1044 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1043 = *_temp_1044  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1043) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1045 = _temp_1043 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_1042  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=stringAddi  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=trash  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-396]
! IF STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0IF",r10
!   if trash != -1 then goto _Label_1047		(int)
	load	[r14+-396],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1047
!	_Label_1046	jmp	_Label_1046
_Label_1046:
! THEN...
	mov	2233,r13		! source line 2233
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,884,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1047:
! CALL STATEMENT...
!   _temp_1048 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=origChars  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+4]
!   Call the function
	mov	2236,r13		! source line 2236
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! IF STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0IF",r10
!   _temp_1051 = origChars rem 4		(int)
	load	[r14+-388],r1
	mov	4,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if intIsZero (_temp_1051) then goto _Label_1050
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_1050
!	_Label_1049	jmp	_Label_1049
_Label_1049:
! THEN...
	mov	2239,r13		! source line 2239
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   _temp_1053 = origChars rem 4		(int)
	load	[r14+-388],r1
	mov	4,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   _temp_1052 = 4 - _temp_1053		(int)
	mov	4,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   alteredChars = origChars + _temp_1052		(int)
	load	[r14+-388],r1
	load	[r14+-120],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
	jmp	_Label_1054
_Label_1050:
! ELSE...
	mov	2241,r13		! source line 2241
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   alteredChars = origChars		(4 bytes)
	load	[r14+-388],r1
	store	r1,[r14+-392]
! END IF...
_Label_1054:
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0AS",r10
!   _temp_1055 = argOffset + 4		(int)
	load	[r14+-376],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   argOffset = _temp_1055 + alteredChars		(int)
	load	[r14+-112],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-376]
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
	mov	2248,r13		! source line 2248
	mov	"\0\0SE",r10
!   _temp_1056 = physicalAddi - argOffset		(int)
	load	[r14+-400],r1
	load	[r14+-376],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1057 = *_temp_1058  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1057) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = _temp_1057 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1056  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=stringAddi  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=origChars  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=trash  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   _temp_1060 = physicalAddi - addiOffset		(int)
	load	[r14+-400],r1
	load	[r14+-372],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   if intIsZero (_temp_1060) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1061 = InitUserStackTop - argOffset		(int)
	load	[r14+-356],r1
	load	[r14+-376],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
!   Data Move: *_temp_1060 = _temp_1061  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0AS",r10
!   addiOffset = addiOffset - 4		(int)
	load	[r14+-372],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-372]
!   Increment the FOR-LOOP index variable and jump back
_Label_1027:
!   i = i + 1
	load	[r14+-348],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-348]
	jmp	_Label_1025
! END FOR
_Label_1028:
! SEND STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1064 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1063 = *_temp_1064  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1063) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = _temp_1063 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_1062 = _temp_1065		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-84]
!   _temp_1066 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_1062  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1068 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1067 = *_temp_1068  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1067) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = _temp_1067 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_1069 = newAddrSpace  (sizeInBytes=204)
	add	r14,-608,r5
	load	[r14+-56],r4
	mov	51,r3
_Label_7149:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7149
! SEND STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   _temp_1070 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=myFile  sizeInBytes=4
	load	[r14+-404],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1071 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-48]
!   Move address of _temp_1071 [999 ] into _temp_1072
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_1072		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-360]
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2275,r13		! source line 2275
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-364]
! SEND STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1074 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1073 = *_temp_1074  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1073) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1075 = _temp_1073 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Send message SetToThisPageTable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1076 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1076 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_1077 = InitUserStackTop - argOffset		(int)
	load	[r14+-356],r1
	load	[r14+-376],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1080 = numArgs + 1		(int)
	load	[r14+-380],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   _temp_1079 = 4 * _temp_1080		(int)
	mov	4,r1
	load	[r14+-12],r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   _temp_1078 = InitUserStackTop - _temp_1079		(int)
	load	[r14+-356],r1
	load	[r14+-16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1077  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-360],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1078  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+12]
!   Call the function
	mov	2283,r13		! source line 2283
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,884,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_1081
	.word	8		! total size of parameters
	.word	880		! frame size = 880
	.word	_Label_1082
	.word	8
	.word	4
	.word	_Label_1083
	.word	12
	.word	4
	.word	_Label_1084
	.word	-12
	.word	4
	.word	_Label_1085
	.word	-16
	.word	4
	.word	_Label_1086
	.word	-20
	.word	4
	.word	_Label_1087
	.word	-24
	.word	4
	.word	_Label_1088
	.word	-28
	.word	4
	.word	_Label_1089
	.word	-32
	.word	4
	.word	_Label_1090
	.word	-36
	.word	4
	.word	_Label_1091
	.word	-40
	.word	4
	.word	_Label_1092
	.word	-44
	.word	4
	.word	_Label_1093
	.word	-48
	.word	4
	.word	_Label_1094
	.word	-52
	.word	4
	.word	_Label_1095
	.word	-56
	.word	4
	.word	_Label_1096
	.word	-60
	.word	4
	.word	_Label_1097
	.word	-64
	.word	4
	.word	_Label_1098
	.word	-68
	.word	4
	.word	_Label_1099
	.word	-72
	.word	4
	.word	_Label_1100
	.word	-76
	.word	4
	.word	_Label_1101
	.word	-80
	.word	4
	.word	_Label_1102
	.word	-84
	.word	4
	.word	_Label_1103
	.word	-88
	.word	4
	.word	_Label_1104
	.word	-92
	.word	4
	.word	_Label_1105
	.word	-96
	.word	4
	.word	_Label_1106
	.word	-100
	.word	4
	.word	_Label_1107
	.word	-104
	.word	4
	.word	_Label_1108
	.word	-108
	.word	4
	.word	_Label_1109
	.word	-112
	.word	4
	.word	_Label_1110
	.word	-116
	.word	4
	.word	_Label_1111
	.word	-120
	.word	4
	.word	_Label_1112
	.word	-124
	.word	4
	.word	_Label_1113
	.word	-128
	.word	4
	.word	_Label_1114
	.word	-132
	.word	4
	.word	_Label_1115
	.word	-136
	.word	4
	.word	_Label_1116
	.word	-140
	.word	4
	.word	_Label_1117
	.word	-144
	.word	4
	.word	_Label_1118
	.word	-148
	.word	4
	.word	_Label_1119
	.word	-152
	.word	4
	.word	_Label_1120
	.word	-156
	.word	4
	.word	_Label_1121
	.word	-160
	.word	4
	.word	_Label_1122
	.word	-164
	.word	4
	.word	_Label_1123
	.word	-168
	.word	4
	.word	_Label_1124
	.word	-172
	.word	4
	.word	_Label_1125
	.word	-176
	.word	4
	.word	_Label_1126
	.word	-180
	.word	4
	.word	_Label_1127
	.word	-184
	.word	4
	.word	_Label_1128
	.word	-188
	.word	4
	.word	_Label_1129
	.word	-192
	.word	4
	.word	_Label_1130
	.word	-196
	.word	4
	.word	_Label_1131
	.word	-200
	.word	4
	.word	_Label_1132
	.word	-204
	.word	4
	.word	_Label_1133
	.word	-208
	.word	4
	.word	_Label_1134
	.word	-212
	.word	4
	.word	_Label_1135
	.word	-216
	.word	4
	.word	_Label_1136
	.word	-220
	.word	4
	.word	_Label_1137
	.word	-224
	.word	4
	.word	_Label_1138
	.word	-228
	.word	4
	.word	_Label_1139
	.word	-232
	.word	4
	.word	_Label_1140
	.word	-236
	.word	4
	.word	_Label_1141
	.word	-240
	.word	4
	.word	_Label_1142
	.word	-244
	.word	4
	.word	_Label_1143
	.word	-248
	.word	4
	.word	_Label_1144
	.word	-252
	.word	4
	.word	_Label_1145
	.word	-256
	.word	4
	.word	_Label_1146
	.word	-260
	.word	4
	.word	_Label_1147
	.word	-264
	.word	4
	.word	_Label_1148
	.word	-268
	.word	4
	.word	_Label_1149
	.word	-272
	.word	4
	.word	_Label_1150
	.word	-276
	.word	4
	.word	_Label_1151
	.word	-280
	.word	4
	.word	_Label_1152
	.word	-284
	.word	4
	.word	_Label_1153
	.word	-288
	.word	4
	.word	_Label_1154
	.word	-292
	.word	4
	.word	_Label_1155
	.word	-296
	.word	4
	.word	_Label_1156
	.word	-300
	.word	4
	.word	_Label_1157
	.word	-304
	.word	4
	.word	_Label_1158
	.word	-308
	.word	4
	.word	_Label_1159
	.word	-312
	.word	4
	.word	_Label_1160
	.word	-316
	.word	4
	.word	_Label_1161
	.word	-320
	.word	4
	.word	_Label_1162
	.word	-324
	.word	4
	.word	_Label_1163
	.word	-328
	.word	4
	.word	_Label_1164
	.word	-332
	.word	4
	.word	_Label_1165
	.word	-336
	.word	4
	.word	_Label_1166
	.word	-340
	.word	4
	.word	_Label_1167
	.word	-344
	.word	4
	.word	_Label_1168
	.word	-348
	.word	4
	.word	_Label_1169
	.word	-352
	.word	4
	.word	_Label_1170
	.word	-356
	.word	4
	.word	_Label_1171
	.word	-360
	.word	4
	.word	_Label_1172
	.word	-364
	.word	4
	.word	_Label_1173
	.word	-368
	.word	4
	.word	_Label_1174
	.word	-372
	.word	4
	.word	_Label_1175
	.word	-376
	.word	4
	.word	_Label_1176
	.word	-380
	.word	4
	.word	_Label_1177
	.word	-384
	.word	4
	.word	_Label_1178
	.word	-388
	.word	4
	.word	_Label_1179
	.word	-392
	.word	4
	.word	_Label_1180
	.word	-396
	.word	4
	.word	_Label_1181
	.word	-400
	.word	4
	.word	_Label_1182
	.word	-404
	.word	4
	.word	_Label_1183
	.word	-608
	.word	204
	.word	_Label_1184
	.word	-868
	.word	260
	.word	0
_Label_1081:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_1082:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_1083:
	.byte	'P'
	.ascii	"args\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1168:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1169:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1170:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_1171:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1172:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1173:
	.byte	'I'
	.ascii	"argsAddi\0"
	.align
_Label_1174:
	.byte	'I'
	.ascii	"addiOffset\0"
	.align
_Label_1175:
	.byte	'I'
	.ascii	"argOffset\0"
	.align
_Label_1176:
	.byte	'I'
	.ascii	"numArgs\0"
	.align
_Label_1177:
	.byte	'I'
	.ascii	"stringAddi\0"
	.align
_Label_1178:
	.byte	'I'
	.ascii	"origChars\0"
	.align
_Label_1179:
	.byte	'I'
	.ascii	"alteredChars\0"
	.align
_Label_1180:
	.byte	'I'
	.ascii	"trash\0"
	.align
_Label_1181:
	.byte	'I'
	.ascii	"physicalAddi\0"
	.align
_Label_1182:
	.byte	'P'
	.ascii	"myFile\0"
	.align
_Label_1183:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_1184:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Chdir  ===============
! 
_P_Kernel_Handle_Sys_Chdir:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Chdir,r1
	push	r1
	mov	96,r1
_Label_7150:
	push	r0
	sub	r1,1,r1
	bne	_Label_7150
	mov	2290,r13		! source line 2290
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   _temp_1185 = &strBuffer
	add	r14,-368,r1
	store	r1,[r14+-104]
!   _temp_1186 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1188 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1187 = *_temp_1188  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1187) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1189 = _temp_1187 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_1185  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1186  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! IF STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1191		(int)
	load	[r14+-108],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1191
!	_Label_1190	jmp	_Label_1190
_Label_1190:
! THEN...
	mov	2302,r13		! source line 2302
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1193 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1192 = *_temp_1193  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1192) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1194 = _temp_1192 + 236
	load	[r14+-84],r1
	add	r1,236,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_1194 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-76],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,388,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1191:
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
	mov	2306,r13		! source line 2306
	mov	"\0\0SE",r10
!   _temp_1195 = &strBuffer
	add	r14,-368,r1
	store	r1,[r14+-72]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1198 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1197 = *_temp_1198  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1197) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1199 = _temp_1197 + 240
	load	[r14+-64],r1
	add	r1,240,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1196 = *_temp_1199  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_1200 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1195  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1196  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+16]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=newFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-372]
! IF STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0IF",r10
!   if intIsZero (newFile) then goto _Label_1201
	load	[r14+-372],r1
	cmp	r1,r0
	be	_Label_1201
	jmp	_Label_1202
_Label_1201:
! THEN...
	mov	2309,r13		! source line 2309
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,388,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1202:
! IF STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0IF",r10
!   if intIsZero (newFile) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1206 = newFile + 12
	load	[r14+-372],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1205 = *_temp_1206  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1205 == 4 then goto _Label_1204		(int)
	load	[r14+-48],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_1204
!	_Label_1203	jmp	_Label_1203
_Label_1203:
! THEN...
	mov	2313,r13		! source line 2313
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,388,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1204:
! SEND STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1209 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1208 = *_temp_1209  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1208) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1210 = _temp_1208 + 240
	load	[r14+-36],r1
	add	r1,240,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1207 = *_temp_1210  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_1211 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1207  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1213 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1212 = *_temp_1213  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1212) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1214 = _temp_1212 + 240
	load	[r14+-20],r1
	add	r1,240,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1214 = newFile  (sizeInBytes=4)
	load	[r14+-372],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,388,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Chdir:
	.word	_sourceFileName
	.word	_Label_1215
	.word	4		! total size of parameters
	.word	384		! frame size = 384
	.word	_Label_1216
	.word	8
	.word	4
	.word	_Label_1217
	.word	-12
	.word	4
	.word	_Label_1218
	.word	-16
	.word	4
	.word	_Label_1219
	.word	-20
	.word	4
	.word	_Label_1220
	.word	-24
	.word	4
	.word	_Label_1221
	.word	-28
	.word	4
	.word	_Label_1222
	.word	-32
	.word	4
	.word	_Label_1223
	.word	-36
	.word	4
	.word	_Label_1224
	.word	-40
	.word	4
	.word	_Label_1225
	.word	-44
	.word	4
	.word	_Label_1226
	.word	-48
	.word	4
	.word	_Label_1227
	.word	-52
	.word	4
	.word	_Label_1228
	.word	-56
	.word	4
	.word	_Label_1229
	.word	-60
	.word	4
	.word	_Label_1230
	.word	-64
	.word	4
	.word	_Label_1231
	.word	-68
	.word	4
	.word	_Label_1232
	.word	-72
	.word	4
	.word	_Label_1233
	.word	-76
	.word	4
	.word	_Label_1234
	.word	-80
	.word	4
	.word	_Label_1235
	.word	-84
	.word	4
	.word	_Label_1236
	.word	-88
	.word	4
	.word	_Label_1237
	.word	-92
	.word	4
	.word	_Label_1238
	.word	-96
	.word	4
	.word	_Label_1239
	.word	-100
	.word	4
	.word	_Label_1240
	.word	-104
	.word	4
	.word	_Label_1241
	.word	-108
	.word	4
	.word	_Label_1242
	.word	-368
	.word	260
	.word	_Label_1243
	.word	-372
	.word	4
	.word	0
_Label_1215:
	.ascii	"Handle_Sys_Chdir\0"
	.align
_Label_1216:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1241:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1242:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_1243:
	.byte	'P'
	.ascii	"newFile\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Dup  ===============
! 
_P_Kernel_Handle_Sys_Dup:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Dup,r1
	push	r1
	mov	31,r1
_Label_7151:
	push	r0
	sub	r1,1,r1
	bne	_Label_7151
	mov	2324,r13		! source line 2324
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_1247		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1247
	jmp	_Label_1244
_Label_1247:
!   if fd <= 48 then goto _Label_1246		(int)
	load	[r14+8],r1
	mov	48,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1246
	jmp	_Label_1244
_Label_1246:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1250 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1249 = *_temp_1250  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1249) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1251 = _temp_1249 + 244
	load	[r14+-116],r1
	add	r1,244,r1
	store	r1,[r14+-108]
!   Move address of _temp_1251 [fd ] into _temp_1252
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1248 = *_temp_1252  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1248) then goto _Label_1244
	load	[r14+-120],r1
	cmp	r1,r0
	be	_Label_1244
	jmp	_Label_1245
_Label_1244:
! THEN...
	mov	2331,r13		! source line 2331
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1254 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1253 = *_temp_1254  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1253) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1255 = _temp_1253 + 236
	load	[r14+-100],r1
	add	r1,236,r1
	store	r1,[r14+-92]
!   Data Move: *_temp_1255 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-92],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1245:
! ASSIGNMENT STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   fileDesIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-124]
! FOR STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1260 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1261 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1260  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-128]
_Label_1256:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1261 then goto _Label_1259		
	load	[r14+-128],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1259
_Label_1257:
	mov	2337,r13		! source line 2337
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1266 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1265 = *_temp_1266  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1265) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1267 = _temp_1265 + 244
	load	[r14+-76],r1
	add	r1,244,r1
	store	r1,[r14+-68]
!   Move address of _temp_1267 [i ] into _temp_1268
!     make sure index expr is >= 0
	load	[r14+-128],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: _temp_1264 = *_temp_1268  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1264) then goto _Label_1262
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_1262
	jmp	_Label_1263
_Label_1262:
! THEN...
	mov	2339,r13		! source line 2339
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0AS",r10
!   fileDesIndex = i		(4 bytes)
	load	[r14+-128],r1
	store	r1,[r14+-124]
! ASSIGNMENT STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1270 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1269 = *_temp_1270  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1269) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1271 = _temp_1269 + 244
	load	[r14+-60],r1
	add	r1,244,r1
	store	r1,[r14+-52]
!   Move address of _temp_1271 [fileDesIndex ] into _temp_1272
!     make sure index expr is >= 0
	load	[r14+-124],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
	mov	2340,r13		! source line 2340
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1276 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1275 = *_temp_1276  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1275) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1277 = _temp_1275 + 244
	load	[r14+-36],r1
	add	r1,244,r1
	store	r1,[r14+-28]
!   Move address of _temp_1277 [fd ] into _temp_1278
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_1274 = *_temp_1278  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1274) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1273  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1272 = _temp_1273  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! BREAK STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0BR",r10
	jmp	_Label_1259
! END IF...
_Label_1263:
!   Increment the FOR-LOOP index variable and jump back
_Label_1258:
!   i = i + 1
	load	[r14+-128],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
	jmp	_Label_1256
! END FOR
_Label_1259:
! IF STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0IF",r10
!   if fileDesIndex != -1 then goto _Label_1280		(int)
	load	[r14+-124],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1280
!	_Label_1279	jmp	_Label_1279
_Label_1279:
! THEN...
	mov	2346,r13		! source line 2346
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1282 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1281 = *_temp_1282  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1281) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1283 = _temp_1281 + 236
	load	[r14+-20],r1
	add	r1,236,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1283 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1280:
! RETURN STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0RE",r10
!   ReturnResult: fileDesIndex  (sizeInBytes=4)
	load	[r14+-124],r1
	store	r1,[r14+8]
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Dup:
	.word	_sourceFileName
	.word	_Label_1284
	.word	4		! total size of parameters
	.word	124		! frame size = 124
	.word	_Label_1285
	.word	8
	.word	4
	.word	_Label_1286
	.word	-12
	.word	4
	.word	_Label_1287
	.word	-16
	.word	4
	.word	_Label_1288
	.word	-20
	.word	4
	.word	_Label_1289
	.word	-24
	.word	4
	.word	_Label_1290
	.word	-28
	.word	4
	.word	_Label_1291
	.word	-32
	.word	4
	.word	_Label_1292
	.word	-36
	.word	4
	.word	_Label_1293
	.word	-40
	.word	4
	.word	_Label_1294
	.word	-44
	.word	4
	.word	_Label_1295
	.word	-48
	.word	4
	.word	_Label_1296
	.word	-52
	.word	4
	.word	_Label_1297
	.word	-56
	.word	4
	.word	_Label_1298
	.word	-60
	.word	4
	.word	_Label_1299
	.word	-64
	.word	4
	.word	_Label_1300
	.word	-68
	.word	4
	.word	_Label_1301
	.word	-72
	.word	4
	.word	_Label_1302
	.word	-76
	.word	4
	.word	_Label_1303
	.word	-80
	.word	4
	.word	_Label_1304
	.word	-84
	.word	4
	.word	_Label_1305
	.word	-88
	.word	4
	.word	_Label_1306
	.word	-92
	.word	4
	.word	_Label_1307
	.word	-96
	.word	4
	.word	_Label_1308
	.word	-100
	.word	4
	.word	_Label_1309
	.word	-104
	.word	4
	.word	_Label_1310
	.word	-108
	.word	4
	.word	_Label_1311
	.word	-112
	.word	4
	.word	_Label_1312
	.word	-116
	.word	4
	.word	_Label_1313
	.word	-120
	.word	4
	.word	_Label_1314
	.word	-124
	.word	4
	.word	_Label_1315
	.word	-128
	.word	4
	.word	0
_Label_1284:
	.ascii	"Handle_Sys_Dup\0"
	.align
_Label_1285:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1314:
	.byte	'I'
	.ascii	"fileDesIndex\0"
	.align
_Label_1315:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Pipe  ===============
! 
_P_Kernel_Handle_Sys_Pipe:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Pipe,r1
	push	r1
	mov	69,r1
_Label_7152:
	push	r0
	sub	r1,1,r1
	bne	_Label_7152
	mov	2354,r13		! source line 2354
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0AS",r10
!   fdsAddi = fds		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
	mov	2361,r13		! source line 2361
	mov	"\0\0SE",r10
!   _temp_1316 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Send message GetAnOpenFile
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=readOFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   if intIsZero (readOFile) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1317 = readOFile + 24
	load	[r14+-260],r1
	add	r1,24,r1
	store	r1,[r14+-236]
!   if intIsZero (readOFile) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1320 = readOFile + 24
	load	[r14+-260],r1
	add	r1,24,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1319 = *_temp_1320  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   _temp_1318 = _temp_1319 + 1		(int)
	load	[r14+-228],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-232]
!   Data Move: *_temp_1317 = _temp_1318  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r14+-236],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
	mov	2365,r13		! source line 2365
	mov	"\0\0SE",r10
!   _temp_1321 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Send message GetAnOpenFile
	load	[r14+-220],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=writeOFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   if intIsZero (writeOFile) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1322 = writeOFile + 24
	load	[r14+-264],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (writeOFile) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1325 = writeOFile + 24
	load	[r14+-264],r1
	add	r1,24,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1324 = *_temp_1325  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_1323 = _temp_1324 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_1322 = _temp_1323  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
	mov	2369,r13		! source line 2369
	mov	"\0\0SE",r10
!   _temp_1326 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-200]
!   Send message GetFreePipe
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=myPipe  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0IF",r10
	mov	2370,r13		! source line 2370
	mov	"\0\0SE",r10
!   if intIsZero (myPipe) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Open
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_1329  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1329 then goto _Label_1328 else goto _Label_1327
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1327
	jmp	_Label_1328
_Label_1327:
! THEN...
	mov	2371,r13		! source line 2371
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1328:
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   if intIsZero (readOFile) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1330 = readOFile + 36
	load	[r14+-260],r1
	add	r1,36,r1
	store	r1,[r14+-196]
!   Data Move: *_temp_1330 = myPipe  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r14+-196],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   if intIsZero (readOFile) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1331 = readOFile + 12
	load	[r14+-260],r1
	add	r1,12,r1
	store	r1,[r14+-192]
!   Data Move: *_temp_1331 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-192],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   if intIsZero (readOFile) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1332 = readOFile + 32
	load	[r14+-260],r1
	add	r1,32,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_1332 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   if intIsZero (writeOFile) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1333 = writeOFile + 36
	load	[r14+-264],r1
	add	r1,36,r1
	store	r1,[r14+-184]
!   Data Move: *_temp_1333 = myPipe  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r14+-184],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0AS",r10
!   if intIsZero (writeOFile) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1334 = writeOFile + 12
	load	[r14+-264],r1
	add	r1,12,r1
	store	r1,[r14+-180]
!   Data Move: *_temp_1334 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0AS",r10
!   if intIsZero (writeOFile) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1335 = writeOFile + 32
	load	[r14+-264],r1
	add	r1,32,r1
	store	r1,[r14+-176]
!   Data Move: *_temp_1335 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-176],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   i = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
	mov	2383,r13		! source line 2383
	mov	"\0\0SE",r10
!   _temp_1336 = &i
	add	r14,-252,r1
	store	r1,[r14+-172]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1338 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1337 = *_temp_1338  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1337) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1339 = _temp_1337 + 32
	load	[r14+-168],r1
	add	r1,32,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=12  value=fdsAddi  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1336  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesToVirtual
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,80,r2
	call	r2
!   Retrieve Result: targetName=trash  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0IF",r10
!   if trash != -1 then goto _Label_1341		(int)
	load	[r14+-256],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1341
!	_Label_1340	jmp	_Label_1340
_Label_1340:
! THEN...
	mov	2385,r13		! source line 2385
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1342
_Label_1341:
! ELSE...
	mov	2387,r13		! source line 2387
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   fdsAddi = fdsAddi + 4		(int)
	load	[r14+-248],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! END IF...
_Label_1342:
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   fileDesIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-244]
! FOR STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1347 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1348 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1347  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-252]
_Label_1343:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1348 then goto _Label_1346		
	load	[r14+-252],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1346
_Label_1344:
	mov	2392,r13		! source line 2392
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1353 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1352 = *_temp_1353  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1352) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1354 = _temp_1352 + 244
	load	[r14+-144],r1
	add	r1,244,r1
	store	r1,[r14+-136]
!   Move address of _temp_1354 [i ] into _temp_1355
!     make sure index expr is >= 0
	load	[r14+-252],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
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
	store	r2,[r14+-132]
!   Data Move: _temp_1351 = *_temp_1355  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1351) then goto _Label_1349
	load	[r14+-148],r1
	cmp	r1,r0
	be	_Label_1349
	jmp	_Label_1350
_Label_1349:
! THEN...
	mov	2394,r13		! source line 2394
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   fileDesIndex = i		(4 bytes)
	load	[r14+-252],r1
	store	r1,[r14+-244]
! BREAK STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0BR",r10
	jmp	_Label_1346
! END IF...
_Label_1350:
!   Increment the FOR-LOOP index variable and jump back
_Label_1345:
!   i = i + 1
	load	[r14+-252],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
	jmp	_Label_1343
! END FOR
_Label_1346:
! IF STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0IF",r10
!   if fileDesIndex != -1 then goto _Label_1357		(int)
	load	[r14+-244],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1357
!	_Label_1356	jmp	_Label_1356
_Label_1356:
! THEN...
	mov	2400,r13		! source line 2400
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1359 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1358 = *_temp_1359  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1358) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1360 = _temp_1358 + 236
	load	[r14+-128],r1
	add	r1,236,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_1360 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-120],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1361
_Label_1357:
! ELSE...
	mov	2404,r13		! source line 2404
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1363 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1362 = *_temp_1363  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1362) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1364 = _temp_1362 + 244
	load	[r14+-116],r1
	add	r1,244,r1
	store	r1,[r14+-108]
!   Move address of _temp_1364 [fileDesIndex ] into _temp_1365
!     make sure index expr is >= 0
	load	[r14+-244],r2
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
!   Data Move: *_temp_1365 = readOFile  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r14+-104],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
	mov	2405,r13		! source line 2405
	mov	"\0\0SE",r10
!   _temp_1366 = &fileDesIndex
	add	r14,-244,r1
	store	r1,[r14+-100]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1368 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1367 = *_temp_1368  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1367) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1369 = _temp_1367 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=fdsAddi  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1366  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesToVirtual
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,80,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1371		(int)
	load	[r14+-252],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1371
!	_Label_1370	jmp	_Label_1370
_Label_1370:
! THEN...
	mov	2407,r13		! source line 2407
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1372
_Label_1371:
! ELSE...
	mov	2409,r13		! source line 2409
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   fdsAddi = fdsAddi + 4		(int)
	load	[r14+-248],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! END IF...
_Label_1372:
! END IF...
_Label_1361:
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   fileDesIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-244]
! FOR STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1377 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1378 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1377  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-252]
_Label_1373:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1378 then goto _Label_1376		
	load	[r14+-252],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1376
_Label_1374:
	mov	2414,r13		! source line 2414
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1383 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1382 = *_temp_1383  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1382) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = _temp_1382 + 244
	load	[r14+-72],r1
	add	r1,244,r1
	store	r1,[r14+-64]
!   Move address of _temp_1384 [i ] into _temp_1385
!     make sure index expr is >= 0
	load	[r14+-252],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: _temp_1381 = *_temp_1385  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1381) then goto _Label_1379
	load	[r14+-76],r1
	cmp	r1,r0
	be	_Label_1379
	jmp	_Label_1380
_Label_1379:
! THEN...
	mov	2416,r13		! source line 2416
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   fileDesIndex = i		(4 bytes)
	load	[r14+-252],r1
	store	r1,[r14+-244]
! BREAK STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0BR",r10
	jmp	_Label_1376
! END IF...
_Label_1380:
!   Increment the FOR-LOOP index variable and jump back
_Label_1375:
!   i = i + 1
	load	[r14+-252],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
	jmp	_Label_1373
! END FOR
_Label_1376:
! IF STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0IF",r10
!   if fileDesIndex != -1 then goto _Label_1387		(int)
	load	[r14+-244],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1387
!	_Label_1386	jmp	_Label_1386
_Label_1386:
! THEN...
	mov	2421,r13		! source line 2421
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1389 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1388 = *_temp_1389  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1388) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1390 = _temp_1388 + 236
	load	[r14+-56],r1
	add	r1,236,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1390 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-48],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1391
_Label_1387:
! ELSE...
	mov	2425,r13		! source line 2425
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1393 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1392 = *_temp_1393  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1392) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1394 = _temp_1392 + 244
	load	[r14+-44],r1
	add	r1,244,r1
	store	r1,[r14+-36]
!   Move address of _temp_1394 [fileDesIndex ] into _temp_1395
!     make sure index expr is >= 0
	load	[r14+-244],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: *_temp_1395 = writeOFile  (sizeInBytes=4)
	load	[r14+-264],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0AS",r10
	mov	2426,r13		! source line 2426
	mov	"\0\0SE",r10
!   _temp_1396 = &fileDesIndex
	add	r14,-244,r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1398 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1397 = *_temp_1398  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1397) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1399 = _temp_1397 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=fdsAddi  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1396  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesToVirtual
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,80,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1401		(int)
	load	[r14+-252],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1401
!	_Label_1400	jmp	_Label_1400
_Label_1400:
! THEN...
	mov	2428,r13		! source line 2428
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1401:
! END IF...
_Label_1391:
! RETURN STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,280,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Pipe:
	.word	_sourceFileName
	.word	_Label_1402
	.word	4		! total size of parameters
	.word	276		! frame size = 276
	.word	_Label_1403
	.word	8
	.word	4
	.word	_Label_1404
	.word	-16
	.word	4
	.word	_Label_1405
	.word	-20
	.word	4
	.word	_Label_1406
	.word	-24
	.word	4
	.word	_Label_1407
	.word	-28
	.word	4
	.word	_Label_1408
	.word	-32
	.word	4
	.word	_Label_1409
	.word	-36
	.word	4
	.word	_Label_1410
	.word	-40
	.word	4
	.word	_Label_1411
	.word	-44
	.word	4
	.word	_Label_1412
	.word	-48
	.word	4
	.word	_Label_1413
	.word	-52
	.word	4
	.word	_Label_1414
	.word	-56
	.word	4
	.word	_Label_1415
	.word	-60
	.word	4
	.word	_Label_1416
	.word	-64
	.word	4
	.word	_Label_1417
	.word	-68
	.word	4
	.word	_Label_1418
	.word	-72
	.word	4
	.word	_Label_1419
	.word	-76
	.word	4
	.word	_Label_1420
	.word	-80
	.word	4
	.word	_Label_1421
	.word	-84
	.word	4
	.word	_Label_1422
	.word	-88
	.word	4
	.word	_Label_1423
	.word	-92
	.word	4
	.word	_Label_1424
	.word	-96
	.word	4
	.word	_Label_1425
	.word	-100
	.word	4
	.word	_Label_1426
	.word	-104
	.word	4
	.word	_Label_1427
	.word	-108
	.word	4
	.word	_Label_1428
	.word	-112
	.word	4
	.word	_Label_1429
	.word	-116
	.word	4
	.word	_Label_1430
	.word	-120
	.word	4
	.word	_Label_1431
	.word	-124
	.word	4
	.word	_Label_1432
	.word	-128
	.word	4
	.word	_Label_1433
	.word	-132
	.word	4
	.word	_Label_1434
	.word	-136
	.word	4
	.word	_Label_1435
	.word	-140
	.word	4
	.word	_Label_1436
	.word	-144
	.word	4
	.word	_Label_1437
	.word	-148
	.word	4
	.word	_Label_1438
	.word	-152
	.word	4
	.word	_Label_1439
	.word	-156
	.word	4
	.word	_Label_1440
	.word	-160
	.word	4
	.word	_Label_1441
	.word	-164
	.word	4
	.word	_Label_1442
	.word	-168
	.word	4
	.word	_Label_1443
	.word	-172
	.word	4
	.word	_Label_1444
	.word	-176
	.word	4
	.word	_Label_1445
	.word	-180
	.word	4
	.word	_Label_1446
	.word	-184
	.word	4
	.word	_Label_1447
	.word	-188
	.word	4
	.word	_Label_1448
	.word	-192
	.word	4
	.word	_Label_1449
	.word	-196
	.word	4
	.word	_Label_1450
	.word	-9
	.word	1
	.word	_Label_1451
	.word	-200
	.word	4
	.word	_Label_1452
	.word	-204
	.word	4
	.word	_Label_1453
	.word	-208
	.word	4
	.word	_Label_1454
	.word	-212
	.word	4
	.word	_Label_1455
	.word	-216
	.word	4
	.word	_Label_1456
	.word	-220
	.word	4
	.word	_Label_1457
	.word	-224
	.word	4
	.word	_Label_1458
	.word	-228
	.word	4
	.word	_Label_1459
	.word	-232
	.word	4
	.word	_Label_1460
	.word	-236
	.word	4
	.word	_Label_1461
	.word	-240
	.word	4
	.word	_Label_1462
	.word	-244
	.word	4
	.word	_Label_1463
	.word	-248
	.word	4
	.word	_Label_1464
	.word	-252
	.word	4
	.word	_Label_1465
	.word	-256
	.word	4
	.word	_Label_1466
	.word	-260
	.word	4
	.word	_Label_1467
	.word	-264
	.word	4
	.word	_Label_1468
	.word	-268
	.word	4
	.word	0
_Label_1402:
	.ascii	"Handle_Sys_Pipe\0"
	.align
_Label_1403:
	.byte	'P'
	.ascii	"fds\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1450:
	.byte	'C'
	.ascii	"_temp_1329\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1462:
	.byte	'I'
	.ascii	"fileDesIndex\0"
	.align
_Label_1463:
	.byte	'I'
	.ascii	"fdsAddi\0"
	.align
_Label_1464:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1465:
	.byte	'I'
	.ascii	"trash\0"
	.align
_Label_1466:
	.byte	'P'
	.ascii	"readOFile\0"
	.align
_Label_1467:
	.byte	'P'
	.ascii	"writeOFile\0"
	.align
_Label_1468:
	.byte	'P'
	.ascii	"myPipe\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	116,r1
_Label_7153:
	push	r0
	sub	r1,1,r1
	bne	_Label_7153
	mov	2437,r13		! source line 2437
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
	mov	2444,r13		! source line 2444
	mov	"\0\0SE",r10
!   _temp_1469 = &strBuffer
	add	r14,-444,r1
	store	r1,[r14+-180]
!   _temp_1470 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1472 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1471 = *_temp_1472  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_1471) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1473 = _temp_1471 + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=12  value=_temp_1469  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1470  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1475		(int)
	load	[r14+-184],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1475
!	_Label_1474	jmp	_Label_1474
_Label_1474:
! THEN...
	mov	2449,r13		! source line 2449
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1477 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1476 = *_temp_1477  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1476) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1478 = _temp_1476 + 236
	load	[r14+-160],r1
	add	r1,236,r1
	store	r1,[r14+-152]
!   Data Move: *_temp_1478 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-152],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,468,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1475:
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   fileDesIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-448]
! FOR STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1483 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-148]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1484 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-144]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1483  (sizeInBytes=4)
	load	[r14+-148],r1
	store	r1,[r14+-184]
_Label_1479:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1484 then goto _Label_1482		
	load	[r14+-184],r1
	load	[r14+-144],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1482
_Label_1480:
	mov	2455,r13		! source line 2455
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1489 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1488 = *_temp_1489  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1488) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1490 = _temp_1488 + 244
	load	[r14+-136],r1
	add	r1,244,r1
	store	r1,[r14+-128]
!   Move address of _temp_1490 [i ] into _temp_1491
!     make sure index expr is >= 0
	load	[r14+-184],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1487 = *_temp_1491  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1487) then goto _Label_1485
	load	[r14+-140],r1
	cmp	r1,r0
	be	_Label_1485
	jmp	_Label_1486
_Label_1485:
! THEN...
	mov	2457,r13		! source line 2457
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0AS",r10
!   fileDesIndex = i		(4 bytes)
	load	[r14+-184],r1
	store	r1,[r14+-448]
! BREAK STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0BR",r10
	jmp	_Label_1482
! END IF...
_Label_1486:
!   Increment the FOR-LOOP index variable and jump back
_Label_1481:
!   i = i + 1
	load	[r14+-184],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
	jmp	_Label_1479
! END FOR
_Label_1482:
! IF STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0IF",r10
!   if fileDesIndex != -1 then goto _Label_1493		(int)
	load	[r14+-448],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1493
!	_Label_1492	jmp	_Label_1492
_Label_1492:
! THEN...
	mov	2464,r13		! source line 2464
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1495 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1494 = *_temp_1495  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1494) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1496 = _temp_1494 + 236
	load	[r14+-120],r1
	add	r1,236,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_1496 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-112],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0RE",r10
!   ReturnResult: fileDesIndex  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,468,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1493:
! IF STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0IF",r10
!   if flags != 1 then goto _Label_1506		(int)
	load	[r14+12],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1506
	jmp	_Label_1500
_Label_1506:
!   if flags != 2 then goto _Label_1505		(int)
	load	[r14+12],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1505
	jmp	_Label_1500
_Label_1505:
!   if flags != 3 then goto _Label_1504		(int)
	load	[r14+12],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1504
	jmp	_Label_1500
_Label_1504:
!   if flags != 4 then goto _Label_1503		(int)
	load	[r14+12],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1503
	jmp	_Label_1500
_Label_1503:
!   if flags != 8 then goto _Label_1501		(int)
	load	[r14+12],r1
	mov	8,r2
	cmp	r1,r2
	bne	_Label_1501
!	_Label_1500	jmp	_Label_1500
_Label_1500:
!   _temp_1499 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1502
_Label_1501:
!   _temp_1499 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1502:
!   if _temp_1499 then goto _Label_1498 else goto _Label_1497
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1497
	jmp	_Label_1498
_Label_1497:
! THEN...
	mov	2469,r13		! source line 2469
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1508 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1507 = *_temp_1508  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1507) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1509 = _temp_1507 + 236
	load	[r14+-108],r1
	add	r1,236,r1
	store	r1,[r14+-100]
!   Data Move: *_temp_1509 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-100],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,468,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1498:
! IF STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0IF",r10
!   _temp_1512 = &strBuffer
	add	r14,-444,r1
	store	r1,[r14+-96]
!   _temp_1513 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1513  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Call the function
	mov	2474,r13		! source line 2474
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_1510 else goto _Label_1511
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1511
	jmp	_Label_1510
_Label_1510:
! THEN...
	mov	2475,r13		! source line 2475
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1515 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1514 = *_temp_1515  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1514) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1516 = _temp_1514 + 244
	load	[r14+-88],r1
	add	r1,244,r1
	store	r1,[r14+-80]
!   Move address of _temp_1516 [fileDesIndex ] into _temp_1517
!     make sure index expr is >= 0
	load	[r14+-448],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
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
!   _temp_1519 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-68]
!   _temp_1520 = _temp_1519 + 8016
	load	[r14+-68],r1
	add	r1,8016,r1
	store	r1,[r14+-64]
!   _temp_1518 = _temp_1520		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   Data Move: *_temp_1517 = _temp_1518  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0RE",r10
!   ReturnResult: fileDesIndex  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,468,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1511:
! ASSIGNMENT STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0AS",r10
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   _temp_1521 = &strBuffer
	add	r14,-444,r1
	store	r1,[r14+-60]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1524 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1523 = *_temp_1524  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1523) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1525 = _temp_1523 + 240
	load	[r14+-52],r1
	add	r1,240,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1522 = *_temp_1525  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_1526 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1521  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1522  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=flags  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=mode  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message Open
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=newFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-452]
! IF STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0IF",r10
!   if intIsZero (newFile) then goto _Label_1527
	load	[r14+-452],r1
	cmp	r1,r0
	be	_Label_1527
	jmp	_Label_1528
_Label_1527:
! THEN...
	mov	2483,r13		! source line 2483
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,468,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1528:
! IF STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0IF",r10
!   if intIsZero (newFile) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1532 = newFile + 12
	load	[r14+-452],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1531 = *_temp_1532  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if _temp_1531 != 4 then goto _Label_1530		(int)
	load	[r14+-36],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1530
!	_Label_1529	jmp	_Label_1529
_Label_1529:
! THEN...
	mov	2487,r13		! source line 2487
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,468,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1530:
! ASSIGNMENT STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1534 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1533 = *_temp_1534  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1533) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1535 = _temp_1533 + 244
	load	[r14+-28],r1
	add	r1,244,r1
	store	r1,[r14+-20]
!   Move address of _temp_1535 [fileDesIndex ] into _temp_1536
!     make sure index expr is >= 0
	load	[r14+-448],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: *_temp_1536 = newFile  (sizeInBytes=4)
	load	[r14+-452],r1
	load	[r14+-16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0RE",r10
!   ReturnResult: fileDesIndex  (sizeInBytes=4)
	load	[r14+-448],r1
	store	r1,[r14+8]
	add	r15,468,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_1537
	.word	12		! total size of parameters
	.word	464		! frame size = 464
	.word	_Label_1538
	.word	8
	.word	4
	.word	_Label_1539
	.word	12
	.word	4
	.word	_Label_1540
	.word	16
	.word	4
	.word	_Label_1541
	.word	-16
	.word	4
	.word	_Label_1542
	.word	-20
	.word	4
	.word	_Label_1543
	.word	-24
	.word	4
	.word	_Label_1544
	.word	-28
	.word	4
	.word	_Label_1545
	.word	-32
	.word	4
	.word	_Label_1546
	.word	-36
	.word	4
	.word	_Label_1547
	.word	-40
	.word	4
	.word	_Label_1548
	.word	-44
	.word	4
	.word	_Label_1549
	.word	-48
	.word	4
	.word	_Label_1550
	.word	-52
	.word	4
	.word	_Label_1551
	.word	-56
	.word	4
	.word	_Label_1552
	.word	-60
	.word	4
	.word	_Label_1553
	.word	-64
	.word	4
	.word	_Label_1554
	.word	-68
	.word	4
	.word	_Label_1555
	.word	-72
	.word	4
	.word	_Label_1556
	.word	-76
	.word	4
	.word	_Label_1557
	.word	-80
	.word	4
	.word	_Label_1558
	.word	-84
	.word	4
	.word	_Label_1559
	.word	-88
	.word	4
	.word	_Label_1560
	.word	-92
	.word	4
	.word	_Label_1561
	.word	-96
	.word	4
	.word	_Label_1562
	.word	-100
	.word	4
	.word	_Label_1563
	.word	-104
	.word	4
	.word	_Label_1564
	.word	-108
	.word	4
	.word	_Label_1565
	.word	-9
	.word	1
	.word	_Label_1566
	.word	-112
	.word	4
	.word	_Label_1567
	.word	-116
	.word	4
	.word	_Label_1568
	.word	-120
	.word	4
	.word	_Label_1569
	.word	-124
	.word	4
	.word	_Label_1570
	.word	-128
	.word	4
	.word	_Label_1571
	.word	-132
	.word	4
	.word	_Label_1572
	.word	-136
	.word	4
	.word	_Label_1573
	.word	-140
	.word	4
	.word	_Label_1574
	.word	-144
	.word	4
	.word	_Label_1575
	.word	-148
	.word	4
	.word	_Label_1576
	.word	-152
	.word	4
	.word	_Label_1577
	.word	-156
	.word	4
	.word	_Label_1578
	.word	-160
	.word	4
	.word	_Label_1579
	.word	-164
	.word	4
	.word	_Label_1580
	.word	-168
	.word	4
	.word	_Label_1581
	.word	-172
	.word	4
	.word	_Label_1582
	.word	-176
	.word	4
	.word	_Label_1583
	.word	-180
	.word	4
	.word	_Label_1584
	.word	-184
	.word	4
	.word	_Label_1585
	.word	-444
	.word	260
	.word	_Label_1586
	.word	-448
	.word	4
	.word	_Label_1587
	.word	-452
	.word	4
	.word	0
_Label_1537:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_1538:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_1539:
	.byte	'I'
	.ascii	"flags\0"
	.align
_Label_1540:
	.byte	'I'
	.ascii	"mode\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1565:
	.byte	'C'
	.ascii	"_temp_1499\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1584:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1585:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_1586:
	.byte	'I'
	.ascii	"fileDesIndex\0"
	.align
_Label_1587:
	.byte	'P'
	.ascii	"newFile\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	42,r1
_Label_7154:
	push	r0
	sub	r1,1,r1
	bne	_Label_7154
	mov	2497,r13		! source line 2497
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1588 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: theProc = *_temp_1588  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1592		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1592
	jmp	_Label_1589
_Label_1592:
!   if fileDesc <= 48 then goto _Label_1591		(int)
	load	[r14+8],r1
	mov	48,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1591
	jmp	_Label_1589
_Label_1591:
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1594 = theProc + 244
	load	[r14+-156],r1
	add	r1,244,r1
	store	r1,[r14+-144]
!   Move address of _temp_1594 [fileDesc ] into _temp_1595
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_1593 = *_temp_1595  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1593) then goto _Label_1589
	load	[r14+-148],r1
	cmp	r1,r0
	be	_Label_1589
	jmp	_Label_1590
_Label_1589:
! THEN...
	mov	2506,r13		! source line 2506
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1596 = theProc + 236
	load	[r14+-156],r1
	add	r1,236,r1
	store	r1,[r14+-136]
!   Data Move: *_temp_1596 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-136],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1597
_Label_1590:
! ELSE...
	mov	2509,r13		! source line 2509
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1598 = theProc + 244
	load	[r14+-156],r1
	add	r1,244,r1
	store	r1,[r14+-132]
!   Move address of _temp_1598 [fileDesc ] into _temp_1599
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
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
	store	r2,[r14+-128]
!   Data Move: file = *_temp_1599  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-160]
! END IF...
_Label_1597:
! IF STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0IF",r10
!   _temp_1604 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-120]
!   _temp_1603 = _temp_1604 + sizeInBytes		(int)
	load	[r14+-120],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1608 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1607 = *_temp_1608  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1607) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1609 = _temp_1607 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   _temp_1610 = _temp_1609 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1606 = *_temp_1610  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   _temp_1605 = _temp_1606 * 8192		(int)
	load	[r14+-112],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1603 <= _temp_1605 then goto _Label_1602		(int)
	load	[r14+-124],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1602
	jmp	_Label_1600
_Label_1602:
!   _temp_1611 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-92]
!   if _temp_1611 >= 0 then goto _Label_1601		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1601
!	_Label_1600	jmp	_Label_1600
_Label_1600:
! THEN...
	mov	2513,r13		! source line 2513
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1613 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1612 = *_temp_1613  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1612) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1614 = _temp_1612 + 236
	load	[r14+-88],r1
	add	r1,236,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_1614 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-80],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1601:
! IF STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1616		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1616
!	_Label_1615	jmp	_Label_1615
_Label_1615:
! THEN...
	mov	2518,r13		! source line 2518
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1617 = theProc + 236
	load	[r14+-156],r1
	add	r1,236,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_1617 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-76],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1616:
! IF STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1626 = file + 32
	load	[r14+-160],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1625 = *_temp_1626  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_1625 != 1 then goto _Label_1624		(int)
	load	[r14+-72],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1624
	jmp	_Label_1621
_Label_1624:
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1628 = file + 32
	load	[r14+-160],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1627 = *_temp_1628  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_1627 != 3 then goto _Label_1622		(int)
	load	[r14+-64],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1622
!	_Label_1621	jmp	_Label_1621
_Label_1621:
!   _temp_1620 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1623
_Label_1622:
!   _temp_1620 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1623:
!   if _temp_1620 then goto _Label_1619 else goto _Label_1618
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1618
	jmp	_Label_1619
_Label_1618:
! THEN...
	mov	2524,r13		! source line 2524
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1629 = theProc + 236
	load	[r14+-156],r1
	add	r1,236,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_1629 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-56],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1619:
! IF STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1633 = file + 12
	load	[r14+-160],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1632 = *_temp_1633  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_1632 != 2 then goto _Label_1631		(int)
	load	[r14+-52],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1631
!	_Label_1630	jmp	_Label_1630
_Label_1630:
! THEN...
	mov	2529,r13		! source line 2529
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2529,r13		! source line 2529
	mov	"\0\0CA",r10
	call	_function_242_serialRead
!   Retrieve Result: targetName=_temp_1634  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_1634  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1631:
! IF STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1638 = file + 12
	load	[r14+-160],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1637 = *_temp_1638  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1637 != 3 then goto _Label_1636		(int)
	load	[r14+-40],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1636
!	_Label_1635	jmp	_Label_1635
_Label_1635:
! THEN...
	mov	2534,r13		! source line 2534
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0RE",r10
	mov	2534,r13		! source line 2534
	mov	"\0\0SE",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1641 = file + 36
	load	[r14+-160],r1
	add	r1,36,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1640 = *_temp_1641  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1640) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Send message Read
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1639  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_1639  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1636:
! RETURN STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0RE",r10
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_1643 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message ReadFile
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
!   Retrieve Result: targetName=_temp_1642  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_1642  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1644
	.word	12		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1645
	.word	8
	.word	4
	.word	_Label_1646
	.word	12
	.word	4
	.word	_Label_1647
	.word	16
	.word	4
	.word	_Label_1648
	.word	-16
	.word	4
	.word	_Label_1649
	.word	-20
	.word	4
	.word	_Label_1650
	.word	-24
	.word	4
	.word	_Label_1651
	.word	-28
	.word	4
	.word	_Label_1652
	.word	-32
	.word	4
	.word	_Label_1653
	.word	-36
	.word	4
	.word	_Label_1654
	.word	-40
	.word	4
	.word	_Label_1655
	.word	-44
	.word	4
	.word	_Label_1656
	.word	-48
	.word	4
	.word	_Label_1657
	.word	-52
	.word	4
	.word	_Label_1658
	.word	-56
	.word	4
	.word	_Label_1659
	.word	-60
	.word	4
	.word	_Label_1660
	.word	-64
	.word	4
	.word	_Label_1661
	.word	-68
	.word	4
	.word	_Label_1662
	.word	-72
	.word	4
	.word	_Label_1663
	.word	-9
	.word	1
	.word	_Label_1664
	.word	-76
	.word	4
	.word	_Label_1665
	.word	-80
	.word	4
	.word	_Label_1666
	.word	-84
	.word	4
	.word	_Label_1667
	.word	-88
	.word	4
	.word	_Label_1668
	.word	-92
	.word	4
	.word	_Label_1669
	.word	-96
	.word	4
	.word	_Label_1670
	.word	-100
	.word	4
	.word	_Label_1671
	.word	-104
	.word	4
	.word	_Label_1672
	.word	-108
	.word	4
	.word	_Label_1673
	.word	-112
	.word	4
	.word	_Label_1674
	.word	-116
	.word	4
	.word	_Label_1675
	.word	-120
	.word	4
	.word	_Label_1676
	.word	-124
	.word	4
	.word	_Label_1677
	.word	-128
	.word	4
	.word	_Label_1678
	.word	-132
	.word	4
	.word	_Label_1679
	.word	-136
	.word	4
	.word	_Label_1680
	.word	-140
	.word	4
	.word	_Label_1681
	.word	-144
	.word	4
	.word	_Label_1682
	.word	-148
	.word	4
	.word	_Label_1683
	.word	-152
	.word	4
	.word	_Label_1684
	.word	-156
	.word	4
	.word	_Label_1685
	.word	-160
	.word	4
	.word	0
_Label_1644:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1645:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1646:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1647:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1663:
	.byte	'C'
	.ascii	"_temp_1620\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1684:
	.byte	'P'
	.ascii	"theProc\0"
	.align
_Label_1685:
	.byte	'P'
	.ascii	"file\0"
	.align
! 
! ===============  FUNCTION serialRead  ===============
! 
_function_242_serialRead:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_242_serialRead,r1
	push	r1
	mov	42,r1
_Label_7155:
	push	r0
	sub	r1,1,r1
	bne	_Label_7155
	mov	2545,r13		! source line 2545
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0AS",r10
!   temp = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
! ASSIGNMENT STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0AS",r10
!   nextPos = buffer		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-152]
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   virtPage = nextPos div 8192		(int)
	load	[r14+-152],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
! WHILE STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0WH",r10
_Label_1686:
!   if temp >= sizeInBytes then goto _Label_1688		(int)
	load	[r14+-156],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1688
!	_Label_1687	jmp	_Label_1687
_Label_1687:
	mov	2555,r13		! source line 2555
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1694 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1693 = *_temp_1694  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1693) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1695 = _temp_1693 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   _temp_1696 = _temp_1695 + 4
	load	[r14+-132],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1692 = *_temp_1696  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if virtPage <= _temp_1692 then goto _Label_1691		(int)
	load	[r14+-148],r1
	load	[r14+-144],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1691
	jmp	_Label_1689
_Label_1691:
!   if virtPage >= 0 then goto _Label_1690		(int)
	load	[r14+-148],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1690
!	_Label_1689	jmp	_Label_1689
_Label_1689:
! THEN...
	mov	2559,r13		! source line 2559
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1698 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1697 = *_temp_1698  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1697) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1699 = _temp_1697 + 236
	load	[r14+-124],r1
	add	r1,236,r1
	store	r1,[r14+-116]
!   Data Move: *_temp_1699 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-116],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1690:
! IF STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0IF",r10
	mov	2564,r13		! source line 2564
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1704 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1703 = *_temp_1704  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1703) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1705 = _temp_1703 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1702  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_1702 then goto _Label_1701 else goto _Label_1700
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1700
	jmp	_Label_1701
_Label_1700:
! THEN...
	mov	2565,r13		! source line 2565
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1707 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1706 = *_temp_1707  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1706) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1708 = _temp_1706 + 236
	load	[r14+-100],r1
	add	r1,236,r1
	store	r1,[r14+-92]
!   Data Move: *_temp_1708 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-92],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0RE",r10
!   ReturnResult: temp  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1701:
! IF STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0IF",r10
	mov	2570,r13		! source line 2570
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1713 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1712 = *_temp_1713  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1712) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1714 = _temp_1712 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1711  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1711 then goto _Label_1710 else goto _Label_1709
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1709
	jmp	_Label_1710
_Label_1709:
! THEN...
	mov	2571,r13		! source line 2571
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1716 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1715 = *_temp_1716  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1715) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1717 = _temp_1715 + 236
	load	[r14+-76],r1
	add	r1,236,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_1717 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-68],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1710:
! SEND STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1719 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1718 = *_temp_1719  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1718) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1720 = _temp_1718 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1722 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1721 = *_temp_1722  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1721) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1723 = _temp_1721 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
	mov	2586,r13		! source line 2586
	mov	"\0\0SE",r10
!   _temp_1724 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-40]
!   Send message GetChar
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=aChar  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
! IF STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0IF",r10
!   _temp_1727 = aChar XOR 13		(bool)
	loadb	[r14+-14],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1727 then goto _Label_1726 else goto _Label_1725
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1725
	jmp	_Label_1726
_Label_1725:
! THEN...
	mov	2590,r13		! source line 2590
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0AS",r10
!   aChar = 10		(1 byte)
	mov	10,r1
	storeb	r1,[r14+-14]
! END IF...
_Label_1726:
! IF STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0IF",r10
!   _temp_1730 = aChar XOR 4		(bool)
	loadb	[r14+-14],r1
	mov	4,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_1730 then goto _Label_1729 else goto _Label_1728
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1728
	jmp	_Label_1729
_Label_1728:
! THEN...
	mov	2593,r13		! source line 2593
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0RE",r10
!   ReturnResult: temp  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1729:
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   _temp_1731 = &aChar
	add	r14,-14,r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1733 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1732 = *_temp_1733  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1732) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1734 = _temp_1732 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=nextPos  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1731  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+12]
!   Send message CopyBytesToVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,80,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0IF",r10
!   if junk != -1 then goto _Label_1736		(int)
	load	[r14+-160],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1736
!	_Label_1735	jmp	_Label_1735
_Label_1735:
! THEN...
	mov	2601,r13		! source line 2601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1737 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1737  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2601,r13		! source line 2601
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1736:
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   nextPos = nextPos + 1		(int)
	load	[r14+-152],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   temp = temp + 1		(int)
	load	[r14+-156],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
! ASSIGNMENT STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   virtPage = nextPos div 8192		(int)
	load	[r14+-152],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
! IF STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0IF",r10
!   _temp_1740 = aChar XOR 10		(bool)
	loadb	[r14+-14],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1740 then goto _Label_1739 else goto _Label_1738
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1738
	jmp	_Label_1739
_Label_1738:
! THEN...
	mov	2613,r13		! source line 2613
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0RE",r10
!   ReturnResult: temp  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1739:
! END WHILE...
	jmp	_Label_1686
_Label_1688:
! RETURN STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0RE",r10
!   ReturnResult: sizeInBytes  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_242_serialRead:
	.word	_sourceFileName
	.word	_Label_1741
	.word	8		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1742
	.word	8
	.word	4
	.word	_Label_1743
	.word	12
	.word	4
	.word	_Label_1744
	.word	-9
	.word	1
	.word	_Label_1745
	.word	-20
	.word	4
	.word	_Label_1746
	.word	-24
	.word	4
	.word	_Label_1747
	.word	-28
	.word	4
	.word	_Label_1748
	.word	-32
	.word	4
	.word	_Label_1749
	.word	-36
	.word	4
	.word	_Label_1750
	.word	-10
	.word	1
	.word	_Label_1751
	.word	-11
	.word	1
	.word	_Label_1752
	.word	-40
	.word	4
	.word	_Label_1753
	.word	-44
	.word	4
	.word	_Label_1754
	.word	-48
	.word	4
	.word	_Label_1755
	.word	-52
	.word	4
	.word	_Label_1756
	.word	-56
	.word	4
	.word	_Label_1757
	.word	-60
	.word	4
	.word	_Label_1758
	.word	-64
	.word	4
	.word	_Label_1759
	.word	-68
	.word	4
	.word	_Label_1760
	.word	-72
	.word	4
	.word	_Label_1761
	.word	-76
	.word	4
	.word	_Label_1762
	.word	-80
	.word	4
	.word	_Label_1763
	.word	-84
	.word	4
	.word	_Label_1764
	.word	-88
	.word	4
	.word	_Label_1765
	.word	-12
	.word	1
	.word	_Label_1766
	.word	-92
	.word	4
	.word	_Label_1767
	.word	-96
	.word	4
	.word	_Label_1768
	.word	-100
	.word	4
	.word	_Label_1769
	.word	-104
	.word	4
	.word	_Label_1770
	.word	-108
	.word	4
	.word	_Label_1771
	.word	-112
	.word	4
	.word	_Label_1772
	.word	-13
	.word	1
	.word	_Label_1773
	.word	-116
	.word	4
	.word	_Label_1774
	.word	-120
	.word	4
	.word	_Label_1775
	.word	-124
	.word	4
	.word	_Label_1776
	.word	-128
	.word	4
	.word	_Label_1777
	.word	-132
	.word	4
	.word	_Label_1778
	.word	-136
	.word	4
	.word	_Label_1779
	.word	-140
	.word	4
	.word	_Label_1780
	.word	-144
	.word	4
	.word	_Label_1781
	.word	-148
	.word	4
	.word	_Label_1782
	.word	-152
	.word	4
	.word	_Label_1783
	.word	-156
	.word	4
	.word	_Label_1784
	.word	-160
	.word	4
	.word	_Label_1785
	.word	-14
	.word	1
	.word	0
_Label_1741:
	.ascii	"serialRead\0"
	.align
_Label_1742:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1743:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1744:
	.byte	'C'
	.ascii	"_temp_1740\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1750:
	.byte	'C'
	.ascii	"_temp_1730\0"
	.align
_Label_1751:
	.byte	'C'
	.ascii	"_temp_1727\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1765:
	.byte	'C'
	.ascii	"_temp_1711\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1772:
	.byte	'C'
	.ascii	"_temp_1702\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1781:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1782:
	.byte	'I'
	.ascii	"nextPos\0"
	.align
_Label_1783:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_1784:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_1785:
	.byte	'C'
	.ascii	"aChar\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	39,r1
_Label_7156:
	push	r0
	sub	r1,1,r1
	bne	_Label_7156
	mov	2626,r13		! source line 2626
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1786 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: theProc = *_temp_1786  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1790		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1790
	jmp	_Label_1787
_Label_1790:
!   if fileDesc <= 48 then goto _Label_1789		(int)
	load	[r14+8],r1
	mov	48,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1789
	jmp	_Label_1787
_Label_1789:
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1792 = theProc + 244
	load	[r14+-140],r1
	add	r1,244,r1
	store	r1,[r14+-128]
!   Move address of _temp_1792 [fileDesc ] into _temp_1793
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1791 = *_temp_1793  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1791) then goto _Label_1787
	load	[r14+-132],r1
	cmp	r1,r0
	be	_Label_1787
	jmp	_Label_1788
_Label_1787:
! THEN...
	mov	2635,r13		! source line 2635
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1794 = theProc + 236
	load	[r14+-140],r1
	add	r1,236,r1
	store	r1,[r14+-120]
!   Data Move: *_temp_1794 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-120],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1795
_Label_1788:
! ELSE...
	mov	2638,r13		! source line 2638
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1796 = theProc + 244
	load	[r14+-140],r1
	add	r1,244,r1
	store	r1,[r14+-116]
!   Move address of _temp_1796 [fileDesc ] into _temp_1797
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
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
	store	r2,[r14+-112]
!   Data Move: file = *_temp_1797  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-144]
! END IF...
_Label_1795:
! IF STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1799		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1799
!	_Label_1798	jmp	_Label_1798
_Label_1798:
! THEN...
	mov	2642,r13		! source line 2642
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1800 = theProc + 236
	load	[r14+-140],r1
	add	r1,236,r1
	store	r1,[r14+-108]
!   Data Move: *_temp_1800 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-108],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1799:
! IF STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0IF",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1810 = theProc + 244
	load	[r14+-140],r1
	add	r1,244,r1
	store	r1,[r14+-96]
!   Move address of _temp_1810 [fileDesc ] into _temp_1811
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
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
	store	r2,[r14+-92]
!   Data Move: _temp_1809 = *_temp_1811  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1809) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1812 = _temp_1809 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1808 = *_temp_1812  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_1808 != 2 then goto _Label_1807		(int)
	load	[r14+-104],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1807
	jmp	_Label_1804
_Label_1807:
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1815 = theProc + 244
	load	[r14+-140],r1
	add	r1,244,r1
	store	r1,[r14+-76]
!   Move address of _temp_1815 [fileDesc ] into _temp_1816
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1814 = *_temp_1816  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1814) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1817 = _temp_1814 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1813 = *_temp_1817  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_1813 != 3 then goto _Label_1805		(int)
	load	[r14+-84],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1805
!	_Label_1804	jmp	_Label_1804
_Label_1804:
!   _temp_1803 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1806
_Label_1805:
!   _temp_1803 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1806:
!   if _temp_1803 then goto _Label_1802 else goto _Label_1801
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1801
	jmp	_Label_1802
_Label_1801:
! THEN...
	mov	2648,r13		! source line 2648
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1818 = theProc + 236
	load	[r14+-140],r1
	add	r1,236,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1818 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-64],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1802:
! IF STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1822 = file + 12
	load	[r14+-144],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1821 = *_temp_1822  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_1821 != 2 then goto _Label_1820		(int)
	load	[r14+-60],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1820
!	_Label_1819	jmp	_Label_1819
_Label_1819:
! THEN...
	mov	2653,r13		! source line 2653
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CA",r10
	call	_function_241_serialWrite
!   Retrieve Result: targetName=test  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-148]
! RETURN STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0RE",r10
!   ReturnResult: test  (sizeInBytes=4)
	load	[r14+-148],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1820:
! IF STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1826 = file + 12
	load	[r14+-144],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1825 = *_temp_1826  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_1825 != 3 then goto _Label_1824		(int)
	load	[r14+-52],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1824
!	_Label_1823	jmp	_Label_1823
_Label_1823:
! THEN...
	mov	2660,r13		! source line 2660
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0RE",r10
	mov	2660,r13		! source line 2660
	mov	"\0\0SE",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1829 = file + 36
	load	[r14+-144],r1
	add	r1,36,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1828 = *_temp_1829  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1828) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Send message Write
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1827  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_1827  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1824:
! RETURN STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0RE",r10
	mov	2665,r13		! source line 2665
	mov	"\0\0SE",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1832 = theProc + 244
	load	[r14+-140],r1
	add	r1,244,r1
	store	r1,[r14+-24]
!   Move address of _temp_1832 [fileDesc ] into _temp_1833
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1831 = *_temp_1833  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_1834 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1831  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message WriteFile
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
!   Retrieve Result: targetName=_temp_1830  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_1830  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1835
	.word	12		! total size of parameters
	.word	156		! frame size = 156
	.word	_Label_1836
	.word	8
	.word	4
	.word	_Label_1837
	.word	12
	.word	4
	.word	_Label_1838
	.word	16
	.word	4
	.word	_Label_1839
	.word	-16
	.word	4
	.word	_Label_1840
	.word	-20
	.word	4
	.word	_Label_1841
	.word	-24
	.word	4
	.word	_Label_1842
	.word	-28
	.word	4
	.word	_Label_1843
	.word	-32
	.word	4
	.word	_Label_1844
	.word	-36
	.word	4
	.word	_Label_1845
	.word	-40
	.word	4
	.word	_Label_1846
	.word	-44
	.word	4
	.word	_Label_1847
	.word	-48
	.word	4
	.word	_Label_1848
	.word	-52
	.word	4
	.word	_Label_1849
	.word	-56
	.word	4
	.word	_Label_1850
	.word	-60
	.word	4
	.word	_Label_1851
	.word	-64
	.word	4
	.word	_Label_1852
	.word	-68
	.word	4
	.word	_Label_1853
	.word	-72
	.word	4
	.word	_Label_1854
	.word	-76
	.word	4
	.word	_Label_1855
	.word	-80
	.word	4
	.word	_Label_1856
	.word	-84
	.word	4
	.word	_Label_1857
	.word	-88
	.word	4
	.word	_Label_1858
	.word	-92
	.word	4
	.word	_Label_1859
	.word	-96
	.word	4
	.word	_Label_1860
	.word	-100
	.word	4
	.word	_Label_1861
	.word	-104
	.word	4
	.word	_Label_1862
	.word	-9
	.word	1
	.word	_Label_1863
	.word	-108
	.word	4
	.word	_Label_1864
	.word	-112
	.word	4
	.word	_Label_1865
	.word	-116
	.word	4
	.word	_Label_1866
	.word	-120
	.word	4
	.word	_Label_1867
	.word	-124
	.word	4
	.word	_Label_1868
	.word	-128
	.word	4
	.word	_Label_1869
	.word	-132
	.word	4
	.word	_Label_1870
	.word	-136
	.word	4
	.word	_Label_1871
	.word	-140
	.word	4
	.word	_Label_1872
	.word	-144
	.word	4
	.word	_Label_1873
	.word	-148
	.word	4
	.word	0
_Label_1835:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1836:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1837:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1838:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1862:
	.byte	'C'
	.ascii	"_temp_1803\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1871:
	.byte	'P'
	.ascii	"theProc\0"
	.align
_Label_1872:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_1873:
	.byte	'I'
	.ascii	"test\0"
	.align
! 
! ===============  FUNCTION serialWrite  ===============
! 
_function_241_serialWrite:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_241_serialWrite,r1
	push	r1
	mov	40,r1
_Label_7157:
	push	r0
	sub	r1,1,r1
	bne	_Label_7157
	mov	2671,r13		! source line 2671
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0AS",r10
!   nextPos = buffer		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0AS",r10
!   virtPage = nextPos div 8192		(int)
	load	[r14+-144],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1879 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1878 = *_temp_1879  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1878) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1880 = _temp_1878 + 32
	load	[r14+-132],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_1881 = _temp_1880 + 4
	load	[r14+-124],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1877 = *_temp_1881  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if virtPage <= _temp_1877 then goto _Label_1876		(int)
	load	[r14+-140],r1
	load	[r14+-136],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1876
	jmp	_Label_1874
_Label_1876:
!   if virtPage >= 0 then goto _Label_1875		(int)
	load	[r14+-140],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1875
!	_Label_1874	jmp	_Label_1874
_Label_1874:
! THEN...
	mov	2681,r13		! source line 2681
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1883 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1882 = *_temp_1883  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1882) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1884 = _temp_1882 + 236
	load	[r14+-116],r1
	add	r1,236,r1
	store	r1,[r14+-108]
!   Data Move: *_temp_1884 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-108],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1875:
! IF STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0IF",r10
	mov	2686,r13		! source line 2686
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1889 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1888 = *_temp_1889  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1888) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1890 = _temp_1888 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1887  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_1887 then goto _Label_1886 else goto _Label_1885
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1885
	jmp	_Label_1886
_Label_1885:
! THEN...
	mov	2687,r13		! source line 2687
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1892 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1891 = *_temp_1892  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1891) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1893 = _temp_1891 + 236
	load	[r14+-92],r1
	add	r1,236,r1
	store	r1,[r14+-84]
!   Data Move: *_temp_1893 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-84],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1886:
! IF STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0IF",r10
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1898 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1897 = *_temp_1898  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1897) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1899 = _temp_1897 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1896  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1896 then goto _Label_1895 else goto _Label_1894
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1894
	jmp	_Label_1895
_Label_1894:
! THEN...
	mov	2693,r13		! source line 2693
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1901 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1900 = *_temp_1901  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1900) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1902 = _temp_1900 + 236
	load	[r14+-68],r1
	add	r1,236,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1902 = 9  (sizeInBytes=4)
	mov	9,r1
	load	[r14+-60],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1895:
! SEND STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1904 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1903 = *_temp_1904  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1903) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1905 = _temp_1903 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0AS",r10
!   temp = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-148]
! WHILE STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0WH",r10
_Label_1906:
!   if temp >= sizeInBytes then goto _Label_1908		(int)
	load	[r14+-148],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1908
!	_Label_1907	jmp	_Label_1907
_Label_1907:
	mov	2702,r13		! source line 2702
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0AS",r10
	mov	2705,r13		! source line 2705
	mov	"\0\0SE",r10
!   _temp_1909 = &aChar
	add	r14,-14,r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1911 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1910 = *_temp_1911  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1910) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1912 = _temp_1910 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1909  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=nextPos  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-152]
! IF STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0IF",r10
!   if junk != -1 then goto _Label_1914		(int)
	load	[r14+-152],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1914
!	_Label_1913	jmp	_Label_1913
_Label_1913:
! THEN...
	mov	2707,r13		! source line 2707
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1915 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1915  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2707,r13		! source line 2707
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1914:
! IF STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0IF",r10
!   _temp_1918 = aChar XOR 13		(bool)
	loadb	[r14+-14],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1918 then goto _Label_1917 else goto _Label_1916
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1916
	jmp	_Label_1917
_Label_1916:
! THEN...
	mov	2713,r13		! source line 2713
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0AS",r10
!   aChar = 10		(1 byte)
	mov	10,r1
	storeb	r1,[r14+-14]
! END IF...
_Label_1917:
! IF STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0IF",r10
!   _temp_1921 = aChar XOR 10		(bool)
	loadb	[r14+-14],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_1921 then goto _Label_1920 else goto _Label_1919
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1919
	jmp	_Label_1920
_Label_1919:
! THEN...
	mov	2716,r13		! source line 2716
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0SE",r10
!   _temp_1922 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=13  sizeInBytes=1
	mov	13,r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1920:
! SEND STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0SE",r10
!   _temp_1923 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=aChar  sizeInBytes=1
	loadb	[r14+-14],r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0AS",r10
!   nextPos = nextPos + 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0AS",r10
!   temp = temp + 1		(int)
	load	[r14+-148],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
! IF STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0IF",r10
!   _temp_1926 = aChar XOR 10		(bool)
	loadb	[r14+-14],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1926 then goto _Label_1925 else goto _Label_1924
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1924
	jmp	_Label_1925
_Label_1924:
! THEN...
	mov	2724,r13		! source line 2724
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0RE",r10
!   ReturnResult: temp  (sizeInBytes=4)
	load	[r14+-148],r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1925:
! END WHILE...
	jmp	_Label_1906
_Label_1908:
! RETURN STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0RE",r10
!   ReturnResult: sizeInBytes  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_241_serialWrite:
	.word	_sourceFileName
	.word	_Label_1927
	.word	8		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_1928
	.word	8
	.word	4
	.word	_Label_1929
	.word	12
	.word	4
	.word	_Label_1930
	.word	-9
	.word	1
	.word	_Label_1931
	.word	-20
	.word	4
	.word	_Label_1932
	.word	-24
	.word	4
	.word	_Label_1933
	.word	-10
	.word	1
	.word	_Label_1934
	.word	-11
	.word	1
	.word	_Label_1935
	.word	-28
	.word	4
	.word	_Label_1936
	.word	-32
	.word	4
	.word	_Label_1937
	.word	-36
	.word	4
	.word	_Label_1938
	.word	-40
	.word	4
	.word	_Label_1939
	.word	-44
	.word	4
	.word	_Label_1940
	.word	-48
	.word	4
	.word	_Label_1941
	.word	-52
	.word	4
	.word	_Label_1942
	.word	-56
	.word	4
	.word	_Label_1943
	.word	-60
	.word	4
	.word	_Label_1944
	.word	-64
	.word	4
	.word	_Label_1945
	.word	-68
	.word	4
	.word	_Label_1946
	.word	-72
	.word	4
	.word	_Label_1947
	.word	-76
	.word	4
	.word	_Label_1948
	.word	-80
	.word	4
	.word	_Label_1949
	.word	-12
	.word	1
	.word	_Label_1950
	.word	-84
	.word	4
	.word	_Label_1951
	.word	-88
	.word	4
	.word	_Label_1952
	.word	-92
	.word	4
	.word	_Label_1953
	.word	-96
	.word	4
	.word	_Label_1954
	.word	-100
	.word	4
	.word	_Label_1955
	.word	-104
	.word	4
	.word	_Label_1956
	.word	-13
	.word	1
	.word	_Label_1957
	.word	-108
	.word	4
	.word	_Label_1958
	.word	-112
	.word	4
	.word	_Label_1959
	.word	-116
	.word	4
	.word	_Label_1960
	.word	-120
	.word	4
	.word	_Label_1961
	.word	-124
	.word	4
	.word	_Label_1962
	.word	-128
	.word	4
	.word	_Label_1963
	.word	-132
	.word	4
	.word	_Label_1964
	.word	-136
	.word	4
	.word	_Label_1965
	.word	-140
	.word	4
	.word	_Label_1966
	.word	-144
	.word	4
	.word	_Label_1967
	.word	-148
	.word	4
	.word	_Label_1968
	.word	-152
	.word	4
	.word	_Label_1969
	.word	-14
	.word	1
	.word	0
_Label_1927:
	.ascii	"serialWrite\0"
	.align
_Label_1928:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1929:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1930:
	.byte	'C'
	.ascii	"_temp_1926\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1933:
	.byte	'C'
	.ascii	"_temp_1921\0"
	.align
_Label_1934:
	.byte	'C'
	.ascii	"_temp_1918\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1949:
	.byte	'C'
	.ascii	"_temp_1896\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1956:
	.byte	'C'
	.ascii	"_temp_1887\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1965:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1966:
	.byte	'I'
	.ascii	"nextPos\0"
	.align
_Label_1967:
	.byte	'I'
	.ascii	"temp\0"
	.align
_Label_1968:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_1969:
	.byte	'C'
	.ascii	"aChar\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	30,r1
_Label_7158:
	push	r0
	sub	r1,1,r1
	bne	_Label_7158
	mov	2733,r13		! source line 2733
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1970 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: theProc = *_temp_1970  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
! IF STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1974		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1974
	jmp	_Label_1971
_Label_1974:
!   if fileDesc <= 48 then goto _Label_1973		(int)
	load	[r14+8],r1
	mov	48,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1973
	jmp	_Label_1971
_Label_1973:
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1976 = theProc + 244
	load	[r14+-120],r1
	add	r1,244,r1
	store	r1,[r14+-108]
!   Move address of _temp_1976 [fileDesc ] into _temp_1977
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1975 = *_temp_1977  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1975) then goto _Label_1971
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_1971
	jmp	_Label_1972
_Label_1971:
! THEN...
	mov	2741,r13		! source line 2741
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1978 = theProc + 236
	load	[r14+-120],r1
	add	r1,236,r1
	store	r1,[r14+-100]
!   Data Move: *_temp_1978 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-100],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1979
_Label_1972:
! ELSE...
	mov	2744,r13		! source line 2744
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1980 = theProc + 244
	load	[r14+-120],r1
	add	r1,244,r1
	store	r1,[r14+-96]
!   Move address of _temp_1980 [fileDesc ] into _temp_1981
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
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
	store	r2,[r14+-92]
!   Data Move: file = *_temp_1981  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
! END IF...
_Label_1979:
! IF STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1983		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1983
!	_Label_1982	jmp	_Label_1982
_Label_1982:
! THEN...
	mov	2750,r13		! source line 2750
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1984 = theProc + 236
	load	[r14+-120],r1
	add	r1,236,r1
	store	r1,[r14+-88]
!   Data Move: *_temp_1984 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-88],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1983:
! IF STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1989 = file + 20
	load	[r14+-124],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1988 = *_temp_1989  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1988) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1990 = _temp_1988 + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   _temp_1991 = _temp_1990 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1987 = *_temp_1991  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if newCurrentPos <= _temp_1987 then goto _Label_1986		(int)
	load	[r14+12],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1986
!	_Label_1985	jmp	_Label_1985
_Label_1985:
! THEN...
	mov	2756,r13		! source line 2756
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
!   if intIsZero (theProc) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1992 = theProc + 236
	load	[r14+-120],r1
	add	r1,236,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_1992 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-64],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1986:
! SEND STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0SE",r10
!   _temp_1993 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   _temp_1994 = _temp_1993 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1996		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1996
!	_Label_1995	jmp	_Label_1995
_Label_1995:
! THEN...
	mov	2764,r13		! source line 2764
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1997 = file + 16
	load	[r14+-124],r1
	add	r1,16,r1
	store	r1,[r14+-52]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2000 = file + 20
	load	[r14+-124],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1999 = *_temp_2000  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1999) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2001 = _temp_1999 + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_2002 = _temp_2001 + 16
	load	[r14+-36],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1998 = *_temp_2002  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1997 = _temp_1998  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r14+-52],r2
	store	r1,[r2]
	jmp	_Label_2003
_Label_1996:
! ELSE...
	mov	2766,r13		! source line 2766
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2004 = file + 16
	load	[r14+-124],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2004 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_2003:
! SEND STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0SE",r10
!   _temp_2005 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   _temp_2006 = _temp_2005 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message Unlock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0RE",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2008 = file + 16
	load	[r14+-124],r1
	add	r1,16,r1
	store	r1,[r14+-12]
!   Data Move: _temp_2007 = *_temp_2008  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_2007  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_2009
	.word	8		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_2010
	.word	8
	.word	4
	.word	_Label_2011
	.word	12
	.word	4
	.word	_Label_2012
	.word	-12
	.word	4
	.word	_Label_2013
	.word	-16
	.word	4
	.word	_Label_2014
	.word	-20
	.word	4
	.word	_Label_2015
	.word	-24
	.word	4
	.word	_Label_2016
	.word	-28
	.word	4
	.word	_Label_2017
	.word	-32
	.word	4
	.word	_Label_2018
	.word	-36
	.word	4
	.word	_Label_2019
	.word	-40
	.word	4
	.word	_Label_2020
	.word	-44
	.word	4
	.word	_Label_2021
	.word	-48
	.word	4
	.word	_Label_2022
	.word	-52
	.word	4
	.word	_Label_2023
	.word	-56
	.word	4
	.word	_Label_2024
	.word	-60
	.word	4
	.word	_Label_2025
	.word	-64
	.word	4
	.word	_Label_2026
	.word	-68
	.word	4
	.word	_Label_2027
	.word	-72
	.word	4
	.word	_Label_2028
	.word	-76
	.word	4
	.word	_Label_2029
	.word	-80
	.word	4
	.word	_Label_2030
	.word	-84
	.word	4
	.word	_Label_2031
	.word	-88
	.word	4
	.word	_Label_2032
	.word	-92
	.word	4
	.word	_Label_2033
	.word	-96
	.word	4
	.word	_Label_2034
	.word	-100
	.word	4
	.word	_Label_2035
	.word	-104
	.word	4
	.word	_Label_2036
	.word	-108
	.word	4
	.word	_Label_2037
	.word	-112
	.word	4
	.word	_Label_2038
	.word	-116
	.word	4
	.word	_Label_2039
	.word	-120
	.word	4
	.word	_Label_2040
	.word	-124
	.word	4
	.word	0
_Label_2009:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_2010:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_2011:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_2039:
	.byte	'P'
	.ascii	"theProc\0"
	.align
_Label_2040:
	.byte	'P'
	.ascii	"file\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Stat  ===============
! 
_P_Kernel_Handle_Sys_Stat:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Stat,r1
	push	r1
	mov	198,r1
_Label_7159:
	push	r0
	sub	r1,1,r1
	bne	_Label_7159
	mov	2781,r13		! source line 2781
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! strBuffer
!   NEW ARRAY Constructor...
!   _temp_2042 = &_temp_2041
	add	r14,-492,r1
	store	r1,[r14+-232]
!   _temp_2042 = _temp_2042 + 4
	load	[r14+-232],r1
	add	r1,4,r1
	store	r1,[r14+-232]
!   Next value...
	mov	255,r1
	store	r1,[r14+-228]
_Label_2044:
!   Data Move: *_temp_2042 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-232],r2
	storeb	r1,[r2]
!   _temp_2042 = _temp_2042 + 1
	load	[r14+-232],r1
	add	r1,1,r1
	store	r1,[r14+-232]
!   _temp_2043 = _temp_2043 + -1
	load	[r14+-228],r1
	add	r1,-1,r1
	store	r1,[r14+-228]
!   if intNotZero (_temp_2043) then goto _Label_2044
	load	[r14+-228],r1
	cmp	r1,r0
	bne	_Label_2044
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-492]
!   _temp_2045 = &_temp_2041
	add	r14,-492,r1
	store	r1,[r14+-224]
!   make sure array has size 255
	load	[r14+-224],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: strBuffer = *_temp_2045  (sizeInBytes=260)
	load	[r14+-224],r5
	add	r14,-764,r4
	mov	65,r3
_Label_7160:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7160
! IF STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=fileName  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=statBuf  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2791,r13		! source line 2791
	mov	"\0\0CA",r10
	call	_P_Kernel_validatePointers
!   Retrieve Result: targetName=_temp_2048  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2048 then goto _Label_2047 else goto _Label_2046
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2046
	jmp	_Label_2047
_Label_2046:
! THEN...
	mov	2792,r13		! source line 2792
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,796,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2047:
! ASSIGNMENT STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0AS",r10
	mov	2796,r13		! source line 2796
	mov	"\0\0SE",r10
!   _temp_2049 = &strBuffer
	add	r14,-764,r1
	store	r1,[r14+-220]
!   _temp_2050 = fileName		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2052 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-208]
!   Data Move: _temp_2051 = *_temp_2052  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_2051) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2053 = _temp_2051 + 32
	load	[r14+-212],r1
	add	r1,32,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=12  value=_temp_2049  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2050  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-496]
! ASSIGNMENT STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0AS",r10
	mov	2804,r13		! source line 2804
	mov	"\0\0SE",r10
!   _temp_2054 = &strBuffer
	add	r14,-764,r1
	store	r1,[r14+-200]
!   _temp_2056 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-192]
!   _temp_2057 = _temp_2056 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-188]
!   Data Move: _temp_2055 = *_temp_2057  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_2058 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=12  value=_temp_2054  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2055  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+8]
!   Send message NameToInodeNum
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fileInt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-500]
! ASSIGNMENT STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0AS",r10
	mov	2805,r13		! source line 2805
	mov	"\0\0SE",r10
!   _temp_2059 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=12  value=fileInt  sizeInBytes=4
	load	[r14+-500],r1
	store	r1,[r15+4]
!   Send message GetFCB
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=myFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-504]
! ASSIGNMENT STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0AS",r10
!   _temp_2060 = &myStat
	add	r14,-784,r1
	store	r1,[r14+-176]
!   _temp_2061 = _temp_2060 + 0
	load	[r14+-176],r1
	add	r1,0,r1
	store	r1,[r14+-172]
!   if intIsZero (myFile) then goto _runtimeErrorNullPointer
	load	[r14+-504],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2063 = myFile + 12
	load	[r14+-504],r1
	add	r1,12,r1
	store	r1,[r14+-164]
!   _temp_2064 = _temp_2063 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Data Move: _temp_2062 = *_temp_2064  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   Data Move: *_temp_2061 = _temp_2062  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
!   _temp_2065 = &myStat
	add	r14,-784,r1
	store	r1,[r14+-156]
!   _temp_2066 = _temp_2065 + 4
	load	[r14+-156],r1
	add	r1,4,r1
	store	r1,[r14+-152]
!   if intIsZero (myFile) then goto _runtimeErrorNullPointer
	load	[r14+-504],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2068 = myFile + 12
	load	[r14+-504],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   _temp_2069 = _temp_2068 + 8
	load	[r14+-144],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Data Move: _temp_2067 = *_temp_2069  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Data Move: *_temp_2066 = _temp_2067  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-152],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
!   _temp_2070 = &myStat
	add	r14,-784,r1
	store	r1,[r14+-136]
!   _temp_2071 = _temp_2070 + 8
	load	[r14+-136],r1
	add	r1,8,r1
	store	r1,[r14+-132]
!   if intIsZero (myFile) then goto _runtimeErrorNullPointer
	load	[r14+-504],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2073 = myFile + 12
	load	[r14+-504],r1
	add	r1,12,r1
	store	r1,[r14+-124]
!   _temp_2074 = _temp_2073 + 12
	load	[r14+-124],r1
	add	r1,12,r1
	store	r1,[r14+-120]
!   Data Move: _temp_2072 = *_temp_2074  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2071 = _temp_2072  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r14+-132],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
!   _temp_2075 = &myStat
	add	r14,-784,r1
	store	r1,[r14+-116]
!   _temp_2076 = _temp_2075 + 12
	load	[r14+-116],r1
	add	r1,12,r1
	store	r1,[r14+-112]
!   if intIsZero (myFile) then goto _runtimeErrorNullPointer
	load	[r14+-504],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2078 = myFile + 12
	load	[r14+-504],r1
	add	r1,12,r1
	store	r1,[r14+-104]
!   _temp_2079 = _temp_2078 + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2077 = *_temp_2079  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   Data Move: *_temp_2076 = _temp_2077  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r14+-112],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
!   _temp_2080 = &myStat
	add	r14,-784,r1
	store	r1,[r14+-96]
!   _temp_2081 = _temp_2080 + 16
	load	[r14+-96],r1
	add	r1,16,r1
	store	r1,[r14+-92]
!   if intIsZero (myFile) then goto _runtimeErrorNullPointer
	load	[r14+-504],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2083 = myFile + 12
	load	[r14+-504],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   _temp_2084 = _temp_2083 + 20
	load	[r14+-84],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2082 = *_temp_2084  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Data Move: *_temp_2081 = _temp_2082  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0AS",r10
	mov	2816,r13		! source line 2816
	mov	"\0\0SE",r10
!   _temp_2085 = statBuf		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-76]
!   _temp_2086 = &myStat
	add	r14,-784,r1
	store	r1,[r14+-72]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2088 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2087 = *_temp_2088  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2087) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2089 = _temp_2087 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_2085  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2086  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message CopyBytesToVirtual
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,80,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-496]
! IF STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_2091		(int)
	load	[r14+-496],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_2091
!	_Label_2090	jmp	_Label_2090
_Label_2090:
! THEN...
	mov	2818,r13		! source line 2818
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2818,r13		! source line 2818
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,796,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2091:
! SEND STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
!   _temp_2092 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   _temp_2093 = _temp_2092 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0SE",r10
!   _temp_2094 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   _temp_2095 = _temp_2094 + 5420
	load	[r14+-48],r1
	add	r1,5420,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=myFile  sizeInBytes=4
	load	[r14+-504],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
!   _temp_2097 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2098 = _temp_2097 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   _temp_2096 = _temp_2098		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_2099 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2100 = _temp_2099 + 5404
	load	[r14+-28],r1
	add	r1,5404,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2096  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0SE",r10
!   _temp_2101 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-20]
!   _temp_2102 = _temp_2101 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,796,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Stat:
	.word	_sourceFileName
	.word	_Label_2103
	.word	8		! total size of parameters
	.word	792		! frame size = 792
	.word	_Label_2104
	.word	8
	.word	4
	.word	_Label_2105
	.word	12
	.word	4
	.word	_Label_2106
	.word	-16
	.word	4
	.word	_Label_2107
	.word	-20
	.word	4
	.word	_Label_2108
	.word	-24
	.word	4
	.word	_Label_2109
	.word	-28
	.word	4
	.word	_Label_2110
	.word	-32
	.word	4
	.word	_Label_2111
	.word	-36
	.word	4
	.word	_Label_2112
	.word	-40
	.word	4
	.word	_Label_2113
	.word	-44
	.word	4
	.word	_Label_2114
	.word	-48
	.word	4
	.word	_Label_2115
	.word	-52
	.word	4
	.word	_Label_2116
	.word	-56
	.word	4
	.word	_Label_2117
	.word	-60
	.word	4
	.word	_Label_2118
	.word	-64
	.word	4
	.word	_Label_2119
	.word	-68
	.word	4
	.word	_Label_2120
	.word	-72
	.word	4
	.word	_Label_2121
	.word	-76
	.word	4
	.word	_Label_2122
	.word	-80
	.word	4
	.word	_Label_2123
	.word	-84
	.word	4
	.word	_Label_2124
	.word	-88
	.word	4
	.word	_Label_2125
	.word	-92
	.word	4
	.word	_Label_2126
	.word	-96
	.word	4
	.word	_Label_2127
	.word	-100
	.word	4
	.word	_Label_2128
	.word	-104
	.word	4
	.word	_Label_2129
	.word	-108
	.word	4
	.word	_Label_2130
	.word	-112
	.word	4
	.word	_Label_2131
	.word	-116
	.word	4
	.word	_Label_2132
	.word	-120
	.word	4
	.word	_Label_2133
	.word	-124
	.word	4
	.word	_Label_2134
	.word	-128
	.word	4
	.word	_Label_2135
	.word	-132
	.word	4
	.word	_Label_2136
	.word	-136
	.word	4
	.word	_Label_2137
	.word	-140
	.word	4
	.word	_Label_2138
	.word	-144
	.word	4
	.word	_Label_2139
	.word	-148
	.word	4
	.word	_Label_2140
	.word	-152
	.word	4
	.word	_Label_2141
	.word	-156
	.word	4
	.word	_Label_2142
	.word	-160
	.word	4
	.word	_Label_2143
	.word	-164
	.word	4
	.word	_Label_2144
	.word	-168
	.word	4
	.word	_Label_2145
	.word	-172
	.word	4
	.word	_Label_2146
	.word	-176
	.word	4
	.word	_Label_2147
	.word	-180
	.word	4
	.word	_Label_2148
	.word	-184
	.word	4
	.word	_Label_2149
	.word	-188
	.word	4
	.word	_Label_2150
	.word	-192
	.word	4
	.word	_Label_2151
	.word	-196
	.word	4
	.word	_Label_2152
	.word	-200
	.word	4
	.word	_Label_2153
	.word	-204
	.word	4
	.word	_Label_2154
	.word	-208
	.word	4
	.word	_Label_2155
	.word	-212
	.word	4
	.word	_Label_2156
	.word	-216
	.word	4
	.word	_Label_2157
	.word	-220
	.word	4
	.word	_Label_2158
	.word	-9
	.word	1
	.word	_Label_2159
	.word	-224
	.word	4
	.word	_Label_2160
	.word	-228
	.word	4
	.word	_Label_2161
	.word	-232
	.word	4
	.word	_Label_2162
	.word	-492
	.word	260
	.word	_Label_2163
	.word	-496
	.word	4
	.word	_Label_2164
	.word	-500
	.word	4
	.word	_Label_2165
	.word	-504
	.word	4
	.word	_Label_2166
	.word	-764
	.word	260
	.word	_Label_2167
	.word	-784
	.word	20
	.word	0
_Label_2103:
	.ascii	"Handle_Sys_Stat\0"
	.align
_Label_2104:
	.byte	'P'
	.ascii	"fileName\0"
	.align
_Label_2105:
	.byte	'P'
	.ascii	"statBuf\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2158:
	.byte	'C'
	.ascii	"_temp_2048\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2163:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2164:
	.byte	'I'
	.ascii	"fileInt\0"
	.align
_Label_2165:
	.byte	'P'
	.ascii	"myFile\0"
	.align
_Label_2166:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_2167:
	.byte	'R'
	.ascii	"myStat\0"
	.align
! 
! ===============  FUNCTION validatePointers  ===============
! 
_P_Kernel_validatePointers:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_validatePointers,r1
	push	r1
	mov	143,r1
_Label_7161:
	push	r0
	sub	r1,1,r1
	bne	_Label_7161
	mov	2833,r13		! source line 2833
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! strBuffer
!   NEW ARRAY Constructor...
!   _temp_2169 = &_temp_2168
	add	r14,-300,r1
	store	r1,[r14+-40]
!   _temp_2169 = _temp_2169 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Next value...
	mov	255,r1
	store	r1,[r14+-36]
_Label_2171:
!   Data Move: *_temp_2169 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-40],r2
	storeb	r1,[r2]
!   _temp_2169 = _temp_2169 + 1
	load	[r14+-40],r1
	add	r1,1,r1
	store	r1,[r14+-40]
!   _temp_2170 = _temp_2170 + -1
	load	[r14+-36],r1
	add	r1,-1,r1
	store	r1,[r14+-36]
!   if intNotZero (_temp_2170) then goto _Label_2171
	load	[r14+-36],r1
	cmp	r1,r0
	bne	_Label_2171
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-300]
!   _temp_2172 = &_temp_2168
	add	r14,-300,r1
	store	r1,[r14+-32]
!   make sure array has size 255
	load	[r14+-32],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: strBuffer = *_temp_2172  (sizeInBytes=260)
	load	[r14+-32],r5
	add	r14,-564,r4
	mov	65,r3
_Label_7162:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7162
! ASSIGNMENT STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0AS",r10
	mov	2839,r13		! source line 2839
	mov	"\0\0SE",r10
!   _temp_2173 = &strBuffer
	add	r14,-564,r1
	store	r1,[r14+-28]
!   _temp_2174 = fileName		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2176 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2175 = *_temp_2176  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2175) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2177 = _temp_2175 + 32
	load	[r14+-20],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2173  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2174  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=255  sizeInBytes=4
	mov	255,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-304]
! IF STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0IF",r10
!   if i == -1 then goto _Label_2179		(int)
	load	[r14+-304],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_2179
!	_Label_2178	jmp	_Label_2178
_Label_2178:
! THEN...
	mov	2845,r13		! source line 2845
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,576,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2180
_Label_2179:
! ELSE...
	mov	2847,r13		! source line 2847
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,576,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2180:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_validatePointers:
	.word	_sourceFileName
	.word	_Label_2181
	.word	8		! total size of parameters
	.word	572		! frame size = 572
	.word	_Label_2182
	.word	8
	.word	4
	.word	_Label_2183
	.word	12
	.word	4
	.word	_Label_2184
	.word	-12
	.word	4
	.word	_Label_2185
	.word	-16
	.word	4
	.word	_Label_2186
	.word	-20
	.word	4
	.word	_Label_2187
	.word	-24
	.word	4
	.word	_Label_2188
	.word	-28
	.word	4
	.word	_Label_2189
	.word	-32
	.word	4
	.word	_Label_2190
	.word	-36
	.word	4
	.word	_Label_2191
	.word	-40
	.word	4
	.word	_Label_2192
	.word	-300
	.word	260
	.word	_Label_2193
	.word	-304
	.word	4
	.word	_Label_2194
	.word	-564
	.word	260
	.word	0
_Label_2181:
	.ascii	"validatePointers\0"
	.align
_Label_2182:
	.byte	'P'
	.ascii	"fileName\0"
	.align
_Label_2183:
	.byte	'P'
	.ascii	"statBuf\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2193:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2194:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	26,r1
_Label_7163:
	push	r0
	sub	r1,1,r1
	bne	_Label_7163
	mov	2853,r13		! source line 2853
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2195 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: aProcess = *_temp_2195  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_2198		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2198
	jmp	_Label_2196
_Label_2198:
!   if fileDesc <= 48 then goto _Label_2197		(int)
	load	[r14+8],r1
	mov	48,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2197
!	_Label_2196	jmp	_Label_2196
_Label_2196:
! THEN...
	mov	2862,r13		! source line 2862
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2200 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2199 = *_temp_2200  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2199) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2201 = _temp_2199 + 236
	load	[r14+-96],r1
	add	r1,236,r1
	store	r1,[r14+-88]
!   Data Move: *_temp_2201 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-88],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2197:
! IF STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0IF",r10
!   if intIsZero (aProcess) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2205 = aProcess + 244
	load	[r14+-104],r1
	add	r1,244,r1
	store	r1,[r14+-80]
!   Move address of _temp_2205 [fileDesc ] into _temp_2206
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
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
!   Data Move: _temp_2204 = *_temp_2206  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_2204) then goto _Label_2203
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_2203
!	_Label_2202	jmp	_Label_2202
_Label_2202:
! THEN...
	mov	2867,r13		! source line 2867
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0IF",r10
!   if intIsZero (aProcess) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2211 = aProcess + 244
	load	[r14+-104],r1
	add	r1,244,r1
	store	r1,[r14+-64]
!   Move address of _temp_2211 [fileDesc ] into _temp_2212
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: _temp_2210 = *_temp_2212  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2210) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2213 = _temp_2210 + 12
	load	[r14+-68],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   Data Move: _temp_2209 = *_temp_2213  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2209 == 2 then goto _Label_2208		(int)
	load	[r14+-72],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2208
!	_Label_2207	jmp	_Label_2207
_Label_2207:
! THEN...
	mov	2868,r13		! source line 2868
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0SE",r10
!   if intIsZero (aProcess) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2215 = aProcess + 244
	load	[r14+-104],r1
	add	r1,244,r1
	store	r1,[r14+-48]
!   Move address of _temp_2215 [fileDesc ] into _temp_2216
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_2214 = *_temp_2216  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_2217 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2214  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0AS",r10
!   if intIsZero (aProcess) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2218 = aProcess + 244
	load	[r14+-104],r1
	add	r1,244,r1
	store	r1,[r14+-36]
!   Move address of _temp_2218 [fileDesc ] into _temp_2219
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: *_temp_2219 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-32],r2
	store	r1,[r2]
	jmp	_Label_2220
_Label_2208:
! ELSE...
	mov	2871,r13		! source line 2871
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0AS",r10
!   if intIsZero (aProcess) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2221 = aProcess + 244
	load	[r14+-104],r1
	add	r1,244,r1
	store	r1,[r14+-28]
!   Move address of _temp_2221 [fileDesc ] into _temp_2222
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: *_temp_2222 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! END IF...
_Label_2220:
	jmp	_Label_2223
_Label_2203:
! ELSE...
	mov	2874,r13		! source line 2874
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2874,r13		! source line 2874
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2225 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2224 = *_temp_2225  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2224) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2226 = _temp_2224 + 236
	load	[r14+-20],r1
	add	r1,236,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_2226 = 7  (sizeInBytes=4)
	mov	7,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_2223:
! RETURN STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_2227
	.word	4		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2228
	.word	8
	.word	4
	.word	_Label_2229
	.word	-12
	.word	4
	.word	_Label_2230
	.word	-16
	.word	4
	.word	_Label_2231
	.word	-20
	.word	4
	.word	_Label_2232
	.word	-24
	.word	4
	.word	_Label_2233
	.word	-28
	.word	4
	.word	_Label_2234
	.word	-32
	.word	4
	.word	_Label_2235
	.word	-36
	.word	4
	.word	_Label_2236
	.word	-40
	.word	4
	.word	_Label_2237
	.word	-44
	.word	4
	.word	_Label_2238
	.word	-48
	.word	4
	.word	_Label_2239
	.word	-52
	.word	4
	.word	_Label_2240
	.word	-56
	.word	4
	.word	_Label_2241
	.word	-60
	.word	4
	.word	_Label_2242
	.word	-64
	.word	4
	.word	_Label_2243
	.word	-68
	.word	4
	.word	_Label_2244
	.word	-72
	.word	4
	.word	_Label_2245
	.word	-76
	.word	4
	.word	_Label_2246
	.word	-80
	.word	4
	.word	_Label_2247
	.word	-84
	.word	4
	.word	_Label_2248
	.word	-88
	.word	4
	.word	_Label_2249
	.word	-92
	.word	4
	.word	_Label_2250
	.word	-96
	.word	4
	.word	_Label_2251
	.word	-100
	.word	4
	.word	_Label_2252
	.word	-104
	.word	4
	.word	0
_Label_2227:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_2228:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2252:
	.byte	'P'
	.ascii	"aProcess\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_240_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_240_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_7164:
	push	r0
	sub	r1,1,r1
	bne	_Label_7164
	mov	3530,r13		! source line 3530
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3532,r13		! source line 3532
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3533,r13		! source line 3533
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3534,r13		! source line 3534
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2253 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_2253  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3535,r13		! source line 3535
	mov	"\0\0AS",r10
!   _temp_2254 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_2254) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2256 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_2256) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2255 = *_temp_2256  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_2254 = _temp_2255  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3536,r13		! source line 3536
	mov	"\0\0AS",r10
!   _temp_2257 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_2257) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2259 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_2259) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2258 = *_temp_2259  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_2257 = _temp_2258  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3537,r13		! source line 3537
	mov	"\0\0AS",r10
!   _temp_2260 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_2260) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2262 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_2262) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2261 = *_temp_2262  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_2260 = _temp_2261  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3537,r13		! source line 3537
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_240_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_2263
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2264
	.word	8
	.word	4
	.word	_Label_2265
	.word	12
	.word	4
	.word	_Label_2266
	.word	-16
	.word	4
	.word	_Label_2267
	.word	-9
	.word	1
	.word	_Label_2268
	.word	-20
	.word	4
	.word	_Label_2269
	.word	-24
	.word	4
	.word	_Label_2270
	.word	-10
	.word	1
	.word	_Label_2271
	.word	-28
	.word	4
	.word	_Label_2272
	.word	-32
	.word	4
	.word	_Label_2273
	.word	-11
	.word	1
	.word	_Label_2274
	.word	-36
	.word	4
	.word	_Label_2275
	.word	-12
	.word	1
	.word	_Label_2276
	.word	-40
	.word	4
	.word	_Label_2277
	.word	-44
	.word	4
	.word	0
_Label_2263:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_2264:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_2265:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2267:
	.byte	'C'
	.ascii	"_temp_2261\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2270:
	.byte	'C'
	.ascii	"_temp_2258\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2273:
	.byte	'C'
	.ascii	"_temp_2255\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2275:
	.byte	'C'
	.ascii	"_temp_2253\0"
	.align
_Label_2276:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_2277:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_239_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_239_printFCB,r1
	push	r1
	mov	4,r1
_Label_7165:
	push	r0
	sub	r1,1,r1
	bne	_Label_7165
	mov	3540,r13		! source line 3540
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2279 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   _temp_2280 = _temp_2279 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Data Move: _temp_2278 = *_temp_2280  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2278  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3541,r13		! source line 3541
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3542,r13		! source line 3542
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3542,r13		! source line 3542
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_239_printFCB:
	.word	_sourceFileName
	.word	_Label_2281
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2282
	.word	8
	.word	4
	.word	_Label_2283
	.word	-12
	.word	4
	.word	_Label_2284
	.word	-16
	.word	4
	.word	_Label_2285
	.word	-20
	.word	4
	.word	0
_Label_2281:
	.ascii	"printFCB\0"
	.align
_Label_2282:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_238_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_238_printOpen,r1
	push	r1
	mov	4,r1
_Label_7166:
	push	r0
	sub	r1,1,r1
	bne	_Label_7166
	mov	3545,r13		! source line 3545
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2286 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2286  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3546,r13		! source line 3546
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2287 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2287  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3547,r13		! source line 3547
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2288 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2288  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3548,r13		! source line 3548
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3549,r13		! source line 3549
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	3549,r13		! source line 3549
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_238_printOpen:
	.word	_sourceFileName
	.word	_Label_2289
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2290
	.word	8
	.word	4
	.word	_Label_2291
	.word	-12
	.word	4
	.word	_Label_2292
	.word	-16
	.word	4
	.word	_Label_2293
	.word	-20
	.word	4
	.word	0
_Label_2289:
	.ascii	"printOpen\0"
	.align
_Label_2290:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_2294
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_2294:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2295
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_2295:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_7167:
	push	r0
	sub	r1,1,r1
	bne	_Label_7167
	mov	233,r13		! source line 233
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_2297		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2297
!	_Label_2296	jmp	_Label_2296
_Label_2296:
! THEN...
	mov	235,r13		! source line 235
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2298 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2298  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	235,r13		! source line 235
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2297:
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_2300
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_2301
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2302
	.word	12
	.word	4
	.word	_Label_2303
	.word	-12
	.word	4
	.word	_Label_2304
	.word	-16
	.word	4
	.word	0
_Label_2300:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2301:
	.ascii	"Pself\0"
	.align
_Label_2302:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_7168:
	push	r0
	sub	r1,1,r1
	bne	_Label_7168
	mov	243,r13		! source line 243
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_2306		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_2306
!	_Label_2305	jmp	_Label_2305
_Label_2305:
! THEN...
	mov	249,r13		! source line 249
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2307 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2307  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	249,r13		! source line 249
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2306:
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_2309		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2309
!	_Label_2308	jmp	_Label_2308
_Label_2308:
! THEN...
	mov	253,r13		! source line 253
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_2310 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2311 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2311 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_2312 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2309:
! ASSIGNMENT STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_2313
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2314
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2315
	.word	-12
	.word	4
	.word	_Label_2316
	.word	-16
	.word	4
	.word	_Label_2317
	.word	-20
	.word	4
	.word	_Label_2318
	.word	-24
	.word	4
	.word	_Label_2319
	.word	-28
	.word	4
	.word	_Label_2320
	.word	-32
	.word	4
	.word	0
_Label_2313:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_2314:
	.ascii	"Pself\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2319:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2320:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_7169:
	push	r0
	sub	r1,1,r1
	bne	_Label_7169
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_2322		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_2322
!	_Label_2321	jmp	_Label_2321
_Label_2321:
! THEN...
	mov	267,r13		! source line 267
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2323 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2323  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	267,r13		! source line 267
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2322:
! ASSIGNMENT STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_2325		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2325
!	_Label_2324	jmp	_Label_2324
_Label_2324:
! THEN...
	mov	271,r13		! source line 271
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0SE",r10
!   _temp_2326 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2325:
! ASSIGNMENT STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_2327
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2328
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2329
	.word	-12
	.word	4
	.word	_Label_2330
	.word	-16
	.word	4
	.word	_Label_2331
	.word	-20
	.word	4
	.word	0
_Label_2327:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_2328:
	.ascii	"Pself\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2331:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_2332
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_2332:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2333
	.word	_sourceFileName
	.word	151		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_2333:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_7170:
	push	r0
	sub	r1,1,r1
	bne	_Label_7170
	mov	297,r13		! source line 297
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_2335
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2336
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2337
	.word	-12
	.word	4
	.word	0
_Label_2335:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2336:
	.ascii	"Pself\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_7171:
	push	r0
	sub	r1,1,r1
	bne	_Label_7171
	mov	303,r13		! source line 303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_2339		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_2339
!	_Label_2338	jmp	_Label_2338
_Label_2338:
! THEN...
	mov	307,r13		! source line 307
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2340 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2340  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	307,r13		! source line 307
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2339:
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	309,r13		! source line 309
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_2344		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2344
!   _temp_2343 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2345
_Label_2344:
!   _temp_2343 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2345:
!   if _temp_2343 then goto _Label_2342 else goto _Label_2341
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2341
	jmp	_Label_2342
_Label_2341:
! THEN...
	mov	311,r13		! source line 311
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_2346
_Label_2342:
! ELSE...
	mov	313,r13		! source line 313
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   _temp_2347 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2346:
! ASSIGNMENT STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	316,r13		! source line 316
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_2348
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2349
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2350
	.word	-16
	.word	4
	.word	_Label_2351
	.word	-9
	.word	1
	.word	_Label_2352
	.word	-20
	.word	4
	.word	_Label_2353
	.word	-24
	.word	4
	.word	0
_Label_2348:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_2349:
	.ascii	"Pself\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2351:
	.byte	'C'
	.ascii	"_temp_2343\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2353:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_7172:
	push	r0
	sub	r1,1,r1
	bne	_Label_7172
	mov	321,r13		! source line 321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_2355		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2355
!	_Label_2354	jmp	_Label_2354
_Label_2354:
! THEN...
	mov	326,r13		! source line 326
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2356 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2356  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	326,r13		! source line 326
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2355:
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	328,r13		! source line 328
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_2357 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_2359		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2359
!	_Label_2358	jmp	_Label_2358
_Label_2358:
! THEN...
	mov	331,r13		! source line 331
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2360 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2360 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0SE",r10
!   _temp_2361 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_2362
_Label_2359:
! ELSE...
	mov	335,r13		! source line 335
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_2362:
! ASSIGNMENT STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_2363
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2364
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2365
	.word	-12
	.word	4
	.word	_Label_2366
	.word	-16
	.word	4
	.word	_Label_2367
	.word	-20
	.word	4
	.word	_Label_2368
	.word	-24
	.word	4
	.word	_Label_2369
	.word	-28
	.word	4
	.word	_Label_2370
	.word	-32
	.word	4
	.word	0
_Label_2363:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_2364:
	.ascii	"Pself\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2369:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2370:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_7173:
	push	r0
	sub	r1,1,r1
	bne	_Label_7173
	mov	342,r13		! source line 342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_2373		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_2373
!	_Label_2372	jmp	_Label_2372
_Label_2372:
!   _temp_2371 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2374
_Label_2373:
!   _temp_2371 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2374:
!   ReturnResult: _temp_2371  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_2375
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2376
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2377
	.word	-9
	.word	1
	.word	0
_Label_2375:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_2376:
	.ascii	"Pself\0"
	.align
_Label_2377:
	.byte	'C'
	.ascii	"_temp_2371\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_2378
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_2378:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2379
	.word	_sourceFileName
	.word	165		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_2379:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_7174:
	push	r0
	sub	r1,1,r1
	bne	_Label_7174
	mov	383,r13		! source line 383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_2381
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_2382
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2383
	.word	-12
	.word	4
	.word	0
_Label_2381:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2382:
	.ascii	"Pself\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_7175:
	push	r0
	sub	r1,1,r1
	bne	_Label_7175
	mov	389,r13		! source line 389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0IF",r10
	mov	392,r13		! source line 392
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2386  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2386 then goto _Label_2385 else goto _Label_2384
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2384
	jmp	_Label_2385
_Label_2384:
! THEN...
	mov	393,r13		! source line 393
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2387 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2387  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	393,r13		! source line 393
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2385:
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   _temp_2388 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_2389
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2390
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2391
	.word	12
	.word	4
	.word	_Label_2392
	.word	-16
	.word	4
	.word	_Label_2393
	.word	-20
	.word	4
	.word	_Label_2394
	.word	-9
	.word	1
	.word	_Label_2395
	.word	-24
	.word	4
	.word	0
_Label_2389:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_2390:
	.ascii	"Pself\0"
	.align
_Label_2391:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2394:
	.byte	'C'
	.ascii	"_temp_2386\0"
	.align
_Label_2395:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_7176:
	push	r0
	sub	r1,1,r1
	bne	_Label_7176
	mov	405,r13		! source line 405
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0IF",r10
	mov	409,r13		! source line 409
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2398  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2398 then goto _Label_2397 else goto _Label_2396
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2396
	jmp	_Label_2397
_Label_2396:
! THEN...
	mov	410,r13		! source line 410
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2399 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2399  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	410,r13		! source line 410
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2397:
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	412,r13		! source line 412
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_2400 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_2402		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2402
!	_Label_2401	jmp	_Label_2401
_Label_2401:
! THEN...
	mov	415,r13		! source line 415
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2403 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2403 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
!   _temp_2404 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2402:
! ASSIGNMENT STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	418,r13		! source line 418
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_2405
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2406
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2407
	.word	12
	.word	4
	.word	_Label_2408
	.word	-16
	.word	4
	.word	_Label_2409
	.word	-20
	.word	4
	.word	_Label_2410
	.word	-24
	.word	4
	.word	_Label_2411
	.word	-28
	.word	4
	.word	_Label_2412
	.word	-9
	.word	1
	.word	_Label_2413
	.word	-32
	.word	4
	.word	_Label_2414
	.word	-36
	.word	4
	.word	0
_Label_2405:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_2406:
	.ascii	"Pself\0"
	.align
_Label_2407:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2412:
	.byte	'C'
	.ascii	"_temp_2398\0"
	.align
_Label_2413:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2414:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_7177:
	push	r0
	sub	r1,1,r1
	bne	_Label_7177
	mov	423,r13		! source line 423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0IF",r10
	mov	427,r13		! source line 427
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2417  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2417 then goto _Label_2416 else goto _Label_2415
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2415
	jmp	_Label_2416
_Label_2415:
! THEN...
	mov	428,r13		! source line 428
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2418 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	428,r13		! source line 428
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2416:
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0WH",r10
_Label_2419:
!	_Label_2420	jmp	_Label_2420
_Label_2420:
	mov	431,r13		! source line 431
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
	mov	432,r13		! source line 432
	mov	"\0\0SE",r10
!   _temp_2422 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_2423
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_2423
	jmp	_Label_2424
_Label_2423:
! THEN...
	mov	434,r13		! source line 434
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0BR",r10
	jmp	_Label_2421
! END IF...
_Label_2424:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2425 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2425 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0SE",r10
!   _temp_2426 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2419
_Label_2421:
! ASSIGNMENT STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_2427
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2428
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2429
	.word	12
	.word	4
	.word	_Label_2430
	.word	-16
	.word	4
	.word	_Label_2431
	.word	-20
	.word	4
	.word	_Label_2432
	.word	-24
	.word	4
	.word	_Label_2433
	.word	-28
	.word	4
	.word	_Label_2434
	.word	-9
	.word	1
	.word	_Label_2435
	.word	-32
	.word	4
	.word	_Label_2436
	.word	-36
	.word	4
	.word	0
_Label_2427:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_2428:
	.ascii	"Pself\0"
	.align
_Label_2429:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2434:
	.byte	'C'
	.ascii	"_temp_2417\0"
	.align
_Label_2435:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2436:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_2437
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2437:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2438
	.word	_sourceFileName
	.word	178		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2438:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_7178:
	push	r0
	sub	r1,1,r1
	bne	_Label_7178
	mov	450,r13		! source line 450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_2439 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2439) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_2439 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_2440 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_2440 [0 ] into _temp_2441
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
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
	store	r2,[r14+-180]
!   Data Move: *_temp_2441 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_2442 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_2442 [999 ] into _temp_2443
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_2443 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_2444 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_2444 [999 ] into _temp_2445
!     make sure index expr is >= 0
	mov	999,r2
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
!   stackTop = _temp_2445		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   _temp_2446 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_2448 = &_temp_2447
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_2448 = _temp_2448 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_2450:
!   Data Move: *_temp_2448 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_2448 = _temp_2448 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_2449 = _temp_2449 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_2449) then goto _Label_2450
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_2450
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_2451 = &_temp_2447
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_7179
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7179:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2446 = *_temp_2451  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_7180:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7180
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0AS",r10
!   _temp_2452 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_2454 = &_temp_2453
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_2454 = _temp_2454 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_2456:
!   Data Move: *_temp_2454 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2454 = _temp_2454 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2455 = _temp_2455 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2455) then goto _Label_2456
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2456
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_2457 = &_temp_2453
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_7181
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7181:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2452 = *_temp_2457  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_7182:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7182
! RETURN STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_2458
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_2459
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2460
	.word	12
	.word	4
	.word	_Label_2461
	.word	-12
	.word	4
	.word	_Label_2462
	.word	-16
	.word	4
	.word	_Label_2463
	.word	-20
	.word	4
	.word	_Label_2464
	.word	-84
	.word	64
	.word	_Label_2465
	.word	-88
	.word	4
	.word	_Label_2466
	.word	-92
	.word	4
	.word	_Label_2467
	.word	-96
	.word	4
	.word	_Label_2468
	.word	-100
	.word	4
	.word	_Label_2469
	.word	-156
	.word	56
	.word	_Label_2470
	.word	-160
	.word	4
	.word	_Label_2471
	.word	-164
	.word	4
	.word	_Label_2472
	.word	-168
	.word	4
	.word	_Label_2473
	.word	-172
	.word	4
	.word	_Label_2474
	.word	-176
	.word	4
	.word	_Label_2475
	.word	-180
	.word	4
	.word	_Label_2476
	.word	-184
	.word	4
	.word	_Label_2477
	.word	-188
	.word	4
	.word	0
_Label_2458:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2459:
	.ascii	"Pself\0"
	.align
_Label_2460:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_7183:
	push	r0
	sub	r1,1,r1
	bne	_Label_7183
	mov	469,r13		! source line 469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2478 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_2478  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_2480 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2479  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_2481
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2482
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2483
	.word	12
	.word	4
	.word	_Label_2484
	.word	16
	.word	4
	.word	_Label_2485
	.word	-12
	.word	4
	.word	_Label_2486
	.word	-16
	.word	4
	.word	_Label_2487
	.word	-20
	.word	4
	.word	_Label_2488
	.word	-24
	.word	4
	.word	_Label_2489
	.word	-28
	.word	4
	.word	0
_Label_2481:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_2482:
	.ascii	"Pself\0"
	.align
_Label_2483:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_2484:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2488:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2489:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_7184:
	push	r0
	sub	r1,1,r1
	bne	_Label_7184
	mov	493,r13		! source line 493
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2492 == _P_Kernel_currentThread then goto _Label_2491		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2491
!	_Label_2490	jmp	_Label_2490
_Label_2490:
! THEN...
	mov	510,r13		! source line 510
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2493 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2493  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	510,r13		! source line 510
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2491:
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0AS",r10
	mov	516,r13		! source line 516
	mov	"\0\0SE",r10
!   _temp_2494 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_2496		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2496
!	_Label_2495	jmp	_Label_2495
_Label_2495:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2498		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2498
!	_Label_2497	jmp	_Label_2497
_Label_2497:
! THEN...
	mov	522,r13		! source line 522
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2499 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2499  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	522,r13		! source line 522
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2498:
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_2501 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2500  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_2496:
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_2502
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2503
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2504
	.word	-12
	.word	4
	.word	_Label_2505
	.word	-16
	.word	4
	.word	_Label_2506
	.word	-20
	.word	4
	.word	_Label_2507
	.word	-24
	.word	4
	.word	_Label_2508
	.word	-28
	.word	4
	.word	_Label_2509
	.word	-32
	.word	4
	.word	_Label_2510
	.word	-36
	.word	4
	.word	_Label_2511
	.word	-40
	.word	4
	.word	_Label_2512
	.word	-44
	.word	4
	.word	0
_Label_2502:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2503:
	.ascii	"Pself\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2510:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2511:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2512:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_7185:
	push	r0
	sub	r1,1,r1
	bne	_Label_7185
	mov	533,r13		! source line 533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2514		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2514
!	_Label_2513	jmp	_Label_2513
_Label_2513:
! THEN...
	mov	546,r13		! source line 546
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2515 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2515  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	546,r13		! source line 546
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2514:
! IF STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2518 == _P_Kernel_currentThread then goto _Label_2517		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2517
!	_Label_2516	jmp	_Label_2516
_Label_2516:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2519 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2519  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	550,r13		! source line 550
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2517:
! ASSIGNMENT STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0AS",r10
	mov	556,r13		! source line 556
	mov	"\0\0SE",r10
!   _temp_2520 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_2521
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2521
	jmp	_Label_2522
_Label_2521:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2523 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2523  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	558,r13		! source line 558
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2522:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	560,r13		! source line 560
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_2524
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2526
	.word	-12
	.word	4
	.word	_Label_2527
	.word	-16
	.word	4
	.word	_Label_2528
	.word	-20
	.word	4
	.word	_Label_2529
	.word	-24
	.word	4
	.word	_Label_2530
	.word	-28
	.word	4
	.word	_Label_2531
	.word	-32
	.word	4
	.word	0
_Label_2524:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2525:
	.ascii	"Pself\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2531:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_7186:
	push	r0
	sub	r1,1,r1
	bne	_Label_7186
	mov	565,r13		! source line 565
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_2535 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_2535 [0 ] into _temp_2536
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_2534 = *_temp_2536  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2534 == 606348324 then goto _Label_2533		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2533
!	_Label_2532	jmp	_Label_2532
_Label_2532:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2537 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2537  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	572,r13		! source line 572
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_2538
_Label_2533:
! ELSE...
	mov	573,r13		! source line 573
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0IF",r10
!   _temp_2542 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_2542 [999 ] into _temp_2543
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2541 = *_temp_2543  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2541 == 606348324 then goto _Label_2540		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2540
!	_Label_2539	jmp	_Label_2539
_Label_2539:
! THEN...
	mov	574,r13		! source line 574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2544 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2544  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	574,r13		! source line 574
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2540:
! END IF...
_Label_2538:
! RETURN STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_2545
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2546
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2547
	.word	-12
	.word	4
	.word	_Label_2548
	.word	-16
	.word	4
	.word	_Label_2549
	.word	-20
	.word	4
	.word	_Label_2550
	.word	-24
	.word	4
	.word	_Label_2551
	.word	-28
	.word	4
	.word	_Label_2552
	.word	-32
	.word	4
	.word	_Label_2553
	.word	-36
	.word	4
	.word	_Label_2554
	.word	-40
	.word	4
	.word	0
_Label_2545:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_2546:
	.ascii	"Pself\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_7187:
	push	r0
	sub	r1,1,r1
	bne	_Label_7187
	mov	580,r13		! source line 580
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_2555 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2555  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2556 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2556  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2557  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2558 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2558  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2559 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2559  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2564 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2565 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2564  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_2560:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2565 then goto _Label_2563		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2563
_Label_2561:
	mov	593,r13		! source line 593
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2566 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2566  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2567 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2567  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2568 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2568  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2570 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_2570 [i ] into _temp_2571
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_2569 = *_temp_2571  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2569  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2572 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2572  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2574 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_2574 [i ] into _temp_2575
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_2573 = *_temp_2575  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2573  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2576 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2576  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2562:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2560
! END FOR
_Label_2563:
! CALL STATEMENT...
!   _temp_2577 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-116]
!   _temp_2578 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2577  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2578  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_2579 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-108]
!   _temp_2581 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_2581 [0 ] into _temp_2582
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_2580 = _temp_2582		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2579  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2580  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	604,r13		! source line 604
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_2585
	cmp	r1,2
	be	_Label_2586
	cmp	r1,3
	be	_Label_2587
	cmp	r1,4
	be	_Label_2588
	cmp	r1,5
	be	_Label_2589
	jmp	_Label_2583
! CASE 1...
_Label_2585:
! CALL STATEMENT...
!   _temp_2590 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2590  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0BR",r10
	jmp	_Label_2584
! CASE 2...
_Label_2586:
! CALL STATEMENT...
!   _temp_2591 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2591  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0BR",r10
	jmp	_Label_2584
! CASE 3...
_Label_2587:
! CALL STATEMENT...
!   _temp_2592 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2592  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0BR",r10
	jmp	_Label_2584
! CASE 4...
_Label_2588:
! CALL STATEMENT...
!   _temp_2593 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2593  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0BR",r10
	jmp	_Label_2584
! CASE 5...
_Label_2589:
! CALL STATEMENT...
!   _temp_2594 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2594  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0BR",r10
	jmp	_Label_2584
! DEFAULT CASE...
_Label_2583:
! CALL STATEMENT...
!   _temp_2595 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2595  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	621,r13		! source line 621
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2584:
! CALL STATEMENT...
!   _temp_2596 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2596  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2597 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2597  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	627,r13		! source line 627
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2602 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2603 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2602  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2598:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2603 then goto _Label_2601		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2601
_Label_2599:
	mov	627,r13		! source line 627
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2604 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2604  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2605 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2605  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2606 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2606  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2608 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2608 [i ] into _temp_2609
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_2607 = *_temp_2609  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2607  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2610 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2610  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2612 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2612 [i ] into _temp_2613
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2611 = *_temp_2613  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2611  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2614 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2614  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2600:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2598
! END FOR
_Label_2601:
! ASSIGNMENT STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_2615
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2617
	.word	-12
	.word	4
	.word	_Label_2618
	.word	-16
	.word	4
	.word	_Label_2619
	.word	-20
	.word	4
	.word	_Label_2620
	.word	-24
	.word	4
	.word	_Label_2621
	.word	-28
	.word	4
	.word	_Label_2622
	.word	-32
	.word	4
	.word	_Label_2623
	.word	-36
	.word	4
	.word	_Label_2624
	.word	-40
	.word	4
	.word	_Label_2625
	.word	-44
	.word	4
	.word	_Label_2626
	.word	-48
	.word	4
	.word	_Label_2627
	.word	-52
	.word	4
	.word	_Label_2628
	.word	-56
	.word	4
	.word	_Label_2629
	.word	-60
	.word	4
	.word	_Label_2630
	.word	-64
	.word	4
	.word	_Label_2631
	.word	-68
	.word	4
	.word	_Label_2632
	.word	-72
	.word	4
	.word	_Label_2633
	.word	-76
	.word	4
	.word	_Label_2634
	.word	-80
	.word	4
	.word	_Label_2635
	.word	-84
	.word	4
	.word	_Label_2636
	.word	-88
	.word	4
	.word	_Label_2637
	.word	-92
	.word	4
	.word	_Label_2638
	.word	-96
	.word	4
	.word	_Label_2639
	.word	-100
	.word	4
	.word	_Label_2640
	.word	-104
	.word	4
	.word	_Label_2641
	.word	-108
	.word	4
	.word	_Label_2642
	.word	-112
	.word	4
	.word	_Label_2643
	.word	-116
	.word	4
	.word	_Label_2644
	.word	-120
	.word	4
	.word	_Label_2645
	.word	-124
	.word	4
	.word	_Label_2646
	.word	-128
	.word	4
	.word	_Label_2647
	.word	-132
	.word	4
	.word	_Label_2648
	.word	-136
	.word	4
	.word	_Label_2649
	.word	-140
	.word	4
	.word	_Label_2650
	.word	-144
	.word	4
	.word	_Label_2651
	.word	-148
	.word	4
	.word	_Label_2652
	.word	-152
	.word	4
	.word	_Label_2653
	.word	-156
	.word	4
	.word	_Label_2654
	.word	-160
	.word	4
	.word	_Label_2655
	.word	-164
	.word	4
	.word	_Label_2656
	.word	-168
	.word	4
	.word	_Label_2657
	.word	-172
	.word	4
	.word	_Label_2658
	.word	-176
	.word	4
	.word	_Label_2659
	.word	-180
	.word	4
	.word	_Label_2660
	.word	-184
	.word	4
	.word	_Label_2661
	.word	-188
	.word	4
	.word	_Label_2662
	.word	-192
	.word	4
	.word	_Label_2663
	.word	-196
	.word	4
	.word	0
_Label_2615:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2616:
	.ascii	"Pself\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2662:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2663:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2664
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2664:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2665
	.word	_sourceFileName
	.word	205		! line number
	.word	41700		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2665:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	12522,r1
_Label_7188:
	push	r0
	sub	r1,1,r1
	bne	_Label_7188
	mov	691,r13		! source line 691
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2666 = _StringConst_87
	set	_StringConst_87,r1
	set	-50084,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_2666  sizeInBytes=4
	set	-50084,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0AS",r10
!   _temp_2667 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-50080,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2669 = &_temp_2668
	set	-50076,r1
	add	r14,r1,r1
	store	r1,[r14+-8432]
!   _temp_2669 = _temp_2669 + 4
	load	[r14+-8432],r1
	add	r1,4,r1
	store	r1,[r14+-8432]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2671 = zeros  (sizeInBytes=4164)
	add	r14,-8424,r4
	mov	1041,r3
_Label_7189:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7189
!   _temp_2671 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-8424]
	mov	10,r1
	store	r1,[r14+-8428]
_Label_2673:
!   Data Move: *_temp_2669 = _temp_2671  (sizeInBytes=4164)
	add	r14,-8424,r5
	load	[r14+-8432],r4
	mov	1041,r3
_Label_7190:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7190
!   _temp_2669 = _temp_2669 + 4164
	load	[r14+-8432],r1
	add	r1,4164,r1
	store	r1,[r14+-8432]
!   _temp_2670 = _temp_2670 + -1
	load	[r14+-8428],r1
	add	r1,-1,r1
	store	r1,[r14+-8428]
!   if intNotZero (_temp_2670) then goto _Label_2673
	load	[r14+-8428],r1
	cmp	r1,r0
	bne	_Label_2673
!   Initialize the array size...
	mov	10,r1
	set	-50076,r2
	store	r1,[r14+r2]
!   _temp_2674 = &_temp_2668
	set	-50076,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   make sure array has size 10
	set	-50080,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_7191
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7191:
!   make sure array has size 10
	load	[r14+-4256],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2667 = *_temp_2674  (sizeInBytes=41644)
	load	[r14+-4256],r5
	set	-50080,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_7192:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7192
! ASSIGNMENT STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_2677 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-4244]
!   Send message Init
	load	[r14+-4244],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_2679 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-4236]
!   Send message Init
	load	[r14+-4236],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0AS",r10
!   inQueue = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r11
	set	41696,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2684 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-4232]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2685 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-4228]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2684  (sizeInBytes=4)
	load	[r14+-4232],r1
	set	-50088,r2
	store	r1,[r14+r2]
_Label_2680:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2685 then goto _Label_2683		
	set	-50088,r1
	load	[r14+r1],r1
	load	[r14+-4228],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2683
_Label_2681:
	mov	711,r13		! source line 711
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0AS",r10
!   _temp_2686 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-4224]
!   Move address of _temp_2686 [i ] into _temp_2687
!     make sure index expr is >= 0
	set	-50088,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-4224],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-4220]
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2688 = zeros  (sizeInBytes=4164)
	add	r14,-4216,r4
	mov	1041,r3
_Label_7193:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7193
!   _temp_2688 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4216]
!   Data Move: *_temp_2687 = _temp_2688  (sizeInBytes=4164)
	add	r14,-4216,r5
	load	[r14+-4220],r4
	mov	1041,r3
_Label_7194:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7194
! SEND STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0SE",r10
!   _temp_2690 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-48]
!   _temp_2691 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2691 [i ] into _temp_2692
!     make sure index expr is >= 0
	set	-50088,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2690  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0AS",r10
!   _temp_2693 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2693 [i ] into _temp_2694
!     make sure index expr is >= 0
	set	-50088,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2695 = _temp_2694 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2695 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	715,r13		! source line 715
	mov	"\0\0SE",r10
!   _temp_2697 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2697 [i ] into _temp_2698
!     make sure index expr is >= 0
	set	-50088,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2696 = _temp_2698		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2699 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2696  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2682:
!   i = i + 1
	set	-50088,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-50088,r2
	store	r1,[r14+r2]
	jmp	_Label_2680
! END FOR
_Label_2683:
! RETURN STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0RE",r10
	set	50092,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_2700
	.word	4		! total size of parameters
	.word	50088		! frame size = 50088
	.word	_Label_2701
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2702
	.word	-12
	.word	4
	.word	_Label_2703
	.word	-16
	.word	4
	.word	_Label_2704
	.word	-20
	.word	4
	.word	_Label_2705
	.word	-24
	.word	4
	.word	_Label_2706
	.word	-28
	.word	4
	.word	_Label_2707
	.word	-32
	.word	4
	.word	_Label_2708
	.word	-36
	.word	4
	.word	_Label_2709
	.word	-40
	.word	4
	.word	_Label_2710
	.word	-44
	.word	4
	.word	_Label_2711
	.word	-48
	.word	4
	.word	_Label_2712
	.word	-52
	.word	4
	.word	_Label_2713
	.word	-4216
	.word	4164
	.word	_Label_2714
	.word	-4220
	.word	4
	.word	_Label_2715
	.word	-4224
	.word	4
	.word	_Label_2716
	.word	-4228
	.word	4
	.word	_Label_2717
	.word	-4232
	.word	4
	.word	_Label_2718
	.word	-4236
	.word	4
	.word	_Label_2719
	.word	-4240
	.word	4
	.word	_Label_2720
	.word	-4244
	.word	4
	.word	_Label_2721
	.word	-4248
	.word	4
	.word	_Label_2722
	.word	-4252
	.word	4
	.word	_Label_2723
	.word	-4256
	.word	4
	.word	_Label_2724
	.word	-4260
	.word	4
	.word	_Label_2725
	.word	-8424
	.word	4164
	.word	_Label_2726
	.word	-8428
	.word	4
	.word	_Label_2727
	.word	-8432
	.word	4
	.word	_Label_2728
	.word	-50076
	.word	41644
	.word	_Label_2729
	.word	-50080
	.word	4
	.word	_Label_2730
	.word	-50084
	.word	4
	.word	_Label_2731
	.word	-50088
	.word	4
	.word	0
_Label_2700:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2701:
	.ascii	"Pself\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2731:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_7195:
	push	r0
	sub	r1,1,r1
	bne	_Label_7195
	mov	722,r13		! source line 722
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_2732 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2732  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2737 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2738 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2737  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2733:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2738 then goto _Label_2736		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2736
_Label_2734:
	mov	731,r13		! source line 731
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2739 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2739  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2740 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2740  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2742 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2742 [i ] into _temp_2743
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_2741 = _temp_2743		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2741  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CA",r10
	call	_function_246_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2735:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2733
! END FOR
_Label_2736:
! CALL STATEMENT...
!   _temp_2744 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2744  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0SE",r10
!   _temp_2745 = _function_245_PrintObjectAddr
	set	_function_245_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2746 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2745  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_2747
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2748
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2749
	.word	-12
	.word	4
	.word	_Label_2750
	.word	-16
	.word	4
	.word	_Label_2751
	.word	-20
	.word	4
	.word	_Label_2752
	.word	-24
	.word	4
	.word	_Label_2753
	.word	-28
	.word	4
	.word	_Label_2754
	.word	-32
	.word	4
	.word	_Label_2755
	.word	-36
	.word	4
	.word	_Label_2756
	.word	-40
	.word	4
	.word	_Label_2757
	.word	-44
	.word	4
	.word	_Label_2758
	.word	-48
	.word	4
	.word	_Label_2759
	.word	-52
	.word	4
	.word	_Label_2760
	.word	-56
	.word	4
	.word	_Label_2761
	.word	-60
	.word	4
	.word	0
_Label_2747:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2748:
	.ascii	"Pself\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2760:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2761:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_7196:
	push	r0
	sub	r1,1,r1
	bne	_Label_7196
	mov	745,r13		! source line 745
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_2762 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0IF",r10
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_2766 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2763 else goto _Label_2765
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2765
	jmp	_Label_2763
_Label_2765:
!   if inQueue <= 0 then goto _Label_2764		(int)
	load	[r14+8],r11
	set	41696,r1
	load	[r11+r1],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2764
!	_Label_2763	jmp	_Label_2763
_Label_2763:
! THEN...
	mov	752,r13		! source line 752
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0AS",r10
!   inQueue = inQueue + 1		(int)
	load	[r14+8],r11
	set	41696,r1
	load	[r11+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r11
	set	41696,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0SE",r10
!   _temp_2767 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2768 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2767  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0AS",r10
!   inQueue = inQueue + 1		(int)
	load	[r14+8],r11
	set	41696,r1
	load	[r11+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r11
	set	41696,r2
	store	r1,[r11+r2]
! END IF...
_Label_2764:
! ASSIGNMENT STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0AS",r10
	mov	757,r13		! source line 757
	mov	"\0\0SE",r10
!   _temp_2769 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=myThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0AS",r10
!   if intIsZero (myThread) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2770 = myThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2770 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_2771 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0RE",r10
!   ReturnResult: myThread  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_2772
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2773
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2774
	.word	-12
	.word	4
	.word	_Label_2775
	.word	-16
	.word	4
	.word	_Label_2776
	.word	-20
	.word	4
	.word	_Label_2777
	.word	-24
	.word	4
	.word	_Label_2778
	.word	-28
	.word	4
	.word	_Label_2779
	.word	-32
	.word	4
	.word	_Label_2780
	.word	-36
	.word	4
	.word	_Label_2781
	.word	-40
	.word	4
	.word	0
_Label_2772:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2773:
	.ascii	"Pself\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2781:
	.byte	'P'
	.ascii	"myThread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_7197:
	push	r0
	sub	r1,1,r1
	bne	_Label_7197
	mov	768,r13		! source line 768
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0SE",r10
!   _temp_2782 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2783 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2783 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_2784 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_2785 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2786 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2785  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_2787 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_2788
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2789
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2790
	.word	12
	.word	4
	.word	_Label_2791
	.word	-12
	.word	4
	.word	_Label_2792
	.word	-16
	.word	4
	.word	_Label_2793
	.word	-20
	.word	4
	.word	_Label_2794
	.word	-24
	.word	4
	.word	_Label_2795
	.word	-28
	.word	4
	.word	_Label_2796
	.word	-32
	.word	4
	.word	0
_Label_2788:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2789:
	.ascii	"Pself\0"
	.align
_Label_2790:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2797
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2797:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2798
	.word	_sourceFileName
	.word	227		! line number
	.word	288		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2798:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	18,r1
_Label_7198:
	push	r0
	sub	r1,1,r1
	bne	_Label_7198
	mov	790,r13		! source line 790
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0AS",r10
!   lastError = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+236]
! ASSIGNMENT STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=204)
	load	[r14+8],r4
	add	r4,32,r4
	mov	51,r3
_Label_7199:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7199
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_2800 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
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
	mov	798,r13		! source line 798
	mov	"\0\0AS",r10
!   _temp_2801 = &fileDescriptor
	load	[r14+8],r1
	add	r1,244,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2803 = &_temp_2802
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2803 = _temp_2803 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2805:
!   Data Move: *_temp_2803 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2803 = _temp_2803 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2804 = _temp_2804 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2804) then goto _Label_2805
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2805
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2806 = &_temp_2802
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_7200
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7200:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2801 = *_temp_2806  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_7201:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7201
! RETURN STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2807
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2808
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2809
	.word	-12
	.word	4
	.word	_Label_2810
	.word	-16
	.word	4
	.word	_Label_2811
	.word	-20
	.word	4
	.word	_Label_2812
	.word	-64
	.word	44
	.word	_Label_2813
	.word	-68
	.word	4
	.word	_Label_2814
	.word	-72
	.word	4
	.word	_Label_2815
	.word	-76
	.word	4
	.word	0
_Label_2807:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2808:
	.ascii	"Pself\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	16,r1
_Label_7202:
	push	r0
	sub	r1,1,r1
	bne	_Label_7202
	mov	805,r13		! source line 805
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2816) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0SE",r10
!   _temp_2817 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Send message Print
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2818 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2818  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CA",r10
	call	_function_246_ThreadPrintShort
! CALL STATEMENT...
!   _temp_2819 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2819  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2824 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2825 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2824  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-68]
_Label_2820:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2825 then goto _Label_2823		
	load	[r14+-68],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2823
_Label_2821:
	mov	817,r13		! source line 817
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0IF",r10
!   _temp_2829 = &fileDescriptor
	load	[r14+8],r1
	add	r1,244,r1
	store	r1,[r14+-36]
!   Move address of _temp_2829 [i ] into _temp_2830
!     make sure index expr is >= 0
	load	[r14+-68],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_2828 = *_temp_2830  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2828 == 0 then goto _Label_2827		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2827
!	_Label_2826	jmp	_Label_2826
_Label_2826:
! THEN...
	mov	819,r13		! source line 819
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0SE",r10
!   _temp_2832 = &fileDescriptor
	load	[r14+8],r1
	add	r1,244,r1
	store	r1,[r14+-24]
!   Move address of _temp_2832 [i ] into _temp_2833
!     make sure index expr is >= 0
	load	[r14+-68],r2
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
!   Data Move: _temp_2831 = *_temp_2833  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2831) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
	jmp	_Label_2834
_Label_2827:
! ELSE...
	mov	821,r13		! source line 821
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2835 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2835  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2834:
!   Increment the FOR-LOOP index variable and jump back
_Label_2822:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_2820
! END FOR
_Label_2823:
! CALL STATEMENT...
!   _temp_2836 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2836  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   if intIsZero (workingDir) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2837
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2838
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2839
	.word	-12
	.word	4
	.word	_Label_2840
	.word	-16
	.word	4
	.word	_Label_2841
	.word	-20
	.word	4
	.word	_Label_2842
	.word	-24
	.word	4
	.word	_Label_2843
	.word	-28
	.word	4
	.word	_Label_2844
	.word	-32
	.word	4
	.word	_Label_2845
	.word	-36
	.word	4
	.word	_Label_2846
	.word	-40
	.word	4
	.word	_Label_2847
	.word	-44
	.word	4
	.word	_Label_2848
	.word	-48
	.word	4
	.word	_Label_2849
	.word	-52
	.word	4
	.word	_Label_2850
	.word	-56
	.word	4
	.word	_Label_2851
	.word	-60
	.word	4
	.word	_Label_2852
	.word	-64
	.word	4
	.word	_Label_2853
	.word	-68
	.word	4
	.word	0
_Label_2837:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2838:
	.ascii	"Pself\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2853:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_7203:
	push	r0
	sub	r1,1,r1
	bne	_Label_7203
	mov	830,r13		! source line 830
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2854 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2854  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2855  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2856 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2856  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	836,r13		! source line 836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2857 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2857  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2859		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2859
!	_Label_2858	jmp	_Label_2858
_Label_2858:
! THEN...
	mov	840,r13		! source line 840
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2860 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2860  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2861
_Label_2859:
! ELSE...
	mov	841,r13		! source line 841
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2863		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2863
!	_Label_2862	jmp	_Label_2862
_Label_2862:
! THEN...
	mov	842,r13		! source line 842
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2864 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2864  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2865
_Label_2863:
! ELSE...
	mov	843,r13		! source line 843
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2867		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2867
!	_Label_2866	jmp	_Label_2866
_Label_2866:
! THEN...
	mov	844,r13		! source line 844
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2868 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2868  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2869
_Label_2867:
! ELSE...
	mov	846,r13		! source line 846
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2870 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2870  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	846,r13		! source line 846
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2869:
! END IF...
_Label_2865:
! END IF...
_Label_2861:
! CALL STATEMENT...
!   _temp_2871 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2871  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2872 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2872  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_2873
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2874
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2875
	.word	-12
	.word	4
	.word	_Label_2876
	.word	-16
	.word	4
	.word	_Label_2877
	.word	-20
	.word	4
	.word	_Label_2878
	.word	-24
	.word	4
	.word	_Label_2879
	.word	-28
	.word	4
	.word	_Label_2880
	.word	-32
	.word	4
	.word	_Label_2881
	.word	-36
	.word	4
	.word	_Label_2882
	.word	-40
	.word	4
	.word	_Label_2883
	.word	-44
	.word	4
	.word	_Label_2884
	.word	-48
	.word	4
	.word	0
_Label_2873:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2874:
	.ascii	"Pself\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2885
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	FindProcess
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_8	! 32:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_2885:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2886
	.word	_sourceFileName
	.word	249		! line number
	.word	2960		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2886:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	895,r1
_Label_7204:
	push	r0
	sub	r1,1,r1
	bne	_Label_7204
	mov	863,r13		! source line 863
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2887 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-3576]
!   Prepare Argument: offset=8  value=_temp_2887  sizeInBytes=4
	load	[r14+-3576],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	871,r13		! source line 871
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,2892,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+2892]
! SEND STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0SE",r10
!   _temp_2889 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-3568]
!   Send message Init
	load	[r14+-3568],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	873,r13		! source line 873
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,2912,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+2912]
! SEND STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0SE",r10
!   _temp_2891 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,2912,r1
	store	r1,[r14+-3560]
!   Send message Init
	load	[r14+-3560],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,2940,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+2940]
! SEND STATEMENT...
	mov	876,r13		! source line 876
	mov	"\0\0SE",r10
!   _temp_2893 = &aProcessDied
	load	[r14+8],r1
	add	r1,2940,r1
	store	r1,[r14+-3552]
!   Send message Init
	load	[r14+-3552],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	877,r13		! source line 877
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	878,r13		! source line 878
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,2928,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+2928]
! ASSIGNMENT STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0AS",r10
!   _temp_2895 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-3544]
!   NEW ARRAY Constructor...
!   _temp_2897 = &_temp_2896
	add	r14,-3540,r1
	store	r1,[r14+-656]
!   _temp_2897 = _temp_2897 + 4
	load	[r14+-656],r1
	add	r1,4,r1
	store	r1,[r14+-656]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2899 = zeros  (sizeInBytes=288)
	add	r14,-648,r4
	mov	72,r3
_Label_7205:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7205
!   _temp_2899 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-648]
	mov	10,r1
	store	r1,[r14+-652]
_Label_2901:
!   Data Move: *_temp_2897 = _temp_2899  (sizeInBytes=288)
	add	r14,-648,r5
	load	[r14+-656],r4
	mov	72,r3
_Label_7206:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7206
!   _temp_2897 = _temp_2897 + 288
	load	[r14+-656],r1
	add	r1,288,r1
	store	r1,[r14+-656]
!   _temp_2898 = _temp_2898 + -1
	load	[r14+-652],r1
	add	r1,-1,r1
	store	r1,[r14+-652]
!   if intNotZero (_temp_2898) then goto _Label_2901
	load	[r14+-652],r1
	cmp	r1,r0
	bne	_Label_2901
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-3540]
!   _temp_2902 = &_temp_2896
	add	r14,-3540,r1
	store	r1,[r14+-356]
!   make sure array has size 10
	load	[r14+-3544],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_7207
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7207:
!   make sure array has size 10
	load	[r14+-356],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2895 = *_temp_2902  (sizeInBytes=2884)
	load	[r14+-356],r5
	load	[r14+-3544],r4
	mov	721,r3
_Label_7208:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7208
! ASSIGNMENT STATEMENT...
	mov	880,r13		! source line 880
	mov	"\0\0AS",r10
!   inQueue = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+2956]
! FOR STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2907 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-352]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2908 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-348]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2907  (sizeInBytes=4)
	load	[r14+-352],r1
	store	r1,[r14+-3580]
_Label_2903:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2908 then goto _Label_2906		
	load	[r14+-3580],r1
	load	[r14+-348],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2906
_Label_2904:
	mov	884,r13		! source line 884
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0AS",r10
!   _temp_2909 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-344]
!   Move address of _temp_2909 [i ] into _temp_2910
!     make sure index expr is >= 0
	load	[r14+-3580],r2
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
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-340]
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2911 = zeros  (sizeInBytes=288)
	add	r14,-336,r4
	mov	72,r3
_Label_7209:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7209
!   _temp_2911 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-336]
!   Data Move: *_temp_2910 = _temp_2911  (sizeInBytes=288)
	add	r14,-336,r5
	load	[r14+-340],r4
	mov	72,r3
_Label_7210:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7210
! SEND STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0SE",r10
!   _temp_2913 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-44]
!   Move address of _temp_2913 [i ] into _temp_2914
!     make sure index expr is >= 0
	load	[r14+-3580],r2
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
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0AS",r10
!   _temp_2915 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2915 [i ] into _temp_2916
!     make sure index expr is >= 0
	load	[r14+-3580],r2
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
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2917 = _temp_2916 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2917 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
!   _temp_2919 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2919 [i ] into _temp_2920
!     make sure index expr is >= 0
	load	[r14+-3580],r2
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
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2918 = _temp_2920		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2921 = &freeList
	load	[r14+8],r1
	add	r1,2928,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2918  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2905:
!   i = i + 1
	load	[r14+-3580],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-3580]
	jmp	_Label_2903
! END FOR
_Label_2906:
! RETURN STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0RE",r10
	add	r15,3584,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2922
	.word	4		! total size of parameters
	.word	3580		! frame size = 3580
	.word	_Label_2923
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2924
	.word	-12
	.word	4
	.word	_Label_2925
	.word	-16
	.word	4
	.word	_Label_2926
	.word	-20
	.word	4
	.word	_Label_2927
	.word	-24
	.word	4
	.word	_Label_2928
	.word	-28
	.word	4
	.word	_Label_2929
	.word	-32
	.word	4
	.word	_Label_2930
	.word	-36
	.word	4
	.word	_Label_2931
	.word	-40
	.word	4
	.word	_Label_2932
	.word	-44
	.word	4
	.word	_Label_2933
	.word	-48
	.word	4
	.word	_Label_2934
	.word	-336
	.word	288
	.word	_Label_2935
	.word	-340
	.word	4
	.word	_Label_2936
	.word	-344
	.word	4
	.word	_Label_2937
	.word	-348
	.word	4
	.word	_Label_2938
	.word	-352
	.word	4
	.word	_Label_2939
	.word	-356
	.word	4
	.word	_Label_2940
	.word	-360
	.word	4
	.word	_Label_2941
	.word	-648
	.word	288
	.word	_Label_2942
	.word	-652
	.word	4
	.word	_Label_2943
	.word	-656
	.word	4
	.word	_Label_2944
	.word	-3540
	.word	2884
	.word	_Label_2945
	.word	-3544
	.word	4
	.word	_Label_2946
	.word	-3548
	.word	4
	.word	_Label_2947
	.word	-3552
	.word	4
	.word	_Label_2948
	.word	-3556
	.word	4
	.word	_Label_2949
	.word	-3560
	.word	4
	.word	_Label_2950
	.word	-3564
	.word	4
	.word	_Label_2951
	.word	-3568
	.word	4
	.word	_Label_2952
	.word	-3572
	.word	4
	.word	_Label_2953
	.word	-3576
	.word	4
	.word	_Label_2954
	.word	-3580
	.word	4
	.word	0
_Label_2922:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2923:
	.ascii	"Pself\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2954:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_7211:
	push	r0
	sub	r1,1,r1
	bne	_Label_7211
	mov	895,r13		! source line 895
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2955 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2955  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2960 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2961 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2960  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2956:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2961 then goto _Label_2959		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2959
_Label_2957:
	mov	904,r13		! source line 904
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2962 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2962  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2963 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2963  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_2964 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Move address of _temp_2964 [i ] into _temp_2965
!     make sure index expr is >= 0
	load	[r14+-52],r2
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
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2958:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2956
! END FOR
_Label_2959:
! CALL STATEMENT...
!   _temp_2966 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2966  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0SE",r10
!   _temp_2967 = _function_245_PrintObjectAddr
	set	_function_245_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2968 = &freeList
	load	[r14+8],r1
	add	r1,2928,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2967  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_2969
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2971
	.word	-12
	.word	4
	.word	_Label_2972
	.word	-16
	.word	4
	.word	_Label_2973
	.word	-20
	.word	4
	.word	_Label_2974
	.word	-24
	.word	4
	.word	_Label_2975
	.word	-28
	.word	4
	.word	_Label_2976
	.word	-32
	.word	4
	.word	_Label_2977
	.word	-36
	.word	4
	.word	_Label_2978
	.word	-40
	.word	4
	.word	_Label_2979
	.word	-44
	.word	4
	.word	_Label_2980
	.word	-48
	.word	4
	.word	_Label_2981
	.word	-52
	.word	4
	.word	_Label_2982
	.word	-56
	.word	4
	.word	0
_Label_2969:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2970:
	.ascii	"Pself\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2981:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2982:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_7212:
	push	r0
	sub	r1,1,r1
	bne	_Label_7212
	mov	918,r13		! source line 918
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2983 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2983  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2988 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2989 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2988  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2984:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2989 then goto _Label_2987		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2987
_Label_2985:
	mov	927,r13		! source line 927
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2990 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2990  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0SE",r10
!   _temp_2991 = &processTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Move address of _temp_2991 [i ] into _temp_2992
!     make sure index expr is >= 0
	load	[r14+-48],r2
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
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2986:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2984
! END FOR
_Label_2987:
! CALL STATEMENT...
!   _temp_2993 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0SE",r10
!   _temp_2994 = _function_245_PrintObjectAddr
	set	_function_245_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2995 = &freeList
	load	[r14+8],r1
	add	r1,2928,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2994  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_2996
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2998
	.word	-12
	.word	4
	.word	_Label_2999
	.word	-16
	.word	4
	.word	_Label_3000
	.word	-20
	.word	4
	.word	_Label_3001
	.word	-24
	.word	4
	.word	_Label_3002
	.word	-28
	.word	4
	.word	_Label_3003
	.word	-32
	.word	4
	.word	_Label_3004
	.word	-36
	.word	4
	.word	_Label_3005
	.word	-40
	.word	4
	.word	_Label_3006
	.word	-44
	.word	4
	.word	_Label_3007
	.word	-48
	.word	4
	.word	_Label_3008
	.word	-52
	.word	4
	.word	0
_Label_2996:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2997:
	.ascii	"Pself\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3007:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3008:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_7213:
	push	r0
	sub	r1,1,r1
	bne	_Label_7213
	mov	940,r13		! source line 940
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0SE",r10
!   _temp_3009 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0IF",r10
	mov	947,r13		! source line 947
	mov	"\0\0SE",r10
!   _temp_3013 = &freeList
	load	[r14+8],r1
	add	r1,2928,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3010 else goto _Label_3012
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3012
	jmp	_Label_3010
_Label_3012:
!   if inQueue <= 0 then goto _Label_3011		(int)
	load	[r14+8],r1
	load	[r1+2956],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3011
!	_Label_3010	jmp	_Label_3010
_Label_3010:
! THEN...
	mov	949,r13		! source line 949
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0AS",r10
!   inQueue = inQueue + 1		(int)
	load	[r14+8],r1
	load	[r1+2956],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+2956]
! SEND STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_3014 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-32]
!   _temp_3015 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,2912,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3014  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0AS",r10
!   inQueue = inQueue - 1		(int)
	load	[r14+8],r1
	load	[r1+2956],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+2956]
! END IF...
_Label_3011:
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_3016 = &freeList
	load	[r14+8],r1
	add	r1,2928,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=myProcessB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0AS",r10
!   if intIsZero (myProcessB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3017 = myProcessB + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3017 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   if intIsZero (myProcessB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3018 = myProcessB + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3018 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_3019 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0RE",r10
!   ReturnResult: myProcessB  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_3020
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3022
	.word	-12
	.word	4
	.word	_Label_3023
	.word	-16
	.word	4
	.word	_Label_3024
	.word	-20
	.word	4
	.word	_Label_3025
	.word	-24
	.word	4
	.word	_Label_3026
	.word	-28
	.word	4
	.word	_Label_3027
	.word	-32
	.word	4
	.word	_Label_3028
	.word	-36
	.word	4
	.word	_Label_3029
	.word	-40
	.word	4
	.word	_Label_3030
	.word	-44
	.word	4
	.word	0
_Label_3020:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_3021:
	.ascii	"Pself\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3030:
	.byte	'P'
	.ascii	"myProcessB\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_7214:
	push	r0
	sub	r1,1,r1
	bne	_Label_7214
	mov	970,r13		! source line 970
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0SE",r10
!   _temp_3031 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3032 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3032 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_3033 = &freeList
	load	[r14+8],r1
	add	r1,2928,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_3034 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-20]
!   _temp_3035 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,2912,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3034  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_3036 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_3037
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3038
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3039
	.word	12
	.word	4
	.word	_Label_3040
	.word	-12
	.word	4
	.word	_Label_3041
	.word	-16
	.word	4
	.word	_Label_3042
	.word	-20
	.word	4
	.word	_Label_3043
	.word	-24
	.word	4
	.word	_Label_3044
	.word	-28
	.word	4
	.word	_Label_3045
	.word	-32
	.word	4
	.word	0
_Label_3037:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_3038:
	.ascii	"Pself\0"
	.align
_Label_3039:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
! 
! ===============  METHOD FindProcess  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	12,r1
_Label_7215:
	push	r0
	sub	r1,1,r1
	bne	_Label_7215
	mov	986,r13		! source line 986
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3050 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3051 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3050  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-56]
_Label_3046:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3051 then goto _Label_3049		
	load	[r14+-56],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3049
_Label_3047:
	mov	990,r13		! source line 990
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0IF",r10
!   _temp_3055 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-40]
!   _temp_3056 = _temp_3055 + 8
	load	[r14+-40],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3056 [i ] into _temp_3057
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_3058 = _temp_3057 + 12
	load	[r14+-32],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3054 = *_temp_3058  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_3054 != pid then goto _Label_3053		(int)
	load	[r14+-44],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_3053
!	_Label_3052	jmp	_Label_3052
_Label_3052:
! THEN...
	mov	992,r13		! source line 992
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0RE",r10
!   _temp_3060 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-20]
!   _temp_3061 = _temp_3060 + 8
	load	[r14+-20],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3061 [i ] into _temp_3062
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   _temp_3059 = _temp_3062		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3059  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3053:
!   Increment the FOR-LOOP index variable and jump back
_Label_3048:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_3046
! END FOR
_Label_3049:
! RETURN STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_3063
	.word	8		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3064
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3065
	.word	12
	.word	4
	.word	_Label_3066
	.word	-12
	.word	4
	.word	_Label_3067
	.word	-16
	.word	4
	.word	_Label_3068
	.word	-20
	.word	4
	.word	_Label_3069
	.word	-24
	.word	4
	.word	_Label_3070
	.word	-28
	.word	4
	.word	_Label_3071
	.word	-32
	.word	4
	.word	_Label_3072
	.word	-36
	.word	4
	.word	_Label_3073
	.word	-40
	.word	4
	.word	_Label_3074
	.word	-44
	.word	4
	.word	_Label_3075
	.word	-48
	.word	4
	.word	_Label_3076
	.word	-52
	.word	4
	.word	_Label_3077
	.word	-56
	.word	4
	.word	0
_Label_3063:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FindProcess\0"
	.align
_Label_3064:
	.ascii	"Pself\0"
	.align
_Label_3065:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3077:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	50,r1
_Label_7216:
	push	r0
	sub	r1,1,r1
	bne	_Label_7216
	mov	1002,r13		! source line 1002
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_3078 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   _temp_3079 = _temp_3078 + 2892
	load	[r14+-192],r1
	add	r1,2892,r1
	store	r1,[r14+-188]
!   Send message Lock
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3084 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-184]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3085 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-180]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3084  (sizeInBytes=4)
	load	[r14+-184],r1
	store	r1,[r14+-196]
_Label_3080:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3085 then goto _Label_3083		
	load	[r14+-196],r1
	load	[r14+-180],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3083
_Label_3081:
	mov	1011,r13		! source line 1011
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3090 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-172]
!   Data Move: _temp_3089 = *_temp_3090  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   _temp_3092 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_3093 = _temp_3092 + 8
	load	[r14+-164],r1
	add	r1,8,r1
	store	r1,[r14+-160]
!   Move address of _temp_3093 [i ] into _temp_3094
!     make sure index expr is >= 0
	load	[r14+-196],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_3095 = _temp_3094 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_3091 = *_temp_3095  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if _temp_3089 != _temp_3091 then goto _Label_3087		(int)
	load	[r14+-176],r1
	load	[r14+-168],r2
	cmp	r1,r2
	bne	_Label_3087
!	_Label_3088	jmp	_Label_3088
_Label_3088:
!   _temp_3097 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-144]
!   _temp_3098 = _temp_3097 + 8
	load	[r14+-144],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_3098 [i ] into _temp_3099
!     make sure index expr is >= 0
	load	[r14+-196],r2
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
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_3100 = _temp_3099 + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-132]
!   Data Move: _temp_3096 = *_temp_3100  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_3096 != 2 then goto _Label_3087		(int)
	load	[r14+-148],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_3087
!	_Label_3086	jmp	_Label_3086
_Label_3086:
! THEN...
	mov	1016,r13		! source line 1016
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0AS",r10
!   _temp_3101 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-128]
!   _temp_3102 = _temp_3101 + 8
	load	[r14+-128],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_3102 [i ] into _temp_3103
!     make sure index expr is >= 0
	load	[r14+-196],r2
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
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   _temp_3104 = _temp_3103 + 20
	load	[r14+-120],r1
	add	r1,20,r1
	store	r1,[r14+-116]
!   Data Move: *_temp_3104 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-116],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0SE",r10
!   _temp_3106 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_3107 = _temp_3106 + 8
	load	[r14+-108],r1
	add	r1,8,r1
	store	r1,[r14+-104]
!   Move address of _temp_3107 [i ] into _temp_3108
!     make sure index expr is >= 0
	load	[r14+-196],r2
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
	set	288,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   _temp_3105 = _temp_3108		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-112]
!   _temp_3109 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_3110 = _temp_3109 + 2928
	load	[r14+-96],r1
	add	r1,2928,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_3105  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0SE",r10
!   _temp_3111 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-88]
!   _temp_3112 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_3113 = _temp_3112 + 2912
	load	[r14+-84],r1
	add	r1,2912,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_3111  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3087:
!   Increment the FOR-LOOP index variable and jump back
_Label_3082:
!   i = i + 1
	load	[r14+-196],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
	jmp	_Label_3080
! END FOR
_Label_3083:
! ASSIGNMENT STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0AS",r10
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3115 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3114 = *_temp_3115  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3116 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_3114  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message FindProcess
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Retrieve Result: targetName=parent  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
! IF STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0IF",r10
!   if intIsZero (parent) then goto _Label_3118
	load	[r14+-200],r1
	cmp	r1,r0
	be	_Label_3118
!	_Label_3119	jmp	_Label_3119
_Label_3119:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3121 = parent + 20
	load	[r14+-200],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Data Move: _temp_3120 = *_temp_3121  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_3120 != 1 then goto _Label_3118		(int)
	load	[r14+-64],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_3118
!	_Label_3117	jmp	_Label_3117
_Label_3117:
! THEN...
	mov	1026,r13		! source line 1026
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3122 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_3122 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-56],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_3123 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-52]
!   _temp_3124 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-48]
!   _temp_3125 = _temp_3124 + 2940
	load	[r14+-48],r1
	add	r1,2940,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_3123  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_3126
_Label_3118:
! ELSE...
	mov	1031,r13		! source line 1031
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3127 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_3127 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_3128 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-36]
!   _temp_3129 = _temp_3128 + 2928
	load	[r14+-36],r1
	add	r1,2928,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_3130 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-28]
!   _temp_3131 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_3132 = _temp_3131 + 2912
	load	[r14+-24],r1
	add	r1,2912,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_3130  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3126:
! SEND STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0SE",r10
!   _temp_3133 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_3134 = _temp_3133 + 2892
	load	[r14+-16],r1
	add	r1,2892,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0RE",r10
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_3135
	.word	8		! total size of parameters
	.word	200		! frame size = 200
	.word	_Label_3136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3137
	.word	12
	.word	4
	.word	_Label_3138
	.word	-12
	.word	4
	.word	_Label_3139
	.word	-16
	.word	4
	.word	_Label_3140
	.word	-20
	.word	4
	.word	_Label_3141
	.word	-24
	.word	4
	.word	_Label_3142
	.word	-28
	.word	4
	.word	_Label_3143
	.word	-32
	.word	4
	.word	_Label_3144
	.word	-36
	.word	4
	.word	_Label_3145
	.word	-40
	.word	4
	.word	_Label_3146
	.word	-44
	.word	4
	.word	_Label_3147
	.word	-48
	.word	4
	.word	_Label_3148
	.word	-52
	.word	4
	.word	_Label_3149
	.word	-56
	.word	4
	.word	_Label_3150
	.word	-60
	.word	4
	.word	_Label_3151
	.word	-64
	.word	4
	.word	_Label_3152
	.word	-68
	.word	4
	.word	_Label_3153
	.word	-72
	.word	4
	.word	_Label_3154
	.word	-76
	.word	4
	.word	_Label_3155
	.word	-80
	.word	4
	.word	_Label_3156
	.word	-84
	.word	4
	.word	_Label_3157
	.word	-88
	.word	4
	.word	_Label_3158
	.word	-92
	.word	4
	.word	_Label_3159
	.word	-96
	.word	4
	.word	_Label_3160
	.word	-100
	.word	4
	.word	_Label_3161
	.word	-104
	.word	4
	.word	_Label_3162
	.word	-108
	.word	4
	.word	_Label_3163
	.word	-112
	.word	4
	.word	_Label_3164
	.word	-116
	.word	4
	.word	_Label_3165
	.word	-120
	.word	4
	.word	_Label_3166
	.word	-124
	.word	4
	.word	_Label_3167
	.word	-128
	.word	4
	.word	_Label_3168
	.word	-132
	.word	4
	.word	_Label_3169
	.word	-136
	.word	4
	.word	_Label_3170
	.word	-140
	.word	4
	.word	_Label_3171
	.word	-144
	.word	4
	.word	_Label_3172
	.word	-148
	.word	4
	.word	_Label_3173
	.word	-152
	.word	4
	.word	_Label_3174
	.word	-156
	.word	4
	.word	_Label_3175
	.word	-160
	.word	4
	.word	_Label_3176
	.word	-164
	.word	4
	.word	_Label_3177
	.word	-168
	.word	4
	.word	_Label_3178
	.word	-172
	.word	4
	.word	_Label_3179
	.word	-176
	.word	4
	.word	_Label_3180
	.word	-180
	.word	4
	.word	_Label_3181
	.word	-184
	.word	4
	.word	_Label_3182
	.word	-188
	.word	4
	.word	_Label_3183
	.word	-192
	.word	4
	.word	_Label_3184
	.word	-196
	.word	4
	.word	_Label_3185
	.word	-200
	.word	4
	.word	0
_Label_3135:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_3136:
	.ascii	"Pself\0"
	.align
_Label_3137:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3184:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3185:
	.byte	'P'
	.ascii	"parent\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_8,r1
	push	r1
	mov	22,r1
_Label_7217:
	push	r0
	sub	r1,1,r1
	bne	_Label_7217
	mov	1040,r13		! source line 1040
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_3186 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_3187 = _temp_3186 + 2892
	load	[r14+-84],r1
	add	r1,2892,r1
	store	r1,[r14+-80]
!   Send message Lock
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0WH",r10
_Label_3188:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3192 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3191 = *_temp_3192  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if _temp_3191 == 2 then goto _Label_3190		(int)
	load	[r14+-76],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_3190
!	_Label_3189	jmp	_Label_3189
_Label_3189:
	mov	1050,r13		! source line 1050
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_3193 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-68]
!   _temp_3194 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_3195 = _temp_3194 + 2940
	load	[r14+-64],r1
	add	r1,2940,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_3193  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3188
_Label_3190:
! ASSIGNMENT STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3196 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-56]
!   Data Move: eStatus = *_temp_3196  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0IF",r10
!   if eStatus != -1 then goto _Label_3198		(int)
	load	[r14+-88],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_3198
!	_Label_3197	jmp	_Label_3197
_Label_3197:
! THEN...
	mov	1060,r13		! source line 1060
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3200 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3199 = *_temp_3200  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_3199) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3201 = _temp_3199 + 236
	load	[r14+-52],r1
	add	r1,236,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_3201 = 11  (sizeInBytes=4)
	mov	11,r1
	load	[r14+-44],r2
	store	r1,[r2]
! END IF...
_Label_3198:
! ASSIGNMENT STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3202 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_3202 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_3203 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-36]
!   _temp_3204 = _temp_3203 + 2928
	load	[r14+-36],r1
	add	r1,2928,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0SE",r10
!   _temp_3205 = &processManagerLock
	load	[r14+8],r1
	add	r1,2892,r1
	store	r1,[r14+-28]
!   _temp_3206 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_3207 = _temp_3206 + 2912
	load	[r14+-24],r1
	add	r1,2912,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_3205  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_3208 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_3209 = _temp_3208 + 2892
	load	[r14+-16],r1
	add	r1,2892,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0RE",r10
!   ReturnResult: eStatus  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_8:
	.word	_sourceFileName
	.word	_Label_3210
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_3211
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3212
	.word	12
	.word	4
	.word	_Label_3213
	.word	-12
	.word	4
	.word	_Label_3214
	.word	-16
	.word	4
	.word	_Label_3215
	.word	-20
	.word	4
	.word	_Label_3216
	.word	-24
	.word	4
	.word	_Label_3217
	.word	-28
	.word	4
	.word	_Label_3218
	.word	-32
	.word	4
	.word	_Label_3219
	.word	-36
	.word	4
	.word	_Label_3220
	.word	-40
	.word	4
	.word	_Label_3221
	.word	-44
	.word	4
	.word	_Label_3222
	.word	-48
	.word	4
	.word	_Label_3223
	.word	-52
	.word	4
	.word	_Label_3224
	.word	-56
	.word	4
	.word	_Label_3225
	.word	-60
	.word	4
	.word	_Label_3226
	.word	-64
	.word	4
	.word	_Label_3227
	.word	-68
	.word	4
	.word	_Label_3228
	.word	-72
	.word	4
	.word	_Label_3229
	.word	-76
	.word	4
	.word	_Label_3230
	.word	-80
	.word	4
	.word	_Label_3231
	.word	-84
	.word	4
	.word	_Label_3232
	.word	-88
	.word	4
	.word	0
_Label_3210:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_3211:
	.ascii	"Pself\0"
	.align
_Label_3212:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3232:
	.byte	'I'
	.ascii	"eStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_3233
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	PutAFrame
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_6	! 24:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_3233:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3234
	.word	_sourceFileName
	.word	274		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_3234:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_7218:
	push	r0
	sub	r1,1,r1
	bne	_Label_7218
	mov	1230,r13		! source line 1230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3235 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3235  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1243,r13		! source line 1243
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
!   _temp_3237 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0SE",r10
!   _temp_3239 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
!   _temp_3241 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3246 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3247 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3246  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_3242:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3247 then goto _Label_3245		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3245
_Label_3243:
	mov	1251,r13		! source line 1251
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3250 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3250) then goto _Label_3249
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_3249
!	_Label_3248	jmp	_Label_3248
_Label_3248:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3251 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3251  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1255,r13		! source line 1255
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3249:
!   Increment the FOR-LOOP index variable and jump back
_Label_3244:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_3242
! END FOR
_Label_3245:
! RETURN STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_3252
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3253
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3254
	.word	-12
	.word	4
	.word	_Label_3255
	.word	-16
	.word	4
	.word	_Label_3256
	.word	-20
	.word	4
	.word	_Label_3257
	.word	-24
	.word	4
	.word	_Label_3258
	.word	-28
	.word	4
	.word	_Label_3259
	.word	-32
	.word	4
	.word	_Label_3260
	.word	-36
	.word	4
	.word	_Label_3261
	.word	-40
	.word	4
	.word	_Label_3262
	.word	-44
	.word	4
	.word	_Label_3263
	.word	-48
	.word	4
	.word	_Label_3264
	.word	-52
	.word	4
	.word	_Label_3265
	.word	-56
	.word	4
	.word	0
_Label_3252:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3253:
	.ascii	"Pself\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3265:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_7219:
	push	r0
	sub	r1,1,r1
	bne	_Label_7219
	mov	1262,r13		! source line 1262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0SE",r10
!   _temp_3266 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3267 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3267  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3268 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3268  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3269 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3269  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0SE",r10
!   _temp_3270 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0SE",r10
!   _temp_3271 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_3272
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3274
	.word	-12
	.word	4
	.word	_Label_3275
	.word	-16
	.word	4
	.word	_Label_3276
	.word	-20
	.word	4
	.word	_Label_3277
	.word	-24
	.word	4
	.word	_Label_3278
	.word	-28
	.word	4
	.word	_Label_3279
	.word	-32
	.word	4
	.word	0
_Label_3272:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3273:
	.ascii	"Pself\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_7220:
	push	r0
	sub	r1,1,r1
	bne	_Label_7220
	mov	1276,r13		! source line 1276
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
!   _temp_3280 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0WH",r10
_Label_3281:
!   if numberFreeFrames >= 1 then goto _Label_3283		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3283
!	_Label_3282	jmp	_Label_3282
_Label_3282:
	mov	1288,r13		! source line 1288
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0SE",r10
!   _temp_3284 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_3285 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_3284  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3281
_Label_3283:
! ASSIGNMENT STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0AS",r10
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_3286 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0SE",r10
!   _temp_3287 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0AS",r10
!   _temp_3288 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_3288		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_3289
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_3290
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3291
	.word	-12
	.word	4
	.word	_Label_3292
	.word	-16
	.word	4
	.word	_Label_3293
	.word	-20
	.word	4
	.word	_Label_3294
	.word	-24
	.word	4
	.word	_Label_3295
	.word	-28
	.word	4
	.word	_Label_3296
	.word	-32
	.word	4
	.word	_Label_3297
	.word	-36
	.word	4
	.word	_Label_3298
	.word	-40
	.word	4
	.word	0
_Label_3289:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_3290:
	.ascii	"Pself\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3287\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3297:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_3298:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD PutAFrame  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	9,r1
_Label_7221:
	push	r0
	sub	r1,1,r1
	bne	_Label_7221
	mov	1307,r13		! source line 1307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0SE",r10
!   _temp_3299 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0AS",r10
!   _temp_3300 = frameAddr - 1048576		(int)
	load	[r14+12],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_3300 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! SEND STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0SE",r10
!   _temp_3301 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0SE",r10
!   _temp_3302 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_3303 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3302  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0SE",r10
!   _temp_3304 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_3305
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_3306
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3307
	.word	12
	.word	4
	.word	_Label_3308
	.word	-12
	.word	4
	.word	_Label_3309
	.word	-16
	.word	4
	.word	_Label_3310
	.word	-20
	.word	4
	.word	_Label_3311
	.word	-24
	.word	4
	.word	_Label_3312
	.word	-28
	.word	4
	.word	_Label_3313
	.word	-32
	.word	4
	.word	_Label_3314
	.word	-36
	.word	4
	.word	0
_Label_3305:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"PutAFrame\0"
	.align
_Label_3306:
	.ascii	"Pself\0"
	.align
_Label_3307:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3314:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	15,r1
_Label_7222:
	push	r0
	sub	r1,1,r1
	bne	_Label_7222
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1335,r13		! source line 1335
	mov	"\0\0SE",r10
!   _temp_3315 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0WH",r10
_Label_3316:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_3318		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3318
!	_Label_3317	jmp	_Label_3317
_Label_3317:
	mov	1337,r13		! source line 1337
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0SE",r10
!   _temp_3319 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_3320 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_3319  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3316
_Label_3318:
! FOR STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3325 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3326 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3325  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_3321:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3326 then goto _Label_3324		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3324
_Label_3322:
	mov	1341,r13		! source line 1341
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0AS",r10
	mov	1343,r13		! source line 1343
	mov	"\0\0SE",r10
!   _temp_3327 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=virtAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
!   _temp_3328 = virtAddr * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   physicalAddi = 1048576 + _temp_3328		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=physicalAddi  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3323:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_3321
! END FOR
_Label_3324:
! ASSIGNMENT STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1353,r13		! source line 1353
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3329 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3329 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0SE",r10
!   _temp_3330 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_3331
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_3332
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3333
	.word	12
	.word	4
	.word	_Label_3334
	.word	16
	.word	4
	.word	_Label_3335
	.word	-12
	.word	4
	.word	_Label_3336
	.word	-16
	.word	4
	.word	_Label_3337
	.word	-20
	.word	4
	.word	_Label_3338
	.word	-24
	.word	4
	.word	_Label_3339
	.word	-28
	.word	4
	.word	_Label_3340
	.word	-32
	.word	4
	.word	_Label_3341
	.word	-36
	.word	4
	.word	_Label_3342
	.word	-40
	.word	4
	.word	_Label_3343
	.word	-44
	.word	4
	.word	_Label_3344
	.word	-48
	.word	4
	.word	_Label_3345
	.word	-52
	.word	4
	.word	_Label_3346
	.word	-56
	.word	4
	.word	0
_Label_3331:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_3332:
	.ascii	"Pself\0"
	.align
_Label_3333:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_3334:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3330\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3328\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3327\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3326\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3320\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3344:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3345:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3346:
	.byte	'I'
	.ascii	"physicalAddi\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_6,r1
	push	r1
	mov	15,r1
_Label_7223:
	push	r0
	sub	r1,1,r1
	bne	_Label_7223
	mov	1361,r13		! source line 1361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0SE",r10
!   _temp_3347 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3348 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_3348  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-60]
! FOR STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3353 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3354 = numFramesReturned - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3353  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_3349:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3354 then goto _Label_3352		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3352
_Label_3350:
	mov	1373,r13		! source line 1373
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
	mov	1375,r13		! source line 1375
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frmAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0AS",r10
!   _temp_3355 = frmAddr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_3355 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0SE",r10
!   _temp_3356 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3351:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_3349
! END FOR
_Label_3352:
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-60],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0SE",r10
!   _temp_3357 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_3358 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3357  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
!   _temp_3359 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_6:
	.word	_sourceFileName
	.word	_Label_3360
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_3361
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3362
	.word	12
	.word	4
	.word	_Label_3363
	.word	-12
	.word	4
	.word	_Label_3364
	.word	-16
	.word	4
	.word	_Label_3365
	.word	-20
	.word	4
	.word	_Label_3366
	.word	-24
	.word	4
	.word	_Label_3367
	.word	-28
	.word	4
	.word	_Label_3368
	.word	-32
	.word	4
	.word	_Label_3369
	.word	-36
	.word	4
	.word	_Label_3370
	.word	-40
	.word	4
	.word	_Label_3371
	.word	-44
	.word	4
	.word	_Label_3372
	.word	-48
	.word	4
	.word	_Label_3373
	.word	-52
	.word	4
	.word	_Label_3374
	.word	-56
	.word	4
	.word	_Label_3375
	.word	-60
	.word	4
	.word	0
_Label_3360:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_3361:
	.ascii	"Pself\0"
	.align
_Label_3362:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3371:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3372:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3373:
	.byte	'I'
	.ascii	"frmAddr\0"
	.align
_Label_3374:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_3375:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_3376
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_3376:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3377
	.word	_sourceFileName
	.word	294		! line number
	.word	204		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_3377:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	53,r1
_Label_7224:
	push	r0
	sub	r1,1,r1
	bne	_Label_7224
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1402,r13		! source line 1402
	mov	"\0\0AS",r10
!   _temp_3378 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-220]
!   NEW ARRAY Constructor...
!   _temp_3380 = &_temp_3379
	add	r14,-216,r1
	store	r1,[r14+-20]
!   _temp_3380 = _temp_3380 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	48,r1
	store	r1,[r14+-16]
_Label_3382:
!   Data Move: *_temp_3380 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_3380 = _temp_3380 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3381 = _temp_3381 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_3381) then goto _Label_3382
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_3382
!   Initialize the array size...
	mov	48,r1
	store	r1,[r14+-216]
!   _temp_3383 = &_temp_3379
	add	r14,-216,r1
	store	r1,[r14+-12]
!   make sure array has size 48
	load	[r14+-220],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,0
	be	_Label_7225
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7225:
!   make sure array has size 48
	load	[r14+-12],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3378 = *_temp_3383  (sizeInBytes=196)
	load	[r14+-12],r5
	load	[r14+-220],r4
	mov	49,r3
_Label_7226:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7226
! RETURN STATEMENT...
	mov	1402,r13		! source line 1402
	mov	"\0\0RE",r10
	add	r15,216,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_3384
	.word	4		! total size of parameters
	.word	212		! frame size = 212
	.word	_Label_3385
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3386
	.word	-12
	.word	4
	.word	_Label_3387
	.word	-16
	.word	4
	.word	_Label_3388
	.word	-20
	.word	4
	.word	_Label_3389
	.word	-216
	.word	196
	.word	_Label_3390
	.word	-220
	.word	4
	.word	0
_Label_3384:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3385:
	.ascii	"Pself\0"
	.align
_Label_3386:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3387:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3388:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3389:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_7227:
	push	r0
	sub	r1,1,r1
	bne	_Label_7227
	mov	1407,r13		! source line 1407
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3391 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3391  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3392 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_3392  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1413,r13		! source line 1413
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3397 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3398 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3397  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_3393:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3398 then goto _Label_3396		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3396
_Label_3394:
	mov	1414,r13		! source line 1414
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3399 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3399  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1415,r13		! source line 1415
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3401 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_3401 [i ] into _temp_3402
!     make sure index expr is >= 0
	load	[r14+-168],r2
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
!   _temp_3400 = _temp_3402		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_3400  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1416,r13		! source line 1416
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3403 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3403  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1417,r13		! source line 1417
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3405 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_3405 [i ] into _temp_3406
!     make sure index expr is >= 0
	load	[r14+-168],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_3404 = *_temp_3406  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3404  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1418,r13		! source line 1418
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3407 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3407  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1419,r13		! source line 1419
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3408 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3408  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1420,r13		! source line 1420
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3409 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3409  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1421,r13		! source line 1421
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3411) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3410  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_3410  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1422,r13		! source line 1422
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3412 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3412  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1423,r13		! source line 1423
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0IF",r10
	mov	1424,r13		! source line 1424
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_3416) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_3415  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3415) then goto _Label_3414
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_3414
!	_Label_3413	jmp	_Label_3413
_Label_3413:
! THEN...
	mov	1425,r13		! source line 1425
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_3418) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_3417  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_3417  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1425,r13		! source line 1425
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_3419
_Label_3414:
! ELSE...
	mov	1427,r13		! source line 1427
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3420 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_3420  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1427,r13		! source line 1427
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3419:
! CALL STATEMENT...
!   _temp_3421 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3421  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1429,r13		! source line 1429
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0IF",r10
	mov	1430,r13		! source line 1430
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_3424) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_3422 else goto _Label_3423
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3423
	jmp	_Label_3422
_Label_3422:
! THEN...
	mov	1431,r13		! source line 1431
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3425 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_3425  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1431,r13		! source line 1431
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3426
_Label_3423:
! ELSE...
	mov	1433,r13		! source line 1433
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3427 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_3427  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1433,r13		! source line 1433
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3426:
! CALL STATEMENT...
!   _temp_3428 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3428  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1435,r13		! source line 1435
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0IF",r10
	mov	1436,r13		! source line 1436
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_3431) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_3429 else goto _Label_3430
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3430
	jmp	_Label_3429
_Label_3429:
! THEN...
	mov	1437,r13		! source line 1437
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3432 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3432  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1437,r13		! source line 1437
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3433
_Label_3430:
! ELSE...
	mov	1439,r13		! source line 1439
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3434 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_3434  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1439,r13		! source line 1439
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3433:
! CALL STATEMENT...
!   _temp_3435 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_3435  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1441,r13		! source line 1441
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_3438) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_3436 else goto _Label_3437
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3437
	jmp	_Label_3436
_Label_3436:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3439 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3439  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1443,r13		! source line 1443
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3440
_Label_3437:
! ELSE...
	mov	1445,r13		! source line 1445
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3441 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3441  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1445,r13		! source line 1445
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3440:
! CALL STATEMENT...
!   _temp_3442 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3442  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1447,r13		! source line 1447
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
	mov	1448,r13		! source line 1448
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3445) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_3443 else goto _Label_3444
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3444
	jmp	_Label_3443
_Label_3443:
! THEN...
	mov	1449,r13		! source line 1449
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3446 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3446  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1449,r13		! source line 1449
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3447
_Label_3444:
! ELSE...
	mov	1451,r13		! source line 1451
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3448 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3448  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1451,r13		! source line 1451
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3447:
! CALL STATEMENT...
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_3395:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_3393
! END FOR
_Label_3396:
! RETURN STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_3449
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_3450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3451
	.word	-12
	.word	4
	.word	_Label_3452
	.word	-16
	.word	4
	.word	_Label_3453
	.word	-20
	.word	4
	.word	_Label_3454
	.word	-24
	.word	4
	.word	_Label_3455
	.word	-28
	.word	4
	.word	_Label_3456
	.word	-32
	.word	4
	.word	_Label_3457
	.word	-36
	.word	4
	.word	_Label_3458
	.word	-40
	.word	4
	.word	_Label_3459
	.word	-44
	.word	4
	.word	_Label_3460
	.word	-48
	.word	4
	.word	_Label_3461
	.word	-52
	.word	4
	.word	_Label_3462
	.word	-56
	.word	4
	.word	_Label_3463
	.word	-60
	.word	4
	.word	_Label_3464
	.word	-64
	.word	4
	.word	_Label_3465
	.word	-68
	.word	4
	.word	_Label_3466
	.word	-72
	.word	4
	.word	_Label_3467
	.word	-76
	.word	4
	.word	_Label_3468
	.word	-80
	.word	4
	.word	_Label_3469
	.word	-84
	.word	4
	.word	_Label_3470
	.word	-88
	.word	4
	.word	_Label_3471
	.word	-92
	.word	4
	.word	_Label_3472
	.word	-96
	.word	4
	.word	_Label_3473
	.word	-100
	.word	4
	.word	_Label_3474
	.word	-104
	.word	4
	.word	_Label_3475
	.word	-108
	.word	4
	.word	_Label_3476
	.word	-112
	.word	4
	.word	_Label_3477
	.word	-116
	.word	4
	.word	_Label_3478
	.word	-120
	.word	4
	.word	_Label_3479
	.word	-124
	.word	4
	.word	_Label_3480
	.word	-128
	.word	4
	.word	_Label_3481
	.word	-132
	.word	4
	.word	_Label_3482
	.word	-136
	.word	4
	.word	_Label_3483
	.word	-140
	.word	4
	.word	_Label_3484
	.word	-144
	.word	4
	.word	_Label_3485
	.word	-148
	.word	4
	.word	_Label_3486
	.word	-152
	.word	4
	.word	_Label_3487
	.word	-156
	.word	4
	.word	_Label_3488
	.word	-160
	.word	4
	.word	_Label_3489
	.word	-164
	.word	4
	.word	_Label_3490
	.word	-168
	.word	4
	.word	0
_Label_3449:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3450:
	.ascii	"Pself\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3448\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3446\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3435\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3434\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3420\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3418\0"
	.align
_Label_3469:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3470:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3471:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3472:
	.byte	'?'
	.ascii	"_temp_3412\0"
	.align
_Label_3473:
	.byte	'?'
	.ascii	"_temp_3411\0"
	.align
_Label_3474:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3475:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3407\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3406\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3402\0"
	.align
_Label_3483:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3484:
	.byte	'?'
	.ascii	"_temp_3400\0"
	.align
_Label_3485:
	.byte	'?'
	.ascii	"_temp_3399\0"
	.align
_Label_3486:
	.byte	'?'
	.ascii	"_temp_3398\0"
	.align
_Label_3487:
	.byte	'?'
	.ascii	"_temp_3397\0"
	.align
_Label_3488:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3489:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3490:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_7228:
	push	r0
	sub	r1,1,r1
	bne	_Label_7228
	mov	1459,r13		! source line 1459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0RE",r10
!   _temp_3493 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3493 [entry ] into _temp_3494
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3492 = *_temp_3494  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3491 = _temp_3492 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3491  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_3495
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3496
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3497
	.word	12
	.word	4
	.word	_Label_3498
	.word	-12
	.word	4
	.word	_Label_3499
	.word	-16
	.word	4
	.word	_Label_3500
	.word	-20
	.word	4
	.word	_Label_3501
	.word	-24
	.word	4
	.word	0
_Label_3495:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_3496:
	.ascii	"Pself\0"
	.align
_Label_3497:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3498:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3493\0"
	.align
_Label_3500:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3501:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_7229:
	push	r0
	sub	r1,1,r1
	bne	_Label_7229
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   _temp_3504 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3504 [entry ] into _temp_3505
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3503 = *_temp_3505  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3502 = _temp_3503 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_3502  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_3506
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3507
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3508
	.word	12
	.word	4
	.word	_Label_3509
	.word	-12
	.word	4
	.word	_Label_3510
	.word	-16
	.word	4
	.word	_Label_3511
	.word	-20
	.word	4
	.word	_Label_3512
	.word	-24
	.word	4
	.word	0
_Label_3506:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_3507:
	.ascii	"Pself\0"
	.align
_Label_3508:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3509:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3510:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3511:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3512:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_7230:
	push	r0
	sub	r1,1,r1
	bne	_Label_7230
	mov	1478,r13		! source line 1478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0AS",r10
!   _temp_3513 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3513 [entry ] into _temp_3514
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_3518 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3518 [entry ] into _temp_3519
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3517 = *_temp_3519  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3516 = _temp_3517 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_3515 = _temp_3516 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3514 = _temp_3515  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_3520
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3521
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3522
	.word	12
	.word	4
	.word	_Label_3523
	.word	16
	.word	4
	.word	_Label_3524
	.word	-12
	.word	4
	.word	_Label_3525
	.word	-16
	.word	4
	.word	_Label_3526
	.word	-20
	.word	4
	.word	_Label_3527
	.word	-24
	.word	4
	.word	_Label_3528
	.word	-28
	.word	4
	.word	_Label_3529
	.word	-32
	.word	4
	.word	_Label_3530
	.word	-36
	.word	4
	.word	0
_Label_3520:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_3521:
	.ascii	"Pself\0"
	.align
_Label_3522:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3523:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_7231:
	push	r0
	sub	r1,1,r1
	bne	_Label_7231
	mov	1486,r13		! source line 1486
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0RE",r10
!   _temp_3534 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3534 [entry ] into _temp_3535
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3533 = *_temp_3535  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3532 = _temp_3533 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3532) then goto _Label_3536
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3536
!   _temp_3531 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3537
_Label_3536:
!   _temp_3531 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3537:
!   ReturnResult: _temp_3531  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_3538
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3539
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3540
	.word	12
	.word	4
	.word	_Label_3541
	.word	-16
	.word	4
	.word	_Label_3542
	.word	-20
	.word	4
	.word	_Label_3543
	.word	-24
	.word	4
	.word	_Label_3544
	.word	-28
	.word	4
	.word	_Label_3545
	.word	-9
	.word	1
	.word	0
_Label_3538:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_3539:
	.ascii	"Pself\0"
	.align
_Label_3540:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3545:
	.byte	'C'
	.ascii	"_temp_3531\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_7232:
	push	r0
	sub	r1,1,r1
	bne	_Label_7232
	mov	1495,r13		! source line 1495
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0RE",r10
!   _temp_3549 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3549 [entry ] into _temp_3550
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3548 = *_temp_3550  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3547 = _temp_3548 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3547) then goto _Label_3551
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3551
!   _temp_3546 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3552
_Label_3551:
!   _temp_3546 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3552:
!   ReturnResult: _temp_3546  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_3553
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3555
	.word	12
	.word	4
	.word	_Label_3556
	.word	-16
	.word	4
	.word	_Label_3557
	.word	-20
	.word	4
	.word	_Label_3558
	.word	-24
	.word	4
	.word	_Label_3559
	.word	-28
	.word	4
	.word	_Label_3560
	.word	-9
	.word	1
	.word	0
_Label_3553:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3554:
	.ascii	"Pself\0"
	.align
_Label_3555:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3550\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3549\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3548\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3560:
	.byte	'C'
	.ascii	"_temp_3546\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_7233:
	push	r0
	sub	r1,1,r1
	bne	_Label_7233
	mov	1504,r13		! source line 1504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0RE",r10
!   _temp_3564 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3564 [entry ] into _temp_3565
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3563 = *_temp_3565  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3562 = _temp_3563 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3562) then goto _Label_3566
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3566
!   _temp_3561 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3567
_Label_3566:
!   _temp_3561 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3567:
!   ReturnResult: _temp_3561  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_3568
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3570
	.word	12
	.word	4
	.word	_Label_3571
	.word	-16
	.word	4
	.word	_Label_3572
	.word	-20
	.word	4
	.word	_Label_3573
	.word	-24
	.word	4
	.word	_Label_3574
	.word	-28
	.word	4
	.word	_Label_3575
	.word	-9
	.word	1
	.word	0
_Label_3568:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3569:
	.ascii	"Pself\0"
	.align
_Label_3570:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3575:
	.byte	'C'
	.ascii	"_temp_3561\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_7234:
	push	r0
	sub	r1,1,r1
	bne	_Label_7234
	mov	1513,r13		! source line 1513
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0RE",r10
!   _temp_3579 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3579 [entry ] into _temp_3580
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_3578 = *_temp_3580  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3577 = _temp_3578 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3577) then goto _Label_3581
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3581
!   _temp_3576 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3582
_Label_3581:
!   _temp_3576 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3582:
!   ReturnResult: _temp_3576  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_3583
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3584
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3585
	.word	12
	.word	4
	.word	_Label_3586
	.word	-16
	.word	4
	.word	_Label_3587
	.word	-20
	.word	4
	.word	_Label_3588
	.word	-24
	.word	4
	.word	_Label_3589
	.word	-28
	.word	4
	.word	_Label_3590
	.word	-9
	.word	1
	.word	0
_Label_3583:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_3584:
	.ascii	"Pself\0"
	.align
_Label_3585:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3586:
	.byte	'?'
	.ascii	"_temp_3580\0"
	.align
_Label_3587:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3588:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3589:
	.byte	'?'
	.ascii	"_temp_3577\0"
	.align
_Label_3590:
	.byte	'C'
	.ascii	"_temp_3576\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_7235:
	push	r0
	sub	r1,1,r1
	bne	_Label_7235
	mov	1522,r13		! source line 1522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0AS",r10
!   _temp_3591 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3591 [entry ] into _temp_3592
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3595 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3595 [entry ] into _temp_3596
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3594 = *_temp_3596  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3593 = _temp_3594 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3592 = _temp_3593  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_3597
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3599
	.word	12
	.word	4
	.word	_Label_3600
	.word	-12
	.word	4
	.word	_Label_3601
	.word	-16
	.word	4
	.word	_Label_3602
	.word	-20
	.word	4
	.word	_Label_3603
	.word	-24
	.word	4
	.word	_Label_3604
	.word	-28
	.word	4
	.word	_Label_3605
	.word	-32
	.word	4
	.word	0
_Label_3597:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_3598:
	.ascii	"Pself\0"
	.align
_Label_3599:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3595\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_7236:
	push	r0
	sub	r1,1,r1
	bne	_Label_7236
	mov	1531,r13		! source line 1531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0AS",r10
!   _temp_3606 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3606 [entry ] into _temp_3607
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3610 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3610 [entry ] into _temp_3611
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3609 = *_temp_3611  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3608 = _temp_3609 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3607 = _temp_3608  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_3612
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3613
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3614
	.word	12
	.word	4
	.word	_Label_3615
	.word	-12
	.word	4
	.word	_Label_3616
	.word	-16
	.word	4
	.word	_Label_3617
	.word	-20
	.word	4
	.word	_Label_3618
	.word	-24
	.word	4
	.word	_Label_3619
	.word	-28
	.word	4
	.word	_Label_3620
	.word	-32
	.word	4
	.word	0
_Label_3612:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_3613:
	.ascii	"Pself\0"
	.align
_Label_3614:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3607\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3606\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_7237:
	push	r0
	sub	r1,1,r1
	bne	_Label_7237
	mov	1540,r13		! source line 1540
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0AS",r10
!   _temp_3621 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3621 [entry ] into _temp_3622
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3625 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3625 [entry ] into _temp_3626
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3624 = *_temp_3626  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3623 = _temp_3624 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3622 = _temp_3623  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_3627
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3628
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3629
	.word	12
	.word	4
	.word	_Label_3630
	.word	-12
	.word	4
	.word	_Label_3631
	.word	-16
	.word	4
	.word	_Label_3632
	.word	-20
	.word	4
	.word	_Label_3633
	.word	-24
	.word	4
	.word	_Label_3634
	.word	-28
	.word	4
	.word	_Label_3635
	.word	-32
	.word	4
	.word	0
_Label_3627:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_3628:
	.ascii	"Pself\0"
	.align
_Label_3629:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3626\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3625\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3624\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3623\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3622\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3621\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_7238:
	push	r0
	sub	r1,1,r1
	bne	_Label_7238
	mov	1549,r13		! source line 1549
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0AS",r10
!   _temp_3636 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3636 [entry ] into _temp_3637
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3640 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3640 [entry ] into _temp_3641
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3639 = *_temp_3641  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3638 = _temp_3639 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3637 = _temp_3638  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_3642
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3644
	.word	12
	.word	4
	.word	_Label_3645
	.word	-12
	.word	4
	.word	_Label_3646
	.word	-16
	.word	4
	.word	_Label_3647
	.word	-20
	.word	4
	.word	_Label_3648
	.word	-24
	.word	4
	.word	_Label_3649
	.word	-28
	.word	4
	.word	_Label_3650
	.word	-32
	.word	4
	.word	0
_Label_3642:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_3643:
	.ascii	"Pself\0"
	.align
_Label_3644:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3641\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3640\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3637\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_7239:
	push	r0
	sub	r1,1,r1
	bne	_Label_7239
	mov	1558,r13		! source line 1558
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0AS",r10
!   _temp_3651 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3651 [entry ] into _temp_3652
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3655 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3655 [entry ] into _temp_3656
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3654 = *_temp_3656  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3653 = _temp_3654 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3652 = _temp_3653  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_3657
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3659
	.word	12
	.word	4
	.word	_Label_3660
	.word	-12
	.word	4
	.word	_Label_3661
	.word	-16
	.word	4
	.word	_Label_3662
	.word	-20
	.word	4
	.word	_Label_3663
	.word	-24
	.word	4
	.word	_Label_3664
	.word	-28
	.word	4
	.word	_Label_3665
	.word	-32
	.word	4
	.word	0
_Label_3657:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_3658:
	.ascii	"Pself\0"
	.align
_Label_3659:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3660:
	.byte	'?'
	.ascii	"_temp_3656\0"
	.align
_Label_3661:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3662:
	.byte	'?'
	.ascii	"_temp_3654\0"
	.align
_Label_3663:
	.byte	'?'
	.ascii	"_temp_3653\0"
	.align
_Label_3664:
	.byte	'?'
	.ascii	"_temp_3652\0"
	.align
_Label_3665:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_7240:
	push	r0
	sub	r1,1,r1
	bne	_Label_7240
	mov	1567,r13		! source line 1567
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0AS",r10
!   _temp_3666 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3666 [entry ] into _temp_3667
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3670 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3670 [entry ] into _temp_3671
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3669 = *_temp_3671  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3668 = _temp_3669 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3667 = _temp_3668  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_3672
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3673
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3674
	.word	12
	.word	4
	.word	_Label_3675
	.word	-12
	.word	4
	.word	_Label_3676
	.word	-16
	.word	4
	.word	_Label_3677
	.word	-20
	.word	4
	.word	_Label_3678
	.word	-24
	.word	4
	.word	_Label_3679
	.word	-28
	.word	4
	.word	_Label_3680
	.word	-32
	.word	4
	.word	0
_Label_3672:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3673:
	.ascii	"Pself\0"
	.align
_Label_3674:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3675:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3676:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3677:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3678:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3679:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3680:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_7241:
	push	r0
	sub	r1,1,r1
	bne	_Label_7241
	mov	1576,r13		! source line 1576
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1580,r13		! source line 1580
	mov	"\0\0AS",r10
!   _temp_3681 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3681 [entry ] into _temp_3682
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3685 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3685 [entry ] into _temp_3686
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3684 = *_temp_3686  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3683 = _temp_3684 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3682 = _temp_3683  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1580,r13		! source line 1580
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_3687
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3688
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3689
	.word	12
	.word	4
	.word	_Label_3690
	.word	-12
	.word	4
	.word	_Label_3691
	.word	-16
	.word	4
	.word	_Label_3692
	.word	-20
	.word	4
	.word	_Label_3693
	.word	-24
	.word	4
	.word	_Label_3694
	.word	-28
	.word	4
	.word	_Label_3695
	.word	-32
	.word	4
	.word	0
_Label_3687:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3688:
	.ascii	"Pself\0"
	.align
_Label_3689:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3690:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3691:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3692:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3693:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3694:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3695:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_7242:
	push	r0
	sub	r1,1,r1
	bne	_Label_7242
	mov	1585,r13		! source line 1585
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0AS",r10
!   _temp_3696 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3696 [entry ] into _temp_3697
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_3700 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3700 [entry ] into _temp_3701
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_3699 = *_temp_3701  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3698 = _temp_3699 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3697 = _temp_3698  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_3702
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3703
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3704
	.word	12
	.word	4
	.word	_Label_3705
	.word	-12
	.word	4
	.word	_Label_3706
	.word	-16
	.word	4
	.word	_Label_3707
	.word	-20
	.word	4
	.word	_Label_3708
	.word	-24
	.word	4
	.word	_Label_3709
	.word	-28
	.word	4
	.word	_Label_3710
	.word	-32
	.word	4
	.word	0
_Label_3702:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3703:
	.ascii	"Pself\0"
	.align
_Label_3704:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_7243:
	push	r0
	sub	r1,1,r1
	bne	_Label_7243
	mov	1594,r13		! source line 1594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3712 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3712 [0 ] into _temp_3713
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_3711 = _temp_3713		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3714 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3711  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3714  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1600,r13		! source line 1600
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_3715
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3716
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3717
	.word	-12
	.word	4
	.word	_Label_3718
	.word	-16
	.word	4
	.word	_Label_3719
	.word	-20
	.word	4
	.word	_Label_3720
	.word	-24
	.word	4
	.word	0
_Label_3715:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3716:
	.ascii	"Pself\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3714\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3713\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3712\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3711\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	21,r1
_Label_7244:
	push	r0
	sub	r1,1,r1
	bne	_Label_7244
	mov	1605,r13		! source line 1605
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3721
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3721
	jmp	_Label_3722
_Label_3721:
! THEN...
	mov	1621,r13		! source line 1621
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_3723
_Label_3722:
! ELSE...
	mov	1622,r13		! source line 1622
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3725		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3725
!	_Label_3724	jmp	_Label_3724
_Label_3724:
! THEN...
	mov	1623,r13		! source line 1623
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3727 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3726 = *_temp_3727  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_3726) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3728 = _temp_3726 + 236
	load	[r14+-68],r1
	add	r1,236,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_3728 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-60],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3725:
! END IF...
_Label_3723:
! ASSIGNMENT STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! WHILE STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0WH",r10
_Label_3729:
!	_Label_3730	jmp	_Label_3730
_Label_3730:
	mov	1630,r13		! source line 1630
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3733		(int)
	load	[r14+-76],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3733
!	_Label_3732	jmp	_Label_3732
_Label_3732:
! THEN...
	mov	1632,r13		! source line 1632
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3734 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3734  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1632,r13		! source line 1632
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3736 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3735 = *_temp_3736  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_3735) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3737 = _temp_3735 + 236
	load	[r14+-52],r1
	add	r1,236,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_3737 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3733:
! IF STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0IF",r10
	mov	1636,r13		! source line 1636
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3741) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_3740  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3740 then goto _Label_3739 else goto _Label_3738
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3738
	jmp	_Label_3739
_Label_3738:
! THEN...
	mov	1637,r13		! source line 1637
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3742 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3742  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1637,r13		! source line 1637
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3744 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3743 = *_temp_3744  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3743) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3745 = _temp_3743 + 236
	load	[r14+-32],r1
	add	r1,236,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3745 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3739:
! ASSIGNMENT STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0AS",r10
	mov	1641,r13		! source line 1641
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3747) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3746  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3746 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-80],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! WHILE STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0WH",r10
_Label_3748:
!   if offset >= 8192 then goto _Label_3750		(int)
	load	[r14+-80],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3750
!	_Label_3749	jmp	_Label_3749
_Label_3749:
	mov	1643,r13		! source line 1643
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3751 = *fromAddr  (sizeInBytes=1)
	load	[r14+-84],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3751  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-80],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-84],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_3753		(int)
	load	[r14+-72],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3753
!	_Label_3752	jmp	_Label_3752
_Label_3752:
! THEN...
	mov	1652,r13		! source line 1652
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3753:
! END WHILE...
	jmp	_Label_3748
_Label_3750:
! ASSIGNMENT STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-80]
! END WHILE...
	jmp	_Label_3729
_Label_3731:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3754
	.word	16		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_3755
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3756
	.word	12
	.word	4
	.word	_Label_3757
	.word	16
	.word	4
	.word	_Label_3758
	.word	20
	.word	4
	.word	_Label_3759
	.word	-9
	.word	1
	.word	_Label_3760
	.word	-16
	.word	4
	.word	_Label_3761
	.word	-20
	.word	4
	.word	_Label_3762
	.word	-24
	.word	4
	.word	_Label_3763
	.word	-28
	.word	4
	.word	_Label_3764
	.word	-32
	.word	4
	.word	_Label_3765
	.word	-36
	.word	4
	.word	_Label_3766
	.word	-40
	.word	4
	.word	_Label_3767
	.word	-10
	.word	1
	.word	_Label_3768
	.word	-44
	.word	4
	.word	_Label_3769
	.word	-48
	.word	4
	.word	_Label_3770
	.word	-52
	.word	4
	.word	_Label_3771
	.word	-56
	.word	4
	.word	_Label_3772
	.word	-60
	.word	4
	.word	_Label_3773
	.word	-64
	.word	4
	.word	_Label_3774
	.word	-68
	.word	4
	.word	_Label_3775
	.word	-72
	.word	4
	.word	_Label_3776
	.word	-76
	.word	4
	.word	_Label_3777
	.word	-80
	.word	4
	.word	_Label_3778
	.word	-84
	.word	4
	.word	0
_Label_3754:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3755:
	.ascii	"Pself\0"
	.align
_Label_3756:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3757:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3758:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3759:
	.byte	'C'
	.ascii	"_temp_3751\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3747\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3746\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3742\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3741\0"
	.align
_Label_3767:
	.byte	'C'
	.ascii	"_temp_3740\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3737\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3735\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3734\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3726\0"
	.align
_Label_3775:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3776:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3777:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3778:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	17,r1
_Label_7245:
	push	r0
	sub	r1,1,r1
	bne	_Label_7245
	mov	1662,r13		! source line 1662
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3779
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3779
	jmp	_Label_3780
_Label_3779:
! THEN...
	mov	1674,r13		! source line 1674
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1674,r13		! source line 1674
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_3781
_Label_3780:
! ELSE...
	mov	1675,r13		! source line 1675
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3783		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3783
!	_Label_3782	jmp	_Label_3782
_Label_3782:
! THEN...
	mov	1676,r13		! source line 1676
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3785 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3784 = *_temp_3785  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_3784) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3786 = _temp_3784 + 236
	load	[r14+-52],r1
	add	r1,236,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_3786 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-44],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3783:
! END IF...
_Label_3781:
! ASSIGNMENT STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! WHILE STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0WH",r10
_Label_3787:
!	_Label_3788	jmp	_Label_3788
_Label_3788:
	mov	1681,r13		! source line 1681
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3793		(int)
	load	[r14+-60],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3793
	jmp	_Label_3790
_Label_3793:
	mov	1683,r13		! source line 1683
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3795) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_3794  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3794 then goto _Label_3792 else goto _Label_3790
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3790
	jmp	_Label_3792
_Label_3792:
	mov	1684,r13		! source line 1684
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_3797) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_3796  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3796 then goto _Label_3791 else goto _Label_3790
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3790
	jmp	_Label_3791
_Label_3790:
! THEN...
	mov	1685,r13		! source line 1685
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3799 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3798 = *_temp_3799  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3798) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3800 = _temp_3798 + 236
	load	[r14+-32],r1
	add	r1,236,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3800 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3791:
! ASSIGNMENT STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0AS",r10
	mov	1688,r13		! source line 1688
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3802) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3801  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3801 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-64],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! WHILE STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0WH",r10
_Label_3803:
!   if offset >= 8192 then goto _Label_3805		(int)
	load	[r14+-64],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3805
!	_Label_3804	jmp	_Label_3804
_Label_3804:
	mov	1689,r13		! source line 1689
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3806 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3806  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1692,r13		! source line 1692
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_3808		(int)
	load	[r14+-56],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3808
!	_Label_3807	jmp	_Label_3807
_Label_3807:
! THEN...
	mov	1696,r13		! source line 1696
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3808:
! END WHILE...
	jmp	_Label_3803
_Label_3805:
! ASSIGNMENT STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
! END WHILE...
	jmp	_Label_3787
_Label_3789:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3809
	.word	16		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_3810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3811
	.word	12
	.word	4
	.word	_Label_3812
	.word	16
	.word	4
	.word	_Label_3813
	.word	20
	.word	4
	.word	_Label_3814
	.word	-9
	.word	1
	.word	_Label_3815
	.word	-16
	.word	4
	.word	_Label_3816
	.word	-20
	.word	4
	.word	_Label_3817
	.word	-24
	.word	4
	.word	_Label_3818
	.word	-28
	.word	4
	.word	_Label_3819
	.word	-32
	.word	4
	.word	_Label_3820
	.word	-36
	.word	4
	.word	_Label_3821
	.word	-10
	.word	1
	.word	_Label_3822
	.word	-40
	.word	4
	.word	_Label_3823
	.word	-11
	.word	1
	.word	_Label_3824
	.word	-44
	.word	4
	.word	_Label_3825
	.word	-48
	.word	4
	.word	_Label_3826
	.word	-52
	.word	4
	.word	_Label_3827
	.word	-56
	.word	4
	.word	_Label_3828
	.word	-60
	.word	4
	.word	_Label_3829
	.word	-64
	.word	4
	.word	_Label_3830
	.word	-68
	.word	4
	.word	0
_Label_3809:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3810:
	.ascii	"Pself\0"
	.align
_Label_3811:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3812:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3813:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3814:
	.byte	'C'
	.ascii	"_temp_3806\0"
	.align
_Label_3815:
	.byte	'?'
	.ascii	"_temp_3802\0"
	.align
_Label_3816:
	.byte	'?'
	.ascii	"_temp_3801\0"
	.align
_Label_3817:
	.byte	'?'
	.ascii	"_temp_3800\0"
	.align
_Label_3818:
	.byte	'?'
	.ascii	"_temp_3799\0"
	.align
_Label_3819:
	.byte	'?'
	.ascii	"_temp_3798\0"
	.align
_Label_3820:
	.byte	'?'
	.ascii	"_temp_3797\0"
	.align
_Label_3821:
	.byte	'C'
	.ascii	"_temp_3796\0"
	.align
_Label_3822:
	.byte	'?'
	.ascii	"_temp_3795\0"
	.align
_Label_3823:
	.byte	'C'
	.ascii	"_temp_3794\0"
	.align
_Label_3824:
	.byte	'?'
	.ascii	"_temp_3786\0"
	.align
_Label_3825:
	.byte	'?'
	.ascii	"_temp_3785\0"
	.align
_Label_3826:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3827:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3828:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3829:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3830:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	16,r1
_Label_7246:
	push	r0
	sub	r1,1,r1
	bne	_Label_7246
	mov	1706,r13		! source line 1706
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0IF",r10
	mov	1730,r13		! source line 1730
	mov	"\0\0SE",r10
!   _temp_3834 = &sourceSize
	add	r14,-56,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3835) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3834  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_3833  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   if _temp_3833 >= 4 then goto _Label_3832		(int)
	load	[r14+-52],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3832
!	_Label_3831	jmp	_Label_3831
_Label_3831:
! THEN...
	mov	1733,r13		! source line 1733
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1733,r13		! source line 1733
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3832:
! IF STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3837		(int)
	load	[r14+-56],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3837
!	_Label_3836	jmp	_Label_3836
_Label_3836:
! THEN...
	mov	1738,r13		! source line 1738
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3839 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3838 = *_temp_3839  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3838) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3840 = _temp_3838 + 236
	load	[r14+-40],r1
	add	r1,236,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3840 = 8  (sizeInBytes=4)
	mov	8,r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3837:
! ASSIGNMENT STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
	mov	1744,r13		! source line 1744
	mov	"\0\0SE",r10
!   _temp_3843 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3842 = _temp_3843 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3844 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3845) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3842  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3844  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_3841  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3841  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_3846
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3848
	.word	12
	.word	4
	.word	_Label_3849
	.word	16
	.word	4
	.word	_Label_3850
	.word	20
	.word	4
	.word	_Label_3851
	.word	-12
	.word	4
	.word	_Label_3852
	.word	-16
	.word	4
	.word	_Label_3853
	.word	-20
	.word	4
	.word	_Label_3854
	.word	-24
	.word	4
	.word	_Label_3855
	.word	-28
	.word	4
	.word	_Label_3856
	.word	-32
	.word	4
	.word	_Label_3857
	.word	-36
	.word	4
	.word	_Label_3858
	.word	-40
	.word	4
	.word	_Label_3859
	.word	-44
	.word	4
	.word	_Label_3860
	.word	-48
	.word	4
	.word	_Label_3861
	.word	-52
	.word	4
	.word	_Label_3862
	.word	-56
	.word	4
	.word	0
_Label_3846:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3847:
	.ascii	"Pself\0"
	.align
_Label_3848:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3849:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3850:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3845\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3844\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3843\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3842\0"
	.align
_Label_3855:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3840\0"
	.align
_Label_3857:
	.byte	'?'
	.ascii	"_temp_3839\0"
	.align
_Label_3858:
	.byte	'?'
	.ascii	"_temp_3838\0"
	.align
_Label_3859:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3860:
	.byte	'?'
	.ascii	"_temp_3834\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3833\0"
	.align
_Label_3862:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3863
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3863:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3864
	.word	_sourceFileName
	.word	327		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3864:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_7247:
	push	r0
	sub	r1,1,r1
	bne	_Label_7247
	mov	2903,r13		! source line 2903
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3865 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3865  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2904,r13		! source line 2904
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2905,r13		! source line 2905
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
!   _temp_3867 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
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
! ASSIGNMENT STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0SE",r10
!   _temp_3869 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_3870
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3872
	.word	-12
	.word	4
	.word	_Label_3873
	.word	-16
	.word	4
	.word	_Label_3874
	.word	-20
	.word	4
	.word	_Label_3875
	.word	-24
	.word	4
	.word	_Label_3876
	.word	-28
	.word	4
	.word	0
_Label_3870:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3871:
	.ascii	"Pself\0"
	.align
_Label_3872:
	.byte	'?'
	.ascii	"_temp_3869\0"
	.align
_Label_3873:
	.byte	'?'
	.ascii	"_temp_3868\0"
	.align
_Label_3874:
	.byte	'?'
	.ascii	"_temp_3867\0"
	.align
_Label_3875:
	.byte	'?'
	.ascii	"_temp_3866\0"
	.align
_Label_3876:
	.byte	'?'
	.ascii	"_temp_3865\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_7248:
	push	r0
	sub	r1,1,r1
	bne	_Label_7248
	mov	2919,r13		! source line 2919
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0SE",r10
!   _temp_3877 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0WH",r10
_Label_3878:
!	_Label_3879	jmp	_Label_3879
_Label_3879:
	mov	2933,r13		! source line 2933
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0SE",r10
!   _temp_3881 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3882) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_3881  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2937,r13		! source line 2937
	mov	"\0\0SE",r10
!   _temp_3883 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2940,r13		! source line 2940
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3892 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3886
	cmp	r1,2
	be	_Label_3887
	cmp	r1,3
	be	_Label_3888
	cmp	r1,4
	be	_Label_3889
	cmp	r1,5
	be	_Label_3890
	cmp	r1,6
	be	_Label_3891
	jmp	_Label_3884
! CASE 1...
_Label_3886:
! SEND STATEMENT...
	mov	2942,r13		! source line 2942
	mov	"\0\0SE",r10
!   _temp_3893 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3887:
! CALL STATEMENT...
!   _temp_3894 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3894  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2945,r13		! source line 2945
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3888:
! CALL STATEMENT...
!   _temp_3895 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3895  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2947,r13		! source line 2947
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3889:
! CALL STATEMENT...
!   _temp_3896 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3896  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2949,r13		! source line 2949
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3890:
! BREAK STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0BR",r10
	jmp	_Label_3885
! CASE 6...
_Label_3891:
! CALL STATEMENT...
!   _temp_3897 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3897  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2955,r13		! source line 2955
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3884:
! CALL STATEMENT...
!   _temp_3898 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3898  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2957,r13		! source line 2957
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3885:
! END WHILE...
	jmp	_Label_3878
_Label_3880:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3899
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3900
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3901
	.word	12
	.word	4
	.word	_Label_3902
	.word	16
	.word	4
	.word	_Label_3903
	.word	20
	.word	4
	.word	_Label_3904
	.word	-12
	.word	4
	.word	_Label_3905
	.word	-16
	.word	4
	.word	_Label_3906
	.word	-20
	.word	4
	.word	_Label_3907
	.word	-24
	.word	4
	.word	_Label_3908
	.word	-28
	.word	4
	.word	_Label_3909
	.word	-32
	.word	4
	.word	_Label_3910
	.word	-36
	.word	4
	.word	_Label_3911
	.word	-40
	.word	4
	.word	_Label_3912
	.word	-44
	.word	4
	.word	_Label_3913
	.word	-48
	.word	4
	.word	_Label_3914
	.word	-52
	.word	4
	.word	0
_Label_3899:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3900:
	.ascii	"Pself\0"
	.align
_Label_3901:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3902:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3903:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3904:
	.byte	'?'
	.ascii	"_temp_3898\0"
	.align
_Label_3905:
	.byte	'?'
	.ascii	"_temp_3897\0"
	.align
_Label_3906:
	.byte	'?'
	.ascii	"_temp_3896\0"
	.align
_Label_3907:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3908:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_3909:
	.byte	'?'
	.ascii	"_temp_3893\0"
	.align
_Label_3910:
	.byte	'?'
	.ascii	"_temp_3892\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3883\0"
	.align
_Label_3912:
	.byte	'?'
	.ascii	"_temp_3882\0"
	.align
_Label_3913:
	.byte	'?'
	.ascii	"_temp_3881\0"
	.align
_Label_3914:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2966,r13		! source line 2966
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2984,r13		! source line 2984
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_3915
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3917
	.word	12
	.word	4
	.word	_Label_3918
	.word	16
	.word	4
	.word	_Label_3919
	.word	20
	.word	4
	.word	_Label_3920
	.word	24
	.word	4
	.word	0
_Label_3915:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3916:
	.ascii	"Pself\0"
	.align
_Label_3917:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3918:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3919:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3920:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_7249:
	push	r0
	sub	r1,1,r1
	bne	_Label_7249
	mov	2992,r13		! source line 2992
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3004,r13		! source line 3004
	mov	"\0\0SE",r10
!   _temp_3921 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0WH",r10
_Label_3922:
!	_Label_3923	jmp	_Label_3923
_Label_3923:
	mov	3005,r13		! source line 3005
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0SE",r10
!   _temp_3925 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3926) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_3925  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	3008,r13		! source line 3008
	mov	"\0\0SE",r10
!   _temp_3927 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	3011,r13		! source line 3011
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3936 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3930
	cmp	r1,2
	be	_Label_3931
	cmp	r1,3
	be	_Label_3932
	cmp	r1,4
	be	_Label_3933
	cmp	r1,5
	be	_Label_3934
	cmp	r1,6
	be	_Label_3935
	jmp	_Label_3928
! CASE 1...
_Label_3930:
! SEND STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0SE",r10
!   _temp_3937 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3014,r13		! source line 3014
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3931:
! CALL STATEMENT...
!   _temp_3938 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3938  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3016,r13		! source line 3016
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3932:
! CALL STATEMENT...
!   _temp_3939 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3939  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3018,r13		! source line 3018
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3933:
! CALL STATEMENT...
!   _temp_3940 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3940  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3020,r13		! source line 3020
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3934:
! BREAK STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0BR",r10
	jmp	_Label_3929
! CASE 6...
_Label_3935:
! CALL STATEMENT...
!   _temp_3941 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3941  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3026,r13		! source line 3026
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3928:
! CALL STATEMENT...
!   _temp_3942 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3942  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3028,r13		! source line 3028
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3929:
! END WHILE...
	jmp	_Label_3922
_Label_3924:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3943
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3944
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3945
	.word	12
	.word	4
	.word	_Label_3946
	.word	16
	.word	4
	.word	_Label_3947
	.word	20
	.word	4
	.word	_Label_3948
	.word	-12
	.word	4
	.word	_Label_3949
	.word	-16
	.word	4
	.word	_Label_3950
	.word	-20
	.word	4
	.word	_Label_3951
	.word	-24
	.word	4
	.word	_Label_3952
	.word	-28
	.word	4
	.word	_Label_3953
	.word	-32
	.word	4
	.word	_Label_3954
	.word	-36
	.word	4
	.word	_Label_3955
	.word	-40
	.word	4
	.word	_Label_3956
	.word	-44
	.word	4
	.word	_Label_3957
	.word	-48
	.word	4
	.word	_Label_3958
	.word	-52
	.word	4
	.word	0
_Label_3943:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3944:
	.ascii	"Pself\0"
	.align
_Label_3945:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3946:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3947:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3948:
	.byte	'?'
	.ascii	"_temp_3942\0"
	.align
_Label_3949:
	.byte	'?'
	.ascii	"_temp_3941\0"
	.align
_Label_3950:
	.byte	'?'
	.ascii	"_temp_3940\0"
	.align
_Label_3951:
	.byte	'?'
	.ascii	"_temp_3939\0"
	.align
_Label_3952:
	.byte	'?'
	.ascii	"_temp_3938\0"
	.align
_Label_3953:
	.byte	'?'
	.ascii	"_temp_3937\0"
	.align
_Label_3954:
	.byte	'?'
	.ascii	"_temp_3936\0"
	.align
_Label_3955:
	.byte	'?'
	.ascii	"_temp_3927\0"
	.align
_Label_3956:
	.byte	'?'
	.ascii	"_temp_3926\0"
	.align
_Label_3957:
	.byte	'?'
	.ascii	"_temp_3925\0"
	.align
_Label_3958:
	.byte	'?'
	.ascii	"_temp_3921\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	3037,r13		! source line 3037
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3052,r13		! source line 3052
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3055,r13		! source line 3055
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3057,r13		! source line 3057
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3057,r13		! source line 3057
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_3959
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3960
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3961
	.word	12
	.word	4
	.word	_Label_3962
	.word	16
	.word	4
	.word	_Label_3963
	.word	20
	.word	4
	.word	_Label_3964
	.word	24
	.word	4
	.word	0
_Label_3959:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3960:
	.ascii	"Pself\0"
	.align
_Label_3961:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3962:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3963:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3964:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3965
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_9	! 12:	LookupFCB
	jmp	_Method_P_Kernel_FileManager_10	! 16:	GetFCB
	jmp	_Method_P_Kernel_FileManager_4	! 20:	GetAnOpenFile
	jmp	_Method_P_Kernel_FileManager_5	! 24:	GetFreePipe
	jmp	_Method_P_Kernel_FileManager_7	! 28:	ClosePipe
	jmp	_Method_P_Kernel_FileManager_6	! 32:	FreePipe
	jmp	_Method_P_Kernel_FileManager_3	! 36:	Open
	jmp	_Method_P_Kernel_FileManager_8	! 40:	Close
	jmp	_Method_P_Kernel_FileManager_11	! 44:	SynchRead
	jmp	_Method_P_Kernel_FileManager_12	! 48:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_3965:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3966
	.word	_sourceFileName
	.word	350		! line number
	.word	8056		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3966:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	2100,r1
_Label_7250:
	push	r0
	sub	r1,1,r1
	bne	_Label_7250
	mov	3068,r13		! source line 3068
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3967 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-8396]
!   Prepare Argument: offset=8  value=_temp_3967  sizeInBytes=4
	load	[r14+-8396],r1
	store	r1,[r15+0]
!   Call the function
	mov	3076,r13		! source line 3076
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3077,r13		! source line 3077
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0SE",r10
!   _temp_3969 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-8388]
!   Send message Init
	load	[r14+-8388],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3081,r13		! source line 3081
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,5420,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+5420]
! ASSIGNMENT STATEMENT...
	mov	3082,r13		! source line 3082
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,5404,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+5404]
! SEND STATEMENT...
	mov	3083,r13		! source line 3083
	mov	"\0\0SE",r10
!   _temp_3972 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,5404,r1
	store	r1,[r14+-8376]
!   Send message Init
	load	[r14+-8376],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0AS",r10
!   _temp_3973 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-8372]
!   NEW ARRAY Constructor...
!   _temp_3975 = &_temp_3974
	add	r14,-8368,r1
	store	r1,[r14+-2988]
!   _temp_3975 = _temp_3975 + 4
	load	[r14+-2988],r1
	add	r1,4,r1
	store	r1,[r14+-2988]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3977 = zeros  (sizeInBytes=112)
	add	r14,-2980,r4
	mov	28,r3
_Label_7251:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7251
!   _temp_3977 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-2980]
	mov	48,r1
	store	r1,[r14+-2984]
_Label_3979:
!   Data Move: *_temp_3975 = _temp_3977  (sizeInBytes=112)
	add	r14,-2980,r5
	load	[r14+-2988],r4
	mov	28,r3
_Label_7252:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7252
!   _temp_3975 = _temp_3975 + 112
	load	[r14+-2988],r1
	add	r1,112,r1
	store	r1,[r14+-2988]
!   _temp_3976 = _temp_3976 + -1
	load	[r14+-2984],r1
	add	r1,-1,r1
	store	r1,[r14+-2984]
!   if intNotZero (_temp_3976) then goto _Label_3979
	load	[r14+-2984],r1
	cmp	r1,r0
	bne	_Label_3979
!   Initialize the array size...
	mov	48,r1
	store	r1,[r14+-8368]
!   _temp_3980 = &_temp_3974
	add	r14,-8368,r1
	store	r1,[r14+-2864]
!   make sure array has size 48
	load	[r14+-8372],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,0
	be	_Label_7253
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7253:
!   make sure array has size 48
	load	[r14+-2864],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3973 = *_temp_3980  (sizeInBytes=5380)
	load	[r14+-2864],r5
	load	[r14+-8372],r4
	mov	1345,r3
_Label_7254:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7254
! FOR STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3985 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-2860]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3986 = 47		(4 bytes)
	mov	47,r1
	store	r1,[r14+-2856]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3985  (sizeInBytes=4)
	load	[r14+-2860],r1
	store	r1,[r14+-8400]
_Label_3981:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3986 then goto _Label_3984		
	load	[r14+-8400],r1
	load	[r14+-2856],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3984
_Label_3982:
	mov	3086,r13		! source line 3086
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	3087,r13		! source line 3087
	mov	"\0\0SE",r10
!   _temp_3987 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-2852]
!   Move address of _temp_3987 [i ] into _temp_3988
!     make sure index expr is >= 0
	load	[r14+-8400],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-2852],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-2848]
!   Send message Init
	load	[r14+-2848],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	3088,r13		! source line 3088
	mov	"\0\0SE",r10
!   _temp_3989 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-2844]
!   Move address of _temp_3989 [i ] into _temp_3990
!     make sure index expr is >= 0
	load	[r14+-8400],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-2844],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-2840]
!   _temp_3991 = _temp_3990 + 12
	load	[r14+-2840],r1
	add	r1,12,r1
	store	r1,[r14+-2836]
!   Send message Init
	load	[r14+-2836],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0SE",r10
!   _temp_3993 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-2828]
!   Move address of _temp_3993 [i ] into _temp_3994
!     make sure index expr is >= 0
	load	[r14+-8400],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-2828],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-2824]
!   _temp_3992 = _temp_3994		(4 bytes)
	load	[r14+-2824],r1
	store	r1,[r14+-2832]
!   _temp_3995 = &fcbFreeList
	load	[r14+8],r1
	add	r1,5420,r1
	store	r1,[r14+-2820]
!   Prepare Argument: offset=12  value=_temp_3992  sizeInBytes=4
	load	[r14+-2832],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-2820],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3983:
!   i = i + 1
	load	[r14+-8400],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-8400]
	jmp	_Label_3981
! END FOR
_Label_3984:
! ASSIGNMENT STATEMENT...
	mov	3093,r13		! source line 3093
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenPipeBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,8000,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenPipeBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+8000]
! SEND STATEMENT...
	mov	3094,r13		! source line 3094
	mov	"\0\0SE",r10
!   _temp_3997 = &anOpenPipeBecameFree
	load	[r14+8],r1
	add	r1,8000,r1
	store	r1,[r14+-2812]
!   Send message Init
	load	[r14+-2812],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3095,r13		! source line 3095
	mov	"\0\0AS",r10
!   _temp_3998 = &pipes
	load	[r14+8],r1
	add	r1,7384,r1
	store	r1,[r14+-2808]
!   NEW ARRAY Constructor...
!   _temp_4000 = &_temp_3999
	add	r14,-2804,r1
	store	r1,[r14+-2200]
!   _temp_4000 = _temp_4000 + 4
	load	[r14+-2200],r1
	add	r1,4,r1
	store	r1,[r14+-2200]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_4002 = zeros  (sizeInBytes=100)
	add	r14,-2192,r4
	mov	25,r3
_Label_7255:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7255
!   _temp_4002 = _P_Kernel_Pipe
	set	_P_Kernel_Pipe,r1
	store	r1,[r14+-2192]
	mov	6,r1
	store	r1,[r14+-2196]
_Label_4004:
!   Data Move: *_temp_4000 = _temp_4002  (sizeInBytes=100)
	add	r14,-2192,r5
	load	[r14+-2200],r4
	mov	25,r3
_Label_7256:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7256
!   _temp_4000 = _temp_4000 + 100
	load	[r14+-2200],r1
	add	r1,100,r1
	store	r1,[r14+-2200]
!   _temp_4001 = _temp_4001 + -1
	load	[r14+-2196],r1
	add	r1,-1,r1
	store	r1,[r14+-2196]
!   if intNotZero (_temp_4001) then goto _Label_4004
	load	[r14+-2196],r1
	cmp	r1,r0
	bne	_Label_4004
!   Initialize the array size...
	mov	6,r1
	store	r1,[r14+-2804]
!   _temp_4005 = &_temp_3999
	add	r14,-2804,r1
	store	r1,[r14+-2088]
!   make sure array has size 6
	load	[r14+-2808],r1
	load	[r1],r1
	set	6, r2
	cmp	r1,0
	be	_Label_7257
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7257:
!   make sure array has size 6
	load	[r14+-2088],r1
	load	[r1],r1
	set	6, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3998 = *_temp_4005  (sizeInBytes=604)
	load	[r14+-2088],r5
	load	[r14+-2808],r4
	mov	151,r3
_Label_7258:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7258
! ASSIGNMENT STATEMENT...
	mov	3096,r13		! source line 3096
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openPipeFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,7988,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openPipeFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+7988]
! FOR STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4011 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-2080]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4012 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-2076]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4011  (sizeInBytes=4)
	load	[r14+-2080],r1
	store	r1,[r14+-8400]
_Label_4007:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4012 then goto _Label_4010		
	load	[r14+-8400],r1
	load	[r14+-2076],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4010
_Label_4008:
	mov	3097,r13		! source line 3097
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	3098,r13		! source line 3098
	mov	"\0\0SE",r10
!   _temp_4013 = &pipes
	load	[r14+8],r1
	add	r1,7384,r1
	store	r1,[r14+-2072]
!   Move address of _temp_4013 [i ] into _temp_4014
!     make sure index expr is >= 0
	load	[r14+-8400],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-2072],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	100,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-2068]
!   Send message Init
	load	[r14+-2068],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	3099,r13		! source line 3099
	mov	"\0\0SE",r10
!   _temp_4016 = &pipes
	load	[r14+8],r1
	add	r1,7384,r1
	store	r1,[r14+-2060]
!   Move address of _temp_4016 [i ] into _temp_4017
!     make sure index expr is >= 0
	load	[r14+-8400],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-2060],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	100,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-2056]
!   _temp_4015 = _temp_4017		(4 bytes)
	load	[r14+-2056],r1
	store	r1,[r14+-2064]
!   _temp_4018 = &openPipeFreeList
	load	[r14+8],r1
	add	r1,7988,r1
	store	r1,[r14+-2052]
!   Prepare Argument: offset=12  value=_temp_4015  sizeInBytes=4
	load	[r14+-2064],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-2052],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_4009:
!   i = i + 1
	load	[r14+-8400],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-8400]
	jmp	_Label_4007
! END FOR
_Label_4010:
! ASSIGNMENT STATEMENT...
	mov	3103,r13		! source line 3103
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,7372,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+7372]
! ASSIGNMENT STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,7356,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+7356]
! SEND STATEMENT...
	mov	3105,r13		! source line 3105
	mov	"\0\0SE",r10
!   _temp_4021 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,7356,r1
	store	r1,[r14+-2040]
!   Send message Init
	load	[r14+-2040],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0AS",r10
!   _temp_4022 = &openFileTable
	load	[r14+8],r1
	add	r1,5432,r1
	store	r1,[r14+-2036]
!   NEW ARRAY Constructor...
!   _temp_4024 = &_temp_4023
	add	r14,-2032,r1
	store	r1,[r14+-108]
!   _temp_4024 = _temp_4024 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_4026 = zeros  (sizeInBytes=40)
	add	r14,-100,r4
	mov	10,r3
_Label_7259:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7259
!   _temp_4026 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	48,r1
	store	r1,[r14+-104]
_Label_4028:
!   Data Move: *_temp_4024 = _temp_4026  (sizeInBytes=40)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	10,r3
_Label_7260:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7260
!   _temp_4024 = _temp_4024 + 40
	load	[r14+-108],r1
	add	r1,40,r1
	store	r1,[r14+-108]
!   _temp_4025 = _temp_4025 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_4025) then goto _Label_4028
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_4028
!   Initialize the array size...
	mov	48,r1
	store	r1,[r14+-2032]
!   _temp_4029 = &_temp_4023
	add	r14,-2032,r1
	store	r1,[r14+-56]
!   make sure array has size 48
	load	[r14+-2036],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,0
	be	_Label_7261
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7261:
!   make sure array has size 48
	load	[r14+-56],r1
	load	[r1],r1
	set	48, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4022 = *_temp_4029  (sizeInBytes=1924)
	load	[r14+-56],r5
	load	[r14+-2036],r4
	mov	481,r3
_Label_7262:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7262
! FOR STATEMENT...
	mov	3108,r13		! source line 3108
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4034 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4035 = 47		(4 bytes)
	mov	47,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4034  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-8400]
_Label_4030:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4035 then goto _Label_4033		
	load	[r14+-8400],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4033
_Label_4031:
	mov	3108,r13		! source line 3108
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	3109,r13		! source line 3109
	mov	"\0\0SE",r10
!   _temp_4037 = &openFileTable
	load	[r14+8],r1
	add	r1,5432,r1
	store	r1,[r14+-40]
!   Move address of _temp_4037 [i ] into _temp_4038
!     make sure index expr is >= 0
	load	[r14+-8400],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_4036 = _temp_4038		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_4039 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_4036  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_4032:
!   i = i + 1
	load	[r14+-8400],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-8400]
	jmp	_Label_4030
! END FOR
_Label_4033:
! ASSIGNMENT STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=40)
	load	[r14+8],r4
	add	r4,8016,r4
	mov	10,r3
_Label_7263:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7263
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+8016]
! ASSIGNMENT STATEMENT...
	mov	3114,r13		! source line 3114
	mov	"\0\0AS",r10
!   _temp_4041 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,8016,r1
	store	r1,[r14+-24]
!   _temp_4042 = _temp_4041 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4042 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3115,r13		! source line 3115
	mov	"\0\0AS",r10
!   _temp_4043 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,8016,r1
	store	r1,[r14+-16]
!   _temp_4044 = _temp_4043 + 32
	load	[r14+-16],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_4044 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3115,r13		! source line 3115
	mov	"\0\0RE",r10
	add	r15,8404,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_4045
	.word	4		! total size of parameters
	.word	8400		! frame size = 8400
	.word	_Label_4046
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4047
	.word	-12
	.word	4
	.word	_Label_4048
	.word	-16
	.word	4
	.word	_Label_4049
	.word	-20
	.word	4
	.word	_Label_4050
	.word	-24
	.word	4
	.word	_Label_4051
	.word	-28
	.word	4
	.word	_Label_4052
	.word	-32
	.word	4
	.word	_Label_4053
	.word	-36
	.word	4
	.word	_Label_4054
	.word	-40
	.word	4
	.word	_Label_4055
	.word	-44
	.word	4
	.word	_Label_4056
	.word	-48
	.word	4
	.word	_Label_4057
	.word	-52
	.word	4
	.word	_Label_4058
	.word	-56
	.word	4
	.word	_Label_4059
	.word	-60
	.word	4
	.word	_Label_4060
	.word	-100
	.word	40
	.word	_Label_4061
	.word	-104
	.word	4
	.word	_Label_4062
	.word	-108
	.word	4
	.word	_Label_4063
	.word	-2032
	.word	1924
	.word	_Label_4064
	.word	-2036
	.word	4
	.word	_Label_4065
	.word	-2040
	.word	4
	.word	_Label_4066
	.word	-2044
	.word	4
	.word	_Label_4067
	.word	-2048
	.word	4
	.word	_Label_4068
	.word	-2052
	.word	4
	.word	_Label_4069
	.word	-2056
	.word	4
	.word	_Label_4070
	.word	-2060
	.word	4
	.word	_Label_4071
	.word	-2064
	.word	4
	.word	_Label_4072
	.word	-2068
	.word	4
	.word	_Label_4073
	.word	-2072
	.word	4
	.word	_Label_4074
	.word	-2076
	.word	4
	.word	_Label_4075
	.word	-2080
	.word	4
	.word	_Label_4076
	.word	-2084
	.word	4
	.word	_Label_4077
	.word	-2088
	.word	4
	.word	_Label_4078
	.word	-2092
	.word	4
	.word	_Label_4079
	.word	-2192
	.word	100
	.word	_Label_4080
	.word	-2196
	.word	4
	.word	_Label_4081
	.word	-2200
	.word	4
	.word	_Label_4082
	.word	-2804
	.word	604
	.word	_Label_4083
	.word	-2808
	.word	4
	.word	_Label_4084
	.word	-2812
	.word	4
	.word	_Label_4085
	.word	-2816
	.word	4
	.word	_Label_4086
	.word	-2820
	.word	4
	.word	_Label_4087
	.word	-2824
	.word	4
	.word	_Label_4088
	.word	-2828
	.word	4
	.word	_Label_4089
	.word	-2832
	.word	4
	.word	_Label_4090
	.word	-2836
	.word	4
	.word	_Label_4091
	.word	-2840
	.word	4
	.word	_Label_4092
	.word	-2844
	.word	4
	.word	_Label_4093
	.word	-2848
	.word	4
	.word	_Label_4094
	.word	-2852
	.word	4
	.word	_Label_4095
	.word	-2856
	.word	4
	.word	_Label_4096
	.word	-2860
	.word	4
	.word	_Label_4097
	.word	-2864
	.word	4
	.word	_Label_4098
	.word	-2868
	.word	4
	.word	_Label_4099
	.word	-2980
	.word	112
	.word	_Label_4100
	.word	-2984
	.word	4
	.word	_Label_4101
	.word	-2988
	.word	4
	.word	_Label_4102
	.word	-8368
	.word	5380
	.word	_Label_4103
	.word	-8372
	.word	4
	.word	_Label_4104
	.word	-8376
	.word	4
	.word	_Label_4105
	.word	-8380
	.word	4
	.word	_Label_4106
	.word	-8384
	.word	4
	.word	_Label_4107
	.word	-8388
	.word	4
	.word	_Label_4108
	.word	-8392
	.word	4
	.word	_Label_4109
	.word	-8396
	.word	4
	.word	_Label_4110
	.word	-8400
	.word	4
	.word	0
_Label_4045:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4046:
	.ascii	"Pself\0"
	.align
_Label_4047:
	.byte	'?'
	.ascii	"_temp_4044\0"
	.align
_Label_4048:
	.byte	'?'
	.ascii	"_temp_4043\0"
	.align
_Label_4049:
	.byte	'?'
	.ascii	"_temp_4042\0"
	.align
_Label_4050:
	.byte	'?'
	.ascii	"_temp_4041\0"
	.align
_Label_4051:
	.byte	'?'
	.ascii	"_temp_4040\0"
	.align
_Label_4052:
	.byte	'?'
	.ascii	"_temp_4039\0"
	.align
_Label_4053:
	.byte	'?'
	.ascii	"_temp_4038\0"
	.align
_Label_4054:
	.byte	'?'
	.ascii	"_temp_4037\0"
	.align
_Label_4055:
	.byte	'?'
	.ascii	"_temp_4036\0"
	.align
_Label_4056:
	.byte	'?'
	.ascii	"_temp_4035\0"
	.align
_Label_4057:
	.byte	'?'
	.ascii	"_temp_4034\0"
	.align
_Label_4058:
	.byte	'?'
	.ascii	"_temp_4029\0"
	.align
_Label_4059:
	.byte	'?'
	.ascii	"_temp_4027\0"
	.align
_Label_4060:
	.byte	'?'
	.ascii	"_temp_4026\0"
	.align
_Label_4061:
	.byte	'?'
	.ascii	"_temp_4025\0"
	.align
_Label_4062:
	.byte	'?'
	.ascii	"_temp_4024\0"
	.align
_Label_4063:
	.byte	'?'
	.ascii	"_temp_4023\0"
	.align
_Label_4064:
	.byte	'?'
	.ascii	"_temp_4022\0"
	.align
_Label_4065:
	.byte	'?'
	.ascii	"_temp_4021\0"
	.align
_Label_4066:
	.byte	'?'
	.ascii	"_temp_4020\0"
	.align
_Label_4067:
	.byte	'?'
	.ascii	"_temp_4019\0"
	.align
_Label_4068:
	.byte	'?'
	.ascii	"_temp_4018\0"
	.align
_Label_4069:
	.byte	'?'
	.ascii	"_temp_4017\0"
	.align
_Label_4070:
	.byte	'?'
	.ascii	"_temp_4016\0"
	.align
_Label_4071:
	.byte	'?'
	.ascii	"_temp_4015\0"
	.align
_Label_4072:
	.byte	'?'
	.ascii	"_temp_4014\0"
	.align
_Label_4073:
	.byte	'?'
	.ascii	"_temp_4013\0"
	.align
_Label_4074:
	.byte	'?'
	.ascii	"_temp_4012\0"
	.align
_Label_4075:
	.byte	'?'
	.ascii	"_temp_4011\0"
	.align
_Label_4076:
	.byte	'?'
	.ascii	"_temp_4006\0"
	.align
_Label_4077:
	.byte	'?'
	.ascii	"_temp_4005\0"
	.align
_Label_4078:
	.byte	'?'
	.ascii	"_temp_4003\0"
	.align
_Label_4079:
	.byte	'?'
	.ascii	"_temp_4002\0"
	.align
_Label_4080:
	.byte	'?'
	.ascii	"_temp_4001\0"
	.align
_Label_4081:
	.byte	'?'
	.ascii	"_temp_4000\0"
	.align
_Label_4082:
	.byte	'?'
	.ascii	"_temp_3999\0"
	.align
_Label_4083:
	.byte	'?'
	.ascii	"_temp_3998\0"
	.align
_Label_4084:
	.byte	'?'
	.ascii	"_temp_3997\0"
	.align
_Label_4085:
	.byte	'?'
	.ascii	"_temp_3996\0"
	.align
_Label_4086:
	.byte	'?'
	.ascii	"_temp_3995\0"
	.align
_Label_4087:
	.byte	'?'
	.ascii	"_temp_3994\0"
	.align
_Label_4088:
	.byte	'?'
	.ascii	"_temp_3993\0"
	.align
_Label_4089:
	.byte	'?'
	.ascii	"_temp_3992\0"
	.align
_Label_4090:
	.byte	'?'
	.ascii	"_temp_3991\0"
	.align
_Label_4091:
	.byte	'?'
	.ascii	"_temp_3990\0"
	.align
_Label_4092:
	.byte	'?'
	.ascii	"_temp_3989\0"
	.align
_Label_4093:
	.byte	'?'
	.ascii	"_temp_3988\0"
	.align
_Label_4094:
	.byte	'?'
	.ascii	"_temp_3987\0"
	.align
_Label_4095:
	.byte	'?'
	.ascii	"_temp_3986\0"
	.align
_Label_4096:
	.byte	'?'
	.ascii	"_temp_3985\0"
	.align
_Label_4097:
	.byte	'?'
	.ascii	"_temp_3980\0"
	.align
_Label_4098:
	.byte	'?'
	.ascii	"_temp_3978\0"
	.align
_Label_4099:
	.byte	'?'
	.ascii	"_temp_3977\0"
	.align
_Label_4100:
	.byte	'?'
	.ascii	"_temp_3976\0"
	.align
_Label_4101:
	.byte	'?'
	.ascii	"_temp_3975\0"
	.align
_Label_4102:
	.byte	'?'
	.ascii	"_temp_3974\0"
	.align
_Label_4103:
	.byte	'?'
	.ascii	"_temp_3973\0"
	.align
_Label_4104:
	.byte	'?'
	.ascii	"_temp_3972\0"
	.align
_Label_4105:
	.byte	'?'
	.ascii	"_temp_3971\0"
	.align
_Label_4106:
	.byte	'?'
	.ascii	"_temp_3970\0"
	.align
_Label_4107:
	.byte	'?'
	.ascii	"_temp_3969\0"
	.align
_Label_4108:
	.byte	'?'
	.ascii	"_temp_3968\0"
	.align
_Label_4109:
	.byte	'?'
	.ascii	"_temp_3967\0"
	.align
_Label_4110:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_7264:
	push	r0
	sub	r1,1,r1
	bne	_Label_7264
	mov	3120,r13		! source line 3120
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0SE",r10
!   _temp_4111 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_4112 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4112  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	3123,r13		! source line 3123
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	3124,r13		! source line 3124
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4117 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4118 = 47		(4 bytes)
	mov	47,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4117  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_4113:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4118 then goto _Label_4116		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4116
_Label_4114:
	mov	3124,r13		! source line 3124
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_4119 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_4119  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	3125,r13		! source line 3125
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3126,r13		! source line 3126
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4120 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4120  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3127,r13		! source line 3127
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3128,r13		! source line 3128
	mov	"\0\0SE",r10
!   _temp_4121 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_4121 [i ] into _temp_4122
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_4115:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_4113
! END FOR
_Label_4116:
! CALL STATEMENT...
!   _temp_4123 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4123  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	3130,r13		! source line 3130
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0SE",r10
!   _temp_4124 = _function_239_printFCB
	set	_function_239_printFCB,r1
	store	r1,[r14+-76]
!   _temp_4125 = &fcbFreeList
	load	[r14+8],r1
	add	r1,5420,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_4124  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	3132,r13		! source line 3132
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_4126 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_4126  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	3133,r13		! source line 3133
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	3134,r13		! source line 3134
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4131 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4132 = 47		(4 bytes)
	mov	47,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4131  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_4127:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4132 then goto _Label_4130		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4130
_Label_4128:
	mov	3134,r13		! source line 3134
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_4133 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4133  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3135,r13		! source line 3135
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3136,r13		! source line 3136
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4134 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_4134  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	3137,r13		! source line 3137
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4136 = &openFileTable
	load	[r14+8],r1
	add	r1,5432,r1
	store	r1,[r14+-44]
!   Move address of _temp_4136 [i ] into _temp_4137
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_4135 = _temp_4137		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_4135  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	3138,r13		! source line 3138
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_4138 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4138  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3139,r13		! source line 3139
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3140,r13		! source line 3140
	mov	"\0\0SE",r10
!   _temp_4139 = &openFileTable
	load	[r14+8],r1
	add	r1,5432,r1
	store	r1,[r14+-32]
!   Move address of _temp_4139 [i ] into _temp_4140
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_4129:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_4127
! END FOR
_Label_4130:
! CALL STATEMENT...
!   _temp_4141 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4141  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3142,r13		! source line 3142
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3143,r13		! source line 3143
	mov	"\0\0SE",r10
!   _temp_4142 = _function_238_printOpen
	set	_function_238_printOpen,r1
	store	r1,[r14+-20]
!   _temp_4143 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4142  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	3144,r13		! source line 3144
	mov	"\0\0SE",r10
!   _temp_4144 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3144,r13		! source line 3144
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_4145
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_4146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4147
	.word	-12
	.word	4
	.word	_Label_4148
	.word	-16
	.word	4
	.word	_Label_4149
	.word	-20
	.word	4
	.word	_Label_4150
	.word	-24
	.word	4
	.word	_Label_4151
	.word	-28
	.word	4
	.word	_Label_4152
	.word	-32
	.word	4
	.word	_Label_4153
	.word	-36
	.word	4
	.word	_Label_4154
	.word	-40
	.word	4
	.word	_Label_4155
	.word	-44
	.word	4
	.word	_Label_4156
	.word	-48
	.word	4
	.word	_Label_4157
	.word	-52
	.word	4
	.word	_Label_4158
	.word	-56
	.word	4
	.word	_Label_4159
	.word	-60
	.word	4
	.word	_Label_4160
	.word	-64
	.word	4
	.word	_Label_4161
	.word	-68
	.word	4
	.word	_Label_4162
	.word	-72
	.word	4
	.word	_Label_4163
	.word	-76
	.word	4
	.word	_Label_4164
	.word	-80
	.word	4
	.word	_Label_4165
	.word	-84
	.word	4
	.word	_Label_4166
	.word	-88
	.word	4
	.word	_Label_4167
	.word	-92
	.word	4
	.word	_Label_4168
	.word	-96
	.word	4
	.word	_Label_4169
	.word	-100
	.word	4
	.word	_Label_4170
	.word	-104
	.word	4
	.word	_Label_4171
	.word	-108
	.word	4
	.word	_Label_4172
	.word	-112
	.word	4
	.word	_Label_4173
	.word	-116
	.word	4
	.word	0
_Label_4145:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4146:
	.ascii	"Pself\0"
	.align
_Label_4147:
	.byte	'?'
	.ascii	"_temp_4144\0"
	.align
_Label_4148:
	.byte	'?'
	.ascii	"_temp_4143\0"
	.align
_Label_4149:
	.byte	'?'
	.ascii	"_temp_4142\0"
	.align
_Label_4150:
	.byte	'?'
	.ascii	"_temp_4141\0"
	.align
_Label_4151:
	.byte	'?'
	.ascii	"_temp_4140\0"
	.align
_Label_4152:
	.byte	'?'
	.ascii	"_temp_4139\0"
	.align
_Label_4153:
	.byte	'?'
	.ascii	"_temp_4138\0"
	.align
_Label_4154:
	.byte	'?'
	.ascii	"_temp_4137\0"
	.align
_Label_4155:
	.byte	'?'
	.ascii	"_temp_4136\0"
	.align
_Label_4156:
	.byte	'?'
	.ascii	"_temp_4135\0"
	.align
_Label_4157:
	.byte	'?'
	.ascii	"_temp_4134\0"
	.align
_Label_4158:
	.byte	'?'
	.ascii	"_temp_4133\0"
	.align
_Label_4159:
	.byte	'?'
	.ascii	"_temp_4132\0"
	.align
_Label_4160:
	.byte	'?'
	.ascii	"_temp_4131\0"
	.align
_Label_4161:
	.byte	'?'
	.ascii	"_temp_4126\0"
	.align
_Label_4162:
	.byte	'?'
	.ascii	"_temp_4125\0"
	.align
_Label_4163:
	.byte	'?'
	.ascii	"_temp_4124\0"
	.align
_Label_4164:
	.byte	'?'
	.ascii	"_temp_4123\0"
	.align
_Label_4165:
	.byte	'?'
	.ascii	"_temp_4122\0"
	.align
_Label_4166:
	.byte	'?'
	.ascii	"_temp_4121\0"
	.align
_Label_4167:
	.byte	'?'
	.ascii	"_temp_4120\0"
	.align
_Label_4168:
	.byte	'?'
	.ascii	"_temp_4119\0"
	.align
_Label_4169:
	.byte	'?'
	.ascii	"_temp_4118\0"
	.align
_Label_4170:
	.byte	'?'
	.ascii	"_temp_4117\0"
	.align
_Label_4171:
	.byte	'?'
	.ascii	"_temp_4112\0"
	.align
_Label_4172:
	.byte	'?'
	.ascii	"_temp_4111\0"
	.align
_Label_4173:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	32,r1
_Label_7265:
	push	r0
	sub	r1,1,r1
	bne	_Label_7265
	mov	3149,r13		! source line 3149
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3168,r13		! source line 3168
	mov	"\0\0AS",r10
!   _temp_4175 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4175  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	3168,r13		! source line 3168
	mov	"\0\0CA",r10
	call	_P_System_StrCmp
!   Retrieve Result: targetName=_temp_4174  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_4174) then goto _Label_4176
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_4176
!   isRoot = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
	jmp	_Label_4177
_Label_4176:
!   isRoot = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
_Label_4177:
! IF STATEMENT...
	mov	3171,r13		! source line 3171
	mov	"\0\0IF",r10
!   _temp_4182 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-96]
!   _temp_4183 = _temp_4182 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_4181 = *_temp_4183  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_4181) then goto _Label_4180
	load	[r14+-100],r1
	cmp	r1,r0
	be	_Label_4180
	jmp	_Label_4179
_Label_4180:
!   if isRoot then goto _Label_4179 else goto _Label_4178
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4178
	jmp	_Label_4179
_Label_4178:
! THEN...
	mov	3172,r13		! source line 3172
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3172,r13		! source line 3172
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4185 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_4184 = *_temp_4185  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_4184) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4186 = _temp_4184 + 236
	load	[r14+-88],r1
	add	r1,236,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_4186 = 6  (sizeInBytes=4)
	mov	6,r1
	load	[r14+-80],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3173,r13		! source line 3173
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4179:
! ASSIGNMENT STATEMENT...
	mov	3180,r13		! source line 3180
	mov	"\0\0AS",r10
	mov	3180,r13		! source line 3180
	mov	"\0\0SE",r10
!   _temp_4187 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=dir  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Send message NameToInodeNum
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=iNum  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! IF STATEMENT...
	mov	3182,r13		! source line 3182
	mov	"\0\0IF",r10
!   if iNum >= 0 then goto _Label_4189		(int)
	load	[r14+-120],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4189
!	_Label_4188	jmp	_Label_4188
_Label_4188:
! THEN...
	mov	3187,r13		! source line 3187
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3187,r13		! source line 3187
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4189:
! ASSIGNMENT STATEMENT...
	mov	3192,r13		! source line 3192
	mov	"\0\0AS",r10
	mov	3192,r13		! source line 3192
	mov	"\0\0SE",r10
!   _temp_4190 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=iNum  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Send message GetFCB
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	3193,r13		! source line 3193
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_4191
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_4191
	jmp	_Label_4192
_Label_4191:
! THEN...
	mov	3194,r13		! source line 3194
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3194,r13		! source line 3194
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4194 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_4193 = *_temp_4194  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_4193) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4195 = _temp_4193 + 236
	load	[r14+-68],r1
	add	r1,236,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_4195 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-60],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3195,r13		! source line 3195
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4192:
! ASSIGNMENT STATEMENT...
	mov	3199,r13		! source line 3199
	mov	"\0\0AS",r10
	mov	3199,r13		! source line 3199
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_4196) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Send message GetAnOpenFile
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! SEND STATEMENT...
	mov	3203,r13		! source line 3203
	mov	"\0\0SE",r10
!   _temp_4197 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3204,r13		! source line 3204
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4202 = fcb + 12
	load	[r14+-116],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   _temp_4203 = _temp_4202 + 12
	load	[r14+-40],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   Data Move: _temp_4201 = *_temp_4203  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_4200 = _temp_4201 AND 16		(int)
	load	[r14+-44],r1
	mov	16,r2
	and	r1,r2,r1
	store	r1,[r14+-48]
!   if _temp_4200 != 16 then goto _Label_4199		(int)
	load	[r14+-48],r1
	mov	16,r2
	cmp	r1,r2
	bne	_Label_4199
!	_Label_4198	jmp	_Label_4198
_Label_4198:
! THEN...
	mov	3205,r13		! source line 3205
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3205,r13		! source line 3205
	mov	"\0\0SE",r10
!   _temp_4204 = flags AND 3		(int)
	load	[r14+20],r1
	mov	3,r2
	and	r1,r2,r1
	store	r1,[r14+-32]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4204  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+12]
!   Send message Init
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_4205
_Label_4199:
! ELSE...
	mov	3207,r13		! source line 3207
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3207,r13		! source line 3207
	mov	"\0\0SE",r10
!   _temp_4206 = flags AND 3		(int)
	load	[r14+20],r1
	mov	3,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4206  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message Init
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_4205:
! SEND STATEMENT...
	mov	3211,r13		! source line 3211
	mov	"\0\0SE",r10
!   _temp_4207 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3213,r13		! source line 3213
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4208 = open + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4208 = flags  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3214,r13		! source line 3214
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4209 = open + 12
	load	[r14+-112],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_4209 = mode  (sizeInBytes=4)
	load	[r14+24],r1
	load	[r14+-16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3217,r13		! source line 3217
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_4210
	.word	20		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_4211
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4212
	.word	12
	.word	4
	.word	_Label_4213
	.word	16
	.word	4
	.word	_Label_4214
	.word	20
	.word	4
	.word	_Label_4215
	.word	24
	.word	4
	.word	_Label_4216
	.word	-16
	.word	4
	.word	_Label_4217
	.word	-20
	.word	4
	.word	_Label_4218
	.word	-24
	.word	4
	.word	_Label_4219
	.word	-28
	.word	4
	.word	_Label_4220
	.word	-32
	.word	4
	.word	_Label_4221
	.word	-36
	.word	4
	.word	_Label_4222
	.word	-40
	.word	4
	.word	_Label_4223
	.word	-44
	.word	4
	.word	_Label_4224
	.word	-48
	.word	4
	.word	_Label_4225
	.word	-52
	.word	4
	.word	_Label_4226
	.word	-56
	.word	4
	.word	_Label_4227
	.word	-60
	.word	4
	.word	_Label_4228
	.word	-64
	.word	4
	.word	_Label_4229
	.word	-68
	.word	4
	.word	_Label_4230
	.word	-72
	.word	4
	.word	_Label_4231
	.word	-76
	.word	4
	.word	_Label_4232
	.word	-80
	.word	4
	.word	_Label_4233
	.word	-84
	.word	4
	.word	_Label_4234
	.word	-88
	.word	4
	.word	_Label_4235
	.word	-92
	.word	4
	.word	_Label_4236
	.word	-96
	.word	4
	.word	_Label_4237
	.word	-100
	.word	4
	.word	_Label_4238
	.word	-104
	.word	4
	.word	_Label_4239
	.word	-108
	.word	4
	.word	_Label_4240
	.word	-112
	.word	4
	.word	_Label_4241
	.word	-116
	.word	4
	.word	_Label_4242
	.word	-120
	.word	4
	.word	_Label_4243
	.word	-9
	.word	1
	.word	0
_Label_4210:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_4211:
	.ascii	"Pself\0"
	.align
_Label_4212:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_4213:
	.byte	'P'
	.ascii	"dir\0"
	.align
_Label_4214:
	.byte	'I'
	.ascii	"flags\0"
	.align
_Label_4215:
	.byte	'I'
	.ascii	"mode\0"
	.align
_Label_4216:
	.byte	'?'
	.ascii	"_temp_4209\0"
	.align
_Label_4217:
	.byte	'?'
	.ascii	"_temp_4208\0"
	.align
_Label_4218:
	.byte	'?'
	.ascii	"_temp_4207\0"
	.align
_Label_4219:
	.byte	'?'
	.ascii	"_temp_4206\0"
	.align
_Label_4220:
	.byte	'?'
	.ascii	"_temp_4204\0"
	.align
_Label_4221:
	.byte	'?'
	.ascii	"_temp_4203\0"
	.align
_Label_4222:
	.byte	'?'
	.ascii	"_temp_4202\0"
	.align
_Label_4223:
	.byte	'?'
	.ascii	"_temp_4201\0"
	.align
_Label_4224:
	.byte	'?'
	.ascii	"_temp_4200\0"
	.align
_Label_4225:
	.byte	'?'
	.ascii	"_temp_4197\0"
	.align
_Label_4226:
	.byte	'?'
	.ascii	"_temp_4196\0"
	.align
_Label_4227:
	.byte	'?'
	.ascii	"_temp_4195\0"
	.align
_Label_4228:
	.byte	'?'
	.ascii	"_temp_4194\0"
	.align
_Label_4229:
	.byte	'?'
	.ascii	"_temp_4193\0"
	.align
_Label_4230:
	.byte	'?'
	.ascii	"_temp_4190\0"
	.align
_Label_4231:
	.byte	'?'
	.ascii	"_temp_4187\0"
	.align
_Label_4232:
	.byte	'?'
	.ascii	"_temp_4186\0"
	.align
_Label_4233:
	.byte	'?'
	.ascii	"_temp_4185\0"
	.align
_Label_4234:
	.byte	'?'
	.ascii	"_temp_4184\0"
	.align
_Label_4235:
	.byte	'?'
	.ascii	"_temp_4183\0"
	.align
_Label_4236:
	.byte	'?'
	.ascii	"_temp_4182\0"
	.align
_Label_4237:
	.byte	'?'
	.ascii	"_temp_4181\0"
	.align
_Label_4238:
	.byte	'?'
	.ascii	"_temp_4175\0"
	.align
_Label_4239:
	.byte	'?'
	.ascii	"_temp_4174\0"
	.align
_Label_4240:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4241:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_4242:
	.byte	'I'
	.ascii	"iNum\0"
	.align
_Label_4243:
	.byte	'B'
	.ascii	"isRoot\0"
	.align
! 
! ===============  METHOD GetAnOpenFile  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	11,r1
_Label_7266:
	push	r0
	sub	r1,1,r1
	bne	_Label_7266
	mov	3221,r13		! source line 3221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3223,r13		! source line 3223
	mov	"\0\0SE",r10
!   _temp_4244 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3224,r13		! source line 3224
	mov	"\0\0IF",r10
	mov	3224,r13		! source line 3224
	mov	"\0\0SE",r10
!   _temp_4248 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_4247 else goto _Label_4246
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_4246
	jmp	_Label_4247
_Label_4247:
!   if block then goto _Label_4246 else goto _Label_4245
	loadb	[r14+12],r1
	cmp	r1,0
	be	_Label_4245
	jmp	_Label_4246
_Label_4245:
! THEN...
	mov	3225,r13		! source line 3225
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3225,r13		! source line 3225
	mov	"\0\0SE",r10
!   _temp_4249 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3226,r13		! source line 3226
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4246:
! WHILE STATEMENT...
	mov	3228,r13		! source line 3228
	mov	"\0\0WH",r10
_Label_4250:
	mov	3228,r13		! source line 3228
	mov	"\0\0SE",r10
!   _temp_4253 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-28]
!   Send message IsEmpty
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_4251 else goto _Label_4252
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_4252
	jmp	_Label_4251
_Label_4251:
	mov	3228,r13		! source line 3228
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3229,r13		! source line 3229
	mov	"\0\0SE",r10
!   _temp_4254 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_4255 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,7356,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_4254  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_4250
_Label_4252:
! ASSIGNMENT STATEMENT...
	mov	3231,r13		! source line 3231
	mov	"\0\0AS",r10
	mov	3231,r13		! source line 3231
	mov	"\0\0SE",r10
!   _temp_4256 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	3232,r13		! source line 3232
	mov	"\0\0SE",r10
!   _temp_4257 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3233,r13		! source line 3233
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_4258
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_4259
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4260
	.word	12
	.word	1
	.word	_Label_4261
	.word	-12
	.word	4
	.word	_Label_4262
	.word	-16
	.word	4
	.word	_Label_4263
	.word	-20
	.word	4
	.word	_Label_4264
	.word	-24
	.word	4
	.word	_Label_4265
	.word	-28
	.word	4
	.word	_Label_4266
	.word	-32
	.word	4
	.word	_Label_4267
	.word	-36
	.word	4
	.word	_Label_4268
	.word	-40
	.word	4
	.word	_Label_4269
	.word	-44
	.word	4
	.word	0
_Label_4258:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"GetAnOpenFile\0"
	.align
_Label_4259:
	.ascii	"Pself\0"
	.align
_Label_4260:
	.byte	'B'
	.ascii	"block\0"
	.align
_Label_4261:
	.byte	'?'
	.ascii	"_temp_4257\0"
	.align
_Label_4262:
	.byte	'?'
	.ascii	"_temp_4256\0"
	.align
_Label_4263:
	.byte	'?'
	.ascii	"_temp_4255\0"
	.align
_Label_4264:
	.byte	'?'
	.ascii	"_temp_4254\0"
	.align
_Label_4265:
	.byte	'?'
	.ascii	"_temp_4253\0"
	.align
_Label_4266:
	.byte	'?'
	.ascii	"_temp_4249\0"
	.align
_Label_4267:
	.byte	'?'
	.ascii	"_temp_4248\0"
	.align
_Label_4268:
	.byte	'?'
	.ascii	"_temp_4244\0"
	.align
_Label_4269:
	.byte	'P'
	.ascii	"open\0"
	.align
! 
! ===============  METHOD GetFreePipe  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	11,r1
_Label_7267:
	push	r0
	sub	r1,1,r1
	bne	_Label_7267
	mov	3237,r13		! source line 3237
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3239,r13		! source line 3239
	mov	"\0\0SE",r10
!   _temp_4270 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3240,r13		! source line 3240
	mov	"\0\0IF",r10
	mov	3240,r13		! source line 3240
	mov	"\0\0SE",r10
!   _temp_4273 = &openPipeFreeList
	load	[r14+8],r1
	add	r1,7988,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_4271 else goto _Label_4272
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_4272
	jmp	_Label_4271
_Label_4271:
! THEN...
	mov	3241,r13		! source line 3241
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3241,r13		! source line 3241
	mov	"\0\0SE",r10
!   _temp_4274 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3242,r13		! source line 3242
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4272:
! WHILE STATEMENT...
	mov	3244,r13		! source line 3244
	mov	"\0\0WH",r10
_Label_4275:
	mov	3244,r13		! source line 3244
	mov	"\0\0SE",r10
!   _temp_4278 = &openPipeFreeList
	load	[r14+8],r1
	add	r1,7988,r1
	store	r1,[r14+-28]
!   Send message IsEmpty
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_4276 else goto _Label_4277
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_4277
	jmp	_Label_4276
_Label_4276:
	mov	3244,r13		! source line 3244
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3245,r13		! source line 3245
	mov	"\0\0SE",r10
!   _temp_4279 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_4280 = &anOpenPipeBecameFree
	load	[r14+8],r1
	add	r1,8000,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_4279  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_4275
_Label_4277:
! ASSIGNMENT STATEMENT...
	mov	3247,r13		! source line 3247
	mov	"\0\0AS",r10
	mov	3247,r13		! source line 3247
	mov	"\0\0SE",r10
!   _temp_4281 = &openPipeFreeList
	load	[r14+8],r1
	add	r1,7988,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! SEND STATEMENT...
	mov	3248,r13		! source line 3248
	mov	"\0\0SE",r10
!   _temp_4282 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3249,r13		! source line 3249
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_4283
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_4284
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4285
	.word	-12
	.word	4
	.word	_Label_4286
	.word	-16
	.word	4
	.word	_Label_4287
	.word	-20
	.word	4
	.word	_Label_4288
	.word	-24
	.word	4
	.word	_Label_4289
	.word	-28
	.word	4
	.word	_Label_4290
	.word	-32
	.word	4
	.word	_Label_4291
	.word	-36
	.word	4
	.word	_Label_4292
	.word	-40
	.word	4
	.word	_Label_4293
	.word	-44
	.word	4
	.word	0
_Label_4283:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"GetFreePipe\0"
	.align
_Label_4284:
	.ascii	"Pself\0"
	.align
_Label_4285:
	.byte	'?'
	.ascii	"_temp_4282\0"
	.align
_Label_4286:
	.byte	'?'
	.ascii	"_temp_4281\0"
	.align
_Label_4287:
	.byte	'?'
	.ascii	"_temp_4280\0"
	.align
_Label_4288:
	.byte	'?'
	.ascii	"_temp_4279\0"
	.align
_Label_4289:
	.byte	'?'
	.ascii	"_temp_4278\0"
	.align
_Label_4290:
	.byte	'?'
	.ascii	"_temp_4274\0"
	.align
_Label_4291:
	.byte	'?'
	.ascii	"_temp_4273\0"
	.align
_Label_4292:
	.byte	'?'
	.ascii	"_temp_4270\0"
	.align
_Label_4293:
	.byte	'P'
	.ascii	"open\0"
	.align
! 
! ===============  METHOD FreePipe  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	5,r1
_Label_7268:
	push	r0
	sub	r1,1,r1
	bne	_Label_7268
	mov	3255,r13		! source line 3255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3256,r13		! source line 3256
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Close
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	3257,r13		! source line 3257
	mov	"\0\0SE",r10
!   _temp_4294 = &openPipeFreeList
	load	[r14+8],r1
	add	r1,7988,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3258,r13		! source line 3258
	mov	"\0\0SE",r10
!   _temp_4295 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   _temp_4296 = &anOpenPipeBecameFree
	load	[r14+8],r1
	add	r1,8000,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_4295  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3258,r13		! source line 3258
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_4297
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_4298
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4299
	.word	12
	.word	4
	.word	_Label_4300
	.word	-12
	.word	4
	.word	_Label_4301
	.word	-16
	.word	4
	.word	_Label_4302
	.word	-20
	.word	4
	.word	0
_Label_4297:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FreePipe\0"
	.align
_Label_4298:
	.ascii	"Pself\0"
	.align
_Label_4299:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4300:
	.byte	'?'
	.ascii	"_temp_4296\0"
	.align
_Label_4301:
	.byte	'?'
	.ascii	"_temp_4295\0"
	.align
_Label_4302:
	.byte	'?'
	.ascii	"_temp_4294\0"
	.align
! 
! ===============  METHOD ClosePipe  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	16,r1
_Label_7269:
	push	r0
	sub	r1,1,r1
	bne	_Label_7269
	mov	3263,r13		! source line 3263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3264,r13		! source line 3264
	mov	"\0\0SE",r10
!   _temp_4303 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Send message Lock
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3265,r13		! source line 3265
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4304 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4307 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_4306 = *_temp_4307  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_4305 = _temp_4306 - 1		(int)
	load	[r14+-52],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   Data Move: *_temp_4304 = _temp_4305  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-60],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3266,r13		! source line 3266
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4311 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-40]
!   Data Move: _temp_4310 = *_temp_4311  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_4310 > 0 then goto _Label_4309		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4309
!	_Label_4308	jmp	_Label_4308
_Label_4308:
! THEN...
	mov	3267,r13		! source line 3267
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3267,r13		! source line 3267
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4313 = open + 36
	load	[r14+12],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: _temp_4312 = *_temp_4313  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_4314) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4312  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message FreePipe
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! SEND STATEMENT...
	mov	3268,r13		! source line 3268
	mov	"\0\0SE",r10
!   _temp_4315 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3269,r13		! source line 3269
	mov	"\0\0SE",r10
!   _temp_4316 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_4317 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,7356,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4316  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4309:
! SEND STATEMENT...
	mov	3271,r13		! source line 3271
	mov	"\0\0SE",r10
!   _temp_4318 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3271,r13		! source line 3271
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_4319
	.word	8		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_4320
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4321
	.word	12
	.word	4
	.word	_Label_4322
	.word	-12
	.word	4
	.word	_Label_4323
	.word	-16
	.word	4
	.word	_Label_4324
	.word	-20
	.word	4
	.word	_Label_4325
	.word	-24
	.word	4
	.word	_Label_4326
	.word	-28
	.word	4
	.word	_Label_4327
	.word	-32
	.word	4
	.word	_Label_4328
	.word	-36
	.word	4
	.word	_Label_4329
	.word	-40
	.word	4
	.word	_Label_4330
	.word	-44
	.word	4
	.word	_Label_4331
	.word	-48
	.word	4
	.word	_Label_4332
	.word	-52
	.word	4
	.word	_Label_4333
	.word	-56
	.word	4
	.word	_Label_4334
	.word	-60
	.word	4
	.word	_Label_4335
	.word	-64
	.word	4
	.word	0
_Label_4319:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"ClosePipe\0"
	.align
_Label_4320:
	.ascii	"Pself\0"
	.align
_Label_4321:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4322:
	.byte	'?'
	.ascii	"_temp_4318\0"
	.align
_Label_4323:
	.byte	'?'
	.ascii	"_temp_4317\0"
	.align
_Label_4324:
	.byte	'?'
	.ascii	"_temp_4316\0"
	.align
_Label_4325:
	.byte	'?'
	.ascii	"_temp_4315\0"
	.align
_Label_4326:
	.byte	'?'
	.ascii	"_temp_4314\0"
	.align
_Label_4327:
	.byte	'?'
	.ascii	"_temp_4313\0"
	.align
_Label_4328:
	.byte	'?'
	.ascii	"_temp_4312\0"
	.align
_Label_4329:
	.byte	'?'
	.ascii	"_temp_4311\0"
	.align
_Label_4330:
	.byte	'?'
	.ascii	"_temp_4310\0"
	.align
_Label_4331:
	.byte	'?'
	.ascii	"_temp_4307\0"
	.align
_Label_4332:
	.byte	'?'
	.ascii	"_temp_4306\0"
	.align
_Label_4333:
	.byte	'?'
	.ascii	"_temp_4305\0"
	.align
_Label_4334:
	.byte	'?'
	.ascii	"_temp_4304\0"
	.align
_Label_4335:
	.byte	'?'
	.ascii	"_temp_4303\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	22,r1
_Label_7270:
	push	r0
	sub	r1,1,r1
	bne	_Label_7270
	mov	3284,r13		! source line 3284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3286,r13		! source line 3286
	mov	"\0\0IF",r10
!   _temp_4338 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,8016,r1
	store	r1,[r14+-84]
!   if open != _temp_4338 then goto _Label_4337		(int)
	load	[r14+12],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bne	_Label_4337
!	_Label_4336	jmp	_Label_4336
_Label_4336:
! THEN...
	mov	3287,r13		! source line 3287
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3287,r13		! source line 3287
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4337:
! IF STATEMENT...
	mov	3290,r13		! source line 3290
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4342 = open + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-76]
!   Data Move: _temp_4341 = *_temp_4342  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_4341 != 3 then goto _Label_4340		(int)
	load	[r14+-80],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_4340
!	_Label_4339	jmp	_Label_4339
_Label_4339:
! THEN...
	mov	3291,r13		! source line 3291
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3291,r13		! source line 3291
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_4343) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ClosePipe
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! RETURN STATEMENT...
	mov	3292,r13		! source line 3292
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4340:
! SEND STATEMENT...
	mov	3295,r13		! source line 3295
	mov	"\0\0SE",r10
!   _temp_4344 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Send message Lock
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3296,r13		! source line 3296
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4346 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Data Move: _temp_4345 = *_temp_4346  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_4345) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3297,r13		! source line 3297
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4347 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-56]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4350 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: _temp_4349 = *_temp_4350  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_4348 = _temp_4349 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Data Move: *_temp_4347 = _temp_4348  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+-56],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3298,r13		! source line 3298
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4354 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   Data Move: _temp_4353 = *_temp_4354  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_4353 > 0 then goto _Label_4352		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4352
!	_Label_4351	jmp	_Label_4351
_Label_4351:
! THEN...
	mov	3299,r13		! source line 3299
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3299,r13		! source line 3299
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4355 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: fcb = *_temp_4355  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	3300,r13		! source line 3300
	mov	"\0\0SE",r10
!   _temp_4356 = &openFileFreeList
	load	[r14+8],r1
	add	r1,7372,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3301,r13		! source line 3301
	mov	"\0\0SE",r10
!   _temp_4357 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_4358 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,7356,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_4357  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3302,r13		! source line 3302
	mov	"\0\0SE",r10
!   _temp_4359 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4359  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Release
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! END IF...
_Label_4352:
! SEND STATEMENT...
	mov	3304,r13		! source line 3304
	mov	"\0\0SE",r10
!   _temp_4360 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3304,r13		! source line 3304
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_4361
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_4362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4363
	.word	12
	.word	4
	.word	_Label_4364
	.word	-12
	.word	4
	.word	_Label_4365
	.word	-16
	.word	4
	.word	_Label_4366
	.word	-20
	.word	4
	.word	_Label_4367
	.word	-24
	.word	4
	.word	_Label_4368
	.word	-28
	.word	4
	.word	_Label_4369
	.word	-32
	.word	4
	.word	_Label_4370
	.word	-36
	.word	4
	.word	_Label_4371
	.word	-40
	.word	4
	.word	_Label_4372
	.word	-44
	.word	4
	.word	_Label_4373
	.word	-48
	.word	4
	.word	_Label_4374
	.word	-52
	.word	4
	.word	_Label_4375
	.word	-56
	.word	4
	.word	_Label_4376
	.word	-60
	.word	4
	.word	_Label_4377
	.word	-64
	.word	4
	.word	_Label_4378
	.word	-68
	.word	4
	.word	_Label_4379
	.word	-72
	.word	4
	.word	_Label_4380
	.word	-76
	.word	4
	.word	_Label_4381
	.word	-80
	.word	4
	.word	_Label_4382
	.word	-84
	.word	4
	.word	_Label_4383
	.word	-88
	.word	4
	.word	0
_Label_4361:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_4362:
	.ascii	"Pself\0"
	.align
_Label_4363:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4364:
	.byte	'?'
	.ascii	"_temp_4360\0"
	.align
_Label_4365:
	.byte	'?'
	.ascii	"_temp_4359\0"
	.align
_Label_4366:
	.byte	'?'
	.ascii	"_temp_4358\0"
	.align
_Label_4367:
	.byte	'?'
	.ascii	"_temp_4357\0"
	.align
_Label_4368:
	.byte	'?'
	.ascii	"_temp_4356\0"
	.align
_Label_4369:
	.byte	'?'
	.ascii	"_temp_4355\0"
	.align
_Label_4370:
	.byte	'?'
	.ascii	"_temp_4354\0"
	.align
_Label_4371:
	.byte	'?'
	.ascii	"_temp_4353\0"
	.align
_Label_4372:
	.byte	'?'
	.ascii	"_temp_4350\0"
	.align
_Label_4373:
	.byte	'?'
	.ascii	"_temp_4349\0"
	.align
_Label_4374:
	.byte	'?'
	.ascii	"_temp_4348\0"
	.align
_Label_4375:
	.byte	'?'
	.ascii	"_temp_4347\0"
	.align
_Label_4376:
	.byte	'?'
	.ascii	"_temp_4346\0"
	.align
_Label_4377:
	.byte	'?'
	.ascii	"_temp_4345\0"
	.align
_Label_4378:
	.byte	'?'
	.ascii	"_temp_4344\0"
	.align
_Label_4379:
	.byte	'?'
	.ascii	"_temp_4343\0"
	.align
_Label_4380:
	.byte	'?'
	.ascii	"_temp_4342\0"
	.align
_Label_4381:
	.byte	'?'
	.ascii	"_temp_4341\0"
	.align
_Label_4382:
	.byte	'?'
	.ascii	"_temp_4338\0"
	.align
_Label_4383:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD LookupFCB  ===============
! 
_Method_P_Kernel_FileManager_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_9,r1
	push	r1
	mov	11,r1
_Label_7271:
	push	r0
	sub	r1,1,r1
	bne	_Label_7271
	mov	3308,r13		! source line 3308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	3312,r13		! source line 3312
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4388 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4389 = 47		(4 bytes)
	mov	47,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4388  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-52]
_Label_4384:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4389 then goto _Label_4387		
	load	[r14+-52],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4387
_Label_4385:
	mov	3312,r13		! source line 3312
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	3313,r13		! source line 3313
	mov	"\0\0IF",r10
!   _temp_4393 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   Move address of _temp_4393 [i ] into _temp_4394
!     make sure index expr is >= 0
	load	[r14+-52],r2
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
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_4395 = _temp_4394 + 12
	load	[r14+-32],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   _temp_4396 = _temp_4395 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_4392 = *_temp_4396  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_4392 != inodeNum then goto _Label_4391		(int)
	load	[r14+-40],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_4391
!	_Label_4390	jmp	_Label_4390
_Label_4390:
! THEN...
	mov	3314,r13		! source line 3314
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3314,r13		! source line 3314
	mov	"\0\0RE",r10
!   _temp_4398 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Move address of _temp_4398 [i ] into _temp_4399
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	112,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   _temp_4397 = _temp_4399		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_4397  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4391:
!   Increment the FOR-LOOP index variable and jump back
_Label_4386:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_4384
! END FOR
_Label_4387:
! RETURN STATEMENT...
	mov	3317,r13		! source line 3317
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_9:
	.word	_sourceFileName
	.word	_Label_4400
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_4401
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4402
	.word	12
	.word	4
	.word	_Label_4403
	.word	-12
	.word	4
	.word	_Label_4404
	.word	-16
	.word	4
	.word	_Label_4405
	.word	-20
	.word	4
	.word	_Label_4406
	.word	-24
	.word	4
	.word	_Label_4407
	.word	-28
	.word	4
	.word	_Label_4408
	.word	-32
	.word	4
	.word	_Label_4409
	.word	-36
	.word	4
	.word	_Label_4410
	.word	-40
	.word	4
	.word	_Label_4411
	.word	-44
	.word	4
	.word	_Label_4412
	.word	-48
	.word	4
	.word	_Label_4413
	.word	-52
	.word	4
	.word	0
_Label_4400:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"LookupFCB\0"
	.align
_Label_4401:
	.ascii	"Pself\0"
	.align
_Label_4402:
	.byte	'I'
	.ascii	"inodeNum\0"
	.align
_Label_4403:
	.byte	'?'
	.ascii	"_temp_4399\0"
	.align
_Label_4404:
	.byte	'?'
	.ascii	"_temp_4398\0"
	.align
_Label_4405:
	.byte	'?'
	.ascii	"_temp_4397\0"
	.align
_Label_4406:
	.byte	'?'
	.ascii	"_temp_4396\0"
	.align
_Label_4407:
	.byte	'?'
	.ascii	"_temp_4395\0"
	.align
_Label_4408:
	.byte	'?'
	.ascii	"_temp_4394\0"
	.align
_Label_4409:
	.byte	'?'
	.ascii	"_temp_4393\0"
	.align
_Label_4410:
	.byte	'?'
	.ascii	"_temp_4392\0"
	.align
_Label_4411:
	.byte	'?'
	.ascii	"_temp_4389\0"
	.align
_Label_4412:
	.byte	'?'
	.ascii	"_temp_4388\0"
	.align
_Label_4413:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD GetFCB  ===============
! 
_Method_P_Kernel_FileManager_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_10,r1
	push	r1
	mov	21,r1
_Label_7272:
	push	r0
	sub	r1,1,r1
	bne	_Label_7272
	mov	3322,r13		! source line 3322
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3340,r13		! source line 3340
	mov	"\0\0SE",r10
!   _temp_4414 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Send message Lock
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3343,r13		! source line 3343
	mov	"\0\0AS",r10
	mov	3343,r13		! source line 3343
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4415) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=inodeNum  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message LookupFCB
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	3344,r13		! source line 3344
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_4417
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_4417
!	_Label_4416	jmp	_Label_4416
_Label_4416:
! THEN...
	mov	3345,r13		! source line 3345
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3345,r13		! source line 3345
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4418 = fcb + 96
	load	[r14+-84],r1
	add	r1,96,r1
	store	r1,[r14+-72]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4421 = fcb + 96
	load	[r14+-84],r1
	add	r1,96,r1
	store	r1,[r14+-60]
!   Data Move: _temp_4420 = *_temp_4421  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_4419 = _temp_4420 + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   Data Move: *_temp_4418 = _temp_4419  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3346,r13		! source line 3346
	mov	"\0\0SE",r10
!   _temp_4422 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Send message Unlock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3347,r13		! source line 3347
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4417:
! WHILE STATEMENT...
	mov	3351,r13		! source line 3351
	mov	"\0\0WH",r10
_Label_4423:
	mov	3351,r13		! source line 3351
	mov	"\0\0SE",r10
!   _temp_4426 = &fcbFreeList
	load	[r14+8],r1
	add	r1,5420,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_4424 else goto _Label_4425
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_4425
	jmp	_Label_4424
_Label_4424:
	mov	3351,r13		! source line 3351
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3352,r13		! source line 3352
	mov	"\0\0SE",r10
!   _temp_4427 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   _temp_4428 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,5404,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_4427  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_4423
_Label_4425:
! ASSIGNMENT STATEMENT...
	mov	3354,r13		! source line 3354
	mov	"\0\0AS",r10
	mov	3354,r13		! source line 3354
	mov	"\0\0SE",r10
!   _temp_4429 = &fcbFreeList
	load	[r14+8],r1
	add	r1,5420,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	3356,r13		! source line 3356
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4430 = fcb + 96
	load	[r14+-84],r1
	add	r1,96,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_4430 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3359,r13		! source line 3359
	mov	"\0\0SE",r10
!   _temp_4431 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! IF STATEMENT...
	mov	3362,r13		! source line 3362
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4436 = fcb + 104
	load	[r14+-84],r1
	add	r1,104,r1
	store	r1,[r14+-24]
!   Data Move: _temp_4435 = *_temp_4436  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_4435 < 0 then goto _Label_4434		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_4434
	jmp	_Label_4432
_Label_4434:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4437 = fcb + 108
	load	[r14+-84],r1
	add	r1,108,r1
	store	r1,[r14+-20]
!   if boolIsZero (_temp_4437 ) then goto _Label_4433		(int)
	load	[r14+-20],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_4433
!	_Label_4432	jmp	_Label_4432
_Label_4432:
! THEN...
	mov	3363,r13		! source line 3363
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4438 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4438  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3363,r13		! source line 3363
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4433:
! SEND STATEMENT...
	mov	3368,r13		! source line 3368
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4439 = fcb + 12
	load	[r14+-84],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=inodeNum  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message GetInode
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3371,r13		! source line 3371
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_10:
	.word	_sourceFileName
	.word	_Label_4440
	.word	8		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_4441
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4442
	.word	12
	.word	4
	.word	_Label_4443
	.word	-12
	.word	4
	.word	_Label_4444
	.word	-16
	.word	4
	.word	_Label_4445
	.word	-20
	.word	4
	.word	_Label_4446
	.word	-24
	.word	4
	.word	_Label_4447
	.word	-28
	.word	4
	.word	_Label_4448
	.word	-32
	.word	4
	.word	_Label_4449
	.word	-36
	.word	4
	.word	_Label_4450
	.word	-40
	.word	4
	.word	_Label_4451
	.word	-44
	.word	4
	.word	_Label_4452
	.word	-48
	.word	4
	.word	_Label_4453
	.word	-52
	.word	4
	.word	_Label_4454
	.word	-56
	.word	4
	.word	_Label_4455
	.word	-60
	.word	4
	.word	_Label_4456
	.word	-64
	.word	4
	.word	_Label_4457
	.word	-68
	.word	4
	.word	_Label_4458
	.word	-72
	.word	4
	.word	_Label_4459
	.word	-76
	.word	4
	.word	_Label_4460
	.word	-80
	.word	4
	.word	_Label_4461
	.word	-84
	.word	4
	.word	0
_Label_4440:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"GetFCB\0"
	.align
_Label_4441:
	.ascii	"Pself\0"
	.align
_Label_4442:
	.byte	'I'
	.ascii	"inodeNum\0"
	.align
_Label_4443:
	.byte	'?'
	.ascii	"_temp_4439\0"
	.align
_Label_4444:
	.byte	'?'
	.ascii	"_temp_4438\0"
	.align
_Label_4445:
	.byte	'?'
	.ascii	"_temp_4437\0"
	.align
_Label_4446:
	.byte	'?'
	.ascii	"_temp_4436\0"
	.align
_Label_4447:
	.byte	'?'
	.ascii	"_temp_4435\0"
	.align
_Label_4448:
	.byte	'?'
	.ascii	"_temp_4431\0"
	.align
_Label_4449:
	.byte	'?'
	.ascii	"_temp_4430\0"
	.align
_Label_4450:
	.byte	'?'
	.ascii	"_temp_4429\0"
	.align
_Label_4451:
	.byte	'?'
	.ascii	"_temp_4428\0"
	.align
_Label_4452:
	.byte	'?'
	.ascii	"_temp_4427\0"
	.align
_Label_4453:
	.byte	'?'
	.ascii	"_temp_4426\0"
	.align
_Label_4454:
	.byte	'?'
	.ascii	"_temp_4422\0"
	.align
_Label_4455:
	.byte	'?'
	.ascii	"_temp_4421\0"
	.align
_Label_4456:
	.byte	'?'
	.ascii	"_temp_4420\0"
	.align
_Label_4457:
	.byte	'?'
	.ascii	"_temp_4419\0"
	.align
_Label_4458:
	.byte	'?'
	.ascii	"_temp_4418\0"
	.align
_Label_4459:
	.byte	'?'
	.ascii	"_temp_4415\0"
	.align
_Label_4460:
	.byte	'?'
	.ascii	"_temp_4414\0"
	.align
_Label_4461:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_11,r1
	push	r1
	mov	27,r1
_Label_7273:
	push	r0
	sub	r1,1,r1
	bne	_Label_7273
	mov	3376,r13		! source line 3376
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3392,r13		! source line 3392
	mov	"\0\0SE",r10
!   _temp_4462 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3394,r13		! source line 3394
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_4468		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4468
!   _temp_4467 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-11]
	jmp	_Label_4469
_Label_4468:
!   _temp_4467 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-11]
_Label_4469:
!   if _temp_4467 then goto _Label_4466 else goto _Label_4463
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_4463
	jmp	_Label_4466
_Label_4466:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4472 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_4471 = *_temp_4472  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_4471 == 0 then goto _Label_4473		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4473
!   _temp_4470 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_4474
_Label_4473:
!   _temp_4470 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_4474:
!   if _temp_4470 then goto _Label_4465 else goto _Label_4463
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4463
	jmp	_Label_4465
_Label_4465:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4477 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-64]
!   Data Move: _temp_4476 = *_temp_4477  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_4476) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4478 = _temp_4476 + 12
	load	[r14+-68],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   _temp_4479 = _temp_4478 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: _temp_4475 = *_temp_4479  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_4475 >= 0 then goto _Label_4464		(int)
	load	[r14+-72],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4464
!	_Label_4463	jmp	_Label_4463
_Label_4463:
! THEN...
	mov	3395,r13		! source line 3395
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4480 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_4480  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3395,r13		! source line 3395
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4464:
! ASSIGNMENT STATEMENT...
	mov	3397,r13		! source line 3397
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4481 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: fcb = *_temp_4481  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-104]
! WHILE STATEMENT...
	mov	3398,r13		! source line 3398
	mov	"\0\0WH",r10
_Label_4482:
!   if numBytes <= 0 then goto _Label_4484		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4484
!	_Label_4483	jmp	_Label_4483
_Label_4483:
	mov	3398,r13		! source line 3398
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3406,r13		! source line 3406
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	3407,r13		! source line 3407
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	3411,r13		! source line 3411
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4488 = fcb + 104
	load	[r14+-104],r1
	add	r1,104,r1
	store	r1,[r14+-40]
!   Data Move: _temp_4487 = *_temp_4488  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_4487 == sector then goto _Label_4486		(int)
	load	[r14+-44],r1
	load	[r14+-88],r2
	cmp	r1,r2
	be	_Label_4486
!	_Label_4485	jmp	_Label_4485
_Label_4485:
! THEN...
	mov	3412,r13		! source line 3412
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3412,r13		! source line 3412
	mov	"\0\0IF",r10
	mov	3412,r13		! source line 3412
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4493 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_4492 = *_temp_4493  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_4492) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sector  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+8]
!   Send message ReadSector
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_4491  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4491 then goto _Label_4490 else goto _Label_4489
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4489
	jmp	_Label_4490
_Label_4489:
! THEN...
	mov	3413,r13		! source line 3413
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3413,r13		! source line 3413
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4490:
! END IF...
_Label_4486:
! ASSIGNMENT STATEMENT...
	mov	3416,r13		! source line 3416
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4495 = fcb + 100
	load	[r14+-104],r1
	add	r1,100,r1
	store	r1,[r14+-24]
!   Data Move: _temp_4494 = *_temp_4495  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_4494 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-92],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	3417,r13		! source line 3417
	mov	"\0\0AS",r10
!   _temp_4496 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-92],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4496  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	3417,r13		! source line 3417
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Call the function
	mov	3421,r13		! source line 3421
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3422,r13		! source line 3422
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3423,r13		! source line 3423
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3424,r13		! source line 3424
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_4482
_Label_4484:
! SEND STATEMENT...
	mov	3431,r13		! source line 3431
	mov	"\0\0SE",r10
!   _temp_4497 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3432,r13		! source line 3432
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_11:
	.word	_sourceFileName
	.word	_Label_4498
	.word	20		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_4499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4500
	.word	12
	.word	4
	.word	_Label_4501
	.word	16
	.word	4
	.word	_Label_4502
	.word	20
	.word	4
	.word	_Label_4503
	.word	24
	.word	4
	.word	_Label_4504
	.word	-16
	.word	4
	.word	_Label_4505
	.word	-20
	.word	4
	.word	_Label_4506
	.word	-24
	.word	4
	.word	_Label_4507
	.word	-28
	.word	4
	.word	_Label_4508
	.word	-32
	.word	4
	.word	_Label_4509
	.word	-36
	.word	4
	.word	_Label_4510
	.word	-9
	.word	1
	.word	_Label_4511
	.word	-40
	.word	4
	.word	_Label_4512
	.word	-44
	.word	4
	.word	_Label_4513
	.word	-48
	.word	4
	.word	_Label_4514
	.word	-52
	.word	4
	.word	_Label_4515
	.word	-56
	.word	4
	.word	_Label_4516
	.word	-60
	.word	4
	.word	_Label_4517
	.word	-64
	.word	4
	.word	_Label_4518
	.word	-68
	.word	4
	.word	_Label_4519
	.word	-72
	.word	4
	.word	_Label_4520
	.word	-76
	.word	4
	.word	_Label_4521
	.word	-80
	.word	4
	.word	_Label_4522
	.word	-10
	.word	1
	.word	_Label_4523
	.word	-11
	.word	1
	.word	_Label_4524
	.word	-84
	.word	4
	.word	_Label_4525
	.word	-88
	.word	4
	.word	_Label_4526
	.word	-92
	.word	4
	.word	_Label_4527
	.word	-96
	.word	4
	.word	_Label_4528
	.word	-100
	.word	4
	.word	_Label_4529
	.word	-104
	.word	4
	.word	0
_Label_4498:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_4499:
	.ascii	"Pself\0"
	.align
_Label_4500:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4501:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4502:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_4503:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4504:
	.byte	'?'
	.ascii	"_temp_4497\0"
	.align
_Label_4505:
	.byte	'?'
	.ascii	"_temp_4496\0"
	.align
_Label_4506:
	.byte	'?'
	.ascii	"_temp_4495\0"
	.align
_Label_4507:
	.byte	'?'
	.ascii	"_temp_4494\0"
	.align
_Label_4508:
	.byte	'?'
	.ascii	"_temp_4493\0"
	.align
_Label_4509:
	.byte	'?'
	.ascii	"_temp_4492\0"
	.align
_Label_4510:
	.byte	'C'
	.ascii	"_temp_4491\0"
	.align
_Label_4511:
	.byte	'?'
	.ascii	"_temp_4488\0"
	.align
_Label_4512:
	.byte	'?'
	.ascii	"_temp_4487\0"
	.align
_Label_4513:
	.byte	'?'
	.ascii	"_temp_4481\0"
	.align
_Label_4514:
	.byte	'?'
	.ascii	"_temp_4480\0"
	.align
_Label_4515:
	.byte	'?'
	.ascii	"_temp_4479\0"
	.align
_Label_4516:
	.byte	'?'
	.ascii	"_temp_4478\0"
	.align
_Label_4517:
	.byte	'?'
	.ascii	"_temp_4477\0"
	.align
_Label_4518:
	.byte	'?'
	.ascii	"_temp_4476\0"
	.align
_Label_4519:
	.byte	'?'
	.ascii	"_temp_4475\0"
	.align
_Label_4520:
	.byte	'?'
	.ascii	"_temp_4472\0"
	.align
_Label_4521:
	.byte	'?'
	.ascii	"_temp_4471\0"
	.align
_Label_4522:
	.byte	'C'
	.ascii	"_temp_4470\0"
	.align
_Label_4523:
	.byte	'C'
	.ascii	"_temp_4467\0"
	.align
_Label_4524:
	.byte	'?'
	.ascii	"_temp_4462\0"
	.align
_Label_4525:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4526:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4527:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4528:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4529:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_12,r1
	push	r1
	mov	34,r1
_Label_7274:
	push	r0
	sub	r1,1,r1
	bne	_Label_7274
	mov	3437,r13		! source line 3437
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3463,r13		! source line 3463
	mov	"\0\0SE",r10
!   _temp_4530 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3465,r13		! source line 3465
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_4536		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4536
!   _temp_4535 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-11]
	jmp	_Label_4537
_Label_4536:
!   _temp_4535 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-11]
_Label_4537:
!   if _temp_4535 then goto _Label_4534 else goto _Label_4531
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_4531
	jmp	_Label_4534
_Label_4534:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4540 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_4539 = *_temp_4540  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if _temp_4539 == 0 then goto _Label_4541		(int)
	load	[r14+-108],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4541
!   _temp_4538 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_4542
_Label_4541:
!   _temp_4538 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_4542:
!   if _temp_4538 then goto _Label_4533 else goto _Label_4531
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4531
	jmp	_Label_4533
_Label_4533:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4545 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_4544 = *_temp_4545  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4544) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4546 = _temp_4544 + 12
	load	[r14+-96],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   _temp_4547 = _temp_4546 + 4
	load	[r14+-88],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Data Move: _temp_4543 = *_temp_4547  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if _temp_4543 >= 0 then goto _Label_4532		(int)
	load	[r14+-100],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4532
!	_Label_4531	jmp	_Label_4531
_Label_4531:
! THEN...
	mov	3466,r13		! source line 3466
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4548 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4548  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3466,r13		! source line 3466
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4532:
! ASSIGNMENT STATEMENT...
	mov	3470,r13		! source line 3470
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4549 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_4549  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-132]
! WHILE STATEMENT...
	mov	3472,r13		! source line 3472
	mov	"\0\0WH",r10
_Label_4550:
!   if numBytes <= 0 then goto _Label_4552		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4552
!	_Label_4551	jmp	_Label_4551
_Label_4551:
	mov	3472,r13		! source line 3472
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3481,r13		! source line 3481
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! ASSIGNMENT STATEMENT...
	mov	3482,r13		! source line 3482
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	3486,r13		! source line 3486
	mov	"\0\0AS",r10
!   _temp_4553 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-120],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4553  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Call the function
	mov	3486,r13		! source line 3486
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! IF STATEMENT...
	mov	3487,r13		! source line 3487
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_4557
	load	[r14+-120],r1
	cmp	r1,r0
	be	_Label_4557
	jmp	_Label_4555
_Label_4557:
!   if bytesToMove != 8192 then goto _Label_4555		(int)
	load	[r14+-128],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_4555
!	_Label_4556	jmp	_Label_4556
_Label_4556:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4560 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Data Move: _temp_4559 = *_temp_4560  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_4559) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4561 = _temp_4559 + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_4562 = _temp_4561 + 16
	load	[r14+-56],r1
	add	r1,16,r1
	store	r1,[r14+-52]
!   Data Move: _temp_4558 = *_temp_4562  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if bytePos >= _temp_4558 then goto _Label_4555		(int)
	load	[r14+20],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4555
!	_Label_4554	jmp	_Label_4554
_Label_4554:
! THEN...
	mov	3490,r13		! source line 3490
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3490,r13		! source line 3490
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4564 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_4563 = *_temp_4564  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_4563) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Flush
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_4565
_Label_4555:
! ELSE...
	mov	3491,r13		! source line 3491
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3491,r13		! source line 3491
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4569 = fcb + 104
	load	[r14+-132],r1
	add	r1,104,r1
	store	r1,[r14+-36]
!   Data Move: _temp_4568 = *_temp_4569  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_4568 == sector then goto _Label_4567		(int)
	load	[r14+-40],r1
	load	[r14+-116],r2
	cmp	r1,r2
	be	_Label_4567
!	_Label_4566	jmp	_Label_4566
_Label_4566:
! THEN...
	mov	3495,r13		! source line 3495
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3495,r13		! source line 3495
	mov	"\0\0IF",r10
	mov	3495,r13		! source line 3495
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sector  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+8]
!   Send message ReadSector
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_4572  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4572 then goto _Label_4571 else goto _Label_4570
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4570
	jmp	_Label_4571
_Label_4570:
! THEN...
	mov	3496,r13		! source line 3496
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3496,r13		! source line 3496
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4571:
! END IF...
_Label_4567:
! END IF...
_Label_4565:
! ASSIGNMENT STATEMENT...
	mov	3499,r13		! source line 3499
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4574 = fcb + 100
	load	[r14+-132],r1
	add	r1,100,r1
	store	r1,[r14+-28]
!   Data Move: _temp_4573 = *_temp_4574  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   posInBuffer = _temp_4573 + offset		(int)
	load	[r14+-32],r1
	load	[r14+-120],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! ASSIGNMENT STATEMENT...
	mov	3500,r13		! source line 3500
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4575 = fcb + 104
	load	[r14+-132],r1
	add	r1,104,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_4575 = sector  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3501,r13		! source line 3501
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4576 = fcb + 108
	load	[r14+-132],r1
	add	r1,108,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4576 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+8]
!   Call the function
	mov	3506,r13		! source line 3506
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3507,r13		! source line 3507
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-128],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3508,r13		! source line 3508
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-128],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3511,r13		! source line 3511
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-128],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_4550
_Label_4552:
! SEND STATEMENT...
	mov	3523,r13		! source line 3523
	mov	"\0\0SE",r10
!   _temp_4577 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3525,r13		! source line 3525
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_12:
	.word	_sourceFileName
	.word	_Label_4578
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_4579
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4580
	.word	12
	.word	4
	.word	_Label_4581
	.word	16
	.word	4
	.word	_Label_4582
	.word	20
	.word	4
	.word	_Label_4583
	.word	24
	.word	4
	.word	_Label_4584
	.word	-16
	.word	4
	.word	_Label_4585
	.word	-20
	.word	4
	.word	_Label_4586
	.word	-24
	.word	4
	.word	_Label_4587
	.word	-28
	.word	4
	.word	_Label_4588
	.word	-32
	.word	4
	.word	_Label_4589
	.word	-9
	.word	1
	.word	_Label_4590
	.word	-36
	.word	4
	.word	_Label_4591
	.word	-40
	.word	4
	.word	_Label_4592
	.word	-44
	.word	4
	.word	_Label_4593
	.word	-48
	.word	4
	.word	_Label_4594
	.word	-52
	.word	4
	.word	_Label_4595
	.word	-56
	.word	4
	.word	_Label_4596
	.word	-60
	.word	4
	.word	_Label_4597
	.word	-64
	.word	4
	.word	_Label_4598
	.word	-68
	.word	4
	.word	_Label_4599
	.word	-72
	.word	4
	.word	_Label_4600
	.word	-76
	.word	4
	.word	_Label_4601
	.word	-80
	.word	4
	.word	_Label_4602
	.word	-84
	.word	4
	.word	_Label_4603
	.word	-88
	.word	4
	.word	_Label_4604
	.word	-92
	.word	4
	.word	_Label_4605
	.word	-96
	.word	4
	.word	_Label_4606
	.word	-100
	.word	4
	.word	_Label_4607
	.word	-104
	.word	4
	.word	_Label_4608
	.word	-108
	.word	4
	.word	_Label_4609
	.word	-10
	.word	1
	.word	_Label_4610
	.word	-11
	.word	1
	.word	_Label_4611
	.word	-112
	.word	4
	.word	_Label_4612
	.word	-116
	.word	4
	.word	_Label_4613
	.word	-120
	.word	4
	.word	_Label_4614
	.word	-124
	.word	4
	.word	_Label_4615
	.word	-128
	.word	4
	.word	_Label_4616
	.word	-132
	.word	4
	.word	0
_Label_4578:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_4579:
	.ascii	"Pself\0"
	.align
_Label_4580:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_4581:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_4582:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_4583:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4584:
	.byte	'?'
	.ascii	"_temp_4577\0"
	.align
_Label_4585:
	.byte	'?'
	.ascii	"_temp_4576\0"
	.align
_Label_4586:
	.byte	'?'
	.ascii	"_temp_4575\0"
	.align
_Label_4587:
	.byte	'?'
	.ascii	"_temp_4574\0"
	.align
_Label_4588:
	.byte	'?'
	.ascii	"_temp_4573\0"
	.align
_Label_4589:
	.byte	'C'
	.ascii	"_temp_4572\0"
	.align
_Label_4590:
	.byte	'?'
	.ascii	"_temp_4569\0"
	.align
_Label_4591:
	.byte	'?'
	.ascii	"_temp_4568\0"
	.align
_Label_4592:
	.byte	'?'
	.ascii	"_temp_4564\0"
	.align
_Label_4593:
	.byte	'?'
	.ascii	"_temp_4563\0"
	.align
_Label_4594:
	.byte	'?'
	.ascii	"_temp_4562\0"
	.align
_Label_4595:
	.byte	'?'
	.ascii	"_temp_4561\0"
	.align
_Label_4596:
	.byte	'?'
	.ascii	"_temp_4560\0"
	.align
_Label_4597:
	.byte	'?'
	.ascii	"_temp_4559\0"
	.align
_Label_4598:
	.byte	'?'
	.ascii	"_temp_4558\0"
	.align
_Label_4599:
	.byte	'?'
	.ascii	"_temp_4553\0"
	.align
_Label_4600:
	.byte	'?'
	.ascii	"_temp_4549\0"
	.align
_Label_4601:
	.byte	'?'
	.ascii	"_temp_4548\0"
	.align
_Label_4602:
	.byte	'?'
	.ascii	"_temp_4547\0"
	.align
_Label_4603:
	.byte	'?'
	.ascii	"_temp_4546\0"
	.align
_Label_4604:
	.byte	'?'
	.ascii	"_temp_4545\0"
	.align
_Label_4605:
	.byte	'?'
	.ascii	"_temp_4544\0"
	.align
_Label_4606:
	.byte	'?'
	.ascii	"_temp_4543\0"
	.align
_Label_4607:
	.byte	'?'
	.ascii	"_temp_4540\0"
	.align
_Label_4608:
	.byte	'?'
	.ascii	"_temp_4539\0"
	.align
_Label_4609:
	.byte	'C'
	.ascii	"_temp_4538\0"
	.align
_Label_4610:
	.byte	'C'
	.ascii	"_temp_4535\0"
	.align
_Label_4611:
	.byte	'?'
	.ascii	"_temp_4530\0"
	.align
_Label_4612:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_4613:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_4614:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_4615:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_4616:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS ToyFs  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ToyFs:
	.word	_Label_4617
	jmp	_Method_P_Kernel_ToyFs_1	! 4:	Init
	jmp	_Method_P_Kernel_ToyFs_2	! 8:	SaveSuper
	jmp	_Method_P_Kernel_ToyFs_3	! 12:	OpenLastDir
	jmp	_Method_P_Kernel_ToyFs_4	! 16:	NameToInodeNum
	jmp	_Method_P_Kernel_ToyFs_5	! 20:	AllocInode
	jmp	_Method_P_Kernel_ToyFs_6	! 24:	FreeInode
	jmp	_Method_P_Kernel_ToyFs_7	! 28:	AllocDataBlock
	jmp	_Method_P_Kernel_ToyFs_8	! 32:	FreeDataBlock
	jmp	_Method_P_Kernel_ToyFs_16	! 36:	GetDiskInfo
	jmp	_Method_P_Kernel_ToyFs_9	! 40:	ReadFile
	jmp	_Method_P_Kernel_ToyFs_10	! 44:	WriteFile
	jmp	_Method_P_Kernel_ToyFs_11	! 48:	CreateFile
	jmp	_Method_P_Kernel_ToyFs_12	! 52:	MakeDir
	jmp	_Method_P_Kernel_ToyFs_13	! 56:	RemoveDir
	jmp	_Method_P_Kernel_ToyFs_14	! 60:	Link
	jmp	_Method_P_Kernel_ToyFs_15	! 64:	Unlink
	.word	0
! 
! Class descriptor:
! 
_Label_4617:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4618
	.word	_sourceFileName
	.word	389		! line number
	.word	80		! size of instances, in bytes
	.word	_P_Kernel_ToyFs
	.word	_P_System_Object
	.word	0
_Label_4618:
	.ascii	"ToyFs\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ToyFs_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ToyFs_1,r1
	push	r1
	mov	30,r1
_Label_7275:
	push	r0
	sub	r1,1,r1
	bne	_Label_7275
	mov	3558,r13		! source line 3558
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3563,r13		! source line 3563
	mov	"\0\0AS",r10
	mov	3563,r13		! source line 3563
	mov	"\0\0SE",r10
!   _temp_4619 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Send message GetAFrame
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=inodeBuffer  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3564,r13		! source line 3564
	mov	"\0\0AS",r10
!   inodeBuffSec = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	3565,r13		! source line 3565
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fsLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,16,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fsLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	3566,r13		! source line 3566
	mov	"\0\0SE",r10
!   _temp_4621 = &fsLock
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-96]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3569,r13		! source line 3569
	mov	"\0\0AS",r10
	mov	3569,r13		! source line 3569
	mov	"\0\0SE",r10
!   _temp_4622 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-92]
!   Send message GetAFrame
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=superBlock  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	3570,r13		! source line 3570
	mov	"\0\0SE",r10
!   _temp_4623 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=superBlock  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+40],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3573,r13		! source line 3573
	mov	"\0\0AS",r10
!   p = superBlock		(4 bytes)
	load	[r14+8],r1
	load	[r1+40],r1
	store	r1,[r14+-108]
! IF STATEMENT...
	mov	3575,r13		! source line 3575
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4626 = *p  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_4626 == 1417234035 then goto _Label_4625		(int)
	load	[r14+-84],r1
	set	1417234035,r2
	cmp	r1,r2
	be	_Label_4625
!	_Label_4624	jmp	_Label_4624
_Label_4624:
! THEN...
	mov	3576,r13		! source line 3576
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4627 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_4627  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3576,r13		! source line 3576
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4625:
! ASSIGNMENT STATEMENT...
	mov	3580,r13		! source line 3580
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-108],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	3581,r13		! source line 3581
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: fssize = *p  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3582,r13		! source line 3582
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-108],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	3583,r13		! source line 3583
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numInodes = *p  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+44]
! ASSIGNMENT STATEMENT...
	mov	3584,r13		! source line 3584
	mov	"\0\0AS",r10
!   _temp_4629 = numInodes div 128		(int)
	load	[r14+8],r1
	load	[r1+44],r1
	mov	128,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   _temp_4628 = fssize - _temp_4629		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	load	[r14+-72],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   numDblocks = _temp_4628 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3592,r13		! source line 3592
	mov	"\0\0AS",r10
!   p = p + 8		(int)
	load	[r14+-108],r1
	mov	8,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	3593,r13		! source line 3593
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: i_bitmap = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,52,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   i_bitmap = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! SEND STATEMENT...
	mov	3594,r13		! source line 3594
	mov	"\0\0SE",r10
!   _temp_4631 = numInodes + 1		(int)
	load	[r14+8],r1
	load	[r1+44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   _temp_4632 = &i_bitmap
	load	[r14+8],r1
	add	r1,52,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_4631  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=p  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Send message InitFromPtr
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3598,r13		! source line 3598
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4635 = *p  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_4634 = _temp_4635 * 4		(int)
	load	[r14+-48],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   _temp_4633 = p + _temp_4634		(int)
	load	[r14+-108],r1
	load	[r14+-52],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   p = _temp_4633 + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	3599,r13		! source line 3599
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: d_bitmap = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,64,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   d_bitmap = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+64]
! SEND STATEMENT...
	mov	3600,r13		! source line 3600
	mov	"\0\0SE",r10
!   _temp_4637 = numDblocks + 1		(int)
	load	[r14+8],r1
	load	[r1+36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   _temp_4638 = &d_bitmap
	load	[r14+8],r1
	add	r1,64,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_4637  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=p  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Send message InitFromPtr
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3605,r13		! source line 3605
	mov	"\0\0AS",r10
!   _temp_4639 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-32]
!   _temp_4640 = _temp_4639 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   _temp_4641 = numInodes div 128		(int)
	load	[r14+8],r1
	load	[r1+44],r1
	mov	128,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_4640 = _temp_4641  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3609,r13		! source line 3609
	mov	"\0\0AS",r10
!   rootDirectory = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3610,r13		! source line 3610
	mov	"\0\0AS",r10
	mov	3610,r13		! source line 3610
	mov	"\0\0SE",r10
!   _temp_4642 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-20]
!   _temp_4643 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4642  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Send message Open
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=rootDirectory  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3611,r13		! source line 3611
	mov	"\0\0AS",r10
!   if intIsZero (rootDirectory) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4644 = rootDirectory + 12
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_4644 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3611,r13		! source line 3611
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ToyFs_1:
	.word	_sourceFileName
	.word	_Label_4645
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_4646
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4647
	.word	-12
	.word	4
	.word	_Label_4648
	.word	-16
	.word	4
	.word	_Label_4649
	.word	-20
	.word	4
	.word	_Label_4650
	.word	-24
	.word	4
	.word	_Label_4651
	.word	-28
	.word	4
	.word	_Label_4652
	.word	-32
	.word	4
	.word	_Label_4653
	.word	-36
	.word	4
	.word	_Label_4654
	.word	-40
	.word	4
	.word	_Label_4655
	.word	-44
	.word	4
	.word	_Label_4656
	.word	-48
	.word	4
	.word	_Label_4657
	.word	-52
	.word	4
	.word	_Label_4658
	.word	-56
	.word	4
	.word	_Label_4659
	.word	-60
	.word	4
	.word	_Label_4660
	.word	-64
	.word	4
	.word	_Label_4661
	.word	-68
	.word	4
	.word	_Label_4662
	.word	-72
	.word	4
	.word	_Label_4663
	.word	-76
	.word	4
	.word	_Label_4664
	.word	-80
	.word	4
	.word	_Label_4665
	.word	-84
	.word	4
	.word	_Label_4666
	.word	-88
	.word	4
	.word	_Label_4667
	.word	-92
	.word	4
	.word	_Label_4668
	.word	-96
	.word	4
	.word	_Label_4669
	.word	-100
	.word	4
	.word	_Label_4670
	.word	-104
	.word	4
	.word	_Label_4671
	.word	-108
	.word	4
	.word	0
_Label_4645:
	.ascii	"ToyFs"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4646:
	.ascii	"Pself\0"
	.align
_Label_4647:
	.byte	'?'
	.ascii	"_temp_4644\0"
	.align
_Label_4648:
	.byte	'?'
	.ascii	"_temp_4643\0"
	.align
_Label_4649:
	.byte	'?'
	.ascii	"_temp_4642\0"
	.align
_Label_4650:
	.byte	'?'
	.ascii	"_temp_4641\0"
	.align
_Label_4651:
	.byte	'?'
	.ascii	"_temp_4640\0"
	.align
_Label_4652:
	.byte	'?'
	.ascii	"_temp_4639\0"
	.align
_Label_4653:
	.byte	'?'
	.ascii	"_temp_4638\0"
	.align
_Label_4654:
	.byte	'?'
	.ascii	"_temp_4637\0"
	.align
_Label_4655:
	.byte	'?'
	.ascii	"_temp_4636\0"
	.align
_Label_4656:
	.byte	'?'
	.ascii	"_temp_4635\0"
	.align
_Label_4657:
	.byte	'?'
	.ascii	"_temp_4634\0"
	.align
_Label_4658:
	.byte	'?'
	.ascii	"_temp_4633\0"
	.align
_Label_4659:
	.byte	'?'
	.ascii	"_temp_4632\0"
	.align
_Label_4660:
	.byte	'?'
	.ascii	"_temp_4631\0"
	.align
_Label_4661:
	.byte	'?'
	.ascii	"_temp_4630\0"
	.align
_Label_4662:
	.byte	'?'
	.ascii	"_temp_4629\0"
	.align
_Label_4663:
	.byte	'?'
	.ascii	"_temp_4628\0"
	.align
_Label_4664:
	.byte	'?'
	.ascii	"_temp_4627\0"
	.align
_Label_4665:
	.byte	'?'
	.ascii	"_temp_4626\0"
	.align
_Label_4666:
	.byte	'?'
	.ascii	"_temp_4623\0"
	.align
_Label_4667:
	.byte	'?'
	.ascii	"_temp_4622\0"
	.align
_Label_4668:
	.byte	'?'
	.ascii	"_temp_4621\0"
	.align
_Label_4669:
	.byte	'?'
	.ascii	"_temp_4620\0"
	.align
_Label_4670:
	.byte	'?'
	.ascii	"_temp_4619\0"
	.align
_Label_4671:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD SaveSuper  ===============
! 
_Method_P_Kernel_ToyFs_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ToyFs_2,r1
	push	r1
	mov	5,r1
_Label_7276:
	push	r0
	sub	r1,1,r1
	bne	_Label_7276
	mov	3616,r13		! source line 3616
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3617,r13		! source line 3617
	mov	"\0\0SE",r10
!   _temp_4672 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=superBlock  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+40],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	3617,r13		! source line 3617
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ToyFs_2:
	.word	_sourceFileName
	.word	_Label_4673
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_4674
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4675
	.word	-12
	.word	4
	.word	0
_Label_4673:
	.ascii	"ToyFs"
	.ascii	"::"
	.ascii	"SaveSuper\0"
	.align
_Label_4674:
	.ascii	"Pself\0"
	.align
_Label_4675:
	.byte	'?'
	.ascii	"_temp_4672\0"
	.align
! 
! ===============  METHOD OpenLastDir  ===============
! 
_Method_P_Kernel_ToyFs_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ToyFs_3,r1
	push	r1
	mov	209,r1
_Label_7277:
	push	r0
	sub	r1,1,r1
	bne	_Label_7277
	mov	3625,r13		! source line 3625
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3638,r13		! source line 3638
	mov	"\0\0AS",r10
!   _temp_4676 = &elName
	add	r14,-716,r1
	store	r1,[r14+-456]
!   NEW ARRAY Constructor...
!   _temp_4678 = &_temp_4677
	add	r14,-452,r1
	store	r1,[r14+-192]
!   _temp_4678 = _temp_4678 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Next value...
	mov	255,r1
	store	r1,[r14+-188]
_Label_4680:
!   Data Move: *_temp_4678 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-192],r2
	storeb	r1,[r2]
!   _temp_4678 = _temp_4678 + 1
	load	[r14+-192],r1
	add	r1,1,r1
	store	r1,[r14+-192]
!   _temp_4679 = _temp_4679 + -1
	load	[r14+-188],r1
	add	r1,-1,r1
	store	r1,[r14+-188]
!   if intNotZero (_temp_4679) then goto _Label_4680
	load	[r14+-188],r1
	cmp	r1,r0
	bne	_Label_4680
!   Initialize the array size...
	mov	255,r1
	store	r1,[r14+-452]
!   _temp_4681 = &_temp_4677
	add	r14,-452,r1
	store	r1,[r14+-184]
!   make sure array has size 255
	load	[r14+-456],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,0
	be	_Label_7278
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7278:
!   make sure array has size 255
	load	[r14+-184],r1
	load	[r1],r1
	set	255, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4676 = *_temp_4681  (sizeInBytes=260)
	load	[r14+-184],r5
	load	[r14+-456],r4
	mov	65,r3
_Label_7279:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7279
! ASSIGNMENT STATEMENT...
	mov	3640,r13		! source line 3640
	mov	"\0\0AS",r10
!   sizeP = &elName
	add	r14,-716,r1
	store	r1,[r14+-732]
! ASSIGNMENT STATEMENT...
	mov	3641,r13		! source line 3641
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: iNode = zeros  (sizeInBytes=84)
	add	r14,-824,r4
	mov	21,r3
_Label_7280:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7280
!   iNode = _P_Kernel_InodeData
	set	_P_Kernel_InodeData,r1
	store	r1,[r14+-824]
! ASSIGNMENT STATEMENT...
	mov	3642,r13		! source line 3642
	mov	"\0\0AS",r10
!   if intIsZero (lastElIndex) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *lastElIndex = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3644,r13		! source line 3644
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=47  sizeInBytes=1
	mov	47,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	3644,r13		! source line 3644
	mov	"\0\0CA",r10
	call	_P_System_StrChr
!   Retrieve Result: targetName=ix  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-720]
! IF STATEMENT...
	mov	3645,r13		! source line 3645
	mov	"\0\0IF",r10
!   if ix >= 0 then goto _Label_4684		(int)
	load	[r14+-720],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_4684
!	_Label_4683	jmp	_Label_4683
_Label_4683:
! THEN...
	mov	3646,r13		! source line 3646
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3646,r13		! source line 3646
	mov	"\0\0AS",r10
!   if intIsZero (lastElIndex) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *lastElIndex = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3647,r13		! source line 3647
	mov	"\0\0RE",r10
	mov	3647,r13		! source line 3647
	mov	"\0\0SE",r10
!   if intIsZero (startDir) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_4685  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
!   ReturnResult: _temp_4685  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+8]
	add	r15,840,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4684:
! IF STATEMENT...
	mov	3650,r13		! source line 3650
	mov	"\0\0IF",r10
!   if intIsZero (ix) then goto _Label_4686
	load	[r14+-720],r1
	cmp	r1,r0
	be	_Label_4686
	jmp	_Label_4687
_Label_4686:
! THEN...
	mov	3651,r13		! source line 3651
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3651,r13		! source line 3651
	mov	"\0\0AS",r10
	mov	3651,r13		! source line 3651
	mov	"\0\0SE",r10
!   _temp_4689 = &_P_Kernel_fileSystem
	set	_P_Kernel_fileSystem,r1
	store	r1,[r14+-168]
!   _temp_4690 = _temp_4689 + 4
	load	[r14+-168],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Data Move: _temp_4688 = *_temp_4690  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_4688) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=elDir  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-740]
! ASSIGNMENT STATEMENT...
	mov	3652,r13		! source line 3652
	mov	"\0\0AS",r10
!   sIx = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-724]
! ASSIGNMENT STATEMENT...
	mov	3653,r13		! source line 3653
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=47  sizeInBytes=1
	mov	47,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	3653,r13		! source line 3653
	mov	"\0\0CA",r10
	call	_P_System_StrChr
!   Retrieve Result: targetName=eIx  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-728]
	jmp	_Label_4691
_Label_4687:
! ELSE...
	mov	3655,r13		! source line 3655
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	3655,r13		! source line 3655
	mov	"\0\0AS",r10
	mov	3655,r13		! source line 3655
	mov	"\0\0SE",r10
!   if intIsZero (startDir) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message NewReference
	load	[r14+16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=elDir  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-740]
! ASSIGNMENT STATEMENT...
	mov	3656,r13		! source line 3656
	mov	"\0\0AS",r10
!   eIx = ix		(4 bytes)
	load	[r14+-720],r1
	store	r1,[r14+-728]
! ASSIGNMENT STATEMENT...
	mov	3657,r13		! source line 3657
	mov	"\0\0AS",r10
!   sIx = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-724]
! END IF...
_Label_4691:
! WHILE STATEMENT...
	mov	3661,r13		! source line 3661
	mov	"\0\0WH",r10
_Label_4692:
!   if eIx <= 0 then goto _Label_4694		(int)
	load	[r14+-728],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4694
!	_Label_4693	jmp	_Label_4693
_Label_4693:
	mov	3661,r13		! source line 3661
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	3663,r13		! source line 3663
	mov	"\0\0IF",r10
!   _temp_4697 = eIx - sIx		(int)
	load	[r14+-728],r1
	load	[r14+-724],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if _temp_4697 <= 255 then goto _Label_4696		(int)
	load	[r14+-160],r1
	mov	255,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4696
!	_Label_4695	jmp	_Label_4695
_Label_4695:
! THEN...
	mov	3664,r13		! source line 3664
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3664,r13		! source line 3664
	mov	"\0\0SE",r10
!   _temp_4698 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=elDir  sizeInBytes=4
	load	[r14+-740],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! RETURN STATEMENT...
	mov	3665,r13		! source line 3665
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,840,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4696:
! FOR STATEMENT...
	mov	3667,r13		! source line 3667
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4703 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-152]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4705 = eIx - sIx		(int)
	load	[r14+-728],r1
	load	[r14+-724],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   _temp_4704 = _temp_4705 - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   Initialize FOR-LOOP index variable
!   Data Move: ix = _temp_4703  (sizeInBytes=4)
	load	[r14+-152],r1
	store	r1,[r14+-720]
_Label_4699:
!   Perform the FOR-LOOP termination test
!   if ix > _temp_4704 then goto _Label_4702		
	load	[r14+-720],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4702
_Label_4700:
	mov	3667,r13		! source line 3667
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3668,r13		! source line 3668
	mov	"\0\0AS",r10
!   _temp_4706 = &elName
	add	r14,-716,r1
	store	r1,[r14+-140]
!   Move address of _temp_4706 [ix ] into _temp_4707
!     make sure index expr is >= 0
	load	[r14+-720],r2
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
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4709 = sIx + ix		(int)
	load	[r14+-724],r1
	load	[r14+-720],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   Move address of filename [_temp_4709 ] into _temp_4710
!     make sure index expr is >= 0
	load	[r14+-132],r2
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
!   Data Move: _temp_4708 = *_temp_4710  (sizeInBytes=1)
	load	[r14+-128],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_4707 = _temp_4708  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-136],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_4701:
!   ix = ix + 1
	load	[r14+-720],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-720]
	jmp	_Label_4699
! END FOR
_Label_4702:
! ASSIGNMENT STATEMENT...
	mov	3670,r13		! source line 3670
	mov	"\0\0AS",r10
!   if intIsZero (sizeP) then goto _runtimeErrorNullPointer
	load	[r14+-732],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4711 = eIx - sIx		(int)
	load	[r14+-728],r1
	load	[r14+-724],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   Data Move: *sizeP = _temp_4711  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r14+-732],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3674,r13		! source line 3674
	mov	"\0\0AS",r10
	mov	3674,r13		! source line 3674
	mov	"\0\0SE",r10
!   _temp_4712 = &elName
	add	r14,-716,r1
	store	r1,[r14+-120]
!   if intIsZero (elDir) then goto _runtimeErrorNullPointer
	load	[r14+-740],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4712  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Send message Lookup
	load	[r14+-740],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=entPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-736]
! IF STATEMENT...
	mov	3675,r13		! source line 3675
	mov	"\0\0IF",r10
!   if intIsZero (entPtr) then goto _Label_4713
	load	[r14+-736],r1
	cmp	r1,r0
	be	_Label_4713
	jmp	_Label_4714
_Label_4713:
! THEN...
	mov	3676,r13		! source line 3676
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3676,r13		! source line 3676
	mov	"\0\0SE",r10
!   _temp_4715 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=12  value=elDir  sizeInBytes=4
	load	[r14+-740],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3677,r13		! source line 3677
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4717 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_4716 = *_temp_4717  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_4716) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4718 = _temp_4716 + 236
	load	[r14+-112],r1
	add	r1,236,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_4718 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-104],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3678,r13		! source line 3678
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,840,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4714:
! SEND STATEMENT...
	mov	3680,r13		! source line 3680
	mov	"\0\0SE",r10
!   if intIsZero (entPtr) then goto _runtimeErrorNullPointer
	load	[r14+-736],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4720 = entPtr + 0
	load	[r14+-736],r1
	add	r1,0,r1
	store	r1,[r14+-96]
!   Data Move: _temp_4719 = *_temp_4720  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   _temp_4721 = &iNode
	add	r14,-824,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_4719  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message GetInode
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! IF STATEMENT...
	mov	3681,r13		! source line 3681
	mov	"\0\0IF",r10
!   _temp_4726 = &iNode
	add	r14,-824,r1
	store	r1,[r14+-80]
!   _temp_4727 = _temp_4726 + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-76]
!   Data Move: _temp_4725 = *_temp_4727  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_4724 = _temp_4725 AND 32		(int)
	load	[r14+-84],r1
	mov	32,r2
	and	r1,r2,r1
	store	r1,[r14+-88]
!   if _temp_4724 == 32 then goto _Label_4723		(int)
	load	[r14+-88],r1
	mov	32,r2
	cmp	r1,r2
	be	_Label_4723
!	_Label_4722	jmp	_Label_4722
_Label_4722:
! THEN...
	mov	3682,r13		! source line 3682
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3682,r13		! source line 3682
	mov	"\0\0SE",r10
!   _temp_4728 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=elDir  sizeInBytes=4
	load	[r14+-740],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3683,r13		! source line 3683
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4730 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_4729 = *_temp_4730  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_4729) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4731 = _temp_4729 + 236
	load	[r14+-68],r1
	add	r1,236,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_4731 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-60],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3684,r13		! source line 3684
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,840,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4723:
! ASSIGNMENT STATEMENT...
	mov	3688,r13		! source line 3688
	mov	"\0\0AS",r10
	mov	3688,r13		! source line 3688
	mov	"\0\0SE",r10
!   if intIsZero (entPtr) then goto _runtimeErrorNullPointer
	load	[r14+-736],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4733 = entPtr + 0
	load	[r14+-736],r1
	add	r1,0,r1
	store	r1,[r14+-52]
!   Data Move: _temp_4732 = *_temp_4733  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_4734 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_4732  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message GetFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-828]
! SEND STATEMENT...
	mov	3689,r13		! source line 3689
	mov	"\0\0SE",r10
!   _temp_4735 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=elDir  sizeInBytes=4
	load	[r14+-740],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! IF STATEMENT...
	mov	3690,r13		! source line 3690
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_4736
	load	[r14+-828],r1
	cmp	r1,r0
	be	_Label_4736
	jmp	_Label_4737
_Label_4736:
! THEN...
	mov	3691,r13		! source line 3691
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3691,r13		! source line 3691
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4739 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_4738 = *_temp_4739  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4738) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4740 = _temp_4738 + 236
	load	[r14+-40],r1
	add	r1,236,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_4740 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3692,r13		! source line 3692
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,840,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4737:
! ASSIGNMENT STATEMENT...
	mov	3696,r13		! source line 3696
	mov	"\0\0AS",r10
	mov	3696,r13		! source line 3696
	mov	"\0\0SE",r10
!   _temp_4741 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Send message GetAnOpenFile
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=elDir  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-740]
! IF STATEMENT...
	mov	3697,r13		! source line 3697
	mov	"\0\0IF",r10
!   if intIsZero (elDir) then goto _Label_4742
	load	[r14+-740],r1
	cmp	r1,r0
	be	_Label_4742
	jmp	_Label_4743
_Label_4742:
! THEN...
	mov	3698,r13		! source line 3698
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3698,r13		! source line 3698
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4745 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_4744 = *_temp_4745  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_4744) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4746 = _temp_4744 + 236
	load	[r14+-24],r1
	add	r1,236,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_4746 = 4  (sizeInBytes=4)
	mov	4,r1
	load	[r14+-16],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3699,r13		! source line 3699
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,840,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4743:
! SEND STATEMENT...
	mov	3701,r13		! source line 3701
	mov	"\0\0SE",r10
!   if intIsZero (elDir) then goto _runtimeErrorNullPointer
	load	[r14+-740],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fcb  sizeInBytes=4
	load	[r14+-828],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+12]
!   Send message Init
	load	[r14+-740],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3704,r13		! source line 3704
	mov	"\0\0AS",r10
!   sIx = eIx + 1		(int)
	load	[r14+-728],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-724]
! ASSIGNMENT STATEMENT...
	mov	3705,r13		! source line 3705
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=47  sizeInBytes=1
	mov	47,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=sIx  sizeInBytes=4
	load	[r14+-724],r1
	store	r1,[r15+8]
!   Call the function
	mov	3705,r13		! source line 3705
	mov	"\0\0CA",r10
	call	_P_System_StrChr
!   Retrieve Result: targetName=eIx  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-728]
! END WHILE...
	jmp	_Label_4692
_Label_4694:
! ASSIGNMENT STATEMENT...
	mov	3708,r13		! source line 3708
	mov	"\0\0AS",r10
!   if intIsZero (lastElIndex) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *lastElIndex = sIx  (sizeInBytes=4)
	load	[r14+-724],r1
	load	[r14+20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3709,r13		! source line 3709
	mov	"\0\0RE",r10
!   ReturnResult: elDir  (sizeInBytes=4)
	load	[r14+-740],r1
	store	r1,[r14+8]
	add	r15,840,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ToyFs_3:
	.word	_sourceFileName
	.word	_Label_4747
	.word	16		! total size of parameters
	.word	836		! frame size = 836
	.word	_Label_4748
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4749
	.word	12
	.word	4
	.word	_Label_4750
	.word	16
	.word	4
	.word	_Label_4751
	.word	20
	.word	4
	.word	_Label_4752
	.word	-16
	.word	4
	.word	_Label_4753
	.word	-20
	.word	4
	.word	_Label_4754
	.word	-24
	.word	4
	.word	_Label_4755
	.word	-28
	.word	4
	.word	_Label_4756
	.word	-32
	.word	4
	.word	_Label_4757
	.word	-36
	.word	4
	.word	_Label_4758
	.word	-40
	.word	4
	.word	_Label_4759
	.word	-44
	.word	4
	.word	_Label_4760
	.word	-48
	.word	4
	.word	_Label_4761
	.word	-52
	.word	4
	.word	_Label_4762
	.word	-56
	.word	4
	.word	_Label_4763
	.word	-60
	.word	4
	.word	_Label_4764
	.word	-64
	.word	4
	.word	_Label_4765
	.word	-68
	.word	4
	.word	_Label_4766
	.word	-72
	.word	4
	.word	_Label_4767
	.word	-76
	.word	4
	.word	_Label_4768
	.word	-80
	.word	4
	.word	_Label_4769
	.word	-84
	.word	4
	.word	_Label_4770
	.word	-88
	.word	4
	.word	_Label_4771
	.word	-92
	.word	4
	.word	_Label_4772
	.word	-96
	.word	4
	.word	_Label_4773
	.word	-100
	.word	4
	.word	_Label_4774
	.word	-104
	.word	4
	.word	_Label_4775
	.word	-108
	.word	4
	.word	_Label_4776
	.word	-112
	.word	4
	.word	_Label_4777
	.word	-116
	.word	4
	.word	_Label_4778
	.word	-120
	.word	4
	.word	_Label_4779
	.word	-124
	.word	4
	.word	_Label_4780
	.word	-128
	.word	4
	.word	_Label_4781
	.word	-132
	.word	4
	.word	_Label_4782
	.word	-9
	.word	1
	.word	_Label_4783
	.word	-136
	.word	4
	.word	_Label_4784
	.word	-140
	.word	4
	.word	_Label_4785
	.word	-144
	.word	4
	.word	_Label_4786
	.word	-148
	.word	4
	.word	_Label_4787
	.word	-152
	.word	4
	.word	_Label_4788
	.word	-156
	.word	4
	.word	_Label_4789
	.word	-160
	.word	4
	.word	_Label_4790
	.word	-164
	.word	4
	.word	_Label_4791
	.word	-168
	.word	4
	.word	_Label_4792
	.word	-172
	.word	4
	.word	_Label_4793
	.word	-176
	.word	4
	.word	_Label_4794
	.word	-180
	.word	4
	.word	_Label_4795
	.word	-184
	.word	4
	.word	_Label_4796
	.word	-188
	.word	4
	.word	_Label_4797
	.word	-192
	.word	4
	.word	_Label_4798
	.word	-452
	.word	260
	.word	_Label_4799
	.word	-456
	.word	4
	.word	_Label_4800
	.word	-716
	.word	260
	.word	_Label_4801
	.word	-720
	.word	4
	.word	_Label_4802
	.word	-724
	.word	4
	.word	_Label_4803
	.word	-728
	.word	4
	.word	_Label_4804
	.word	-732
	.word	4
	.word	_Label_4805
	.word	-736
	.word	4
	.word	_Label_4806
	.word	-740
	.word	4
	.word	_Label_4807
	.word	-824
	.word	84
	.word	_Label_4808
	.word	-828
	.word	4
	.word	0
_Label_4747:
	.ascii	"ToyFs"
	.ascii	"::"
	.ascii	"OpenLastDir\0"
	.align
_Label_4748:
	.ascii	"Pself\0"
	.align
_Label_4749:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_4750:
	.byte	'P'
	.ascii	"startDir\0"
	.align
_Label_4751:
	.byte	'P'
	.ascii	"lastElIndex\0"
	.align
_Label_4752:
	.byte	'?'
	.ascii	"_temp_4746\0"
	.align
_Label_4753:
	.byte	'?'
	.ascii	"_temp_4745\0"
	.align
_Label_4754:
	.byte	'?'
	.ascii	"_temp_4744\0"
	.align
_Label_4755:
	.byte	'?'
	.ascii	"_temp_4741\0"
	.align
_Label_4756:
	.byte	'?'
	.ascii	"_temp_4740\0"
	.align
_Label_4757:
	.byte	'?'
	.ascii	"_temp_4739\0"
	.align
_Label_4758:
	.byte	'?'
	.ascii	"_temp_4738\0"
	.align
_Label_4759:
	.byte	'?'
	.ascii	"_temp_4735\0"
	.align
_Label_4760:
	.byte	'?'
	.ascii	"_temp_4734\0"
	.align
_Label_4761:
	.byte	'?'
	.ascii	"_temp_4733\0"
	.align
_Label_4762:
	.byte	'?'
	.ascii	"_temp_4732\0"
	.align
_Label_4763:
	.byte	'?'
	.ascii	"_temp_4731\0"
	.align
_Label_4764:
	.byte	'?'
	.ascii	"_temp_4730\0"
	.align
_Label_4765:
	.byte	'?'
	.ascii	"_temp_4729\0"
	.align
_Label_4766:
	.byte	'?'
	.ascii	"_temp_4728\0"
	.align
_Label_4767:
	.byte	'?'
	.ascii	"_temp_4727\0"
	.align
_Label_4768:
	.byte	'?'
	.ascii	"_temp_4726\0"
	.align
_Label_4769:
	.byte	'?'
	.ascii	"_temp_4725\0"
	.align
_Label_4770:
	.byte	'?'
	.ascii	"_temp_4724\0"
	.align
_Label_4771:
	.byte	'?'
	.ascii	"_temp_4721\0"
	.align
_Label_4772:
	.byte	'?'
	.ascii	"_temp_4720\0"
	.align
_Label_4773:
	.byte	'?'
	.ascii	"_temp_4719\0"
	.align
_Label_4774:
	.byte	'?'
	.ascii	"_temp_4718\0"
	.align
_Label_4775:
	.byte	'?'
	.ascii	"_temp_4717\0"
	.align
_Label_4776:
	.byte	'?'
	.ascii	"_temp_4716\0"
	.align
_Label_4777:
	.byte	'?'
	.ascii	"_temp_4715\0"
	.align
_Label_4778:
	.byte	'?'
	.ascii	"_temp_4712\0"
	.align
_Label_4779:
	.byte	'?'
	.ascii	"_temp_4711\0"
	.align
_Label_4780:
	.byte	'?'
	.ascii	"_temp_4710\0"
	.align
_Label_4781:
	.byte	'?'
	.ascii	"_temp_4709\0"
	.align
_Label_4782:
	.byte	'C'
	.ascii	"_temp_4708\0"
	.align
_Label_4783:
	.byte	'?'
	.ascii	"_temp_4707\0"
	.align
_Label_4784:
	.byte	'?'
	.ascii	"_temp_4706\0"
	.align
_Label_4785:
	.byte	'?'
	.ascii	"_temp_4705\0"
	.align
_Label_4786:
	.byte	'?'
	.ascii	"_temp_4704\0"
	.align
_Label_4787:
	.byte	'?'
	.ascii	"_temp_4703\0"
	.align
_Label_4788:
	.byte	'?'
	.ascii	"_temp_4698\0"
	.align
_Label_4789:
	.byte	'?'
	.ascii	"_temp_4697\0"
	.align
_Label_4790:
	.byte	'?'
	.ascii	"_temp_4690\0"
	.align
_Label_4791:
	.byte	'?'
	.ascii	"_temp_4689\0"
	.align
_Label_4792:
	.byte	'?'
	.ascii	"_temp_4688\0"
	.align
_Label_4793:
	.byte	'?'
	.ascii	"_temp_4685\0"
	.align
_Label_4794:
	.byte	'?'
	.ascii	"_temp_4682\0"
	.align
_Label_4795:
	.byte	'?'
	.ascii	"_temp_4681\0"
	.align
_Label_4796:
	.byte	'?'
	.ascii	"_temp_4679\0"
	.align
_Label_4797:
	.byte	'?'
	.ascii	"_temp_4678\0"
	.align
_Label_4798:
	.byte	'?'
	.ascii	"_temp_4677\0"
	.align
_Label_4799:
	.byte	'?'
	.ascii	"_temp_4676\0"
	.align
_Label_4800:
	.byte	'A'
	.ascii	"elName\0"
	.align
_Label_4801:
	.byte	'I'
	.ascii	"ix\0"
	.align
_Label_4802:
	.byte	'I'
	.ascii	"sIx\0"
	.align
_Label_4803:
	.byte	'I'
	.ascii	"eIx\0"
	.align
_Label_4804:
	.byte	'P'
	.ascii	"sizeP\0"
	.align
_Label_4805:
	.byte	'P'
	.ascii	"entPtr\0"
	.align
_Label_4806:
	.byte	'P'
	.ascii	"elDir\0"
	.align
_Label_4807:
	.byte	'O'
	.ascii	"iNode\0"
	.align
_Label_4808:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD NameToInodeNum  ===============
! 
_Method_P_Kernel_ToyFs_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ToyFs_4,r1
	push	r1
	mov	102,r1
_Label_7281:
	push	r0
	sub	r1,1,r1
	bne	_Label_7281
	mov	3716,r13		! source line 3716
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3729,r13		! source line 3729
	mov	"\0\0IF",r10
!   _temp_4812 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_4812  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Call the function
	mov	3729,r13		! source line 3729
	mov	"\0\0CA",r10
	call	_P_System_StrCmp
!   Retrieve Result: targetName=_temp_4811  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_4811) then goto _Label_4809
	load	[r14+-120],r1
	cmp	r1,r0
	be	_Label_4809
	jmp	_Label_4810
_Label_4809:
! THEN...
	mov	3730,r13		! source line 3730
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3730,r13		! source line 3730
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4810:
! IF STATEMENT...
	mov	3734,r13		! source line 3734
	mov	"\0\0IF",r10
!   if intIsZero (dir) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4816 = dir + 12
	load	[r14+16],r1
	add	r1,12,r1
	store	r1,[r14+-108]
!   Data Move: _temp_4815 = *_temp_4816  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_4815 == 4 then goto _Label_4814		(int)
	load	[r14+-112],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_4814
!	_Label_4813	jmp	_Label_4813
_Label_4813:
! THEN...
	mov	3735,r13		! source line 3735
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4817 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_4817  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3735,r13		! source line 3735
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4814:
! ASSIGNMENT STATEMENT...
	mov	3739,r13		! source line 3739
	mov	"\0\0AS",r10
	mov	3739,r13		! source line 3739
	mov	"\0\0SE",r10
!   _temp_4818 = &lastElStart
	add	r14,-136,r1
	store	r1,[r14+-100]
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4819) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=dir  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_4818  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+12]
!   Send message OpenLastDir
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=curDir  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! IF STATEMENT...
	mov	3740,r13		! source line 3740
	mov	"\0\0IF",r10
!   if intIsZero (curDir) then goto _Label_4820
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_4820
	jmp	_Label_4821
_Label_4820:
! THEN...
	mov	3741,r13		! source line 3741
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3741,r13		! source line 3741
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4821:
! IF STATEMENT...
	mov	3744,r13		! source line 3744
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4825 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_4824 = _temp_4825 - lastElStart		(int)
	load	[r14+-88],r1
	load	[r14+-136],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   if _temp_4824 <= 255 then goto _Label_4823		(int)
	load	[r14+-92],r1
	mov	255,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4823
!	_Label_4822	jmp	_Label_4822
_Label_4822:
! THEN...
	mov	3745,r13		! source line 3745
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3745,r13		! source line 3745
	mov	"\0\0SE",r10
!   _temp_4826 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=curDir  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! RETURN STATEMENT...
	mov	3746,r13		! source line 3746
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4823:
! ASSIGNMENT STATEMENT...
	mov	3751,r13		! source line 3751
	mov	"\0\0AS",r10
!   _temp_4827 = &lastElName
	add	r14,-396,r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_4827) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4829 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_4828 = _temp_4829 - lastElStart		(int)
	load	[r14+-72],r1
	load	[r14+-136],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   Data Move: *_temp_4827 = _temp_4828  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-80],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	3752,r13		! source line 3752
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4834 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4837 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_4836 = _temp_4837 - lastElStart		(int)
	load	[r14+-56],r1
	load	[r14+-136],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   _temp_4835 = _temp_4836 - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: ix = _temp_4834  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-400]
_Label_4830:
!   Perform the FOR-LOOP termination test
!   if ix > _temp_4835 then goto _Label_4833		
	load	[r14+-400],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4833
_Label_4831:
	mov	3752,r13		! source line 3752
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3753,r13		! source line 3753
	mov	"\0\0AS",r10
!   _temp_4838 = &lastElName
	add	r14,-396,r1
	store	r1,[r14+-52]
!   Move address of _temp_4838 [ix ] into _temp_4839
!     make sure index expr is >= 0
	load	[r14+-400],r2
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
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4841 = lastElStart + ix		(int)
	load	[r14+-136],r1
	load	[r14+-400],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Move address of filename [_temp_4841 ] into _temp_4842
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
	store	r2,[r14+-40]
!   Data Move: _temp_4840 = *_temp_4842  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_4839 = _temp_4840  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-48],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_4832:
!   ix = ix + 1
	load	[r14+-400],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
	jmp	_Label_4830
! END FOR
_Label_4833:
! ASSIGNMENT STATEMENT...
	mov	3756,r13		! source line 3756
	mov	"\0\0AS",r10
	mov	3756,r13		! source line 3756
	mov	"\0\0SE",r10
!   _temp_4843 = &lastElName
	add	r14,-396,r1
	store	r1,[r14+-36]
!   if intIsZero (curDir) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4843  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Lookup
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=dirEnt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! SEND STATEMENT...
	mov	3757,r13		! source line 3757
	mov	"\0\0SE",r10
!   _temp_4844 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=curDir  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! IF STATEMENT...
	mov	3759,r13		! source line 3759
	mov	"\0\0IF",r10
!   if intIsZero (dirEnt) then goto _Label_4845
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_4845
	jmp	_Label_4846
_Label_4845:
! THEN...
	mov	3760,r13		! source line 3760
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3760,r13		! source line 3760
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4848 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_4847 = *_temp_4848  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_4847) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4849 = _temp_4847 + 236
	load	[r14+-28],r1
	add	r1,236,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4849 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	3761,r13		! source line 3761
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4846:
! ASSIGNMENT STATEMENT...
	mov	3763,r13		! source line 3763
	mov	"\0\0AS",r10
!   if intIsZero (dirEnt) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4850 = dirEnt + 0
	load	[r14+-124],r1
	add	r1,0,r1
	store	r1,[r14+-16]
!   Data Move: retVal = *_temp_4850  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-132]
! RETURN STATEMENT...
	mov	3765,r13		! source line 3765
	mov	"\0\0RE",r10
!   ReturnResult: retVal  (sizeInBytes=4)
	load	[r14+-132],r1
	store	r1,[r14+8]
	add	r15,412,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ToyFs_4:
	.word	_sourceFileName
	.word	_Label_4851
	.word	12		! total size of parameters
	.word	408		! frame size = 408
	.word	_Label_4852
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4853
	.word	12
	.word	4
	.word	_Label_4854
	.word	16
	.word	4
	.word	_Label_4855
	.word	-16
	.word	4
	.word	_Label_4856
	.word	-20
	.word	4
	.word	_Label_4857
	.word	-24
	.word	4
	.word	_Label_4858
	.word	-28
	.word	4
	.word	_Label_4859
	.word	-32
	.word	4
	.word	_Label_4860
	.word	-36
	.word	4
	.word	_Label_4861
	.word	-40
	.word	4
	.word	_Label_4862
	.word	-44
	.word	4
	.word	_Label_4863
	.word	-9
	.word	1
	.word	_Label_4864
	.word	-48
	.word	4
	.word	_Label_4865
	.word	-52
	.word	4
	.word	_Label_4866
	.word	-56
	.word	4
	.word	_Label_4867
	.word	-60
	.word	4
	.word	_Label_4868
	.word	-64
	.word	4
	.word	_Label_4869
	.word	-68
	.word	4
	.word	_Label_4870
	.word	-72
	.word	4
	.word	_Label_4871
	.word	-76
	.word	4
	.word	_Label_4872
	.word	-80
	.word	4
	.word	_Label_4873
	.word	-84
	.word	4
	.word	_Label_4874
	.word	-88
	.word	4
	.word	_Label_4875
	.word	-92
	.word	4
	.word	_Label_4876
	.word	-96
	.word	4
	.word	_Label_4877
	.word	-100
	.word	4
	.word	_Label_4878
	.word	-104
	.word	4
	.word	_Label_4879
	.word	-108
	.word	4
	.word	_Label_4880
	.word	-112
	.word	4
	.word	_Label_4881
	.word	-116
	.word	4
	.word	_Label_4882
	.word	-120
	.word	4
	.word	_Label_4883
	.word	-124
	.word	4
	.word	_Label_4884
	.word	-128
	.word	4
	.word	_Label_4885
	.word	-132
	.word	4
	.word	_Label_4886
	.word	-136
	.word	4
	.word	_Label_4887
	.word	-396
	.word	260
	.word	_Label_4888
	.word	-400
	.word	4
	.word	0
_Label_4851:
	.ascii	"ToyFs"
	.ascii	"::"
	.ascii	"NameToInodeNum\0"
	.align
_Label_4852:
	.ascii	"Pself\0"
	.align
_Label_4853:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_4854:
	.byte	'P'
	.ascii	"dir\0"
	.align
_Label_4855:
	.byte	'?'
	.ascii	"_temp_4850\0"
	.align
_Label_4856:
	.byte	'?'
	.ascii	"_temp_4849\0"
	.align
_Label_4857:
	.byte	'?'
	.ascii	"_temp_4848\0"
	.align
_Label_4858:
	.byte	'?'
	.ascii	"_temp_4847\0"
	.align
_Label_4859:
	.byte	'?'
	.ascii	"_temp_4844\0"
	.align
_Label_4860:
	.byte	'?'
	.ascii	"_temp_4843\0"
	.align
_Label_4861:
	.byte	'?'
	.ascii	"_temp_4842\0"
	.align
_Label_4862:
	.byte	'?'
	.ascii	"_temp_4841\0"
	.align
_Label_4863:
	.byte	'C'
	.ascii	"_temp_4840\0"
	.align
_Label_4864:
	.byte	'?'
	.ascii	"_temp_4839\0"
	.align
_Label_4865:
	.byte	'?'
	.ascii	"_temp_4838\0"
	.align
_Label_4866:
	.byte	'?'
	.ascii	"_temp_4837\0"
	.align
_Label_4867:
	.byte	'?'
	.ascii	"_temp_4836\0"
	.align
_Label_4868:
	.byte	'?'
	.ascii	"_temp_4835\0"
	.align
_Label_4869:
	.byte	'?'
	.ascii	"_temp_4834\0"
	.align
_Label_4870:
	.byte	'?'
	.ascii	"_temp_4829\0"
	.align
_Label_4871:
	.byte	'?'
	.ascii	"_temp_4828\0"
	.align
_Label_4872:
	.byte	'?'
	.ascii	"_temp_4827\0"
	.align
_Label_4873:
	.byte	'?'
	.ascii	"_temp_4826\0"
	.align
_Label_4874:
	.byte	'?'
	.ascii	"_temp_4825\0"
	.align
_Label_4875:
	.byte	'?'
	.ascii	"_temp_4824\0"
	.align
_Label_4876:
	.byte	'?'
	.ascii	"_temp_4819\0"
	.align
_Label_4877:
	.byte	'?'
	.ascii	"_temp_4818\0"
	.align
_Label_4878:
	.byte	'?'
	.ascii	"_temp_4817\0"
	.align
_Label_4879:
	.byte	'?'
	.ascii	"_temp_4816\0"
	.align
_Label_4880:
	.byte	'?'
	.ascii	"_temp_4815\0"
	.align
_Label_4881:
	.byte	'?'
	.ascii	"_temp_4812\0"
	.align
_Label_4882:
	.byte	'?'
	.ascii	"_temp_4811\0"
	.align
_Label_4883:
	.byte	'P'
	.ascii	"dirEnt\0"
	.align
_Label_4884:
	.byte	'P'
	.ascii	"curDir\0"
	.align
_Label_4885:
	.byte	'I'
	.ascii	"retVal\0"
	.align
_Label_4886:
	.byte	'I'
	.ascii	"lastElStart\0"
	.align
_Label_4887:
	.byte	'A'
	.ascii	"lastElName\0"
	.align
_Label_4888:
	.byte	'I'
	.ascii	"ix\0"
	.align
! 
! ===============  METHOD AllocInode  ===============
! 
_Method_P_Kernel_ToyFs_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ToyFs_5,r1
	push	r1
	mov	64,r1
_Label_7282:
	push	r0
	sub	r1,1,r1
	bne	_Label_7282
	mov	3769,r13		! source line 3769
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3772,r13		! source line 3772
	mov	"\0\0SE",r10
!   _temp_4889 = &fsLock
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-172]
!   Send message Lock
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3773,r13		! source line 3773
	mov	"\0\0AS",r10
	mov	3773,r13		! source line 3773
	mov	"\0\0SE",r10
!   _temp_4890 = &i_bitmap
	load	[r14+8],r1
	add	r1,52,r1
	store	r1,[r14+-168]
!   Send message FindZeroAndSet
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! IF STATEMENT...
	mov	3774,r13		! source line 3774
	mov	"\0\0IF",r10
!   if retVal < 0 then goto _Label_4892		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_4892
!	_Label_4891	jmp	_Label_4891
_Label_4891:
! THEN...
	mov	3775,r13		! source line 3775
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3775,r13		! source line 3775
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_4893) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SaveSuper
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3776,r13		! source line 3776
	mov	"\0\0SE",r10
!   _temp_4894 = &fsLock
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-160]
!   Send message Unlock
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3777,r13		! source line 3777
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: idata = zeros  (sizeInBytes=84)
	add	r14,-260,r4
	mov	21,r3
_Label_7283:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7283
!   idata = _P_Kernel_InodeData
	set	_P_Kernel_InodeData,r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	3778,r13		! source line 3778
	mov	"\0\0AS",r10
!   _temp_4896 = &idata
	add	r14,-260,r1
	store	r1,[r14+-152]
!   _temp_4897 = _temp_4896 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Data Move: *_temp_4897 = retVal  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r14+-148],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3779,r13		! source line 3779
	mov	"\0\0AS",r10
!   _temp_4898 = &idata
	add	r14,-260,r1
	store	r1,[r14+-144]
!   _temp_4899 = _temp_4898 + 8
	load	[r14+-144],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Data Move: *_temp_4899 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-140],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3780,r13		! source line 3780
	mov	"\0\0AS",r10
!   _temp_4900 = &idata
	add	r14,-260,r1
	store	r1,[r14+-136]
!   _temp_4901 = _temp_4900 + 12
	load	[r14+-136],r1
	add	r1,12,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_4901 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-132],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3781,r13		! source line 3781
	mov	"\0\0AS",r10
!   _temp_4902 = &idata
	add	r14,-260,r1
	store	r1,[r14+-128]
!   _temp_4903 = _temp_4902 + 16
	load	[r14+-128],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_4903 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-124],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3782,r13		! source line 3782
	mov	"\0\0AS",r10
!   _temp_4904 = &idata
	add	r14,-260,r1
	store	r1,[r14+-120]
!   _temp_4905 = _temp_4904 + 20
	load	[r14+-120],r1
	add	r1,20,r1
	store	r1,[r14+-116]
!   Data Move: *_temp_4905 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-116],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3783,r13		! source line 3783
	mov	"\0\0AS",r10
!   _temp_4906 = &idata
	add	r14,-260,r1
	store	r1,[r14+-112]
!   _temp_4907 = _temp_4906 + 24
	load	[r14+-112],r1
	add	r1,24,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_4909 = &_temp_4908
	add	r14,-104,r1
	store	r1,[r14+-60]
!   _temp_4909 = _temp_4909 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Next value...
	mov	10,r1
	store	r1,[r14+-56]
_Label_4911:
!   Data Move: *_temp_4909 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-60],r2
	store	r1,[r2]
!   _temp_4909 = _temp_4909 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   _temp_4910 = _temp_4910 + -1
	load	[r14+-56],r1
	add	r1,-1,r1
	store	r1,[r14+-56]
!   if intNotZero (_temp_4910) then goto _Label_4911
	load	[r14+-56],r1
	cmp	r1,r0
	bne	_Label_4911
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-104]
!   _temp_4912 = &_temp_4908
	add	r14,-104,r1
	store	r1,[r14+-52]
!   make sure array has size 10
	load	[r14+-108],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_7284
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_7284:
!   make sure array has size 10
	load	[r14+-52],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4907 = *_temp_4912  (sizeInBytes=44)
	load	[r14+-52],r5
	load	[r14+-108],r4
	mov	11,r3
_Label_7285:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_7285
! ASSIGNMENT STATEMENT...
	mov	3784,r13		! source line 3784
	mov	"\0\0AS",r10
!   _temp_4913 = &idata
	add	r14,-260,r1
	store	r1,[r14+-48]
!   _temp_4914 = _temp_4913 + 68
	load	[r14+-48],r1
	add	r1,68,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_4914 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-44],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3785,r13		! source line 3785
	mov	"\0\0AS",r10
!   _temp_4915 = &idata
	add	r14,-260,r1
	store	r1,[r14+-40]
!   _temp_4916 = _temp_4915 + 72
	load	[r14+-40],r1
	add	r1,72,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_4916 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3786,r13		! source line 3786
	mov	"\0\0AS",r10
!   _temp_4917 = &idata
	add	r14,-260,r1
	store	r1,[r14+-32]
!   _temp_4918 = _temp_4917 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_4918 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3787,r13		! source line 3787
	mov	"\0\0AS",r10
!   _temp_4919 = &idata
	add	r14,-260,r1
	store	r1,[r14+-24]
!   _temp_4920 = _temp_4919 + 80
	load	[r14+-24],r1
	add	r1,80,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4920 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3788,r13		! source line 3788
	mov	"\0\0SE",r10
!   _temp_4921 = &idata
	add	r14,-260,r1
	store	r1,[r14+-16]
!   Send message WriteInode
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_4922
_Label_4892:
! ELSE...
	mov	3790,r13		! source line 3790
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3790,r13		! source line 3790
	mov	"\0\0SE",r10
!   _temp_4923 = &fsLock
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4922:
! RETURN STATEMENT...
	mov	3792,r13		! source line 3792
	mov	"\0\0RE",r10
!   ReturnResult: retVal  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ToyFs_5:
	.word	_sourceFileName
	.word	_Label_4924
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_4925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4926
	.word	-12
	.word	4
	.word	_Label_4927
	.word	-16
	.word	4
	.word	_Label_4928
	.word	-20
	.word	4
	.word	_Label_4929
	.word	-24
	.word	4
	.word	_Label_4930
	.word	-28
	.word	4
	.word	_Label_4931
	.word	-32
	.word	4
	.word	_Label_4932
	.word	-36
	.word	4
	.word	_Label_4933
	.word	-40
	.word	4
	.word	_Label_4934
	.word	-44
	.word	4
	.word	_Label_4935
	.word	-48
	.word	4
	.word	_Label_4936
	.word	-52
	.word	4
	.word	_Label_4937
	.word	-56
	.word	4
	.word	_Label_4938
	.word	-60
	.word	4
	.word	_Label_4939
	.word	-104
	.word	44
	.word	_Label_4940
	.word	-108
	.word	4
	.word	_Label_4941
	.word	-112
	.word	4
	.word	_Label_4942
	.word	-116
	.word	4
	.word	_Label_4943
	.word	-120
	.word	4
	.word	_Label_4944
	.word	-124
	.word	4
	.word	_Label_4945
	.word	-128
	.word	4
	.word	_Label_4946
	.word	-132
	.word	4
	.word	_Label_4947
	.word	-136
	.word	4
	.word	_Label_4948
	.word	-140
	.word	4
	.word	_Label_4949
	.word	-144
	.word	4
	.word	_Label_4950
	.word	-148
	.word	4
	.word	_Label_4951
	.word	-152
	.word	4
	.word	_Label_4952
	.word	-156
	.word	4
	.word	_Label_4953
	.word	-160
	.word	4
	.word	_Label_4954
	.word	-164
	.word	4
	.word	_Label_4955
	.word	-168
	.word	4
	.word	_Label_4956
	.word	-172
	.word	4
	.word	_Label_4957
	.word	-176
	.word	4
	.word	_Label_4958
	.word	-260
	.word	84
	.word	0
_Label_4924:
	.ascii	"ToyFs"
	.ascii	"::"
	.ascii	"AllocInode\0"
	.align
_Label_4925:
	.ascii	"Pself\0"
	.align
_Label_4926:
	.byte	'?'
	.ascii	"_temp_4923\0"
	.align
_Label_4927:
	.byte	'?'
	.ascii	"_temp_4921\0"
	.align
_Label_4928:
	.byte	'?'
	.ascii	"_temp_4920\0"
	.align
_Label_4929:
	.byte	'?'
	.ascii	"_temp_4919\0"
	.align
_Label_4930:
	.byte	'?'
	.ascii	"_temp_4918\0"
	.align
_Label_4931:
	.byte	'?'
	.ascii	"_temp_4917\0"
	.align
_Label_4932:
	.byte	'?'
	.ascii	"_temp_4916\0"
	.align
_Label_4933:
	.byte	'?'
	.ascii	"_temp_4915\0"
	.align
_Label_4934:
	.byte	'?'
	.ascii	"_temp_4914\0"
	.align
_Label_4935:
	.byte	'?'
	.ascii	"_temp_4913\0"
	.align
_Label_4936:
	.byte	'?'
	.ascii	"_temp_4912\0"
	.align
_Label_4937:
	.byte	'?'
	.ascii	"_temp_4910\0"
	.align
_Label_4938:
	.byte	'?'
	.ascii	"_temp_4909\0"
	.align
_Label_4939:
	.byte	'?'
	.ascii	"_temp_4908\0"
	.align
_Label_4940:
	.byte	'?'
	.ascii	"_temp_4907\0"
	.align
_Label_4941:
	.byte	'?'
	.ascii	"_temp_4906\0"
	.align
_Label_4942:
	.byte	'?'
	.ascii	"_temp_4905\0"
	.align
_Label_4943:
	.byte	'?'
	.ascii	"_temp_4904\0"
	.align
_Label_4944:
	.byte	'?'
	.ascii	"_temp_4903\0"
	.align
_Label_4945:
	.byte	'?'
	.ascii	"_temp_4902\0"
	.align
_Label_4946:
	.byte	'?'
	.ascii	"_temp_4901\0"
	.align
_Label_4947:
	.byte	'?'
	.ascii	"_temp_4900\0"
	.align
_Label_4948:
	.byte	'?'
	.ascii	"_temp_4899\0"
	.align
_Label_4949:
	.byte	'?'
	.ascii	"_temp_4898\0"
	.align
_Label_4950:
	.byte	'?'
	.ascii	"_temp_4897\0"
	.align
_Label_4951:
	.byte	'?'
	.ascii	"_temp_4896\0"
	.align
_Label_4952:
	.byte	'?'
	.ascii	"_temp_4895\0"
	.align
_Label_4953:
	.byte	'?'
	.ascii	"_temp_4894\0"
	.align
_Label_4954:
	.byte	'?'
	.ascii	"_temp_4893\0"
	.align
_Label_4955:
	.byte	'?'
	.ascii	"_temp_4890\0"
	.align
_Label_4956:
	.byte	'?'
	.ascii	"_temp_4889\0"
	.align
_Label_4957:
	.byte	'I'
	.ascii	"retVal\0"
	.align
_Label_4958:
	.byte	'O'
	.ascii	"idata\0"
	.align
! 
! ===============  METHOD FreeInode  ===============
! 
_Method_P_Kernel_ToyFs_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ToyFs_6,r1
	push	r1
	mov	6,r1
_Label_7286:
	push	r0
	sub	r1,1,r1
	bne	_Label_7286
	mov	3796,r13		! source line 3796
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3797,r13		! source line 3797
	mov	"\0\0SE",r10
!   _temp_4959 = &fsLock
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Send message Lock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3798,r13		! source line 3798
	mov	"\0\0SE",r10
!   _temp_4960 = &i_bitmap
	load	[r14+8],r1
	add	r1,52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=iNum  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	3799,r13		! source line 3799
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_4961) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SaveSuper
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3800,r13		! source line 3800
	mov	"\0\0SE",r10
!   _temp_4962 = &fsLock
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3800,r13		! source line 3800
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ToyFs_6:
	.word	_sourceFileName
	.word	_Label_4963
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4964
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4965
	.word	12
	.word	4
	.word	_Label_4966
	.word	-12
	.word	4
	.word	_Label_4967
	.word	-16
	.word	4
	.word	_Label_4968
	.word	-20
	.word	4
	.word	_Label_4969
	.word	-24
	.word	4
	.word	0
_Label_4963:
	.ascii	"ToyFs"
	.ascii	"::"
	.ascii	"FreeInode\0"
	.align
_Label_4964:
	.ascii	"Pself\0"
	.align
_Label_4965:
	.byte	'I'
	.ascii	"iNum\0"
	.align
_Label_4966:
	.byte	'?'
	.ascii	"_temp_4962\0"
	.align
_Label_4967:
	.byte	'?'
	.ascii	"_temp_4961\0"
	.align
_Label_4968:
	.byte	'?'
	.ascii	"_temp_4960\0"
	.align
_Label_4969:
	.byte	'?'
	.ascii	"_temp_4959\0"
	.align
! 
! ===============  METHOD AllocDataBlock  ===============
! 
_Method_P_Kernel_ToyFs_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ToyFs_7,r1
	push	r1
	mov	6,r1
_Label_7287:
	push	r0
	sub	r1,1,r1
	bne	_Label_7287
	mov	3804,r13		! source line 3804
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3807,r13		! source line 3807
	mov	"\0\0SE",r10
!   _temp_4970 = &fsLock
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Send message Lock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3809,r13		! source line 3809
	mov	"\0\0AS",r10
	mov	3809,r13		! source line 3809
	mov	"\0\0SE",r10
!   _temp_4971 = &d_bitmap
	load	[r14+8],r1
	add	r1,64,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=retVal  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! SEND STATEMENT...
	mov	3811,r13		! source line 3811
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_4972) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SaveSuper
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3813,r13		! source line 3813
	mov	"\0\0SE",r10
!   _temp_4973 = &fsLock
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3814,r13		! source line 3814
	mov	"\0\0RE",r10
!   ReturnResult: retVal  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ToyFs_7:
	.word	_sourceFileName
	.word	_Label_4974
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4975
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4976
	.word	-12
	.word	4
	.word	_Label_4977
	.word	-16
	.word	4
	.word	_Label_4978
	.word	-20
	.word	4
	.word	_Label_4979
	.word	-24
	.word	4
	.word	_Label_4980
	.word	-28
	.word	4
	.word	0
_Label_4974:
	.ascii	"ToyFs"
	.ascii	"::"
	.ascii	"AllocDataBlock\0"
	.align
_Label_4975:
	.ascii	"Pself\0"
	.align
_Label_4976:
	.byte	'?'
	.ascii	"_temp_4973\0"
	.align
_Label_4977:
	.byte	'?'
	.ascii	"_temp_4972\0"
	.align
_Label_4978:
	.byte	'?'
	.ascii	"_temp_4971\0"
	.align
_Label_4979:
	.byte	'?'
	.ascii	"_temp_4970\0"
	.align
_Label_4980:
	.byte	'I'
	.ascii	"retVal\0"
	.align
! 
! ===============  METHOD FreeDataBlock  ===============
! 
_Method_P_Kernel_ToyFs_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ToyFs_8,r1
	push	r1
	mov	6,r1
_Label_7288:
	push	r0
	sub	r1,1,r1
	bne	_Label_7288
	mov	3819,r13		! source line 3819
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3820,r13		! source line 3820
	mov	"\0\0SE",r10
!   _temp_4981 = &fsLock
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Send message Lock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3821,r13		! source line 3821
	mov	"\0\0SE",r10
!   _temp_4982 = &d_bitmap
	load	[r14+8],r1
	add	r1,64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=dbNum  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	3822,r13		! source line 3822
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_4983) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SaveSuper
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3823,r13		! source line 3823
	mov	"\0\0SE",r10
!   _temp_4984 = &fsLock
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3823,r13		! source line 3823
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ToyFs_8:
	.word	_sourceFileName
	.word	_Label_4985
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_4986
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4987
	.word	12
	.word	4
	.word	_Label_4988
	.word	-12
	.word	4
	.word	_Label_4989
	.word	-16
	.word	4
	.word	_Label_4990
	.word	-20
	.word	4
	.word	_Label_4991
	.word	-24
	.word	4
	.word	0
_Label_4985:
	.ascii	"ToyFs"
	.ascii	"::"
	.ascii	"FreeDataBlock\0"
	.align
_Label_4986:
	.ascii	"Pself\0"
	.align
_Label_4987:
	.byte	'I'
	.ascii	"dbNum\0"
	.align
_Label_4988:
	.byte	'?'
	.ascii	"_temp_4984\0"
	.align
_Label_4989:
	.byte	'?'
	.ascii	"_temp_4983\0"
	.align
_Label_4990:
	.byte	'?'
	.ascii	"_temp_4982\0"
	.align
_Label_4991:
	.byte	'?'
	.ascii	"_temp_4981\0"
	.align
! 
! ===============  METHOD ReadFile  ===============
! 
_Method_P_Kernel_ToyFs_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ToyFs_9,r1
	push	r1
	mov	54,r1
_Label_7289:
	push	r0
	sub	r1,1,r1
	bne	_Label_7289
	mov	3827,r13		! source line 3827
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3839,r13		! source line 3839
	mov	"\0\0AS",r10
!   virtAddr = userBuffer		(4 bytes)
	load	[r14+16],r1
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	3840,r13		! source line 3840
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-176],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	3841,r13		! source line 3841
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-176],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	3842,r13		! source line 3842
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	3843,r13		! source line 3843
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4992 = file + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-172]
!   Data Move: nextPosInFile = *_temp_4992  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	3844,r13		! source line 3844
	mov	"\0\0AS",r10
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4994 = file + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-164]
!   Data Move: _temp_4993 = *_temp_4994  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_4993) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4995 = _temp_4993 + 12
	load	[r14+-168],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   _temp_4996 = _temp_4995 + 16
	load	[r14+-160],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   Data Move: sizeOfFile = *_temp_4996  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-204]
! WHILE STATEMENT...
	mov	3850,r13		! source line 3850
	mov	"\0\0WH",r10
_Label_4997:
!	_Label_4998	jmp	_Label_4998
_Label_4998:
	mov	3850,r13		! source line 3850
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3852,r13		! source line 3852
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-184],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	3854,r13		! source line 3854
	mov	"\0\0IF",r10
!   _temp_5002 = nextPosInFile + chunkSize		(int)
	load	[r14+-192],r1
	load	[r14+-188],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if _temp_5002 <= sizeOfFile then goto _Label_5001		(int)
	load	[r14+-152],r1
	load	[r14+-204],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_5001
!	_Label_5000	jmp	_Label_5000
_Label_5000:
! THEN...
	mov	3855,r13		! source line 3855
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3855,r13		! source line 3855
	mov	"\0\0AS",r10
!   chunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-204],r1
	load	[r14+-192],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-188]
! END IF...
_Label_5001:
! IF STATEMENT...
	mov	3859,r13		! source line 3859
	mov	"\0\0IF",r10
!   _temp_5005 = copiedSoFar + chunkSize		(int)
	load	[r14+-196],r1
	load	[r14+-188],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
!   if _temp_5005 <= sizeInBytes then goto _Label_5004		(int)
	load	[r14+-148],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_5004
!	_Label_5003	jmp	_Label_5003
_Label_5003:
! THEN...
	mov	3860,r13		! source line 3860
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3860,r13		! source line 3860
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+20],r1
	load	[r14+-196],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-188]
! END IF...
_Label_5004:
! IF STATEMENT...
	mov	3864,r13		! source line 3864
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_5007		(int)
	load	[r14+-188],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_5007
!	_Label_5006	jmp	_Label_5006
_Label_5006:
! THEN...
	mov	3865,r13		! source line 3865
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	3865,r13		! source line 3865
	mov	"\0\0BR",r10
	jmp	_Label_4999
! END IF...
_Label_5007:
! IF STATEMENT...
	mov	3869,r13		! source line 3869
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5013 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_5012 = *_temp_5013  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_5012) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_5014 = _temp_5012 + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   _temp_5015 = _temp_5014 + 4
	load	[r14+-132],r1
	add	r1,4,r1
	store	r1,[r14+-128]
!   Data Move: _temp_5011 = *_temp_5015  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if virtPage <= _temp_5011 then goto _Label_5010		(int)
	load	[r14+-180],r1
	load	[r14+-144],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_5010
	jmp	_Label_5008
_Label_5010:
	load	[r14+-180],r1
! 