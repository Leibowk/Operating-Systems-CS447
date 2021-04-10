! Name of package being compiled: TestProgram3
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
_StringConst_229:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_228:
	.word	41			! length
	.ascii	"*****  ERROR: Return value from syscall ("
	.align
_StringConst_227:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_226:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_225:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_224:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_223:
	.word	1			! length
	.ascii	"x"
	.align
_StringConst_222:
	.word	1			! length
	.ascii	"w"
	.align
_StringConst_221:
	.word	1			! length
	.ascii	"r"
	.align
_StringConst_220:
	.word	1			! length
	.ascii	"d"
	.align
_StringConst_219:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_218:
	.word	17			! length
	.ascii	"Stat error code: "
	.align
_StringConst_217:
	.word	17			! length
	.ascii	"Sys_Stat failed.\n"
	.align
_StringConst_216:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_215:
	.word	7			! length
	.ascii	"\nDone.\n"
	.align
_StringConst_214:
	.word	10			! length
	.ascii	"not a file"
	.align
_StringConst_213:
	.word	13			! length
	.ascii	"TestProgram3a"
	.align
_StringConst_212:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_211:
	.word	12			! length
	.ascii	"TestProgram2"
	.align
_StringConst_210:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_209:
	.word	9			! length
	.ascii	"MyProgram"
	.align
_StringConst_208:
	.word	1			! length
	.ascii	"/"
	.align
_StringConst_207:
	.word	64			! length
	.ascii	"Should print a line for /, MyProgram, TestProgram1-3a and error\n"
	.align
_StringConst_206:
	.word	20			! length
	.ascii	"\nStatTest running.\n\n"
	.align
_StringConst_205:
	.word	43			! length
	.ascii	"Sys_Exec error!  Did not exec TestProgram3a"
	.align
_StringConst_204:
	.word	13			! length
	.ascii	"TestProgram3a"
	.align
_StringConst_203:
	.word	11			! length
	.ascii	"End Of Args"
	.align
_StringConst_202:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_201:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_200:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_199:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_198:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_197:
	.word	5			! length
	.ascii	"arg 3"
	.align
_StringConst_196:
	.word	10			! length
	.ascii	"1234567890"
	.align
_StringConst_195:
	.word	3			! length
	.ascii	"abc"
	.align
_StringConst_194:
	.word	1			! length
	.ascii	"a"
	.align
_StringConst_193:
	.word	33			! length
	.ascii	"Sys_GetPPid error! should be -1.\n"
	.align
_StringConst_192:
	.word	28			! length
	.ascii	"\nArgsWithForkTest running.\n\n"
	.align
_StringConst_191:
	.word	7			! length
	.ascii	"\nDone.\n"
	.align
_StringConst_190:
	.word	13			! length
	.ascii	"not a program"
	.align
_StringConst_189:
	.word	21			! length
	.ascii	"\nExec error checks: \n"
	.align
_StringConst_188:
	.word	23			! length
	.ascii	"Child exiting with -1.\n"
	.align
_StringConst_187:
	.word	49			! length
	.ascii	"*****  ERROR: Execution will not continue  *****\n"
	.align
_StringConst_186:
	.word	84			! length
	.ascii	"\nShould print \"A PageReadonlyException exception has occured while in user mode\"...\n"
	.align
_StringConst_185:
	.word	49			! length
	.ascii	"*****  ERROR: Execution will not continue  *****\n"
	.align
_StringConst_184:
	.word	80			! length
	.ascii	"\nShould print \"An AddressException exception has occured while in user mode\"...\n"
	.align
_StringConst_183:
	.word	49			! length
	.ascii	"*****  ERROR: Execution will not continue  *****\n"
	.align
_StringConst_182:
	.word	69			! length
	.ascii	"Should print \"User Program Error: Attempt to use a null pointer!\"...\n"
	.align
_StringConst_181:
	.word	21			! length
	.ascii	"\nErrorTest running.\n\n"
	.align
_StringConst_180:
	.word	6			! length
	.ascii	"Done.\n"
	.align
_StringConst_179:
	.word	18			! length
	.ascii	"Final return value"
	.align
_StringConst_178:
	.word	8			! length
	.ascii	"Process "
	.align
_StringConst_177:
	.word	10			! length
	.ascii	"Process 1\n"
	.align
_StringConst_176:
	.word	10			! length
	.ascii	"Process 0\n"
	.align
_StringConst_175:
	.word	41			! length
	.ascii	"It should run out of resources and hang.\n"
	.align
_StringConst_174:
	.word	70			! length
	.ascii	"It should print a line for each process and then it should print 123.\n"
	.align
_StringConst_173:
	.word	16			! length
	.ascii	" new processes.\n"
	.align
_StringConst_172:
	.word	29			! length
	.ascii	"This test attempts to create "
	.align
_StringConst_171:
	.word	30			! length
	.ascii	"\nManyProcessesTest3 running.\n\n"
	.align
_StringConst_170:
	.word	30			! length
	.ascii	"\nManyProcessesTest2 running.\n\n"
	.align
_StringConst_169:
	.word	6			! length
	.ascii	"Done.\n"
	.align
_StringConst_168:
	.word	6			! length
	.ascii	"Child "
	.align
_StringConst_167:
	.word	37			! length
	.ascii	"It should print 100 lines of output.\n"
	.align
_StringConst_166:
	.word	45			! length
	.ascii	"This test should create 100 child processes.\n"
	.align
_StringConst_165:
	.word	30			! length
	.ascii	"\nManyProcessesTest1 running.\n\n"
	.align
_StringConst_164:
	.word	10			! length
	.ascii	" is done.\n"
	.align
_StringConst_163:
	.word	42			! length
	.ascii	"*****  Result from Sys_Join was not 123; j"
	.align
_StringConst_162:
	.word	28			! length
	.ascii	"*****  Arg to Sys_Join, pid2"
	.align
_StringConst_161:
	.word	7			! length
	.ascii	" *****\n"
	.align
_StringConst_160:
	.word	23			! length
	.ascii	"***** ERROR in process "
	.align
_StringConst_159:
	.word	9			! length
	.ascii	"     pid2"
	.align
_StringConst_158:
	.word	15			! length
	.ascii	" is waiting on "
	.align
_StringConst_157:
	.word	35			! length
	.ascii	"-----------------------------------"
	.align
_StringConst_156:
	.word	42			! length
	.ascii	"*****  Result from Sys_Join was not 123; j"
	.align
_StringConst_155:
	.word	28			! length
	.ascii	"*****  Arg to Sys_Join, pid1"
	.align
_StringConst_154:
	.word	7			! length
	.ascii	" *****\n"
	.align
_StringConst_153:
	.word	23			! length
	.ascii	"***** ERROR in process "
	.align
_StringConst_152:
	.word	9			! length
	.ascii	"     pid1"
	.align
_StringConst_151:
	.word	15			! length
	.ascii	" is waiting on "
	.align
_StringConst_150:
	.word	35			! length
	.ascii	"-----------------------------------"
	.align
_StringConst_149:
	.word	26			! length
	.ascii	" done with error tests...\n"
	.align
_StringConst_148:
	.word	16			! length
	.ascii	"Wrong error code"
	.align
_StringConst_147:
	.word	41			! length
	.ascii	"*****  Result from Sys_Join was not -1; j"
	.align
_StringConst_146:
	.word	25			! length
	.ascii	"*****  Arg to Sys_Join, i"
	.align
_StringConst_145:
	.word	7			! length
	.ascii	" *****\n"
	.align
_StringConst_144:
	.word	23			! length
	.ascii	"***** ERROR in process "
	.align
_StringConst_143:
	.word	16			! length
	.ascii	"---------------\n"
	.align
_StringConst_142:
	.word	7			! length
	.ascii	"   pid2"
	.align
_StringConst_141:
	.word	21			! length
	.ascii	"  My second child is "
	.align
_StringConst_140:
	.word	7			! length
	.ascii	"   pid1"
	.align
_StringConst_139:
	.word	21			! length
	.ascii	"  My first  child is "
	.align
_StringConst_138:
	.word	15			! length
	.ascii	" is running...\n"
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"A.C"
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"A.B"
	.align
_StringConst_135:
	.word	1			! length
	.ascii	"A"
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"A.C.G"
	.align
_StringConst_133:
	.word	5			! length
	.ascii	"A.C.F"
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"A.C"
	.align
_StringConst_131:
	.word	5			! length
	.ascii	"A.C.G"
	.align
_StringConst_130:
	.word	5			! length
	.ascii	"A.C.F"
	.align
_StringConst_129:
	.word	5			! length
	.ascii	"A.B.E"
	.align
_StringConst_128:
	.word	5			! length
	.ascii	"A.B.D"
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"A.B"
	.align
_StringConst_126:
	.word	5			! length
	.ascii	"A.B.E"
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"A.B"
	.align
_StringConst_124:
	.word	5			! length
	.ascii	"A.B.D"
	.align
_StringConst_123:
	.word	55			! length
	.ascii	"   Finally, each process with children waits on them.\n\n"
	.align
_StringConst_122:
	.word	73			! length
	.ascii	"   every process except its own children, to make sure the result is -1.\n"
	.align
_StringConst_121:
	.word	72			! length
	.ascii	"   giving 7 processes in all.  Then each process attempts a Sys_Join on\n"
	.align
_StringConst_120:
	.word	73			! length
	.ascii	"\n   In the next test, we create 2 children, and each creates 2 children,\n"
	.align
_StringConst_119:
	.word	54			! length
	.ascii	"*****  ERROR: Return code from second call to Sys_Join"
	.align
_StringConst_118:
	.word	16			! length
	.ascii	"Wrong error code"
	.align
_StringConst_117:
	.word	10			! length
	.ascii	"Okay (4).\n"
	.align
_StringConst_116:
	.word	53			! length
	.ascii	"*****  ERROR: Return code from first call to Sys_Join"
	.align
_StringConst_115:
	.word	10			! length
	.ascii	"Okay (3).\n"
	.align
_StringConst_114:
	.word	26			! length
	.ascii	"This should print second.\n"
	.align
_StringConst_113:
	.word	20			! length
	.ascii	"The PID of the child"
	.align
_StringConst_112:
	.word	25			! length
	.ascii	"This should print first.\n"
	.align
_StringConst_111:
	.word	54			! length
	.ascii	"*****  ERROR: Return code from second call to Sys_Join"
	.align
_StringConst_110:
	.word	16			! length
	.ascii	"Wrong error code"
	.align
_StringConst_109:
	.word	10			! length
	.ascii	"Okay (2).\n"
	.align
_StringConst_108:
	.word	53			! length
	.ascii	"*****  ERROR: Return code from first call to Sys_Join"
	.align
_StringConst_107:
	.word	10			! length
	.ascii	"Okay (1).\n"
	.align
_StringConst_106:
	.word	25			! length
	.ascii	"This should print first.\n"
	.align
_StringConst_105:
	.word	20			! length
	.ascii	"The PID of the child"
	.align
_StringConst_104:
	.word	26			! length
	.ascii	"This should print second.\n"
	.align
_StringConst_103:
	.word	46			! length
	.ascii	"   second call to Sys_Join should return -1.\n\n"
	.align
_StringConst_102:
	.word	64			! length
	.ascii	"   The first call to Sys_Join should return its error code; the\n"
	.align
_StringConst_101:
	.word	63			! length
	.ascii	"   This test forks a child process and then waits on it twice.\n"
	.align
_StringConst_100:
	.word	21			! length
	.ascii	"\nJoinTest4 running.\n\n"
	.align
_StringConst_99:
	.word	6			! length
	.ascii	"Done.\n"
	.align
_StringConst_98:
	.word	16			! length
	.ascii	"Wrong error code"
	.align
_StringConst_97:
	.word	25			! length
	.ascii	"Return code from 5th call"
	.align
_StringConst_96:
	.word	16			! length
	.ascii	"Wrong error code"
	.align
_StringConst_95:
	.word	25			! length
	.ascii	"Return code from 4th call"
	.align
_StringConst_94:
	.word	16			! length
	.ascii	"Wrong error code"
	.align
_StringConst_93:
	.word	25			! length
	.ascii	"Return code from 3rd call"
	.align
_StringConst_92:
	.word	16			! length
	.ascii	"Wrong error code"
	.align
