code rm

  function main ()
    -- this is a simplified version of the "rm" program 
    var ix, rv: int
        retVal: int = 0
        statR: statInfo
        ans: array [10] of char = new array of char { 10 of ' '}

    if cmdArgs == null || cmdArgs arraySize < 2
       Print ("Usage: rm file [file ...]\n")
       Sys_Exit(1)
    endIf

    -- remove the list of files
    for ix = 1 to cmdArgs arraySize -1
        rv = Sys_Stat (cmdArgs[ix], &statR)
        if rv < 0
	   rv = Sys_GetError ()
           Print ("rm: ")
           Print (cmdArgs[ix])
           Print (": ")
	   Print (ErrorString (rv))
	   Print ("\n")
           retVal = 1
           continue
       endIf
       if (statR.mode & MODE_WRITE) == 0
          Print (cmdArgs[ix])
          Print (": read only, remove anyway? ")
          if !ReadLine (&ans)
             continue
          endIf
          if ans[0] != 'y'
            continue
          endIf
       endIf
       rv = Sys_Unlink (cmdArgs[ix])
       if rv < 0
	    rv = Sys_GetError ()
	    Print ("rm: ")
	    Print (cmdArgs[ix])
	    Print (": ")
	    Print (ErrorString(rv))
	    Print ("\n")
	    retVal = 1
	endIf
    endFor
    Sys_Exit (retVal)

  endFunction

endCode
