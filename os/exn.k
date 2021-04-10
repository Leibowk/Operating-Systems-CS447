-- Simple program to test execs over and over
--
--
--   Phil Nelson,  Nov 2018
--
--   usage:  exn number-of-times to exec
--

code exn

   var
	args : array [2] of ptr to array of char
	arg1 : array [20000] of char

  function main ()
    var 
        times: int
	rv: int
	
    if cmdArgs == null 
       Print ("Usage: exn number\n")
       Sys_Exit(0)
    endIf

    if cmdArgs arraySize < 2 
       Print ("Usage: exn number\n")
       Sys_Exit(0)
    endIf

    times = StringToInt (cmdArgs[1])
    Print ("Exec num: ") PrintInt(times) Print("\n")

    if times < 1
       Sys_Exit (0)
    else
       arg1 = new array [20000] of char { 20000 of ' ' }
       args = new array [2] of ptr to array of char
          { "exn", null }
       times = times - 1
       args[1] = &arg1
       IntToString (times, &arg1)
       rv = Sys_Exec ( "/bin/exn", &args )
       Print ("Exec failure!\n")
       Sys_Exit (1)
    endIf
    

  endFunction
 

endCode