_StringConst_91:
	.word	25			! length
	.ascii	"Return code from 2nd call"
	.align
_StringConst_90:
	.word	16			! length
	.ascii	"Wrong error code"
	.align
_StringConst_89:
	.word	25			! length
	.ascii	"Return code from 1st call"
	.align
_StringConst_88:
	.word	61			! length
	.ascii	"In each case, it prints the return code, which should be -1.\n"
	.align
_StringConst_87:
	.word	82			! length
	.ascii	"This test involves 5 illegal calls to Sys_Join, waiting on non-existent children.\n"
	.align
_StringConst_86:
	.word	21			! length
	.ascii	"\nJoinTest3 running.\n\n"
	.align
_StringConst_85:
	.word	6			! length
	.ascii	"Done.\n"
	.align
_StringConst_84:
	.word	44			! length
	.ascii	"*****  ERROR: 200 != Sys_Join (pid2)  *****\n"
	.align
_StringConst_83:
	.word	44			! length
	.ascii	"*****  ERROR: 300 != Sys_Join (pid3)  *****\n"
	.align
_StringConst_82:
	.word	44			! length
	.ascii	"*****  ERROR: 100 != Sys_Join (pid1)  *****\n"
	.align
_StringConst_81:
	.word	44			! length
	.ascii	"*****  ERROR: 400 != Sys_Join (pid4)  *****\n"
	.align
_StringConst_80:
	.word	44			! length
	.ascii	"*****  ERROR: 500 != Sys_Join (pid5)  *****\n"
	.align
_StringConst_79:
	.word	47			! length
	.ascii	"Waiting for children in order 5, 4, 1, 3, 2...\n"
	.align
_StringConst_78:
	.word	19			! length
	.ascii	"Child 5 running...\n"
	.align
_StringConst_77:
	.word	19			! length
	.ascii	"Child 4 running...\n"
	.align
_StringConst_76:
	.word	19			! length
	.ascii	"Child 3 running...\n"
	.align
_StringConst_75:
	.word	19			! length
	.ascii	"Child 2 running...\n"
	.align
_StringConst_74:
	.word	19			! length
	.ascii	"Child 1 running...\n"
	.align
_StringConst_73:
	.word	28			! length
	.ascii	"Creating 5 more children...\n"
	.align
_StringConst_72:
	.word	44			! length
	.ascii	"*****  ERROR: 500 != Sys_Join (pid5)  *****\n"
	.align
_StringConst_71:
	.word	44			! length
	.ascii	"*****  ERROR: 400 != Sys_Join (pid4)  *****\n"
	.align
_StringConst_70:
	.word	44			! length
	.ascii	"*****  ERROR: 300 != Sys_Join (pid3)  *****\n"
	.align
_StringConst_69:
	.word	44			! length
	.ascii	"*****  ERROR: 200 != Sys_Join (pid2)  *****\n"
	.align
_StringConst_68:
	.word	44			! length
	.ascii	"*****  ERROR: 100 != Sys_Join (pid1)  *****\n"
	.align
_StringConst_67:
	.word	47			! length
	.ascii	"Waiting for children in order 1, 2, 3, 4, 5...\n"
	.align
_StringConst_66:
	.word	19			! length
	.ascii	"Child 5 running...\n"
	.align
_StringConst_65:
	.word	19			! length
	.ascii	"Child 4 running...\n"
	.align
_StringConst_64:
	.word	19			! length
	.ascii	"Child 3 running...\n"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"Child 2 running...\n"
	.align
_StringConst_62:
	.word	19			! length
	.ascii	"Child 1 running...\n"
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"Creating 5 children...\n"
	.align
_StringConst_60:
	.word	51			! length
	.ascii	"This test involves calls to Fork, Yield, and Exit.\n"
	.align
_StringConst_59:
	.word	22			! length
	.ascii	"\nJoinTest 2 running.\n\n"
	.align
_StringConst_58:
	.word	6			! length
	.ascii	"Done.\n"
	.align
_StringConst_57:
	.word	8			! length
	.ascii	"  *****\n"
	.align
_StringConst_56:
	.word	55			! length
	.ascii	"*****  ERROR: Exit passes 0x87654321, but join returns "
	.align
_StringConst_55:
	.word	30			! length
	.ascii	"This line should print first.\n"
	.align
_StringConst_54:
	.word	31			! length
	.ascii	"This line should print second.\n"
	.align
_StringConst_53:
	.word	23			! length
	.ascii	"Running second test...\n"
	.align
_StringConst_52:
	.word	6			! length
	.ascii	"Done.\n"
	.align
_StringConst_51:
	.word	8			! length
	.ascii	"  *****\n"
	.align
_StringConst_50:
	.word	55			! length
	.ascii	"*****  ERROR: Exit passes 0x12345678, but join returns "
	.align
_StringConst_49:
	.word	31			! length
	.ascii	"This line should print second.\n"
	.align
_StringConst_48:
	.word	30			! length
	.ascii	"This line should print first.\n"
	.align
_StringConst_47:
	.word	22			! length
	.ascii	"Running first test...\n"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"This test involves calls to Fork, Yield, and Exit.\n"
	.align
_StringConst_45:
	.word	22			! length
	.ascii	"\nJoinTest 1 running.\n\n"
	.align
_StringConst_44:
	.word	27			! length
	.ascii	"                         Z\n"
	.align
_StringConst_43:
	.word	26			! length
	.ascii	"                        Y\n"
	.align
_StringConst_42:
	.word	25			! length
	.ascii	"                       X\n"
	.align
_StringConst_41:
	.word	24			! length
	.ascii	"                      W\n"
	.align
_StringConst_40:
	.word	23			! length
	.ascii	"                     V\n"
	.align
_StringConst_39:
	.word	22			! length
	.ascii	"                    U\n"
	.align
_StringConst_38:
	.word	21			! length
	.ascii	"                   T\n"
	.align
_StringConst_37:
	.word	20			! length
	.ascii	"                  S\n"
	.align
_StringConst_36:
	.word	19			! length
	.ascii	"                 R\n"
	.align
_StringConst_35:
	.word	18			! length
	.ascii	"                Q\n"
	.align
_StringConst_34:
	.word	17			! length
	.ascii	"               P\n"
	.align
_StringConst_33:
	.word	16			! length
	.ascii	"              O\n"
	.align
_StringConst_32:
	.word	15			! length
	.ascii	"             N\n"
	.align
_StringConst_31:
	.word	14			! length
	.ascii	"            M\n"
	.align
_StringConst_30:
	.word	13			! length
	.ascii	"           L\n"
	.align
_StringConst_29:
	.word	12			! length
	.ascii	"          K\n"
	.align
_StringConst_28:
	.word	11			! length
	.ascii	"         J\n"
	.align
_StringConst_27:
	.word	10			! length
	.ascii	"        I\n"
	.align
_StringConst_26:
	.word	9			! length
	.ascii	"       H\n"
	.align
_StringConst_25:
	.word	8			! length
	.ascii	"      G\n"
	.align
_StringConst_24:
	.word	7			! length
	.ascii	"     F\n"
	.align
_StringConst_23:
	.word	6			! length
	.ascii	"    E\n"
	.align
_StringConst_22:
	.word	5			! length
	.ascii	"   D\n"
	.align
_StringConst_21:
	.word	4			! length
	.ascii	"  C\n"
	.align
_StringConst_20:
	.word	3			! length
	.ascii	" B\n"
	.align
_StringConst_19:
	.word	2			! length
	.ascii	"A\n"
	.align
_StringConst_18:
	.word	82			! length
	.ascii	"There should be 26 columns (A-Z) printed.  Each letter should be printed 5 times.\n"
	.align
_StringConst_17:
	.word	51			! length
	.ascii	"This test involves calls to Fork, Yield, and Exit.\n"
	.align
_StringConst_16:
	.word	20			! length
	.ascii	"\nForkTest running.\n\n"
	.align
_StringConst_15:
	.word	35			! length
	.ascii	"Writing OS kernel code is a blast!\n"
	.align
_StringConst_14:
	.word	28			! length
	.ascii	"Designing compilers is fun!\n"
	.align
_StringConst_13:
	.word	116			! length
	.ascii	"\nRUN TWO: You should see the same 20 messages, but the order should be different, due to the presence of \'Yield\'s.\n\n"
	.align
_StringConst_12:
	.word	35			! length
	.ascii	"Writing OS kernel code is a blast!\n"
	.align
_StringConst_11:
	.word	28			! length
	.ascii	"Designing compilers is fun!\n"
	.align
_StringConst_10:
	.word	70			! length
	.ascii	"RUN ONE: You should see 10 \'compiler\' messages and 10 \'OS\' messages.\n\n"
	.align
_StringConst_9:
	.word	52			! length
	.ascii	"This test involves calls to Fork, Yield, and Exit.\n\n"
	.align
_StringConst_8:
	.word	21			! length
	.ascii	"\nYieldTest running.\n\n"
	.align
_StringConst_7:
	.word	16			! length
	.ascii	"I am the parent\n"
	.align
_StringConst_6:
	.word	70			! length
	.ascii	"*****  Error: Fork returns 1, implying the parent had pid == 0  *****\n"
	.align
_StringConst_5:
	.word	15			! length
	.ascii	"I am the child\n"
	.align
_StringConst_4:
	.word	25			! length
	.ascii	"\nBasicForkTest running.\n\n"
	.align
_StringConst_3:
	.word	52			! length
	.ascii	"*****  Error: Should not return from Sys_Exit  *****"
	.align
_StringConst_2:
	.word	90			! length
	.ascii	"About to terminate the only process; should cause the OS to stop on a \'wait\' instruction.\n"
	.align
_StringConst_1:
	.word	23			! length
	.ascii	"\nSysExitTest running.\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x8369d27c,r3		! .  hashVal = -2090216836
	call	_CheckVersion_P_TestProgram3_	! .
	cmp	r1,0			! .
	be	_Label_249		! .
	ret				! .
_Label_249:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"TestProgram3.k\0"
_packageName:
	.ascii	"TestProgram3\0"
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
_CheckVersion_P_TestProgram3_:
	.export	_CheckVersion_P_TestProgram3_
	set	0x8369d27c,r4		! myHashVal = -2090216836
	cmp	r3,r4
	be	_Label_250
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
_Label_250:
	mov	0,r1
! Make sure _P_Syscall_ has hash value 0x432b40fa (decimal 1126908154)
	set	_packageName,r2
	set	0x432b40fa,r3
	call	_CheckVersion_P_Syscall_
	.import	_CheckVersion_P_Syscall_
	cmp	r1,0
	bne	_Label_251
! Make sure _P_UserSystem_ has hash value 0x339c138e (decimal 865866638)
	set	_packageName,r2
	set	0x339c138e,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_251
_Label_251:
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
	mov	1,r1
_Label_1147:
	push	r0
	sub	r1,1,r1
	bne	_Label_1147
	mov	13,r13		! source line 13
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	40,r13		! source line 40
	mov	"\0\0CA",r10
	call	_function_233_StatTest
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	42,r13		! source line 42
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! RETURN STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_252
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_252:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION SysExitTest  ===============
! 
_function_248_SysExitTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_248_SysExitTest,r1
	push	r1
	mov	4,r1
_Label_1148:
	push	r0
	sub	r1,1,r1
	bne	_Label_1148
	mov	47,r13		! source line 47
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_253 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	51,r13		! source line 51
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_254 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_254  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	52,r13		! source line 52
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	53,r13		! source line 53
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! CALL STATEMENT...
!   _temp_255 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_255  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_248_SysExitTest:
	.word	_sourceFileName
	.word	_Label_256
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_257
	.word	-12
	.word	4
	.word	_Label_258
	.word	-16
	.word	4
	.word	_Label_259
	.word	-20
	.word	4
	.word	0
_Label_256:
	.ascii	"SysExitTest\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
! 
! ===============  FUNCTION BasicForkTest  ===============
! 
_function_247_BasicForkTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_247_BasicForkTest,r1
	push	r1
	mov	6,r1
_Label_1149:
	push	r0
	sub	r1,1,r1
	bne	_Label_1149
	mov	59,r13		! source line 59
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_260 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   Call the function
	mov	66,r13		! source line 66
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_261
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_261
	jmp	_Label_262
