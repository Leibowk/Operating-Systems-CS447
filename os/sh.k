code sh

  -----------------------------------
  ----                           ----
  ----    BLITZ Shell Program    ----
  ----                           ----
  -----------------------------------

  const COMMAND_MAX = 512
        MAX_ARGS = 50
	MAX_PIPE = 10
	MAX_STMTS = 256

  enum  K_IF, K_WHILE, K_ELSE, K_END, K_CMD

  type stmt = record
                kind: int
                elsend: int
		cmd: array [COMMAND_MAX] of char
              endRecord

  class stmtList
      superclass Object
      fields 
        stmts: array [ MAX_STMTS ] of stmt
        nalloc: int
        nused: int
         
      methods
         Init()
	 newList ()
	 addStmt (kind: int, line: String) returns bool
	 setElsend (src, dest: int)
	 getLine (loc: int) returns ptr to stmt
	 numStmts () returns int
	 printStmts()
    endClass

  var commandLine: array [COMMAND_MAX] of char

      sList : stmtList

      -- Command line argument
      args: array [MAX_ARGS] of array [COMMAND_MAX] of char
      argc: int
      argv: array [MAX_ARGS] of ptr to array of char
      exitVal: int
      argOne: int

      -- Script 
      doPrompt: bool
      scrFd: int

-----------------------------  main  ---------------------------------

  function main ()
    --
    -- This is a simplified version of the shell program found in Unix.
    --

      var
	  -- Script support
	  rv: int
	  kind: int
	  after: int

      -- Initialize the args ...
      commandLine = new array of char { COMMAND_MAX of ' ' }
      sList = new stmtList
      sList.Init()

      -- arg support
      argv = new array of ptr to array of char { MAX_ARGS of null }
      args = new array of array [COMMAND_MAX] of char { MAX_ARGS of commandLine }
      -- Other initialization 
      numEnv = 0  -- should be a better way
      exitVal = 0

      -- script support
      doPrompt = true
      scrFd = 0
      if cmdArgs != null
        --Print ("Command args is not null!\n")
        doPrompt = cmdArgs arraySize < 2
        if cmdArgs arraySize > 1
           --Print ("Opening Script ....\n")
           scrFd = Sys_Open (cmdArgs[1],O_READ,0)
  	   if scrFd < 0
	      rv = Sys_GetError ()
	      Print ("sh: ")
	      Print (cmdArgs[1])
	      Print (": ")
	      Print (ErrorString(rv))
	      Print ("\n")
	      Sys_Exit(1)
	   endIf
        endIf
      endIf

      if doPrompt
        Print ("Welcome to the BLITZ Shell Program.\n")
        Print ("  Type 'exit' to terminate.\n")
        Print ("  Type 'more help' or 'more < help' for more info.\n")
      endIf

      while true

        -- Print prompt...
	if doPrompt
          Print ("% ")
        endIf

	-- blank out the line
	commandLine = new array of char {COMMAND_MAX of ' ' }

        -- Read in a command line...
	if doPrompt
           if !ReadLine (&commandLine)
	      Print ("Please use 'exit' to terminate the shell.\n")
	   endIf
	else
	   if !dReadLine (scrFd, &commandLine)
	      Sys_Exit(0)
	   endIf
	endIf

        RemoveComments(&commandLine)

	kind = FirstWord (&commandLine, &after)
	if kind == K_CMD
	   rv = ProcessLine (&commandLine,0,1,true)
	elseIf kind == K_IF || kind == K_WHILE
	   ProcessStmts (&commandLine, after, kind)
	else
	   Print ("Syntax Error: else/end outside of statement.\n")
	endIf

      endWhile

    endFunction

