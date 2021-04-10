-- Simple stat program 
--
--
--   Phil Nelson,  Nov 2018
--
--   stat file ...
--

code stat

  var
      showName: bool = true
      showInum: bool = true
      showLinks: bool = true
      showType: bool = true
      showProt: bool = true
      showSize: bool = true
      showBlocks: bool = true

   function StatFile (name: String)
    var sb: statInfo
        rv: int
	typ: int

       rv = Sys_Stat(name, &sb)
       if (rv < 0)
          rv = Sys_GetError ()
          Print ("stata: ") Print (name) Print (": ")
	  Print (ErrorString (rv)) Print ("\n")
	  return
       endIf
       typ = sb.mode / TYPE_FILE

       if showName
          Print(name) Print(": ")	
       endIf
       if showType
          if typ == 1
	     Print ("f ")
	  else
	     Print ("d ")
          endIf
       endIf
       if showInum
          PrintInt(sb.inodeNum) Print(" ")
       endIf
       if showLinks
          PrintInt(sb.nlinks) Print(" ")
       endIf
       if showProt
          PrintInt(sb.mode - typ*TYPE_FILE) Print (" ")
       endIf
       if showSize
          PrintInt(sb.fsize) Print (" ")
       endIf
       if showBlocks
          PrintInt(sb.balloc) Print (" ")
       endIf
       Print("\n")

    endFunction
    
  function main ()
    var ix: int = 1
        cix: int

    if cmdArgs == null || cmdArgs arraySize == 1
       Print ("Usage: stat file ...\n")
       Sys_Exit(0)
    endIf

   -- Process command line args
    if cmdArgs[ix][0] == '-'
       showName = false
       showInum = false
       showLinks = false
       showType = false
       showProt = false
       showSize = false
       showBlocks = false
    endIf

    while ix < cmdArgs arraySize && cmdArgs[ix][0] == '-'
       cix = 1
       while cix < cmdArgs[ix] arraySize
          switch cmdArgs[ix][cix]
            case 'n': -- name
	      showName = true
              break
            case 'i': -- inode number
	      showInum = true
              break
            case 'b': -- number of blocks
	      showBlocks = true
              break
            case 's': -- size of file
	      showSize = true
              break
            case 'l': -- number of links
	      showLinks = true
              break
            case 'p': -- protection number
	      showProt = true
              break
            case 't': -- type number
	      showType = true
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
    while ix < cmdArgs arraySize
       StatFile(cmdArgs[ix])
       ix = ix+1
    endWhile

  endFunction
 

endCode