_Label_261:
! THEN...
	mov	68,r13		! source line 68
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_263 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	69,r13		! source line 69
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_264
_Label_262:
! ELSE...
	mov	70,r13		! source line 70
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if pid != 1 then goto _Label_266		(int)
	load	[r14+-28],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_266
!	_Label_265	jmp	_Label_265
_Label_265:
! THEN...
	mov	73,r13		! source line 73
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_267 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_268
_Label_266:
! ELSE...
	mov	76,r13		! source line 76
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_269 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	76,r13		! source line 76
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	77,r13		! source line 77
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_268:
! END IF...
_Label_264:
! RETURN STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_247_BasicForkTest:
	.word	_sourceFileName
	.word	_Label_270
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_271
	.word	-12
	.word	4
	.word	_Label_272
	.word	-16
	.word	4
	.word	_Label_273
	.word	-20
	.word	4
	.word	_Label_274
	.word	-24
	.word	4
	.word	_Label_275
	.word	-28
	.word	4
	.word	0
_Label_270:
	.ascii	"BasicForkTest\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_275:
	.byte	'I'
	.ascii	"pid\0"
	.align
! 
! ===============  FUNCTION YieldTest  ===============
! 
_function_246_YieldTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_246_YieldTest,r1
	push	r1
	mov	24,r1
_Label_1150:
	push	r0
	sub	r1,1,r1
	bne	_Label_1150
	mov	83,r13		! source line 83
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_276 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_277 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_278 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0AS",r10
!   Call the function
	mov	95,r13		! source line 95
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_279
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_279
	jmp	_Label_280
_Label_279:
! THEN...
	mov	98,r13		! source line 98
	mov	"\0\0TN",r10
! FOR STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_285 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_286 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_285  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-96]
_Label_281:
!   Perform the FOR-LOOP termination test
!   if i > _temp_286 then goto _Label_284		
	load	[r14+-96],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_284
_Label_282:
	mov	98,r13		! source line 98
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_287 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	99,r13		! source line 99
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_283:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_281
! END FOR
_Label_284:
	jmp	_Label_288
_Label_280:
! ELSE...
	mov	103,r13		! source line 103
	mov	"\0\0EL",r10
! FOR STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_293 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_294 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_293  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-96]
_Label_289:
!   Perform the FOR-LOOP termination test
!   if i > _temp_294 then goto _Label_292		
	load	[r14+-96],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_292
_Label_290:
	mov	103,r13		! source line 103
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_295 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_291:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_289
! END FOR
_Label_292:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_288:
! CALL STATEMENT...
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_296 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_297
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_297
	jmp	_Label_298
_Label_297:
! THEN...
	mov	117,r13		! source line 117
	mov	"\0\0TN",r10
! FOR STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_303 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_304 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_303  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-96]
_Label_299:
!   Perform the FOR-LOOP termination test
!   if i > _temp_304 then goto _Label_302		
	load	[r14+-96],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_302
_Label_300:
	mov	117,r13		! source line 117
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_309 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_310 = i		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_309  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-100]
_Label_305:
!   Perform the FOR-LOOP termination test
!   if j > _temp_310 then goto _Label_308		
	load	[r14+-100],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_308
_Label_306:
	mov	118,r13		! source line 118
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	119,r13		! source line 119
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_307:
!   j = j + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_305
! END FOR
_Label_308:
! CALL STATEMENT...
!   _temp_311 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	122,r13		! source line 122
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_301:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_299
! END FOR
_Label_302:
	jmp	_Label_312
_Label_298:
! ELSE...
	mov	126,r13		! source line 126
	mov	"\0\0EL",r10
! FOR STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_317 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_318 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_317  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-96]
_Label_313:
!   Perform the FOR-LOOP termination test
!   if i > _temp_318 then goto _Label_316		
	load	[r14+-96],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_316
_Label_314:
	mov	126,r13		! source line 126
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_323 = i		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_324 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_323  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-100]
_Label_319:
!   Perform the FOR-LOOP termination test
!   if j > _temp_324 then goto _Label_322		
	load	[r14+-100],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_322
_Label_320:
	mov	127,r13		! source line 127
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_321:
!   j = j + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_319
! END FOR
_Label_322:
! CALL STATEMENT...
!   _temp_325 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_315:
!   i = i + 1
	load	[r14+-96],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
	jmp	_Label_313
! END FOR
_Label_316:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	132,r13		! source line 132
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_312:
! RETURN STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_246_YieldTest:
	.word	_sourceFileName
	.word	_Label_326
	.word	0		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_327
	.word	-12
	.word	4
	.word	_Label_328
	.word	-16
	.word	4
	.word	_Label_329
	.word	-20
	.word	4
	.word	_Label_330
	.word	-24
	.word	4
	.word	_Label_331
	.word	-28
	.word	4
	.word	_Label_332
	.word	-32
	.word	4
	.word	_Label_333
	.word	-36
	.word	4
	.word	_Label_334
	.word	-40
	.word	4
	.word	_Label_335
	.word	-44
	.word	4
	.word	_Label_336
	.word	-48
	.word	4
	.word	_Label_337
	.word	-52
	.word	4
	.word	_Label_338
	.word	-56
	.word	4
	.word	_Label_339
	.word	-60
	.word	4
	.word	_Label_340
	.word	-64
	.word	4
	.word	_Label_341
	.word	-68
	.word	4
	.word	_Label_342
	.word	-72
	.word	4
	.word	_Label_343
	.word	-76
	.word	4
	.word	_Label_344
	.word	-80
	.word	4
	.word	_Label_345
	.word	-84
	.word	4
	.word	_Label_346
	.word	-88
	.word	4
	.word	_Label_347
	.word	-92
	.word	4
	.word	_Label_348
	.word	-96
	.word	4
	.word	_Label_349
	.word	-100
	.word	4
	.word	0
_Label_326:
	.ascii	"YieldTest\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_347:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_348:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_349:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  FUNCTION ForkTest  ===============
! 
_function_245_ForkTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_245_ForkTest,r1
	push	r1
	mov	30,r1
_Label_1151:
	push	r0
	sub	r1,1,r1
	bne	_Label_1151
	mov	139,r13		! source line 139
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_350 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_351 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_352 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_353 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_354 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_355 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_356 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	149,r13		! source line 149
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_357 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_358 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_359 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_360 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	153,r13		! source line 153
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_361 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_362 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	155,r13		! source line 155
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_363 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	156,r13		! source line 156
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_364 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	157,r13		! source line 157
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_365 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	158,r13		! source line 158
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_366 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	159,r13		! source line 159
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_367 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	160,r13		! source line 160
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_368 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	161,r13		! source line 161
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_369 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	162,r13		! source line 162
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_370 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	163,r13		! source line 163
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_371 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_372 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_373 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_374 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_375 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_376 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_377 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   _temp_378 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CA",r10
	call	_function_244_ExecuteAFork
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! RETURN STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_245_ForkTest:
	.word	_sourceFileName
	.word	_Label_379
	.word	0		! total size of parameters
	.word	120		! frame size = 120
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
	.word	_Label_392
	.word	-60
	.word	4
	.word	_Label_393
	.word	-64
	.word	4
	.word	_Label_394
	.word	-68
	.word	4
	.word	_Label_395
	.word	-72
	.word	4
	.word	_Label_396
	.word	-76
	.word	4
	.word	_Label_397
	.word	-80
	.word	4
	.word	_Label_398
	.word	-84
	.word	4
	.word	_Label_399
	.word	-88
	.word	4
	.word	_Label_400
	.word	-92
	.word	4
	.word	_Label_401
	.word	-96
	.word	4
	.word	_Label_402
	.word	-100
	.word	4
	.word	_Label_403
	.word	-104
	.word	4
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
	.word	-120
	.word	4
	.word	_Label_408
	.word	-124
	.word	4
	.word	0
_Label_379:
	.ascii	"ForkTest\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
! 
! ===============  FUNCTION ExecuteAFork  ===============
! 
_function_244_ExecuteAFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_244_ExecuteAFork,r1
	push	r1
	mov	8,r1
_Label_1152:
	push	r0
	sub	r1,1,r1
	bne	_Label_1152
	mov	177,r13		! source line 177
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0AS",r10
!   Call the function
	mov	189,r13		! source line 189
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_409
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_409
	jmp	_Label_410
_Label_409:
! THEN...
	mov	192,r13		! source line 192
	mov	"\0\0TN",r10
! FOR STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_415 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_416 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_415  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-32]
_Label_411:
!   Perform the FOR-LOOP termination test
!   if i > _temp_416 then goto _Label_414		
	load	[r14+-32],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_414
_Label_412:
	mov	192,r13		! source line 192
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	193,r13		! source line 193
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_421 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-16]
!   Calculate and save the FOR-LOOP ending value
!   _temp_422 = i * 50		(int)
	load	[r14+-32],r1
	mov	50,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_421  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+-36]
_Label_417:
!   Perform the FOR-LOOP termination test
!   if j > _temp_422 then goto _Label_420		
	load	[r14+-36],r1
	load	[r14+-12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_420
_Label_418:
	mov	194,r13		! source line 194
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_419:
!   j = j + 1
	load	[r14+-36],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
	jmp	_Label_417
! END FOR
_Label_420:
!   Increment the FOR-LOOP index variable and jump back
_Label_413:
!   i = i + 1
	load	[r14+-32],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
	jmp	_Label_411
! END FOR
_Label_414:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_423
_Label_410:
! ELSE...
	mov	202,r13		! source line 202
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   Call the function
	mov	202,r13		! source line 202
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_425
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_425
!	_Label_424	jmp	_Label_424
_Label_424:
! THEN...
	mov	204,r13		! source line 204
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_425:
! END IF...
_Label_423:
! RETURN STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_244_ExecuteAFork:
	.word	_sourceFileName
	.word	_Label_426
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_427
	.word	8
	.word	4
	.word	_Label_428
	.word	-12
	.word	4
	.word	_Label_429
	.word	-16
	.word	4
	.word	_Label_430
	.word	-20
	.word	4
	.word	_Label_431
	.word	-24
	.word	4
	.word	_Label_432
	.word	-28
	.word	4
	.word	_Label_433
	.word	-32
	.word	4
	.word	_Label_434
	.word	-36
	.word	4
	.word	0
_Label_426:
	.ascii	"ExecuteAFork\0"
	.align
_Label_427:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_432:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_433:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_434:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  FUNCTION JoinTest1  ===============
! 
_function_243_JoinTest1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_243_JoinTest1,r1
	push	r1
	mov	21,r1
_Label_1153:
	push	r0
	sub	r1,1,r1
	bne	_Label_1153
	mov	211,r13		! source line 211
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_435 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_436 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_437 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_438
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_438
	jmp	_Label_439
_Label_438:
! THEN...
	mov	227,r13		! source line 227
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_440 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=305419896  sizeInBytes=4
	set	305419896,r1
	store	r1,[r15+0]
!   Call the function
	mov	228,r13		! source line 228
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_441
_Label_439:
! ELSE...
	mov	232,r13		! source line 232
	mov	"\0\0EL",r10
! FOR STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_446 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_447 = 100		(4 bytes)
	mov	100,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_446  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-88]
_Label_442:
!   Perform the FOR-LOOP termination test
!   if i > _temp_447 then goto _Label_445		
	load	[r14+-88],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_445
_Label_443:
	mov	232,r13		! source line 232
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	233,r13		! source line 233
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_444:
!   i = i + 1
	load	[r14+-88],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
	jmp	_Label_442
! END FOR
_Label_445:
! CALL STATEMENT...
!   _temp_448 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_448  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	235,r13		! source line 235
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	236,r13		! source line 236
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0IF",r10
!   if i == 305419896 then goto _Label_450		(int)
	load	[r14+-88],r1
	set	305419896,r2
	cmp	r1,r2
	be	_Label_450
!	_Label_449	jmp	_Label_449
_Label_449:
! THEN...
	mov	238,r13		! source line 238
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_451 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_452 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_453
_Label_450:
! ELSE...
	mov	242,r13		! source line 242
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_454 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_453:
! END IF...
_Label_441:
! CALL STATEMENT...
!   _temp_455 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_455  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_456
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_456
	jmp	_Label_457