----------------------------   stmtList ------------------------------------

  behavior stmtList

     method Init()
         nalloc = 0
	 nused = 0
	 *((&stmts) asPtrTo int) = MAX_STMTS
       endMethod

     method newList()
         nused = 0
       endMethod
  
     method addStmt (kind: int, line: String) returns bool
         if nused == nalloc
	   if nalloc == MAX_STMTS
	      return false
           endIf
	   stmts[nalloc] = new stmt { kind = 0, elsend = 0,
	          cmd = new array of char { COMMAND_MAX of ' ' } }
	   nalloc = nalloc + 1
         endIf
	 stmts[nused].kind = kind
	 stmts[nused].elsend = 0
	 StrCopy (&stmts[nused].cmd, line)
	 nused = nused + 1
         return true
       endMethod

     method setElsend (src, dest: int)
         if src >= nused
	    return
         endIf
         stmts[src].elsend = dest
       endMethod

     method getLine (loc: int) returns ptr to stmt
	 --Print ("stmtList.getLine: asked for ") PrintInt(loc)
	 --Print (" nused is ") PrintInt(nused) Print("\n")
	 --Print ("stmt: '") Print (&(stmts[loc].cmd)) Print("'\n")
         if loc < nused
	    return &stmts[loc]
         endIf
         return &stmts[nused-1]  -- Should I return null or not!
       endMethod

     method numStmts () returns int
         return nused
       endMethod

     method printStmts()
       var i: int
          Print ("Stmts: nalloc=") PrintInt(nalloc)
	  Print (" nused=") PrintInt(nused) Print("\n")
          for i = 0 to nused-1
	    Print("SL[") PrintInt(i) Print("].{")
	    PrintInt(stmts[i].kind) Print(",")
	    PrintInt(stmts[i].elsend) Print("} '")
	    PrintStr (&(stmts[i].cmd)) Print("'\n")
	  endFor
       endMethod


    endBehavior
 
----------------------------   FirstWord ------------------------------------

  function FirstWord (cmd:String, after: ptr to int) returns int
      var start, pos, len: int
          kind: char
	  word: array [5] of char
	  word = new array of char { 5 of ' ' }
	  start = 0
	  pos = 0
	  len = 0
	  if FindNextWord (cmd, &start, &pos, &len, &kind) && len <= 5
	     GetWord (cmd, &word, start, len)
	     *after = start+len
	     if StrEqual (&word, "if")
	        return K_IF
             elseIf StrEqual (&word, "end")
                return K_END
             elseIf StrEqual (&word, "else")
	        return K_ELSE
	     elseIf StrEqual (&word, "while")
	        return K_WHILE
             endIf
	  endIf
	 return K_CMD
    endFunction

----------------------------  ProcessStmts ---------------------------------------

  function ProcessStmts ( cmd: String,  after, kind : int )
     var x: int
    
       sList.newList()
       if ! readStmts ( cmd, after, kind )
          return
       endIf
       -- sList.printStmts()
       x = runStmts (0)
       
    endFunction   

-----------------------------  readStmts  ---------------------------------

   function readStmts  ( cmd: String,  after, kind : int ) returns bool
       var numElses: int = 0
           Line: array [COMMAND_MAX] of char
	   lKind: int
	   lAfter: int
	   sStart: int

       -- Initialization
       Line = new array of char {COMMAND_MAX of ' ' }

       if kind == K_IF
          numElses = 1
       endIf

       sStart = sList.numStmts()

       GetWord (cmd, &Line, after, cmd arraySize - after)
       if !sList.addStmt ( kind, &Line ) -- should extract after if/while ...
          return false
       endIf

       -- Read until end ....
       do
         *((&Line) asPtrTo int) = COMMAND_MAX
         if doPrompt
	    Print ("> ")
            Line = new array of char {COMMAND_MAX of ' ' }
	    if  ! ReadLine (&Line)
	       Print ("Input problems. Statement aborted\n")
	       return false
	    endIf
	 else
	    if !dReadLine (scrFd, &Line)
	       Print ("EOF inside a statement, aborted\n")
	       return false
	    endIf
	 endIf
	 RemoveComments (&Line)

	 lKind = FirstWord (&Line, &lAfter)
	 
	 switch lKind

	   case K_IF:
	   case K_WHILE:
	      if ! readStmts (&Line, lAfter, lKind)
	         return false
	      endIf
	      break

	   case K_ELSE:
	      if numElses < 1
	         Print ("Syntax Error: mis-placed else\n")
		 return false
	      endIf
	      numElses = numElses -1
	      sList.setElsend (sStart, sList.numStmts())
	      sStart = sList.numStmts()
	      if ! sList.addStmt (K_ELSE, &Line)
	          return false
	      endIf
	      break
	   case K_END:
	      sList.setElsend (sStart, sList.numStmts())
	      if ! sList.addStmt (K_END, &Line)
	          return false
	      endIf
	      break

	   default:
	      if ! sList.addStmt (lKind, &Line)
	          return false
	      endIf
         endSwitch

       until lKind == K_END

       return true
     endFunction

