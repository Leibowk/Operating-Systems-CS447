code script

  function main()

      var rv: int
          fd: int
	  i: int
	  wr_pipe: array [2] of int
	  ch: char

      if cmdArgs arraySize > 2 
         Print ("usage: ")
	 Print (cmdArgs[0])
	 Print ("[filename]\n")
	 Sys_Exit (1)
      endIf

      if cmdArgs arraySize == 2
         fd = Sys_Open (cmdArgs[1], O_WRITE|O_CREATE, 6)
      else	 
         fd = Sys_Open ("TypeScript", O_WRITE|O_CREATE, 6)
      endIf
      
      if fd < 0
	  Print ("Could not open output file.\n")
	  Sys_Exit(1)
      endIf

      wr_pipe = new array of int { 2 of 0}

      rv = Sys_Pipe(&wr_pipe)
      if rv < 0
          Print ("Could create a Pipe.\n")
	  Sys_Exit(1)
      endIf

      Print ("Script file is ")
      if cmdArgs arraySize == 2
         Print (cmdArgs[1])
      else	 
         Print ("TypeScript")
      endIf
      Print (".\n")

      -- Start the child shell
      rv = Sys_Fork()
      if rv < 0
          Print ("Could not fork.\n")
	  Sys_Exit(1)
      endIf

      if rv == 0
          -- We are the child, start sh
	  Sys_Close (1) -- close stdout
	  rv = Sys_Dup (wr_pipe[1])
	  if rv != 1
	      Print ("Could not dup pipe write end.\n")
	      Sys_Exit(1)
	  endIf
	  rv = Sys_Exec ("/bin/sh", null)
	  Print ("Could not exec sh.\n")
	  Sys_Exit (1)
      endIf

      -- We are the parent ... close what should be used by sh
      Sys_Close(wr_pipe[1])

      rv = Sys_Read (wr_pipe[0], &ch, 1)
      while rv > 0
      	    i = Sys_Write (1, &ch, 1)
	    i = Sys_Write (fd, &ch, 1)
            rv = Sys_Read (wr_pipe[0], &ch, 1)
      endWhile

      -- Files are automatically closed ... just exit
      
      Print ("Script finished.\n")
      Sys_Exit(0)

    endFunction

endCode