_Label_456:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! FOR STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_462 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_463 = 100		(4 bytes)
	mov	100,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_462  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-88]
_Label_458:
!   Perform the FOR-LOOP termination test
!   if i > _temp_463 then goto _Label_461		
	load	[r14+-88],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_461
_Label_459:
	mov	250,r13		! source line 250
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	251,r13		! source line 251
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_460:
!   i = i + 1
	load	[r14+-88],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
	jmp	_Label_458
! END FOR
_Label_461:
! CALL STATEMENT...
!   _temp_464 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_464  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	253,r13		! source line 253
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-2023406815  sizeInBytes=4
	set	-2023406815,r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_465
_Label_457:
! ELSE...
	mov	257,r13		! source line 257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_466 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	258,r13		! source line 258
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0IF",r10
!   if i == -2023406815 then goto _Label_468		(int)
	load	[r14+-88],r1
	set	-2023406815,r2
	cmp	r1,r2
	be	_Label_468
!	_Label_467	jmp	_Label_467
_Label_467:
! THEN...
	mov	260,r13		! source line 260
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_469 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_469  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	260,r13		! source line 260
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	261,r13		! source line 261
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_470 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_470  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_471
_Label_468:
! ELSE...
	mov	264,r13		! source line 264
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_472 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_471:
! END IF...
_Label_465:
! RETURN STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_243_JoinTest1:
	.word	_sourceFileName
	.word	_Label_473
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_474
	.word	-12
	.word	4
	.word	_Label_475
	.word	-16
	.word	4
	.word	_Label_476
	.word	-20
	.word	4
	.word	_Label_477
	.word	-24
	.word	4
	.word	_Label_478
	.word	-28
	.word	4
	.word	_Label_479
	.word	-32
	.word	4
	.word	_Label_480
	.word	-36
	.word	4
	.word	_Label_481
	.word	-40
	.word	4
	.word	_Label_482
	.word	-44
	.word	4
	.word	_Label_483
	.word	-48
	.word	4
	.word	_Label_484
	.word	-52
	.word	4
	.word	_Label_485
	.word	-56
	.word	4
	.word	_Label_486
	.word	-60
	.word	4
	.word	_Label_487
	.word	-64
	.word	4
	.word	_Label_488
	.word	-68
	.word	4
	.word	_Label_489
	.word	-72
	.word	4
	.word	_Label_490
	.word	-76
	.word	4
	.word	_Label_491
	.word	-80
	.word	4
	.word	_Label_492
	.word	-84
	.word	4
	.word	_Label_493
	.word	-88
	.word	4
	.word	0
_Label_473:
	.ascii	"JoinTest1\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_492:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_493:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION JoinTest2  ===============
! 
_function_242_JoinTest2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_242_JoinTest2,r1
	push	r1
	mov	43,r1
_Label_1154:
	push	r0
	sub	r1,1,r1
	bne	_Label_1154
	mov	271,r13		! source line 271
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_494 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_495 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	279,r13		! source line 279
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_496 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0IF",r10
!   if intIsZero (pid1) then goto _Label_497
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_497
	jmp	_Label_498
_Label_497:
! THEN...
	mov	285,r13		! source line 285
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_499 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	285,r13		! source line 285
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	286,r13		! source line 286
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+0]
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_498:
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! IF STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0IF",r10
!   if intIsZero (pid2) then goto _Label_500
	load	[r14+-164],r1
	cmp	r1,r0
	be	_Label_500
	jmp	_Label_501
_Label_500:
! THEN...
	mov	293,r13		! source line 293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_502 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=200  sizeInBytes=4
	mov	200,r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_501:
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid3  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0IF",r10
!   if intIsZero (pid3) then goto _Label_503
	load	[r14+-168],r1
	cmp	r1,r0
	be	_Label_503
	jmp	_Label_504
_Label_503:
! THEN...
	mov	301,r13		! source line 301
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_505 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=300  sizeInBytes=4
	mov	300,r1
	store	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_504:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid4  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-172]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if intIsZero (pid4) then goto _Label_506
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_506
	jmp	_Label_507
_Label_506:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_508 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	309,r13		! source line 309
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	310,r13		! source line 310
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=400  sizeInBytes=4
	mov	400,r1
	store	r1,[r15+0]
!   Call the function
	mov	311,r13		! source line 311
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_507:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid5  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! IF STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0IF",r10
!   if intIsZero (pid5) then goto _Label_509
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_509
	jmp	_Label_510
_Label_509:
! THEN...
	mov	317,r13		! source line 317
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_511 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_511  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	317,r13		! source line 317
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=500  sizeInBytes=4
	mov	500,r1
	store	r1,[r15+0]
!   Call the function
	mov	318,r13		! source line 318
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_510:
! CALL STATEMENT...
!   _temp_512 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	321,r13		! source line 321
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=pid1  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	323,r13		! source line 323
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_515  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
!   if 100 == _temp_515 then goto _Label_514		(int)
	mov	100,r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_514
!	_Label_513	jmp	_Label_513
_Label_513:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_516 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	324,r13		! source line 324
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_514:
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=pid2  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	327,r13		! source line 327
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_519  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
!   if 200 == _temp_519 then goto _Label_518		(int)
	mov	200,r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_518
!	_Label_517	jmp	_Label_517
_Label_517:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_520 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	328,r13		! source line 328
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_518:
! IF STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=pid3  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	331,r13		! source line 331
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_523  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   if 300 == _temp_523 then goto _Label_522		(int)
	mov	300,r1
	load	[r14+-104],r2
	cmp	r1,r2
	be	_Label_522
!	_Label_521	jmp	_Label_521
_Label_521:
! THEN...
	mov	332,r13		! source line 332
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_524 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	332,r13		! source line 332
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_522:
! IF STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=pid4  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
!   if 400 == _temp_527 then goto _Label_526		(int)
	mov	400,r1
	load	[r14+-96],r2
	cmp	r1,r2
	be	_Label_526
!	_Label_525	jmp	_Label_525
_Label_525:
! THEN...
	mov	336,r13		! source line 336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_528 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_528  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_526:
! IF STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=pid5  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_531  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
!   if 500 == _temp_531 then goto _Label_530		(int)
	mov	500,r1
	load	[r14+-88],r2
	cmp	r1,r2
	be	_Label_530
!	_Label_529	jmp	_Label_529
_Label_529:
! THEN...
	mov	340,r13		! source line 340
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_532 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	340,r13		! source line 340
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_530:
! CALL STATEMENT...
!   _temp_533 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	343,r13		! source line 343
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   Call the function
	mov	345,r13		! source line 345
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0IF",r10
!   if intIsZero (pid1) then goto _Label_534
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_534
	jmp	_Label_535
_Label_534:
! THEN...
	mov	348,r13		! source line 348
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_536 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	349,r13		! source line 349
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+0]
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_535:
! ASSIGNMENT STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0AS",r10
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! IF STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0IF",r10
!   if intIsZero (pid2) then goto _Label_537
	load	[r14+-164],r1
	cmp	r1,r0
	be	_Label_537
	jmp	_Label_538
_Label_537:
! THEN...
	mov	356,r13		! source line 356
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_539 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_539  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=200  sizeInBytes=4
	mov	200,r1
	store	r1,[r15+0]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_538:
! ASSIGNMENT STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0AS",r10
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid3  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0IF",r10
!   if intIsZero (pid3) then goto _Label_540
	load	[r14+-168],r1
	cmp	r1,r0
	be	_Label_540
	jmp	_Label_541
_Label_540:
! THEN...
	mov	364,r13		! source line 364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_542 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_542  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	364,r13		! source line 364
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	365,r13		! source line 365
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=300  sizeInBytes=4
	mov	300,r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_541:
! ASSIGNMENT STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0AS",r10
!   Call the function
	mov	369,r13		! source line 369
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid4  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-172]
! IF STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0IF",r10
!   if intIsZero (pid4) then goto _Label_543
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_543
	jmp	_Label_544
_Label_543:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_545 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_545  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	372,r13		! source line 372
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	373,r13		! source line 373
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=400  sizeInBytes=4
	mov	400,r1
	store	r1,[r15+0]
!   Call the function
	mov	374,r13		! source line 374
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_544:
! ASSIGNMENT STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0AS",r10
!   Call the function
	mov	377,r13		! source line 377
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid5  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! IF STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0IF",r10
!   if intIsZero (pid5) then goto _Label_546
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_546
	jmp	_Label_547
_Label_546:
! THEN...
	mov	380,r13		! source line 380
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_548 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_548  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	380,r13		! source line 380
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=500  sizeInBytes=4
	mov	500,r1
	store	r1,[r15+0]
!   Call the function
	mov	381,r13		! source line 381
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_547:
! CALL STATEMENT...
!   _temp_549 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_549  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	384,r13		! source line 384
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	386,r13		! source line 386
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=pid5  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	386,r13		! source line 386
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   if 500 == _temp_552 then goto _Label_551		(int)
	mov	500,r1
	load	[r14+-52],r2
	cmp	r1,r2
	be	_Label_551
!	_Label_550	jmp	_Label_550
_Label_550:
! THEN...
	mov	387,r13		! source line 387
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_553 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	387,r13		! source line 387
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_551:
! IF STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=pid4  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	390,r13		! source line 390
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   if 400 == _temp_556 then goto _Label_555		(int)
	mov	400,r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_555
!	_Label_554	jmp	_Label_554
_Label_554:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_557 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	391,r13		! source line 391
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_555:
! IF STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=pid1  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   if 100 == _temp_560 then goto _Label_559		(int)
	mov	100,r1
	load	[r14+-36],r2
	cmp	r1,r2
	be	_Label_559
!	_Label_558	jmp	_Label_558
_Label_558:
! THEN...
	mov	395,r13		! source line 395
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_561 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_559:
! IF STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=pid3  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_564  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if 300 == _temp_564 then goto _Label_563		(int)
	mov	300,r1
	load	[r14+-28],r2
	cmp	r1,r2
	be	_Label_563
!	_Label_562	jmp	_Label_562
_Label_562:
! THEN...
	mov	399,r13		! source line 399
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_565 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_563:
! IF STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=pid2  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_568  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if 200 == _temp_568 then goto _Label_567		(int)
	mov	200,r1
	load	[r14+-20],r2
	cmp	r1,r2
	be	_Label_567
!	_Label_566	jmp	_Label_566
_Label_566:
! THEN...
	mov	403,r13		! source line 403
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_569 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_567:
! CALL STATEMENT...
!   _temp_570 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0RE",r10
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_242_JoinTest2:
	.word	_sourceFileName
	.word	_Label_571
	.word	0		! total size of parameters
	.word	172		! frame size = 172
	.word	_Label_572
	.word	-12
	.word	4
	.word	_Label_573
	.word	-16
	.word	4
	.word	_Label_574
	.word	-20
	.word	4
	.word	_Label_575
	.word	-24
	.word	4
	.word	_Label_576
	.word	-28
	.word	4
	.word	_Label_577
	.word	-32
	.word	4
	.word	_Label_578
	.word	-36
	.word	4
	.word	_Label_579
	.word	-40
	.word	4
	.word	_Label_580
	.word	-44
	.word	4
	.word	_Label_581
	.word	-48
	.word	4
	.word	_Label_582
	.word	-52
	.word	4
	.word	_Label_583
	.word	-56
	.word	4
	.word	_Label_584
	.word	-60
	.word	4
	.word	_Label_585
	.word	-64
	.word	4
	.word	_Label_586
	.word	-68
	.word	4
	.word	_Label_587
	.word	-72
	.word	4
	.word	_Label_588
	.word	-76
	.word	4
	.word	_Label_589
	.word	-80
	.word	4
	.word	_Label_590
	.word	-84
	.word	4
	.word	_Label_591
	.word	-88
	.word	4
	.word	_Label_592
	.word	-92
	.word	4
	.word	_Label_593
	.word	-96
	.word	4
	.word	_Label_594
	.word	-100
	.word	4
	.word	_Label_595
	.word	-104
	.word	4
	.word	_Label_596
	.word	-108
	.word	4
	.word	_Label_597
	.word	-112
	.word	4
	.word	_Label_598
	.word	-116
	.word	4
	.word	_Label_599
	.word	-120
	.word	4
	.word	_Label_600
	.word	-124
	.word	4
	.word	_Label_601
	.word	-128
	.word	4
	.word	_Label_602
	.word	-132
	.word	4
	.word	_Label_603
	.word	-136
	.word	4
	.word	_Label_604
	.word	-140
	.word	4
	.word	_Label_605
	.word	-144
	.word	4
	.word	_Label_606
	.word	-148
	.word	4
	.word	_Label_607
	.word	-152
	.word	4
	.word	_Label_608
	.word	-156
	.word	4
	.word	_Label_609
	.word	-160
	.word	4
	.word	_Label_610
	.word	-164
	.word	4
	.word	_Label_611
	.word	-168
	.word	4
	.word	_Label_612
	.word	-172
	.word	4
	.word	_Label_613
	.word	-176
	.word	4
	.word	0