-----------------------------  runStmts  ---------------------------------

   function runStmts  ( startLoc : int ) returns int
        var curLoc: int
	    rv: int
            ctlLine: ptr to stmt = sList.getLine(startLoc)
	do
	   if ProcessLine (&ctlLine.cmd, 0, 1, true) < 0
	      return sList.numStmts()
	   endIf
	   curLoc = startLoc + 1
	   if exitVal != 0
	      if ctlLine.kind == K_WHILE
	         return ctlLine.elsend + 1
	      endIf
	      curLoc = ctlLine.elsend + 1
	      if sList.getLine(curLoc-1).kind == K_END
	         return curLoc
              endIf
	   endIf
	   if curLoc < sList.numStmts()
	     while sList.getLine(curLoc).kind != K_END
	        switch sList.getLine(curLoc).kind
	          case K_IF:
		  case K_WHILE:
		     curLoc = runStmts (curLoc)
		     break
		  case K_ELSE:
		     return sList.getLine(curLoc).elsend+1
		  default:
		     rv = ProcessLine (&sList.getLine(curLoc).cmd, 0, 1, true)
		     curLoc = curLoc + 1
	        endSwitch
	      endWhile
           endIf
	   if ctlLine.kind == K_IF
		return curLoc+1
	   endIf
        until false
	return -1
     endFunction


-----------------------------  FindNextWord  ---------------------------------

  function FindNextWord (cmd:String, start, pos, len: ptr to int,
                         kind: ptr to char)  returns bool
    --
    -- This function looks in the command line buffer and finds the next word.
    -- It updates its parameters.
    --
      var ch: char

      -- Find the next non-blank...
      while *pos < cmd arraySize && cmd[*pos] == ' '
        *pos = *pos + 1
      endWhile

      *start = *pos

      if *pos >= cmd arraySize
         *kind = '\n'
	 return true
      endIf

      -- If it is < or >...
      if *pos < cmd arraySize &&
         (cmd[*pos] == '<' ||
          cmd[*pos] == '>')
        *kind = cmd[*pos]
        *pos = *pos + 1
        *len = 1
        return true
      endIf

      -- If it is \n...
      if *pos < cmd arraySize && cmd[*pos] == '\n'
        *kind = '\n'
        *len = 0
        return true
      endIf

      -- Else it must be a normal word...
      *kind = ' '  -- Normal word
      while *pos < cmd arraySize
        ch = cmd[*pos]
	if ch == '"'
	   *pos = *pos + 1
	   while *pos < cmd arraySize
	      if cmd[*pos] == '"'
		 break
              else
	         *pos = *pos + 1
              endIf
           endWhile
	   if *pos >= cmd arraySize
	      Print ("sh: mismatched \"\n")
	      return false
	   endIf
        elseIf ch == ' ' ||
           ch == '\n' ||
           ch == '<' ||
           ch == '>'
          break
        endIf
        *pos = *pos + 1
      endWhile
      *len = *pos - *start
      return true
    endFunction


