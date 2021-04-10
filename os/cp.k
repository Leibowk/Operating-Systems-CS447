code cp

  -----------------------------------
  ----                           ----
  ----    BLITZ "cp" Program    ----
  ----                           ----
  -----------------------------------

-----------------------------  main  ---------------------------------

  const BUFF_MAX = 8192
        STR_MAX = 512

  var buffer: array [BUFF_MAX] of char

  function main ()
    --
    -- This is a simplified version of the 'cat' program found in Unix.
    --
    var ix, ix2, offset, infd, outfd: int
        fileD: statInfo
        rv: int
        outName: array [STR_MAX] of char
	dirName: String
        retVal: int = 0
	statR: statInfo  -- to copy mode

    if cmdArgs arraySize < 3
       Print ("Usage: cp file file\n")
       Sys_Exit(1)
    endIf

    if cmdArgs arraySize == 3
         infd = Sys_Open (cmdArgs[1],O_READ,0)
         if infd < 0
	    rv = Sys_GetError ()
            Print ("cp: ")
            Print (cmdArgs[1])
            Print (": ")
	    Print (ErrorString (rv))
	    Print ("\n")
            Sys_Exit (1)
         endIf
 	 rv = Sys_Stat (cmdArgs[1], &statR)
	 if rv > 0
	    Print ("Stat failed on ") Print (cmdArgs[1]) Print ("\n")
	    Sys_Exit (1)
	 endIf
	 outfd = Sys_Open (cmdArgs[2], O_WRITE|O_CREATE, statR.mode)
         if outfd < 0
	    rv = Sys_GetError ()
            Print ("cp: ")
            Print (cmdArgs[2])
            Print (": ")
	    Print (ErrorString (rv))
	    Print ("\n")
             Sys_Exit (1)
         endIf
        
         CopyFile(infd, outfd)
	 Sys_Close (infd)
	 Sys_Close (outfd)
    else
      -- copy a list of files to a directory
      dirName = cmdArgs[(cmdArgs arraySize) - 1]
      rv = Sys_Stat (dirName, &fileD)
      if rv < 0
        rv = Sys_GetError ()
	Print ("cp: ")
	Print (cmdArgs[(cmdArgs arraySize) -1 ])
	Print (": ")
	Print (ErrorString(rv))
	Print ("\n")
	Sys_Exit (1)
      endIf
      if (fileD.mode & TYPE_DIR) != TYPE_DIR
            Print ("cp: ")
            Print (dirName)
            Print (": not a directory\n")
            Sys_Exit (1)
      endIf

      -- now for the list
      for ix = 1 to cmdArgs arraySize -2
         infd = Sys_Open (cmdArgs[ix],O_READ,0)
         if infd < 0
	    rv = Sys_GetError ()
            Print ("cp: ")
            Print (cmdArgs[ix])
            Print (": ")
	    Print (ErrorString(rv))
	    Print ("\n")
	    retVal = 1
	    continue
         endIf
	 rv = Sys_Stat (cmdArgs[ix], &statR)
	 if rv > 0
	    Print ("Stat failed on ") Print (cmdArgs[1]) Print ("\n")
	    Sys_Close(infd)
	    continue
	 endIf
	 -- Create outfile name
	 *((&outName) asPtrTo int) = STR_MAX
         outName = new array [STR_MAX] of char { STR_MAX of ' '}
	 StrCopy (&outName, dirName)
	 offset = dirName arraySize
	 outName[offset] = '/'
	 offset = offset + 1
	 for ix2 = 0 to cmdArgs[ix] arraySize - 1
	    outName[offset + ix2] = cmdArgs[ix][ix2]
         endFor

	 *((&outName) asPtrTo int) = offset +  cmdArgs[ix] arraySize 
	 --Print ("'") Print(&outName) Print("'\n")
	 
	 outfd = Sys_Open (&outName, O_WRITE|O_CREATE,statR.mode)
         if infd < 0
	    rv = Sys_GetError ()
            Print ("cp: ")
            Print (&outName)
            Print (": ")
	    Print (ErrorString(rv))
	    Print ("\n")
            Sys_Close (infd)
	    retVal = 1
	    continue
         endIf
        
         CopyFile(infd, outfd)
 	 Sys_Close (infd)
	 Sys_Close (outfd)
      endFor
    endIf

    Sys_Exit(retVal)

  endFunction

  function CopyFile (inFd, outFd: int)
    var i: int
      *((& buffer) asPtrTo int) = BUFF_MAX
      while true
        i = Sys_Read (inFd, &buffer[0], BUFF_MAX)
        if i <= 0
          break
        endIf
        i = Sys_Write (outFd, &buffer[0], i)
      endWhile
    endFunction

endCode