_Label_571:
	.ascii	"JoinTest2\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_609:
	.byte	'I'
	.ascii	"pid1\0"
	.align
_Label_610:
	.byte	'I'
	.ascii	"pid2\0"
	.align
_Label_611:
	.byte	'I'
	.ascii	"pid3\0"
	.align
_Label_612:
	.byte	'I'
	.ascii	"pid4\0"
	.align
_Label_613:
	.byte	'I'
	.ascii	"pid5\0"
	.align
! 
! ===============  FUNCTION JoinTest3  ===============
! 
_function_241_JoinTest3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_241_JoinTest3,r1
	push	r1
	mov	22,r1
_Label_1155:
	push	r0
	sub	r1,1,r1
	bne	_Label_1155
	mov	412,r13		! source line 412
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_614 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_614  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_615 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_615  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	418,r13		! source line 418
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_616 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_616  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	419,r13		! source line 419
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_617 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	421,r13		! source line 421
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_618  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_617  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_618  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Call the function
	mov	421,r13		! source line 421
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0AS",r10
!   Call the function
	mov	422,r13		! source line 422
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=err  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0IF",r10
!   if err == 1 then goto _Label_620		(int)
	load	[r14+-88],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_620
!	_Label_619	jmp	_Label_619
_Label_619:
! THEN...
	mov	423,r13		! source line 423
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_621 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_621  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=err  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Call the function
	mov	423,r13		! source line 423
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_620:
! CALL STATEMENT...
!   _temp_622 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	424,r13		! source line 424
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_623  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_622  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_623  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Call the function
	mov	424,r13		! source line 424
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0AS",r10
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=err  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0IF",r10
!   if err == 1 then goto _Label_625		(int)
	load	[r14+-88],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_625
!	_Label_624	jmp	_Label_624
_Label_624:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_626 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_626  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=err  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_625:
! CALL STATEMENT...
!   _temp_627 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_628  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_627  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_628  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=err  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0IF",r10
!   if err == 1 then goto _Label_630		(int)
	load	[r14+-88],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_630
!	_Label_629	jmp	_Label_629
_Label_629:
! THEN...
	mov	429,r13		! source line 429
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_631 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_631  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=err  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_630:
! CALL STATEMENT...
!   _temp_632 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_633  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_633  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=err  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0IF",r10
!   if err == 1 then goto _Label_635		(int)
	load	[r14+-88],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_635
!	_Label_634	jmp	_Label_634
_Label_634:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_636 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_636  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=err  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_635:
! CALL STATEMENT...
!   _temp_637 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=40123  sizeInBytes=4
	set	40123,r1
	store	r1,[r15+0]
!   Call the function
	mov	433,r13		! source line 433
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_638  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_637  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_638  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	433,r13		! source line 433
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=err  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0IF",r10
!   if err == 1 then goto _Label_640		(int)
	load	[r14+-88],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_640
!	_Label_639	jmp	_Label_639
_Label_639:
! THEN...
	mov	435,r13		! source line 435
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_641 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=err  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Call the function
	mov	435,r13		! source line 435
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_640:
! CALL STATEMENT...
!   _temp_642 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_241_JoinTest3:
	.word	_sourceFileName
	.word	_Label_643
	.word	0		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_644
	.word	-12
	.word	4
	.word	_Label_645
	.word	-16
	.word	4
	.word	_Label_646
	.word	-20
	.word	4
	.word	_Label_647
	.word	-24
	.word	4
	.word	_Label_648
	.word	-28
	.word	4
	.word	_Label_649
	.word	-32
	.word	4
	.word	_Label_650
	.word	-36
	.word	4
	.word	_Label_651
	.word	-40
	.word	4
	.word	_Label_652
	.word	-44
	.word	4
	.word	_Label_653
	.word	-48
	.word	4
	.word	_Label_654
	.word	-52
	.word	4
	.word	_Label_655
	.word	-56
	.word	4
	.word	_Label_656
	.word	-60
	.word	4
	.word	_Label_657
	.word	-64
	.word	4
	.word	_Label_658
	.word	-68
	.word	4
	.word	_Label_659
	.word	-72
	.word	4
	.word	_Label_660
	.word	-76
	.word	4
	.word	_Label_661
	.word	-80
	.word	4
	.word	_Label_662
	.word	-84
	.word	4
	.word	_Label_663
	.word	-88
	.word	4
	.word	0
_Label_643:
	.ascii	"JoinTest3\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_663:
	.byte	'I'
	.ascii	"err\0"
	.align
! 
! ===============  FUNCTION JoinTest4  ===============
! 
_function_240_JoinTest4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_240_JoinTest4,r1
	push	r1
	mov	74,r1
_Label_1156:
	push	r0
	sub	r1,1,r1
	bne	_Label_1156
	mov	443,r13		! source line 443
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_664 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+0]
!   Call the function
	mov	452,r13		! source line 452
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_665 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-256]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_666 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=8  value=_temp_666  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_667 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	455,r13		! source line 455
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   Call the function
	mov	458,r13		! source line 458
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_668
	load	[r14+-264],r1
	cmp	r1,r0
	be	_Label_668
	jmp	_Label_669
_Label_668:
! THEN...
	mov	461,r13		! source line 461
	mov	"\0\0TN",r10
! FOR STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_674 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-244]
!   Calculate and save the FOR-LOOP ending value
!   _temp_675 = 100		(4 bytes)
	mov	100,r1
	store	r1,[r14+-240]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_674  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+-268]
_Label_670:
!   Perform the FOR-LOOP termination test
!   if i > _temp_675 then goto _Label_673		
	load	[r14+-268],r1
	load	[r14+-240],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_673
_Label_671:
	mov	461,r13		! source line 461
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	462,r13		! source line 462
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_672:
!   i = i + 1
	load	[r14+-268],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
	jmp	_Label_670
! END FOR
_Label_673:
! CALL STATEMENT...
!   _temp_676 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Call the function
	mov	464,r13		! source line 464
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=12345  sizeInBytes=4
	mov	12345,r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_669:
! CALL STATEMENT...
!   _temp_677 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=_temp_677  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=pid  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Call the function
	mov	467,r13		! source line 467
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_678 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Call the function
	mov	469,r13		! source line 469
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0IF",r10
!   if i != 12345 then goto _Label_680		(int)
	load	[r14+-268],r1
	mov	12345,r2
	cmp	r1,r2
	bne	_Label_680
!	_Label_679	jmp	_Label_679
_Label_679:
! THEN...
	mov	471,r13		! source line 471
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_681 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	471,r13		! source line 471
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_682
_Label_680:
! ELSE...
	mov	473,r13		! source line 473
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_683 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Call the function
	mov	473,r13		! source line 473
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_682:
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Call the function
	mov	475,r13		! source line 475
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_685		(int)
	load	[r14+-268],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_685
!	_Label_684	jmp	_Label_684
_Label_684:
! THEN...
	mov	477,r13		! source line 477
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_686 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_686  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=err  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! IF STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0IF",r10
!   if err == 1 then goto _Label_688		(int)
	load	[r14+-284],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_688
!	_Label_687	jmp	_Label_687
_Label_687:
! THEN...
	mov	479,r13		! source line 479
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=err  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+4]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_688:
	jmp	_Label_690
_Label_685:
! ELSE...
	mov	481,r13		! source line 481
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_691 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_690:
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_692
	load	[r14+-264],r1
	cmp	r1,r0
	be	_Label_692
	jmp	_Label_693
_Label_692:
! THEN...
	mov	488,r13		! source line 488
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_694 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=8  value=_temp_694  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=12345  sizeInBytes=4
	mov	12345,r1
	store	r1,[r15+0]
!   Call the function
	mov	489,r13		! source line 489
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_693:
! FOR STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_699 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-200]
!   Calculate and save the FOR-LOOP ending value
!   _temp_700 = 100		(4 bytes)
	mov	100,r1
	store	r1,[r14+-196]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_699  (sizeInBytes=4)
	load	[r14+-200],r1
	store	r1,[r14+-268]
_Label_695:
!   Perform the FOR-LOOP termination test
!   if i > _temp_700 then goto _Label_698		
	load	[r14+-268],r1
	load	[r14+-196],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_698
_Label_696:
	mov	491,r13		! source line 491
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_697:
!   i = i + 1
	load	[r14+-268],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
	jmp	_Label_695
! END FOR
_Label_698:
! CALL STATEMENT...
!   _temp_701 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=pid  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_702 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	495,r13		! source line 495
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Call the function
	mov	496,r13		! source line 496
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0IF",r10
!   if i != 12345 then goto _Label_704		(int)
	load	[r14+-268],r1
	mov	12345,r2
	cmp	r1,r2
	bne	_Label_704
!	_Label_703	jmp	_Label_703
_Label_703:
! THEN...
	mov	498,r13		! source line 498
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_705 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	498,r13		! source line 498
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_706
_Label_704:
! ELSE...
	mov	500,r13		! source line 500
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_707 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Call the function
	mov	500,r13		! source line 500
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_706:
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_709		(int)
	load	[r14+-268],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_709
!	_Label_708	jmp	_Label_708
_Label_708:
! THEN...
	mov	504,r13		! source line 504
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_710 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   Call the function
	mov	505,r13		! source line 505
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=err  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
!   if err == 1 then goto _Label_712		(int)
	load	[r14+-284],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_712
!	_Label_711	jmp	_Label_711
_Label_711:
! THEN...
	mov	506,r13		! source line 506
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_713 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=err  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+4]
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_712:
	jmp	_Label_714
_Label_709:
! ELSE...
	mov	508,r13		! source line 508
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_715 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Call the function
	mov	508,r13		! source line 508
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_714:
! CALL STATEMENT...
!   _temp_716 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_717 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_718 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	513,r13		! source line 513
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_719 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	514,r13		! source line 514
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0IF",r10
!   if intIsZero (pid1) then goto _Label_720
	load	[r14+-276],r1
	cmp	r1,r0
	be	_Label_720
	jmp	_Label_721
_Label_720:
! THEN...
	mov	528,r13		! source line 528
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0IF",r10
!   if intIsZero (pid1) then goto _Label_722
	load	[r14+-276],r1
	cmp	r1,r0
	be	_Label_722
	jmp	_Label_723
_Label_722:
! THEN...
	mov	531,r13		! source line 531
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0AS",r10
!   myName = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-288]
	jmp	_Label_724
_Label_723:
! ELSE...
	mov	534,r13		! source line 534
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   myName = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0AS",r10
!   Call the function
	mov	535,r13		! source line 535
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-280]
! IF STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0IF",r10
!   if intIsZero (pid2) then goto _Label_725
	load	[r14+-280],r1
	cmp	r1,r0
	be	_Label_725
	jmp	_Label_726
_Label_725:
! THEN...
	mov	538,r13		! source line 538
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0AS",r10
!   myName = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0AS",r10
!   pid1 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
	jmp	_Label_727
_Label_726:
! ELSE...
	mov	542,r13		! source line 542
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0AS",r10
!   myName = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0AS",r10
!   nameOfChild1 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0AS",r10
!   nameOfChild2 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-296]
! END IF...
_Label_727:
! END IF...
_Label_724:
	jmp	_Label_728
_Label_721:
! ELSE...
	mov	549,r13		! source line 549
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   Call the function
	mov	549,r13		! source line 549
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-280]
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   if intIsZero (pid2) then goto _Label_729
	load	[r14+-280],r1
	cmp	r1,r0
	be	_Label_729
	jmp	_Label_730