-------------------  expand -----------------------

  function expand (inStr, outStr: String) returns bool
    var inX, outX: int
        inY: int
        cpX: int
        endIn: int
        numParen: int
        child: int
        charsRd: int
        outStrt: int
        valP: String
        envName: array [MAX_KEY_LEN] of char 
	numStr: array [14] of char
	tempStr :  array [COMMAND_MAX] of char
	FDs: array [2] of int

      *(outStr asPtrTo int) = COMMAND_MAX  -- Start with a full string
      *outStr = new array of char { COMMAND_MAX of ' ' }
      endIn = inStr arraySize -1
      while endIn > 0 && inStr[endIn] == ' ' endIn = endIn - 1 endWhile
      inX = 0
      outX = 0
      while inX < endIn && outX < outStr arraySize
         if inStr[inX] == '$'
	    inX = inX + 1
	    switch inStr[inX]

              case '{':
		inX = inX + 1
		inY = inX
		while inY < endIn && inStr[inY] != '}'
		   inY = inY + 1
                endWhile
		if inY == inStr arraySize
		   Print ("sh: Missing }\n")
		   return false
		endIf
		if inY - inX > MAX_KEY_LEN
		   Print ("sh: Variable name too long\n")
		   return false
		endIf
		*((&envName) asPtrTo int) = inY-inX
		for cpX = 0 to inY - inX -1
		  envName[cpX] = inStr[inX+cpX]
		endFor
	        valP = getEnv(&envName)
	        if valP != null
	           for cpX = 0 to valP arraySize -1
	              outStr[outX] = valP[cpX]
		      outX = outX + 1
	           endFor
                endIf
		inX = inY+1
		break

	      case '?':
	      case '$':
	        *((&numStr) asPtrTo int) = 14  -- initialize array
		if  inStr[inX] == '?'
		  IntToString (exitVal, &numStr)
		else
		  IntToString (Sys_GetPid(), &numStr)
		endIf
		cpX = 0
		while outX < outStr arraySize && cpX < numStr arraySize
		  outStr[outX] = numStr[cpX]
		  outX = outX + 1
		  cpX = cpX + 1
		endWhile
		inX = inX + 1
		break

	      case '(':
		-- initialize
		FDs = new array of int { 2 of -1 }
		numParen = 1
                -- Find the matching )
		inX = inX + 1
		inY = inX
		while inY < endIn && (numParen > 1 || inStr[inY] != ')')
		   if inStr[inY] == '(' numParen = numParen + 1 endIf
		   if inStr[inY] == ')' numParen = numParen - 1 endIf
		   inY = inY + 1
                endWhile
		if inY == inStr arraySize
		   Print ("sh: Missing )\n")
		   return false
		endIf
		*((&tempStr) asPtrTo int) = inY-inX+1
		for cpX = 0 to inY - inX -1
		  tempStr[cpX] = inStr[inX+cpX]
		endFor
		tempStr[inY-inX] = '\n'
		-- Move past $(...)
		inX = inY+1

		-- Prepare the pipe
		if Sys_Pipe(&FDs) < 0
		    return false
                endIf

		-- Recurse
                child = ProcessLine (&tempStr, 0, FDs[1], false)
		Sys_Close (FDs[1])
		if child < 0
		    Sys_Close (FDs[0])
		    return false
		endIf

		-- Read the chars ...
		outStrt = outX
		charsRd = 1
		while charsRd > 0 && outX < outStr arraySize
		     charsRd = Sys_Read (FDs[0], &outStr[outX], outStr arraySize - outX)
		     outX = outX + charsRd
		endWhile

		if charsRd != 0
		   Print ("Expansion too long.\n")
		   while charsRd != 0
		       charsRd = Sys_Read(FDs[0], &outStr[0], outStr arraySize)
		   endWhile
		   Sys_Close(FDs[0])
		   if child > 0
			exitVal = Sys_Join(child)
		   endIf
		   return false
                endIf

		-- Clean up
		Sys_Close (FDs[0])
		if child > 0
		    exitVal = Sys_Join(child)
		endIf

		-- Post Process
		if outStr[outX] == '\n'
		    outX = outX -1
		endIf
		while outStrt <= outX 
                    if outStr[outStrt] == '\n'
                       outStr[outStrt] = ' '
                    endIf
		    outStrt = outStrt + 1
                endWhile
		break

              default:
                 outStr[outX] = '$'
		 outX = outX + 1
	    endSwitch
         else
	    outStr[outX] = inStr[inX]
	    outX = outX + 1
	    inX = inX + 1
         endIf
      endWhile
     if outX >= outStr arraySize && inX < endIn
	Print ("sh: expansion too long\n")
        return false
      endIf
      return true
    endFunction

-------------------  processline Helper ------------------

  function closeRedir ( inFd, cinFd, outFd, coutFd: int)
      -- Close any open files
      if cinFd != inFd
	 Sys_Close (cinFd)   
      endIf
      if coutFd != outFd
         Sys_Close (coutFd)
      endIf
    endFunction

