code chmode

  function printUsage ()
       Print ("Usage: chmod  perms file [file ...]\n")
       Print ("Perms: single digit or a combination of rwx\n")
       Sys_Exit(1)
    endFunction

  function main ()
    -- this is a simplified version of the "chmod" program 
    var ix, rv: int
        retVal: int = 0
        newmode: int = 0
        hadInt: bool = false

    if cmdArgs == null || cmdArgs arraySize < 3
       printUsage()
    endIf

    -- Get the perms first
    if cmdArgs[1] arraySize > 3
       printUsage()
    endIf

    for ix = 0 to cmdArgs[1] arraySize - 1
       if hadInt
	   newmode = -100
       else 
         switch cmdArgs[1][ix]
           case 'r':
	      newmode = newmode | 4
	      break
           case 'w':
	      newmode = newmode | 2
	      break
           case 'x':
	      newmode = newmode | 1
	      break

	   case '0':
	   case '1':
	   case '2':
	   case '3':
	   case '4':
	   case '5':
	   case '6':
	   case '7':
	     hadInt = true
	     if ix != 0
	        newmode = -100
	     else
		newmode = charToInt(cmdArgs[1][0]) - 32  -- 32 is '0'
             endIf
	     break

	   default:
             newmode = -100
	 endSwitch
      endIf
    endFor

    if newmode < 0
       printUsage()
    endIf

    -- remove the list of files
    for ix = 2 to cmdArgs arraySize -1
        rv = Sys_ChMode (cmdArgs[ix], newmode)
	if rv < 0
	   rv = Sys_GetError ()
	    Print ("rm: ")
	    Print (cmdArgs[ix]) Print (": ")
            Print (ErrorString(rv))
	    Print ("\n")
	    retVal = 1
	endIf
    endFor
    Sys_Exit(retVal)
  endFunction

endCode