_Label_729:
! THEN...
	mov	552,r13		! source line 552
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   Call the function
	mov	552,r13		! source line 552
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0IF",r10
!   if intIsZero (pid1) then goto _Label_731
	load	[r14+-276],r1
	cmp	r1,r0
	be	_Label_731
	jmp	_Label_732
_Label_731:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0AS",r10
!   myName = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-288]
	jmp	_Label_733
_Label_732:
! ELSE...
	mov	558,r13		! source line 558
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0AS",r10
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-280]
! IF STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0IF",r10
!   if intIsZero (pid2) then goto _Label_734
	load	[r14+-280],r1
	cmp	r1,r0
	be	_Label_734
	jmp	_Label_735
_Label_734:
! THEN...
	mov	561,r13		! source line 561
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   myName = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
!   pid1 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
	jmp	_Label_736
_Label_735:
! ELSE...
	mov	565,r13		! source line 565
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   myName = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   nameOfChild1 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0AS",r10
!   nameOfChild2 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-296]
! END IF...
_Label_736:
! END IF...
_Label_733:
	jmp	_Label_737
_Label_730:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0AS",r10
!   myName = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-288]
! ASSIGNMENT STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0AS",r10
!   nameOfChild1 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0AS",r10
!   nameOfChild2 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-296]
! END IF...
_Label_737:
! END IF...
_Label_728:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myName  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	581,r13		! source line 581
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_738 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	582,r13		! source line 582
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0IF",r10
!   if nameOfChild1 == 0 then goto _Label_740		(int)
	load	[r14+-292],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_740
!	_Label_739	jmp	_Label_739
_Label_739:
! THEN...
	mov	584,r13		! source line 584
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_741 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nameOfChild1  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_742 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=pid1  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+4]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_743 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nameOfChild2  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_744 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=pid2  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_740:
! CALL STATEMENT...
!   _temp_745 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_750 = -5		(4 bytes)
	mov	-5,r1
	store	r1,[r14+-124]
!   Calculate and save the FOR-LOOP ending value
!   _temp_751 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-120]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_750  (sizeInBytes=4)
	load	[r14+-124],r1
	store	r1,[r14+-268]
_Label_746:
!   Perform the FOR-LOOP termination test
!   if i > _temp_751 then goto _Label_749		
	load	[r14+-268],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_749
_Label_747:
	mov	596,r13		! source line 596
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0IF",r10
!   if i == pid1 then goto _Label_753		(int)
	load	[r14+-268],r1
	load	[r14+-276],r2
	cmp	r1,r2
	be	_Label_753
!	_Label_754	jmp	_Label_754
_Label_754:
!   if i == pid2 then goto _Label_753		(int)
	load	[r14+-268],r1
	load	[r14+-280],r2
	cmp	r1,r2
	be	_Label_753
!	_Label_752	jmp	_Label_752
_Label_752:
! THEN...
	mov	598,r13		! source line 598
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0IF",r10
!   if j == -1 then goto _Label_756		(int)
	load	[r14+-272],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_756
!	_Label_755	jmp	_Label_755
_Label_755:
! THEN...
	mov	600,r13		! source line 600
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_757 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myName  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_758 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_759 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_760 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
	jmp	_Label_761
_Label_756:
! ELSE...
	mov	606,r13		! source line 606
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0AS",r10
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=err  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! IF STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0IF",r10
!   if err == 1 then goto _Label_763		(int)
	load	[r14+-284],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_763
!	_Label_762	jmp	_Label_762
_Label_762:
! THEN...
	mov	607,r13		! source line 607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_764 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=err  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+4]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_763:
! END IF...
_Label_761:
! END IF...
_Label_753:
!   Increment the FOR-LOOP index variable and jump back
_Label_748:
!   i = i + 1
	load	[r14+-268],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
	jmp	_Label_746
! END FOR
_Label_749:
! FOR STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_769 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   _temp_770 = 400		(4 bytes)
	mov	400,r1
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_769  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-268]
_Label_765:
!   Perform the FOR-LOOP termination test
!   if i > _temp_770 then goto _Label_768		
	load	[r14+-268],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_768
_Label_766:
	mov	613,r13		! source line 613
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_767:
!   i = i + 1
	load	[r14+-268],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
	jmp	_Label_765
! END FOR
_Label_768:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myName  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_771 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_771  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	621,r13		! source line 621
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_776 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_777 = 400		(4 bytes)
	mov	400,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_776  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-268]
_Label_772:
!   Perform the FOR-LOOP termination test
!   if i > _temp_777 then goto _Label_775		
	load	[r14+-268],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_775
_Label_773:
	mov	621,r13		! source line 621
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_774:
!   i = i + 1
	load	[r14+-268],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
	jmp	_Label_772
! END FOR
_Label_775:
! IF STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0IF",r10
!   if intIsZero (pid1) then goto _Label_779
	load	[r14+-276],r1
	cmp	r1,r0
	be	_Label_779
!	_Label_778	jmp	_Label_778
_Label_778:
! THEN...
	mov	629,r13		! source line 629
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_780 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myName  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_781 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nameOfChild1  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_782 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=pid1  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+4]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid1  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0IF",r10
!   if j == 123 then goto _Label_784		(int)
	load	[r14+-272],r1
	mov	123,r2
	cmp	r1,r2
	be	_Label_784
!	_Label_783	jmp	_Label_783
_Label_783:
! THEN...
	mov	636,r13		! source line 636
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_785 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_785  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myName  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_786 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_786  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_787 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_787  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=pid1  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+4]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_788 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_788  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_784:
! CALL STATEMENT...
!   _temp_789 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_789  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myName  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_790 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nameOfChild2  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_791 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=pid2  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid2  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0IF",r10
!   if j == 123 then goto _Label_793		(int)
	load	[r14+-272],r1
	mov	123,r2
	cmp	r1,r2
	be	_Label_793
!	_Label_792	jmp	_Label_792
_Label_792:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_794 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myName  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_795 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_795  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_796 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_796  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=pid2  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_797 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_793:
	jmp	_Label_798
_Label_779:
! ELSE...
	mov	662,r13		! source line 662
	mov	"\0\0EL",r10
! FOR STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_803 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_804 = 400		(4 bytes)
	mov	400,r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_803  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-268]
_Label_799:
!   Perform the FOR-LOOP termination test
!   if i > _temp_804 then goto _Label_802		
	load	[r14+-268],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_802
_Label_800:
	mov	662,r13		! source line 662
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_801:
!   i = i + 1
	load	[r14+-268],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
	jmp	_Label_799
! END FOR
_Label_802:
! END IF...
_Label_798:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myName  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_805 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_805  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=123  sizeInBytes=4
	mov	123,r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! RETURN STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0RE",r10
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_240_JoinTest4:
	.word	_sourceFileName
	.word	_Label_806
	.word	0		! total size of parameters
	.word	296		! frame size = 296
	.word	_Label_807
	.word	-12
	.word	4
	.word	_Label_808
	.word	-16
	.word	4
	.word	_Label_809
	.word	-20
	.word	4
	.word	_Label_810
	.word	-24
	.word	4
	.word	_Label_811
	.word	-28
	.word	4
	.word	_Label_812
	.word	-32
	.word	4
	.word	_Label_813
	.word	-36
	.word	4
	.word	_Label_814
	.word	-40
	.word	4
	.word	_Label_815
	.word	-44
	.word	4
	.word	_Label_816
	.word	-48
	.word	4
	.word	_Label_817
	.word	-52
	.word	4
	.word	_Label_818
	.word	-56
	.word	4
	.word	_Label_819
	.word	-60
	.word	4
	.word	_Label_820
	.word	-64
	.word	4
	.word	_Label_821
	.word	-68
	.word	4
	.word	_Label_822
	.word	-72
	.word	4
	.word	_Label_823
	.word	-76
	.word	4
	.word	_Label_824
	.word	-80
	.word	4
	.word	_Label_825
	.word	-84
	.word	4
	.word	_Label_826
	.word	-88
	.word	4
	.word	_Label_827
	.word	-92
	.word	4
	.word	_Label_828
	.word	-96
	.word	4
	.word	_Label_829
	.word	-100
	.word	4
	.word	_Label_830
	.word	-104
	.word	4
	.word	_Label_831
	.word	-108
	.word	4
	.word	_Label_832
	.word	-112
	.word	4
	.word	_Label_833
	.word	-116
	.word	4
	.word	_Label_834
	.word	-120
	.word	4
	.word	_Label_835
	.word	-124
	.word	4
	.word	_Label_836
	.word	-128
	.word	4
	.word	_Label_837
	.word	-132
	.word	4
	.word	_Label_838
	.word	-136
	.word	4
	.word	_Label_839
	.word	-140
	.word	4
	.word	_Label_840
	.word	-144
	.word	4
	.word	_Label_841
	.word	-148
	.word	4
	.word	_Label_842
	.word	-152
	.word	4
	.word	_Label_843
	.word	-156
	.word	4
	.word	_Label_844
	.word	-160
	.word	4
	.word	_Label_845
	.word	-164
	.word	4
	.word	_Label_846
	.word	-168
	.word	4
	.word	_Label_847
	.word	-172
	.word	4
	.word	_Label_848
	.word	-176
	.word	4
	.word	_Label_849
	.word	-180
	.word	4
	.word	_Label_850
	.word	-184
	.word	4
	.word	_Label_851
	.word	-188
	.word	4
	.word	_Label_852
	.word	-192
	.word	4
	.word	_Label_853
	.word	-196
	.word	4
	.word	_Label_854
	.word	-200
	.word	4
	.word	_Label_855
	.word	-204
	.word	4
	.word	_Label_856
	.word	-208
	.word	4
	.word	_Label_857
	.word	-212
	.word	4
	.word	_Label_858
	.word	-216
	.word	4
	.word	_Label_859
	.word	-220
	.word	4
	.word	_Label_860
	.word	-224
	.word	4
	.word	_Label_861
	.word	-228
	.word	4
	.word	_Label_862
	.word	-232
	.word	4
	.word	_Label_863
	.word	-236
	.word	4
	.word	_Label_864
	.word	-240
	.word	4
	.word	_Label_865
	.word	-244
	.word	4
	.word	_Label_866
	.word	-248
	.word	4
	.word	_Label_867
	.word	-252
	.word	4
	.word	_Label_868
	.word	-256
	.word	4
	.word	_Label_869
	.word	-260
	.word	4
	.word	_Label_870
	.word	-264
	.word	4
	.word	_Label_871
	.word	-268
	.word	4
	.word	_Label_872
	.word	-272
	.word	4
	.word	_Label_873
	.word	-276
	.word	4
	.word	_Label_874
	.word	-280
	.word	4
	.word	_Label_875
	.word	-284
	.word	4
	.word	_Label_876
	.word	-288
	.word	4
	.word	_Label_877
	.word	-292
	.word	4
	.word	_Label_878
	.word	-296
	.word	4
	.word	0
_Label_806:
	.ascii	"JoinTest4\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_870:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_871:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_872:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_873:
	.byte	'I'
	.ascii	"pid1\0"
	.align
_Label_874:
	.byte	'I'
	.ascii	"pid2\0"
	.align
_Label_875:
	.byte	'I'
	.ascii	"err\0"
	.align
_Label_876:
	.byte	'P'
	.ascii	"myName\0"
	.align
_Label_877:
	.byte	'P'
	.ascii	"nameOfChild1\0"
	.align
_Label_878:
	.byte	'P'
	.ascii	"nameOfChild2\0"
	.align
! 
! ===============  FUNCTION ManyProcessesTest1  ===============
! 
_function_239_ManyProcessesTest1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_239_ManyProcessesTest1,r1
	push	r1
	mov	10,r1
_Label_1157:
	push	r0
	sub	r1,1,r1
	bne	_Label_1157
	mov	675,r13		! source line 675
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_879 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_879  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_880 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_880  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_881 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_881  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	683,r13		! source line 683
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	685,r13		! source line 685
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_886 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_887 = 100		(4 bytes)
	mov	100,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_886  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-40]
_Label_882:
!   Perform the FOR-LOOP termination test
!   if i > _temp_887 then goto _Label_885		
	load	[r14+-40],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_885
_Label_883:
	mov	685,r13		! source line 685
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	686,r13		! source line 686
	mov	"\0\0AS",r10