----------------------------- ProcessLine ------------------------------

  function ProcessLine (str: String, inFd, outFd: int, wait: bool) returns int

    var   pid, i: int
          rv: int = 0
          cinFd: int = inFd
	  coutFd: int = outFd
          nextPos, len, start: int
          kind: char        -- will be either ' ', '<', '\n', or '>'
          gotInFile, gotOutFile: bool
	  inFile, outFile: array [COMMAND_MAX] of char
	  tempStr :  array [COMMAND_MAX] of char
	  printNL: bool
          nlLoc: int
	  child: int
	  childCnt: int
	  children: array [MAX_PIPE] of int = new array of int { MAX_PIPE of 0}
	  pipeLoc: int
	  pipeFD: array [2] of int = new array of int { 2 of -1 }

	  bv: bool

      -- Processes a line for the shell
      -- Print ("PL: (") PrintInt(str asInteger) Print (") '") PrintStr (str) Print ("'\n")

      -- Initializtions 
      inFile = new array of char { COMMAND_MAX of ' ' }
      outFile = inFile
      tempStr = inFile

      -- Try pipelines!
      nextPos = 0
      nlLoc = StrChr(str, 0, '\n')
      --Print ("nlLoc = ") PrintInt(nlLoc) Print("\n")

      pipeLoc = StrChr(str, nextPos, '|')
      if pipeLoc >= 0 && pipeLoc < nlLoc
         child = 0
      	 childCnt = 0
         while pipeLoc > 0 && childCnt < MAX_PIPE && child >= 0
	    i = Sys_Pipe(&pipeFD)
	    if i != 0
	       Print ("No Pipes left!\n")
	    endIf
	    GetWord (str, &tempStr, nextPos, pipeLoc-nextPos+1)
	    tempStr[pipeLoc-nextPos] = '\n'
	    --Print ("pipe: tempStr is '") Print(&tempStr) Print ("'\n")
	    child = ProcessLine(&tempStr, cinFd, pipeFD[1], false)
	    if child > 0
	       children[childCnt] = child
	       childCnt = childCnt + 1
	    endIf
	    if cinFd != inFd
	        Sys_Close(cinFd)
	    endIf
	    cinFd = pipeFD[0]
	    Sys_Close(pipeFD[1])
	    nextPos = pipeLoc + 1
	    pipeLoc = StrChr(str, nextPos, '|')
	 endWhile

	 if child >= 0
            GetWord (str, &tempStr, nextPos, str arraySize - nextPos)
	    --Print ("pipe final: tempStr is '") Print(&tempStr) Print ("'\n")
	    child = ProcessLine (&tempStr, cinFd, outFd, true)
	    Sys_Close(cinFd)
	 endIf

	 -- Join the children
	 while childCnt > 0
	   childCnt = childCnt -1
	  --Print("Joining: ") PrintInt(children[childCnt]) Print("\n")
	   exitVal = Sys_Join (children[childCnt])
	 endWhile

	 return -1
      endIf

      -- Expansion ....
      if ! expand(str, &tempStr)
	 return -1
      else
         str =  &tempStr
      endIf

      -- Parse the arguments    
      gotInFile = false
      gotOutFile = false
      argc = 0

        while true
          if !FindNextWord (str, &start, &nextPos, &len, &kind)
	     return -1
	  endIf
          if kind == '\n'
            break
          elseIf kind == ' '
	    if argc == MAX_ARGS
	      Print ("Too many command line arguments\n")
	      argc = 0
	      exitVal = 1
	      break
            endIf
	    GetWord (str, &args[argc], start, len)
	   -- Print ("got Regular word: ") Print (&args[argc]) Print("\n")
	    argc = argc+1	    
          elseIf kind == '<' && !gotInFile
            if !FindNextWord (str, &start, &nextPos, &len, &kind)
	       return -1
	    endIf
            if kind == ' '
              GetWord (str, &inFile, start, len)
              gotInFile = true
            else
              Print ("sh: Missing name for redirect.\n")
              argc = 0
	      exitVal = 1
              break
            endIf
          elseIf kind == '>' && !gotOutFile
            if !FindNextWord (str, &start, &nextPos, &len, &kind)
	       return -1
	    endIf
            if kind == ' '
              GetWord (str, &outFile, start, len)
              gotOutFile = true
            else
              Print ("sh: Missing name for redirect.\n")
              argc = 0
	      exitVal = 1
              break
            endIf
          else
            Print ("sh: Command line problems\n")
            argc = 0
            break
          endIf
        endWhile

        -- Make sure we got a command...
        if argc == 0
          return 0
        endIf

	-- Make the args array
        *((&argv) asPtrTo int) = argc
	--Print ("argc is ") PrintInt(argc) Print("\n")
	for i = 0 to argc-1
	   argv[i] = & args[i]
	   --Print ("Arg: ") Print(argv[i]) Print("\n")
	endFor

	-- Open redirected files
        if gotInFile
	    if cinFd != inFd
	       Sys_Close (cinFd)
	    endIf
            cinFd = Sys_Open (&inFile, O_READ,0)
            if cinFd < 0
	      rv = Sys_GetError()
	      Print (&inFile)
              Print (": ")
	      Print (ErrorString(rv))
	      Print ("\n")
	      exitVal = 1
              return -1
            endIf
         endIf
         if gotOutFile
	    if coutFd != outFd
	       Sys_Close (coutFd)
	    endIf
            coutFd = Sys_Open (&outFile,O_WRITE|O_MAYCREATE,6)
            if coutFd < 0
	      rv = Sys_GetError ()
	      Print (&outFile)
              Print (": ")
	      Print (ErrorString(rv))
	      Print ("\n")
	      exitVal = 1
	      return -1
            endIf
         endIf
        
        -- Check for built-ins
	exitVal = 0
        if StrEqual (argv[0], "exit")
          Print ("[Shell process terminated]\n")
	  if argv arraySize > 1
	    Sys_Exit (StringToInt(argv[1]))
	  endIf
          Sys_Exit (0)
	elseIf StrEqual (argv[0], "echo")
	  i = 1
	  if argv arraySize > 1 && StrEqual (argv[1], "-n")
	     printNL = false
	     i = 2
          else
             printNL = true
          endIf
	  while i < argv arraySize 
	     dPrint (coutFd, argv[i])
	     if i != argv arraySize -1
               dPrint (coutFd," ")
	     endIf
	     i = i + 1
          endWhile
	  if printNL
	    dPrint (coutFd,"\n")
          endIf
	  closeRedir(inFd, cinFd, outFd, coutFd)
	  return 0
	elseIf StrEqual (argv[0], "cd")
	  if argv arraySize == 1
             rv =  Sys_Chdir ("/")
             if rv != 0
	        rv = Sys_GetError()
	        Print ("cd: ") Print (ErrorString(rv)) Print ("\n")
		exitVal = 1
	     endIf
	     closeRedir(inFd, cinFd, outFd, coutFd)
	     return 0
          elseIf argv arraySize == 2
             rv = Sys_Chdir (argv[1])
             if rv != 0
	        rv = Sys_GetError()
	        Print ("cd: ") Print (ErrorString(rv)) Print ("\n")
		exitVal = 1
	     endIf
	     closeRedir(inFd, cinFd, outFd, coutFd)
	     return 0
	  else
	        Print ("cd: too many arguments.\n")
		closeRedir(inFd, cinFd, outFd, coutFd)
		exitVal = 1
		return -1
	  endIf
	elseIf StrEqual (argv[0], "set")
	  rv = 0
	  if argv arraySize != 3
	      Print ("Usage: set name value\n")
	      exitVal = 1
	      rv = -1
	  else
	    bv = setEnv (argv[1], argv[2])
	    bv = bv
	    if ! bv
	      Print ("argv[1]") Print (": not set.\n")
	      exitVal = 1
	      rv = -1
	    endIf
          endIf
	  closeRedir(inFd, cinFd, outFd, coutFd)
	  return rv
        elseIf StrEqual (argv[0], "unset")
          rv = 0
	  if argv arraySize != 2
	      Print ("Usage: unset name\n")
	      exitVal = 1
	      rv = -1
	  else
	      unsetEnv(argv[1])
	  endIf
	  closeRedir(inFd, cinFd, outFd, coutFd)
	  return rv
	elseIf StrEqual (argv[0], "true")
	  exitVal = 0
	  closeRedir(inFd, cinFd, outFd, coutFd)
	  return 0	  
	elseIf StrEqual (argv[0], "false")
	  exitVal = 1
	  closeRedir(inFd, cinFd, outFd, coutFd)
	  return 0
	elseIf StrEqual (argv[0], "read")
	  rv = 0
	  if argv arraySize != 2
	     Print ("Usage: read VARNAME\n")
	     exitVal = 1
	     rv = -1
	  else
	     -- can reuse inFile and outFile arrays
	     *((&inFile) asPtrTo int) = COMMAND_MAX
	     if cinFd == 0
	        bv = ReadLine (&inFile)
	     else
	        bv = dReadLine(cinFd, &inFile)
	     endIf
	     if bv
	        nlLoc = StrChr (&inFile, 0, '\n')
		GetWord (&inFile, &outFile, 0, nlLoc)
		bv = setEnv (argv[1], &outFile)
	     else
	        Print ("read built-in: read error\n")
	        rv = -1
	     endIf
	  endIf
	  closeRedir(inFd, cinFd, outFd, coutFd)
	  return 0
        endIf

        -- Execute the program and wait for it to terminate...
        pid = Sys_Fork ()
        if pid == 0
	  if cinFd != 0
	     Sys_Close(0)
	     i = Sys_Dup(cinFd)
	  endIf
	  if coutFd != 1
	     Sys_Close(1)
	     i = Sys_Dup(coutFd)
	  endIf
	  if args[0][0] != '/'
	    *((&tempStr) asPtrTo int) = COMMAND_MAX
	    StrCopy (&tempStr, "/bin/")
	    *((&tempStr) asPtrTo int) = 5
	    Append (&tempStr, &args[0], COMMAND_MAX)
	    i = Sys_Exec (&tempStr,&argv)
	  endIf
          i = Sys_Exec (&args[0],&argv)
	  i = Sys_GetError ()
          Print ("sh: ")
	  Print (argv[0])
	  Print (": ")
	  Print (ErrorString(i))
	  Print ("\n")
          Sys_Exit (127)
        else
	  if wait
	      exitVal = Sys_Join (pid)
	  else
	      rv = pid
	  endIf
        endIf

	closeRedir(inFd, cinFd, outFd, coutFd)

	return rv

    endFunction

