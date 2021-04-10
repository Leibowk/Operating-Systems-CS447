-- Simple expr, just + - * / % ( )
--
--   Phil Nelson
--

code expr

  var
      stack: array [20] of int
      top: int

      ops: array [20] of char
      opTop: int

  function main ()
    var
        ix: int
	haveNum: bool
	val: int

    if cmdArgs == null 
       Print ("No argugments\n")
       Sys_Exit(1)
    endIf

    -- Initialize
    stack = new array of int { 20 of 0}
    ops = new array of char { 20 of ' '}
    top = -1
    opTop = -1
    ix = 1
    haveNum = false

    -- Process command line args
    while ix < cmdArgs arraySize
      switch cmdArgs[ix][0]
	case '+':
	case '-':
	     if cmdArgs[ix] arraySize == 1
	       if !haveNum 
	          Print("Syntax error: ")
		  Print (cmdArgs[ix])
		  Print ("\n")
		  Sys_Exit(1)
	       endIf
	       while opTop >= 0 -- && (ops[opTop] != '(')
	          EvalTop()
	       endWhile
	       opTop = opTop + 1
	       ops[opTop] = cmdArgs[ix][0]
	       haveNum = false
	       break
	     elseIf cmdArgs[ix][1] < '0' || cmdArgs[ix][1] > '9'
	          Print("Syntax error: ")
		  Print (cmdArgs[ix])
		  Print ("\n")
		  Sys_Exit(1)
             endIf
	     -- Fall through into an integer as it is a signed integer

        case '0':
	case '1':
	case '2':
	case '3':
	case '4':
	case '5':
	case '6':
	case '7':
	case '8':
	case '9':
	     if haveNum
	        Print("Syntax error: ")
		Print (cmdArgs[ix])
		Print ("\n")
		Sys_Exit(1)
	     endIf
	     val = StringToInt(cmdArgs[ix])
	     top = top+1
	     stack[top] = val
	     haveNum = true
	     break

	case '*':
	case '/':
	case '%':
	     if !haveNum || (cmdArgs[ix] arraySize) > 1
	        Print("Syntax error: ")
		Print (cmdArgs[ix])
		Print ("\n")
		Sys_Exit(1)
	     endIf
	     if opTop >= 0 && (ops[opTop] == '*' || ops[opTop] == '/' || ops[opTop] == '%')
	        EvalTop()
	     endIf
	     opTop = opTop + 1
	     ops[opTop] = cmdArgs[ix][0]
	     haveNum = false
	     break

	case '(':
	     if haveNum || (cmdArgs[ix] arraySize) > 1
	        Print("Syntax error: ")
		Print (cmdArgs[ix])
		Print ("\n")
		Sys_Exit(1)
	     endIf
	     opTop = opTop + 1
	     ops[opTop] = cmdArgs[ix][0]
	     haveNum = false
	     break

	case ')':
	     if !haveNum || (cmdArgs[ix] arraySize) > 1
	        Print("Syntax error: ")
		Print (cmdArgs[ix])
		Print ("\n")
		Sys_Exit(1)
	     endIf
	     while opTop >= 0 && ops[opTop] != '('
	         EvalTop()
             endWhile
	     if opTop < 0
	         Print ("Syntax Error: too many )s\n")
		 Sys_Exit(1)
	     endIf
	     opTop = opTop -1  -- Remove the (
	     haveNum = true
	     break

	default:
          Print ("Syntax Error: ")
	  Print (cmdArgs[ix])
	  Print ("\n")
	  Sys_Exit(1)
      endSwitch
      ix = ix + 1
    endWhile

    -- Do final calculations and print result
    while opTop >= 0
       EvalTop()
    endWhile
   
    if top >= 0
       PrintInt(stack[0]) 
       Print ("\n")
    else
       Print ("No expression\n")
       Sys_Exit(1)
    endIf

  endFunction

  function EvalTop ()
    var val1, val2: int
        op: char

	if top < 1 
	   Print ("Error: not enough operands.\n")
	   Sys_Exit(1)
	endIf
	val2 = stack[top]
	val1 = stack[top-1]
	op = ops[opTop]
	--Print ("eval: ") PrintInt(val1) Print (" ") PutChar(op) Print(" ") PrintInt(val2) Print("\n")

	switch op 
	   case '+':  stack[top-1] = val1 + val2  break
	   case '-':  stack[top-1] = val1 - val2  break
	   case '*':  stack[top-1] = val1 * val2  break
	   case '/':  stack[top-1] = val1 / val2  break
	   case '%':  stack[top-1] = val1 % val2  break
	   case '(':  Print ("Syntax Error: mismatched ()s\n") Sys_Exit(1) 
	endSwitch
	top = top-1
	opTop = opTop-1
	--Print ("Top: ") PrintInt(top) Print("\n")
	--Print ("Result: ") PrintInt(stack[top]) Print("\n")
    endFunction

endCode
