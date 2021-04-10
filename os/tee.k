code tee

  var
       buff:  array [8192] of char

  function main()

      var rv: int
          fd: int
	  i: int

      if cmdArgs == null
         Print ("usage: tee filename\n")
      endIf

      if cmdArgs arraySize != 2 
         Print ("usage: ")
	 Print (cmdArgs[0])
	 Print (" filename\n")
	 Sys_Exit (1)
      endIf

      fd = Sys_Open (cmdArgs[1], O_WRITE|O_MAYCREATE, 6)

      if fd < 0
          i = Sys_GetError()
          Print (cmdArgs[1])
	  Print (": ")
	  Print (ErrorString(i))
	  Print ("\n")
	  Sys_Exit(1)
      endIf

      buff = new array of char { 8192 of ' '}

      rv = Sys_Read (0, &buff[0], 8192)
      while rv > 0
      	    i = Sys_Write (1, &buff[0], rv)
	    if i != rv
	       Print ("Write error to StdOut\n")
	       Sys_Exit(1)
	    endIf
	    i = Sys_Write (fd, &buff[0], rv)
	    if i != rv
	       Print ("Write error to file\n")
	       Sys_Exit(1)
	    endIf
            rv = Sys_Read (0, &buff[0], 8192)
      endWhile
      
      Sys_Exit(0)

    endFunction


endCode
