-- Disk usage -- report in blocks.  (Double counts links)
-- Oct 31, 2014

code du

  var inKbytes: bool = false
      summary: bool = false
      prtName: bool = true
      retVal: int = 0

  function main()
     var ix: int = 1
         sz: int

      -- Check out what we are doing
      if cmdArgs == null 
          sz = calcDuOn (".", true)
      else
          while ix < cmdArgs arraySize && cmdArgs[ix][0] == '-'
	     switch cmdArgs[ix][1]
	       case 'k':
	         inKbytes = true
		 break
	       case 's':
	         summary = true
	         break
	       case 'n':
	         prtName = false
		 break
	       default:
                 Print ("Unknown switch: ")
		 Print (cmdArgs[ix])
		 Print ("\n")
		 Sys_Exit(1)
	     endSwitch
	     ix = ix + 1
	  endWhile
	  if ix == cmdArgs arraySize
	     sz = calcDuOn (".", true)
          else 
             while ix < cmdArgs arraySize
	        sz = calcDuOn (cmdArgs[ix], true)
	        ix = ix + 1
             endWhile
	  endIf
      endIf
      Sys_Exit(retVal)

    endFunction

  function calcDuOn(name: String, show: bool ) returns int
    var fd: int
        rv: int
	nblocks: int = 0
        ent: dirEntry
        stat: statInfo

        rv = Sys_Stat (name, &stat)
	if rv < 0
	   rv = Sys_GetError()
	   Print ("du: ") Print (name) Print (": ") Print(ErrorString(rv))
	   Print ("\n")
	   retVal = 1
	   return 0
	endIf

	if (stat.mode & TYPE_FILE) == TYPE_FILE
	   if show
	       if inKbytes
	           PrintInt (stat.balloc * 8)
	       else
	           PrintInt (stat.balloc)
	       endIf
	       if prtName
                 Print ("  ")
                 Print (name)
	       endIf
               Print ("\n")
	   endIf
	   return stat.balloc
	endIf
      

        rv = Sys_Chdir(name)
	if rv < 0
	   rv = Sys_GetError()
	   Print ("du: ") Print (name) Print (": ") Print(ErrorString(rv))
	   Print ("\n")
	   retVal = 1
	   return 0
	endIf
	rv = Sys_Stat(".", &stat)
	if rv > -1
	    nblocks = nblocks + stat.balloc
	else
	    rv = Sys_GetError ()
	    Print (name) Print (": ") Print (ErrorString(rv)) Print("\n")
	endIf
        fd = Sys_Opendir (".")
	if fd < 0
	   rv = Sys_GetError()
	   Print ("du: ") Print (name) Print (": ") Print(ErrorString(rv))
	   Print ("\n")
	   retVal = 1
	   return 0
	endIf

	while Sys_Readdir (fd, &ent) == 0
	    --Print ("Sys_Readdir: Ent: ") PrintInt (ent.inodeNum)
	    --Print (" ") Print (&ent.name) Print ("\n")

	    rv = Sys_Stat(&ent.name, &stat)
	    if rv > -1
	       if (stat.mode & TYPE_FILE) == TYPE_FILE
	          nblocks = nblocks + stat.balloc
	       else
	          if ent.name[0] != '.'
	              nblocks = nblocks + calcDuOn(&ent.name, show && !summary)
		  endIf
	       endIf
            endIf
        endWhile

	Sys_Close(fd)
        rv = Sys_Chdir("..")
        if rv < 0
	    Print ("Something fishy!  Couldn't cd to ..\n")
	endIf
	if show
	    if inKbytes
	        PrintInt (nblocks * 8)
	    else
	        PrintInt (nblocks)
	    endIf
	    if prtName 
              Print ("  ")
              Print (name)
	    endIf
            Print ("\n")
	 endIf

	return nblocks
    endFunction

endCode