-----------------------------  GetWord  ---------------------------------

  function GetWord (cmd: String, str: String, start, len: int)
    --
    -- This function moves "len" characters from "commandLine" (starting
    -- at "start") into the string "str".  It assumes that "str" is large
    -- enough.
    --  Modification:  Does not move " characters.
    var sx, dx: int

      *(str asPtrTo int) = len
      dx = 0
      for sx = start to start + len - 1
          if cmd[sx] != '"'
	      str[dx] = cmd[sx]
	      dx = dx + 1
	  endIf
      endFor
      *(str asPtrTo int) = dx
    endFunction

  function Append (str, toAppend : String, maxLen: int )
    var ix: int
        toCopy: int = toAppend arraySize
	start: int = str arraySize

      if start + toCopy > maxLen
         toCopy = maxLen - start
      endIf

      *(str asPtrTo int) = start + toCopy
      for ix = 0 to toCopy -1
         str[start + ix] = toAppend[ix]
      endFor

    endFunction

--------------------------- StrChr -----------------------------

  function StrChr (str:String, start: int, ch: char) returns int
    var ix: int 
       for ix = start to str arraySize -1
         if str[ix] == ch
	     return ix
	 endIf
       endFor
       return -1
    endFunction

--------------------------- PrintStr ----------------------------
  function PrintStr (str:String)
    var ix: int = 0
       while ix < str arraySize -1 && str[ix] != '\n'
          dPutChar(0, str[ix])
	  ix = ix +1
       endWhile
    endFunction
    

---------------------------- RemoveComments --------------------

  function RemoveComments (str:String)
    var ix: int = 0
       while ix < str arraySize -1
          if str[ix] == intToChar(9)
	     str[ix] = ' '
	  elseIf str[ix] == '#'
	     str[ix] = '\n'
	     return
	  endIf
	  ix = ix+1
	endWhile
     endFunction
  
endCode
