code setexit

  function main()
      var val: int
      
      if cmdArgs == null
         Sys_Exit(1)
      endIf

      if cmdArgs arraySize != 2 
         Print ("usage: ")
	 Print (cmdArgs[0])
	 Print (" value\n")
	 Sys_Exit(1)
      endIf

      val =  StringToInt(cmdArgs[1])
      Sys_Exit(val)

    endFunction


endCode