!   Call the function
	mov	686,r13		! source line 686
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! IF STATEMENT...
	mov	687,r13		! source line 687
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_889
	load	[r14+-44],r1
	cmp	r1,r0
	be	_Label_889
!	_Label_888	jmp	_Label_888
_Label_888:
! THEN...
	mov	689,r13		! source line 689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_889:
! CALL STATEMENT...
!   _temp_890 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_890  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_884:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_882
! END FOR
_Label_885:
! CALL STATEMENT...
!   _temp_891 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_891  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_239_ManyProcessesTest1:
	.word	_sourceFileName
	.word	_Label_892
	.word	0		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_893
	.word	-12
	.word	4
	.word	_Label_894
	.word	-16
	.word	4
	.word	_Label_895
	.word	-20
	.word	4
	.word	_Label_896
	.word	-24
	.word	4
	.word	_Label_897
	.word	-28
	.word	4
	.word	_Label_898
	.word	-32
	.word	4
	.word	_Label_899
	.word	-36
	.word	4
	.word	_Label_900
	.word	-40
	.word	4
	.word	_Label_901
	.word	-44
	.word	4
	.word	0
_Label_892:
	.ascii	"ManyProcessesTest1\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_900:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_901:
	.byte	'I'
	.ascii	"pid\0"
	.align
! 
! ===============  FUNCTION ManyProcessesTest2  ===============
! 
_function_238_ManyProcessesTest2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_238_ManyProcessesTest2,r1
	push	r1
	mov	2,r1
_Label_1158:
	push	r0
	sub	r1,1,r1
	bne	_Label_1158
	mov	702,r13		! source line 702
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_902 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_902  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CA",r10
	call	_function_236_CreateManyProcesses
! RETURN STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_238_ManyProcessesTest2:
	.word	_sourceFileName
	.word	_Label_903
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_904
	.word	-12
	.word	4
	.word	0
_Label_903:
	.ascii	"ManyProcessesTest2\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
! 
! ===============  FUNCTION ManyProcessesTest3  ===============
! 
_function_237_ManyProcessesTest3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_237_ManyProcessesTest3,r1
	push	r1
	mov	2,r1
_Label_1159:
	push	r0
	sub	r1,1,r1
	bne	_Label_1159
	mov	709,r13		! source line 709
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_905 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_905  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CA",r10
	call	_function_236_CreateManyProcesses
! RETURN STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_237_ManyProcessesTest3:
	.word	_sourceFileName
	.word	_Label_906
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_907
	.word	-12
	.word	4
	.word	0
_Label_906:
	.ascii	"ManyProcessesTest3\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
! 
! ===============  FUNCTION CreateManyProcesses  ===============
! 
_function_236_CreateManyProcesses:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_236_CreateManyProcesses,r1
	push	r1
	mov	17,r1
_Label_1160:
	push	r0
	sub	r1,1,r1
	bne	_Label_1160
	mov	716,r13		! source line 716
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_908 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numProcs  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_909 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_909  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0IF",r10
!   if numProcs > 9 then goto _Label_911		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_911
!	_Label_910	jmp	_Label_910
_Label_910:
! THEN...
	mov	728,r13		! source line 728
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_912 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_913
_Label_911:
! ELSE...
	mov	730,r13		! source line 730
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_914 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_914  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_913:
! CALL STATEMENT...
!   _temp_915 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_915  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0AS",r10
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_916
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_916
	jmp	_Label_917
_Label_916:
! THEN...
	mov	737,r13		! source line 737
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_918 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_918  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_923 = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_924 = numProcs		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_923  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-64]
_Label_919:
!   Perform the FOR-LOOP termination test
!   if i > _temp_924 then goto _Label_922		
	load	[r14+-64],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_922
_Label_920:
	mov	738,r13		! source line 738
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0AS",r10
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_925
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_925
	jmp	_Label_926
_Label_925:
! THEN...
	mov	742,r13		! source line 742
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_927 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_927  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
	jmp	_Label_928
_Label_926:
! ELSE...
	mov	747,r13		! source line 747
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_929  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_929  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_928:
!   Increment the FOR-LOOP index variable and jump back
_Label_921:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_919
! END FOR
_Label_922:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=123  sizeInBytes=4
	mov	123,r1
	store	r1,[r15+0]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_930
_Label_917:
! ELSE...
	mov	754,r13		! source line 754
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_931 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=_temp_932  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_932  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_933 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_933  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	755,r13		! source line 755
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_930:
! RETURN STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_236_CreateManyProcesses:
	.word	_sourceFileName
	.word	_Label_934
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_935
	.word	8
	.word	4
	.word	_Label_936
	.word	-12
	.word	4
	.word	_Label_937
	.word	-16
	.word	4
	.word	_Label_938
	.word	-20
	.word	4
	.word	_Label_939
	.word	-24
	.word	4
	.word	_Label_940
	.word	-28
	.word	4
	.word	_Label_941
	.word	-32
	.word	4
	.word	_Label_942
	.word	-36
	.word	4
	.word	_Label_943
	.word	-40
	.word	4
	.word	_Label_944
	.word	-44
	.word	4
	.word	_Label_945
	.word	-48
	.word	4
	.word	_Label_946
	.word	-52
	.word	4
	.word	_Label_947
	.word	-56
	.word	4
	.word	_Label_948
	.word	-60
	.word	4
	.word	_Label_949
	.word	-64
	.word	4
	.word	_Label_950
	.word	-68
	.word	4
	.word	0
_Label_934:
	.ascii	"CreateManyProcesses\0"
	.align
_Label_935:
	.byte	'I'
	.ascii	"numProcs\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_949:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_950:
	.byte	'I'
	.ascii	"pid\0"
	.align
! 
! ===============  FUNCTION ErrorTest  ===============
! 
_function_235_ErrorTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_235_ErrorTest,r1
	push	r1
	mov	16,r1
_Label_1161:
	push	r0
	sub	r1,1,r1
	bne	_Label_1161
	mov	762,r13		! source line 762
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_951 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_951  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_952 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_952  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_953
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_953
	jmp	_Label_954
_Label_953:
! THEN...
	mov	775,r13		! source line 775
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = 123  (sizeInBytes=4)
	mov	123,r1
	load	[r14+-64],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_955 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_955  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_954:
! ASSIGNMENT STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-2  sizeInBytes=4
	mov	-2,r1
	store	r1,[r15+4]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CA",r10
	call	_function_230_Check
! ASSIGNMENT STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0AS",r10
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CA",r10
	call	_function_230_Check
! CALL STATEMENT...
!   _temp_956 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0AS",r10
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_957
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_957
	jmp	_Label_958
_Label_957:
! THEN...
	mov	791,r13		! source line 791
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
!   p = -286331168		(4 bytes)
	set	-286331168,r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = 123  (sizeInBytes=4)
	mov	123,r1
	load	[r14+-64],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_959 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_959  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_958:
! ASSIGNMENT STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CA",r10
	call	_function_230_Check
! ASSIGNMENT STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0AS",r10
!   Call the function
	mov	802,r13		! source line 802
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+4]
!   Call the function
	mov	803,r13		! source line 803
	mov	"\0\0CA",r10
	call	_function_230_Check
! CALL STATEMENT...
!   _temp_960 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	805,r13		! source line 805
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0AS",r10
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_961
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_961
	jmp	_Label_962
_Label_961:
! THEN...
	mov	809,r13		! source line 809
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	809,r13		! source line 809
	mov	"\0\0AS",r10
!   p = main
	set	main,r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = 123  (sizeInBytes=4)
	mov	123,r1
	load	[r14+-64],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_963 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_963  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_962:
! ASSIGNMENT STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CA",r10
	call	_function_230_Check
! ASSIGNMENT STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0AS",r10
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+4]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CA",r10
	call	_function_230_Check
! CALL STATEMENT...
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   _temp_964 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_964  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	823,r13		! source line 823
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0AS",r10
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_965
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_965
	jmp	_Label_966
_Label_965:
! THEN...
	mov	827,r13		! source line 827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	827,r13		! source line 827
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_966:
! ASSIGNMENT STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CA",r10
	call	_function_230_Check
! ASSIGNMENT STATEMENT...
	mov	833,r13		! source line 833
	mov	"\0\0AS",r10
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	834,r13		! source line 834
	mov	"\0\0CA",r10
	call	_function_230_Check
! CALL STATEMENT...
!   _temp_967 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_967  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0AS",r10
!   _temp_968 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_968  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CA",r10
	call	_function_230_Check
! ASSIGNMENT STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0AS",r10
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_function_230_Check
! ASSIGNMENT STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CA",r10
	call	_function_230_Check
! ASSIGNMENT STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0AS",r10
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CA",r10
	call	_function_230_Check
! CALL STATEMENT...
!   _temp_969 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_235_ErrorTest:
	.word	_sourceFileName
	.word	_Label_970
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_971
	.word	-12
	.word	4
	.word	_Label_972
	.word	-16
	.word	4
	.word	_Label_973
	.word	-20
	.word	4
	.word	_Label_974
	.word	-24
	.word	4
	.word	_Label_975
	.word	-28
	.word	4
	.word	_Label_976
	.word	-32
	.word	4
	.word	_Label_977
	.word	-36
	.word	4
	.word	_Label_978
	.word	-40
	.word	4
	.word	_Label_979
	.word	-44
	.word	4
	.word	_Label_980
	.word	-48
	.word	4
	.word	_Label_981
	.word	-52
	.word	4
	.word	_Label_982
	.word	-56
	.word	4
	.word	_Label_983
	.word	-60
	.word	4
	.word	_Label_984
	.word	-64
	.word	4
	.word	0
_Label_970:
	.ascii	"ErrorTest\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_982:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_983:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_984:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION ArgsWithForkTest  ===============
! 
_function_234_ArgsWithForkTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_234_ArgsWithForkTest,r1
	push	r1
	mov	44,r1
_Label_1162:
	push	r0
	sub	r1,1,r1
	bne	_Label_1162
	mov	859,r13		! source line 859
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_985 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_985  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0AS",r10
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetPPid
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! IF STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0IF",r10
!   if ret == -1 then goto _Label_987		(int)
	load	[r14+-176],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_987
!	_Label_986	jmp	_Label_986
_Label_986:
! THEN...
	mov	871,r13		! source line 871
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_988 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_988  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_987:
! ASSIGNMENT STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0AS",r10
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetPid
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ret  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CA",r10
	call	_function_230_Check
! ASSIGNMENT STATEMENT...
	mov	877,r13		! source line 877
	mov	"\0\0AS",r10
!   _temp_989 = &args
	add	r14,-172,r1
	store	r1,[r14+-120]
!   NEW ARRAY Constructor...
!   _temp_991 = &_temp_990
	add	r14,-116,r1
	store	r1,[r14+-72]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
!   _temp_993 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_991 = _temp_993  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-72],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
!   _temp_994 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_991 = _temp_994  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-72],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
!   _temp_995 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_991 = _temp_995  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-72],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
!   _temp_996 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_991 = _temp_996  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+-72],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
!   _temp_997 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_991 = _temp_997  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r14+-72],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
!   _temp_998 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_991 = _temp_998  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-72],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
!   _temp_999 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_991 = _temp_999  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-72],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
!   _temp_1000 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_991 = _temp_1000  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r14+-72],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
!   _temp_1001 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_991 = _temp_1001  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+-72],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
!   _temp_1002 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_991 = _temp_1002  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-72],r2
	store	r1,[r2]
!   _temp_991 = _temp_991 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-116]
!   _temp_1003 = &_temp_990
	add	r14,-116,r1
	store	r1,[r14+-24]
!   make sure array has size 10
	load	[r14+-120],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1163
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1163:
!   make sure array has size 10
	load	[r14+-24],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_989 = *_temp_1003  (sizeInBytes=44)
	load	[r14+-24],r5
	load	[r14+-120],r4
	mov	11,r3
_Label_1164:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1164
! ASSIGNMENT STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0AS",r10
!   _temp_1004 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-20]
!   _temp_1005 = &args
	add	r14,-172,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1004  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1005  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! CALL STATEMENT...
