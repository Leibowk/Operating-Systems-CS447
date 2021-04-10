-- Simple df program 
--
--
--   Phil Nelson,  Nov 2019
--
--   df [options]
--

code df

  var
      showFSsize: bool = true
      showTotInode: bool = true
      showFreeInode: bool = true
      showTotDB: bool = true
      showFreeDB: bool = true
      printIntro: bool = true

  function main ()
    var 
        di: diskInfo
        rv: int
        ix, cix: int

    
   -- Process command line args
    ix = 1
    if cmdArgs != null && cmdArgs arraySize > 1 && cmdArgs[ix][0] == '-'
       printIntro = false
       showFSsize = false
       showTotInode = false
       showFreeInode = false
       showTotDB = false
       showFreeDB= false
    endIf

    while ix < cmdArgs arraySize && cmdArgs[ix][0] == '-'
       cix = 1
       while cix < cmdArgs[ix] arraySize
          switch cmdArgs[ix][cix]
            case 'F': -- FS size
	      showFSsize = true
              break
            case 'i': -- free inodes
	      showFreeInode = true
              break
            case 'I': -- total inodes
	      showTotInode = true
              break
            case 'd': -- free DB
	      showFreeDB = true
              break
            case 'D': -- total DB
	      showTotDB = true
              break
	    default:
              Print ("Unknown switch: ")
              Print (cmdArgs[ix])
              Print ("\n")
              Sys_Exit(1)
           endSwitch
	   cix = cix + 1
       endWhile
       ix = ix + 1
    endWhile

    -- Process command line args
    rv = Sys_GetDiskInfo(&di)
    if rv < 0
       rv = Sys_GetError ()
       Print ("df: ") Print (ErrorString(rv)) Print ("\n")
       Sys_Exit(1)
    endIf

    if printIntro
       Print ("Disk size, total Inodes, free inodes, total disk blocks, free disk blocks\n")
       PrintInt (di.diskSize) Print (", ")
       PrintInt (di.totalInodes) Print (", ")
       PrintInt (di.freeInodes) Print (", ")
       PrintInt (di.totalDblocks) Print (", ")
       PrintInt (di.freeDblocks) Print ("\n")
    else
       if showFSsize
         PrintInt (di.diskSize) Print (" ")
       endIf
       if showTotInode
         PrintInt (di.totalInodes) Print (" ")
       endIf
       if showFreeInode
         PrintInt (di.freeInodes) Print (" ")
       endIf
       if showTotDB
         PrintInt (di.totalDblocks) Print (" ")
       endIf
       if showFreeDB
         PrintInt (di.freeDblocks)
       endIf
       Print ("\n")
    endIf
    Sys_Exit(0)
    
  endFunction
 

endCode
