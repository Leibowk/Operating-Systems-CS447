code MyProgram

-----------------------------  main  ---------------------------------

  function main ()
    --
    -- This is a generic User-Level program.  Feel free to modify it and
    -- use it during debugging.
    --
      var
        pid: int
        pPid: int
      
      print ("\nMy user-level program is running!!!\n")
      
      pid = Sys_GetPid()
      print("The PID is: ")
      printInt(pid)
      nl()

      pPid = Sys_GetPPid()
      print("The PPID is: ")
      printInt(pPid)
      nl()
      
      Sys_Shutdown ()

    endFunction

endCode