!   _temp_1006 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1006  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0RE",r10
	add	r15,180,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_234_ArgsWithForkTest:
	.word	_sourceFileName
	.word	_Label_1007
	.word	0		! total size of parameters
	.word	176		! frame size = 176
	.word	_Label_1008
	.word	-12
	.word	4
	.word	_Label_1009
	.word	-16
	.word	4
	.word	_Label_1010
	.word	-20
	.word	4
	.word	_Label_1011
	.word	-24
	.word	4
	.word	_Label_1012
	.word	-28
	.word	4
	.word	_Label_1013
	.word	-32
	.word	4
	.word	_Label_1014
	.word	-36
	.word	4
	.word	_Label_1015
	.word	-40
	.word	4
	.word	_Label_1016
	.word	-44
	.word	4
	.word	_Label_1017
	.word	-48
	.word	4
	.word	_Label_1018
	.word	-52
	.word	4
	.word	_Label_1019
	.word	-56
	.word	4
	.word	_Label_1020
	.word	-60
	.word	4
	.word	_Label_1021
	.word	-64
	.word	4
	.word	_Label_1022
	.word	-68
	.word	4
	.word	_Label_1023
	.word	-72
	.word	4
	.word	_Label_1024
	.word	-116
	.word	44
	.word	_Label_1025
	.word	-120
	.word	4
	.word	_Label_1026
	.word	-124
	.word	4
	.word	_Label_1027
	.word	-128
	.word	4
	.word	_Label_1028
	.word	-172
	.word	44
	.word	_Label_1029
	.word	-176
	.word	4
	.word	0
_Label_1007:
	.ascii	"ArgsWithForkTest\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1028:
	.byte	'A'
	.ascii	"args\0"
	.align
_Label_1029:
	.byte	'I'
	.ascii	"ret\0"
	.align
! 
! ===============  FUNCTION StatTest  ===============
! 
_function_233_StatTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_233_StatTest,r1
	push	r1
	mov	11,r1
_Label_1165:
	push	r0
	sub	r1,1,r1
	bne	_Label_1165
	mov	889,r13		! source line 889
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1030 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1031 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1032 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CA",r10
	call	_function_231_printStatLine
! CALL STATEMENT...
!   _temp_1033 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1033  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	895,r13		! source line 895
	mov	"\0\0CA",r10
	call	_function_231_printStatLine
! CALL STATEMENT...
!   _temp_1034 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CA",r10
	call	_function_231_printStatLine
! CALL STATEMENT...
!   _temp_1035 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	897,r13		! source line 897
	mov	"\0\0CA",r10
	call	_function_231_printStatLine
! CALL STATEMENT...
!   _temp_1036 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	898,r13		! source line 898
	mov	"\0\0CA",r10
	call	_function_231_printStatLine
! CALL STATEMENT...
!   _temp_1037 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CA",r10
	call	_function_231_printStatLine
! CALL STATEMENT...
!   _temp_1038 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	900,r13		! source line 900
	mov	"\0\0CA",r10
	call	_function_231_printStatLine
! CALL STATEMENT...
!   _temp_1039 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1039  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_233_StatTest:
	.word	_sourceFileName
	.word	_Label_1040
	.word	0		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1041
	.word	-12
	.word	4
	.word	_Label_1042
	.word	-16
	.word	4
	.word	_Label_1043
	.word	-20
	.word	4
	.word	_Label_1044
	.word	-24
	.word	4
	.word	_Label_1045
	.word	-28
	.word	4
	.word	_Label_1046
	.word	-32
	.word	4
	.word	_Label_1047
	.word	-36
	.word	4
	.word	_Label_1048
	.word	-40
	.word	4
	.word	_Label_1049
	.word	-44
	.word	4
	.word	_Label_1050
	.word	-48
	.word	4
	.word	0
_Label_1040:
	.ascii	"StatTest\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
! 
! ===============  FUNCTION printModeChar  ===============
! 
_function_232_printModeChar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_232_printModeChar,r1
	push	r1
	mov	3,r1
_Label_1166:
	push	r0
	sub	r1,1,r1
	bne	_Label_1166
	mov	905,r13		! source line 905
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0IF",r10
!   _temp_1053 = mode AND modeBit		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	and	r1,r2,r1
	store	r1,[r14+-16]
!   if _temp_1053 != modeBit then goto _Label_1052		(int)
	load	[r14+-16],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_1052
!	_Label_1051	jmp	_Label_1051
_Label_1051:
! THEN...
	mov	907,r13		! source line 907
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=modeCh  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1054
_Label_1052:
! ELSE...
	mov	909,r13		! source line 909
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1055 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1055  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1054:
! RETURN STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_232_printModeChar:
	.word	_sourceFileName
	.word	_Label_1056
	.word	12		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1057
	.word	8
	.word	4
	.word	_Label_1058
	.word	12
	.word	4
	.word	_Label_1059
	.word	16
	.word	4
	.word	_Label_1060
	.word	-12
	.word	4
	.word	_Label_1061
	.word	-16
	.word	4
	.word	0
_Label_1056:
	.ascii	"printModeChar\0"
	.align
_Label_1057:
	.byte	'I'
	.ascii	"mode\0"
	.align
_Label_1058:
	.byte	'I'
	.ascii	"modeBit\0"
	.align
_Label_1059:
	.byte	'P'
	.ascii	"modeCh\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
! 
! ===============  FUNCTION printStatLine  ===============
! 
_function_231_printStatLine:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_231_printStatLine,r1
	push	r1
	mov	42,r1
_Label_1167:
	push	r0
	sub	r1,1,r1
	bne	_Label_1167
	mov	914,r13		! source line 914
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0IF",r10
!   _temp_1065 = &statBuf
	add	r14,-160,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=fileName  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1065  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Call the function
	mov	918,r13		! source line 918
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Stat
!   Retrieve Result: targetName=_temp_1064  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1064) then goto _Label_1063
	load	[r14+-140],r1
	cmp	r1,r0
	be	_Label_1063
!	_Label_1062	jmp	_Label_1062
_Label_1062:
! THEN...
	mov	919,r13		! source line 919
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1066 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	919,r13		! source line 919
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0AS",r10
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   _temp_1067 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ret  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CA",r10
	call	_function_230_Check
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_GetError
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ret  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CA",r10
	call	_function_230_Check
	jmp	_Label_1068
_Label_1063:
! ELSE...
	mov	926,r13		! source line 926
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1070 = &statBuf
	add	r14,-160,r1
	store	r1,[r14+-120]
!   _temp_1071 = _temp_1070 + 0
	load	[r14+-120],r1
	add	r1,0,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1069 = *_temp_1071  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1072 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1074 = &statBuf
	add	r14,-160,r1
	store	r1,[r14+-104]
!   _temp_1075 = _temp_1074 + 8
	load	[r14+-104],r1
	add	r1,8,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1073 = *_temp_1075  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1076 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=32  sizeInBytes=4
	mov	32,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1076  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+8]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CA",r10
	call	_function_232_printModeChar
! CALL STATEMENT...
!   _temp_1078 = &statBuf
	add	r14,-160,r1
	store	r1,[r14+-88]
!   _temp_1079 = _temp_1078 + 8
	load	[r14+-88],r1
	add	r1,8,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1077 = *_temp_1079  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_1080 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1077  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1080  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+8]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CA",r10
	call	_function_232_printModeChar
! CALL STATEMENT...
!   _temp_1082 = &statBuf
	add	r14,-160,r1
	store	r1,[r14+-72]
!   _temp_1083 = _temp_1082 + 8
	load	[r14+-72],r1
	add	r1,8,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1081 = *_temp_1083  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_1084 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1084  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CA",r10
	call	_function_232_printModeChar
! CALL STATEMENT...
!   _temp_1086 = &statBuf
	add	r14,-160,r1
	store	r1,[r14+-56]
!   _temp_1087 = _temp_1086 + 8
	load	[r14+-56],r1
	add	r1,8,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1085 = *_temp_1087  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_1088 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1088  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CA",r10
	call	_function_232_printModeChar
! CALL STATEMENT...
!   _temp_1089 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1091 = &statBuf
	add	r14,-160,r1
	store	r1,[r14+-36]
!   _temp_1092 = _temp_1091 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1090 = *_temp_1092  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1093 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1095 = &statBuf
	add	r14,-160,r1
	store	r1,[r14+-20]
!   _temp_1096 = _temp_1095 + 12
	load	[r14+-20],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1094 = *_temp_1096  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1097 = _StringConst_226
	set	_StringConst_226,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1097  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileName  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! END IF...
_Label_1068:
! RETURN STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_231_printStatLine:
	.word	_sourceFileName
	.word	_Label_1098
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1099
	.word	8
	.word	4
	.word	_Label_1100
	.word	-12
	.word	4
	.word	_Label_1101
	.word	-16
	.word	4
	.word	_Label_1102
	.word	-20
	.word	4
	.word	_Label_1103
	.word	-24
	.word	4
	.word	_Label_1104
	.word	-28
	.word	4
	.word	_Label_1105
	.word	-32
	.word	4
	.word	_Label_1106
	.word	-36
	.word	4
	.word	_Label_1107
	.word	-40
	.word	4
	.word	_Label_1108
	.word	-44
	.word	4
	.word	_Label_1109
	.word	-48
	.word	4
	.word	_Label_1110
	.word	-52
	.word	4
	.word	_Label_1111
	.word	-56
	.word	4
	.word	_Label_1112
	.word	-60
	.word	4
	.word	_Label_1113
	.word	-64
	.word	4
	.word	_Label_1114
	.word	-68
	.word	4
	.word	_Label_1115
	.word	-72
	.word	4
	.word	_Label_1116
	.word	-76
	.word	4
	.word	_Label_1117
	.word	-80
	.word	4
	.word	_Label_1118
	.word	-84
	.word	4
	.word	_Label_1119
	.word	-88
	.word	4
	.word	_Label_1120
	.word	-92
	.word	4
	.word	_Label_1121
	.word	-96
	.word	4
	.word	_Label_1122
	.word	-100
	.word	4
	.word	_Label_1123
	.word	-104
	.word	4
	.word	_Label_1124
	.word	-108
	.word	4
	.word	_Label_1125
	.word	-112
	.word	4
	.word	_Label_1126
	.word	-116
	.word	4
	.word	_Label_1127
	.word	-120
	.word	4
	.word	_Label_1128
	.word	-124
	.word	4
	.word	_Label_1129
	.word	-128
	.word	4
	.word	_Label_1130
	.word	-132
	.word	4
	.word	_Label_1131
	.word	-136
	.word	4
	.word	_Label_1132
	.word	-140
	.word	4
	.word	_Label_1133
	.word	-160
	.word	20
	.word	_Label_1134
	.word	-164
	.word	4
	.word	0
_Label_1098:
	.ascii	"printStatLine\0"
	.align
_Label_1099:
	.byte	'P'
	.ascii	"fileName\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1133:
	.byte	'R'
	.ascii	"statBuf\0"
	.align
_Label_1134:
	.byte	'I'
	.ascii	"ret\0"
	.align
! 
! ===============  FUNCTION Check  ===============
! 
_function_230_Check:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_230_Check,r1
	push	r1
	mov	4,r1
_Label_1168:
	push	r0
	sub	r1,1,r1
	bne	_Label_1168
	mov	946,r13		! source line 946
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0IF",r10
!   if i != expectedVal then goto _Label_1136		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_1136
!	_Label_1135	jmp	_Label_1135
_Label_1135:
! THEN...
	mov	952,r13		! source line 952
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1137 = _StringConst_227
	set	_StringConst_227,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1138
_Label_1136:
! ELSE...
	mov	954,r13		! source line 954
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1139 = _StringConst_228
	set	_StringConst_228,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1139  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1140 = _StringConst_229
	set	_StringConst_229,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1140  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1138:
! RETURN STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_230_Check:
	.word	_sourceFileName
	.word	_Label_1141
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1142
	.word	8
	.word	4
	.word	_Label_1143
	.word	12
	.word	4
	.word	_Label_1144
	.word	-12
	.word	4
	.word	_Label_1145
	.word	-16
	.word	4
	.word	_Label_1146
	.word	-20
	.word	4
	.word	0
_Label_1141:
	.ascii	"Check\0"
	.align
_Label_1142:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1143:
	.byte	'I'
	.ascii	"expectedVal\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
