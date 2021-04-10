-- Simple test program
--
--   a = b for strings
--   a != b for strings
--   a -eq b for integers
--   a -ne b

--   Phil Nelson, 2016
--

code test

 
  var
      stack: array [20] of valrec
      top: int

      ops: array [20] of char
      opTop: int

      curOp: char


  function main ()
    var
        ix: int
	haveArg: bool

    if cmdArgs == null 
       Sys_Exit(1)
    endIf

    -- Initialize
    stack = new array of valrec { 20 of new valrec { valtp=0, bval=false, sval=null } }
    ops = new array of char { 20 of ' ' }
    top = -1
    opTop = -1
    ix = 1
    haveArg = false

    -- Process command line args
    while ix < cmdArgs arraySize
      switch cmdArgs[ix][0]
	case '=':
	case '<':
	case '>':
	     if !haveArg || cmdArgs[ix] arraySize != 1
                error (cmdArgs[ix])
	     endIf
	     opTop = opTop + 1
	     ops[opTop] = cmdArgs[ix][0]
	     haveArg = false
	     break

        case '!':
	     opTop = opTop + 1
             if haveArg
	       if StrCmp(cmdArgs[ix], "!=") != 0
	         error(cmdArgs[ix])       
	       endIf
	       ops[opTop] = '!'
             else
               ops[opTop] = 'N'
             endIf
	     haveArg = false
	     break

	case '-':
	     if cmdArgs[ix] arraySize == 1
                error (cmdArgs[ix])
	     endIf
	     if StrCmp(cmdArgs[ix], "-a") == 0
	       curOp = 'a'
	     elseIf StrCmp(cmdArgs[ix], "-o") == 0
	       curOp = 'o'
	     elseIf StrCmp(cmdArgs[ix], "-ne") == 0
	       curOp = 'n'
	     elseIf StrCmp(cmdArgs[ix], "-eq") == 0
	       curOp = 'e'
	     elseIf StrCmp(cmdArgs[ix], "-lt") == 0
	       curOp = 'l'
	     elseIf StrCmp(cmdArgs[ix], "-le") == 0
	       curOp = 'L'
	     elseIf StrCmp(cmdArgs[ix], "-gt") == 0
	       curOp = 'g'
	     elseIf StrCmp(cmdArgs[ix], "-ge") == 0
	       curOp = 'G'
	     elseIf cmdArgs[ix][1] >= '0' && cmdArgs[ix][1] <= '9'
	       if haveArg
	 	 error (cmdArgs[ix])
	       endIf
	       top = top+1
	       stack[top].valtp = K_str
	       stack[top].sval = cmdArgs[ix]
	       haveArg = true
	       break
	     elseIf cmdArgs[ix] arraySize == 2 && (cmdArgs[ix][1] == 'd'
	         || cmdArgs[ix][1] == 'e' || cmdArgs[ix][1] == 'f'
		 || cmdArgs[ix][1] == 'r' || cmdArgs[ix][1] == 's'
		 || cmdArgs[ix][1] == 'w' || cmdArgs[ix][1] == 'x')
		 -- Print ("File op\n")
		 if haveArg
		    error(cmdArgs[ix])
		 endIf
		 if cmdArgs[ix][1] == 'e'
		    curOp = 'X'
		 else
		    curOp = cmdArgs[ix][1]
		 endIf
		 opTop = opTop + 1
		 ops[opTop] = curOp
		 break
             else
               error(cmdArgs[ix])
	     endIf
	     if !haveArg
                error (cmdArgs[ix])
	     endIf
             if opTop >= 0 && ((curOp == 'o') 
	        || ((curOp == 'a') && (ops[opTop] != 'o')))
               EvalTop()
             endIf
	     opTop = opTop + 1
	     ops[opTop] = curOp
	     haveArg = false
	     break

	case '(':
	     opTop = opTop + 1
	     ops[opTop] = '('
	     haveArg = false
	     break

	case ')':
	     while opTop >= 0 && ops[opTop] != '('
	       EvalTop()
	     endWhile
	     if opTop >= 0 && ops[opTop] == '('
	        opTop = opTop - 1
	     else
	        Print ("Mismatched parenthesis\n")
		Sys_Exit(1)
	     endIf
	     break

        case ']':
	     if cmdArgs[ix] arraySize != 1 ||
	        !StrEqual (cmdArgs[0], "[") ||
		ix != cmdArgs arraySize - 1
		error (cmdArgs[ix])
	     endIf
             break
	     
	default: -- An argument
	     -- Print ("def arg\n")
	     if haveArg
		error (cmdArgs[ix])
	     endIf
	     top = top+1
	     stack[top].valtp = K_str
	     stack[top].sval = cmdArgs[ix]
	     haveArg = true
	     
      endSwitch
      ix = ix + 1
    endWhile

    -- Do final calculations and print result
    while opTop >= 0
       EvalTop()
    endWhile
   
    if top == 0
       if stack[0].valtp == K_str
         if stack[0].sval arraySize != 0
	   Sys_Exit(0)
	 else
	   Sys_Exit(1)
	 endIf
       endIf
       if stack[0].bval
         Sys_Exit(0)
       else
         Sys_Exit(1)
       endIf
    else
       Sys_Exit(1)
    endIf

  endFunction

  function EvalTop ()
    var val1, val2: valrec
        op: char
	st: statInfo
	rv: int

	if ops[opTop] == '('
	   Print ("Mismatched parenthesis.\n")
	   Sys_Exit(1)
	endIf
	op = ops[opTop]
	-- Print ("val2: ") printVal(val2) Print("\n")
        switch op
	   case 'N':
	   case 'd':
	   case 'X':
	   case 'f':
	   case 'r':
	   case 's':
	   case 'w':
	   case 'x':
	     if (top < 0)
	       Print ("Error: not enough operands.\n")
	       Sys_Exit(1)
	     endIf
             val1 = stack[top]
	     break
	   default:
	     if (top < 1)
	       Print ("Error: not enough operands.\n")
	       Sys_Exit(1)
	     endIf
             val2 = stack[top]
             val1 = stack[top-1]
	    -- Print ("val1: ") printVal(val1) Print("\n")
        endSwitch
	-- Print ("op: ") PutChar(op) Print("\n")

	switch op 
	   case '!':  -- Not equal string
	   case '=':  -- Equal string
	   case '<':  -- string less
	   case '>':  -- string greater
              stack[top-1].valtp = K_bool
              if val1.valtp != K_str || val2.valtp != K_str
                 stack[top-1].bval = false
              else
	        switch op
		  case '=':
                     stack[top-1].bval = StrEqual (val1.sval, val2.sval)
		     break
		  case '!':
                     stack[top-1].bval = !StrEqual (val1.sval, val2.sval)
		     break
		  case '<':
                     stack[top-1].bval = StrCmp (val1.sval, val2.sval) < 0
		     break
		  case '>':
                     stack[top-1].bval = StrCmp (val1.sval, val2.sval) > 0
		     break
		endSwitch
              endIf
              break

	   case 'N':  -- logical noT
              if val2.valtp == K_bool
                 stack[top].bval = !val2.bval
              else
                 stack[top].bval = val2.sval arraySize == 0
                 stack[top].valtp = K_bool
              endIf
	      top = top + 1 -- to combat the following -1
              break
	      
           case 'a':  -- logical and
           case 'o':  -- logical or
	      if val1.valtp != K_bool || val1.valtp != K_bool
	        stack[top-1].valtp = K_bool
	        stack[top-1].bval = false
	      elseIf op == 'a'
	        stack[top-1].bval = val1.bval && val2.bval
	      else
	        stack[top-1].bval = val1.bval || val2.bval
	      endIf
	      break

	   case 'e':  -- integer equal
	   case 'n':  -- integer not equal
	   case 'g':  -- integer greater than
	   case 'G':  -- integer greater or equal
	   case 'l':  -- integer less than
	   case 'L':  -- integer less or equal
	     if val1.valtp == K_bool || val1.valtp == K_bool ||
	        ((val1.sval[0] < '0' || val1.sval[0] > '9'
	        || val2.sval[0] < '0' || val2.sval[0] > '9')
		 && (val1.sval[0] != '-' && val2.sval[0] != '-' &&
		     val1.sval[0] != '+' && val2.sval[0] != '+'))
		Print ("Operator ") PutChar (op) Print (" requires an integer\n")		Sys_Exit(1)
	     endIf
	     stack[top-1].valtp = K_bool
	     switch op
	        case 'e':  -- integer equal
		  stack[top-1].bval =
		     StringToInt (val1.sval) == StringToInt(val2.sval)
		  break
		case 'n':  -- integer not equal
		  stack[top-1].bval =
		     StringToInt (val1.sval) != StringToInt(val2.sval)
		  break
		case 'g':  -- integer greater than
		  stack[top-1].bval =
		     StringToInt (val1.sval) > StringToInt(val2.sval)
		  break
		case 'G':  -- integer greater or equal
		  stack[top-1].bval =
		     StringToInt (val1.sval) >= StringToInt(val2.sval)
		  break
		case 'l':  -- integer less than
		  stack[top-1].bval =
		     StringToInt (val1.sval) < StringToInt(val2.sval)
		  break
		case 'L':  -- integer less or equal
		  stack[top-1].bval =
		     StringToInt (val1.sval) <= StringToInt(val2.sval)
		  break
	     endSwitch
             break

	  case 'd': -- directory
	  case 'X': -- 'e' for exists
	  case 'f': -- file
	  case 'r': -- readable
	  case 's': -- size > 0
	  case 'w': -- writable
	  case 'x': -- executable
	    if val1.valtp != K_str
	       stack[top].bval = false
	    else
	      -- stat the file
	      stack[top].valtp = K_bool
	      stack[top].bval = false	    
	      rv = Sys_Stat (val1.sval, &st)
	      if rv == 0
	        switch op
	         case 'd': -- directory
		   stack[top].bval = (st.mode & TYPE_DIR) != 0
		   break
		 case 'X': -- exists
		   stack[top].bval = true
		   break
		 case 'f': -- file
		   stack[top].bval = (st.mode & TYPE_FILE) != 0
		   break
		 case 'r': -- readabe
		   stack[top].bval = (st.mode & MODE_READ) != 0
		   break
		 case 's': -- size > 0
		   stack[top].bval = st.fsize > 0
		   break
		 case 'w': -- writable
		   stack[top].bval = (st.mode & MODE_WRITE) != 0
		   break
		 case 'x': -- executable
		   stack[top].bval = (st.mode & MODE_EXE) != 0
		   break
	        endSwitch
	      endIf
	    endIf
	    top = top + 1 -- to combat the next -1    
	  break
	endSwitch

	top = top-1
	opTop = opTop-1
	-- Print ("Result: ") printVal(stack[top]) Print("\n")
    endFunction

    function printVal (data: valrec)
       if data.valtp == K_bool
         if data.bval
	   Print ("True")
	 else
	   Print ("False")
	 endIf
       else
         Print (data.sval)
       endIf
    endFunction

  function error (name: ptr to array of char)
      Print ("Syntax Error: ")
      Print (name)
      Print ("\n")
      Sys_Exit(1)
    endFunction
    
endCode

