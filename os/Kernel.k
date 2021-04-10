-- -*-Fundamental-*-
-- The above line for emacs if you use it

code Kernel

  -- <Kyle Leibowitz>

-----------------------------  InitializeScheduler  ---------------------------------

  function InitializeScheduler ()
    --
    -- This routine assumes that we are in System mode.  It sets up the
    -- thread scheduler and turns the executing program into "main-thread".
    -- After exit, we can execute "Yield", "Fork", etc.  Upon return, the
    -- main-thread will be executing with interrupts enabled.
    --
      Cleari ()
      print ("Initializing Thread Scheduler...\n")
      readyList = new List [Thread]
      threadsToBeDestroyed = new List [Thread]
      mainThread = new Thread
      mainThread.Init ("main-thread")
      mainThread.status = RUNNING
      idleThread = new Thread
      idleThread.Init ("idle-thread")
      idleThread.Fork (IdleFunction, 0)
      currentThread = & mainThread
      FatalError = FatalError_ThreadVersion       -- Use a routine which prints threadname
      currentInterruptStatus = ENABLED
      Seti ()
    endFunction

-----------------------------  IdleFunction  ---------------------------------

  function IdleFunction (arg: int)
    --
    -- This is the "idle thread", a kernel thread which ensures that the ready
    -- list is never empty.  The idle thread constantly yields to other threads
    -- in an infinite loop.  However, before yielding, it first checks to see if
    -- there are other threads.  If there are no other threads, the idle thread
    -- will execute the "wait" instruction.  The "wait" instruction will enable
    -- interrupts and halt CPU execution until the next interrupt arrives.
    --
      var junk: int
      while true
        junk = SetInterruptsTo (DISABLED)
        if readyList.IsEmpty ()
          Wait ()
        else
          currentThread.Yield ()
        endIf
      endWhile
    endFunction

-----------------------------  Run  ---------------------------------

  function Run (nextThread: ptr to Thread)
    --
    -- Begin executing the thread "nextThread", which has already
    -- been removed from the readyList.  The current thread will
    -- be suspended; we assume that its status has already been
    -- changed to READY or BLOCKED.  We assume that interrupts are
    -- DISABLED when called.
    --
    -- This routine is called only from "Thread.Yield" and "Thread.Sleep".
    --
    -- It is allowable for nextThread to be currentThread.
    --
      var prevThread, th: ptr to Thread
      prevThread = currentThread
      prevThread.CheckOverflow ()
      -- If the previous thread was using the USER registers, save them.
      if prevThread.isUserThread
        SaveUserRegs (&prevThread.userRegs[0])
      endIf
      currentThread = nextThread
      nextThread.status = RUNNING
      --print ("SWITCHING from ")
      --print (prevThread.name)
      --print (" to ")
      --print (nextThread.name)
      --print ("\n")
      Switch (prevThread, nextThread)
      --print ("After SWITCH, back in thread ")
      --print (currentThread.name)
      --print ("\n")
      while ! threadsToBeDestroyed.IsEmpty ()
        th = threadsToBeDestroyed.Remove()
        threadManager.FreeThread (th)
      endWhile
      -- If the new thread uses the USER registers, restore them.
      if currentThread.isUserThread
        RestoreUserRegs (&currentThread.userRegs[0])
        currentThread.myProcess.addrSpace.SetToThisPageTable ()
      endIf
    endFunction

-----------------------------  PrintReadyList  ---------------------------------

  function PrintReadyList ()
    --
    -- This routine prints the readyList.  It disables interrupts during the
    -- printing to guarantee that the readyList won't change while it is
    -- being printed, which could cause disaster in this routine!
    --
    var oldStatus: int
      oldStatus = SetInterruptsTo (DISABLED)
      print ("Here is the ready list:\n")
      readyList.ApplyToEach (ThreadPrintShort)
      oldStatus = SetInterruptsTo (oldStatus)
    endFunction

-----------------------------  ThreadStartMain  ---------------------------------

  function ThreadStartMain ()
    --
    -- This function is called from the assembly language routine "ThreadStart".
    -- It is the first KPL code each thread will execute, and it will
    -- invoke the thread's "main" function, with interrupts enabled.  If the "main"
    -- function ever returns, this function will terminate this thread.  This
    -- function will never return.
    --
      var
        junk: int
        mainFun: ptr to function (int)
      -- print ("ThreadStartMain...\n")
      junk = SetInterruptsTo (ENABLED)
      mainFun = currentThread.initialFunction
      mainFun (currentThread.initialArgument)
      ThreadFinish ()
      FatalError ("ThreadFinish should never return")
    endFunction

-----------------------------  ThreadFinish  ---------------------------------

  function ThreadFinish ()
    --
    -- As the last thing to do in this thread, we want to clean up
    -- and reclaim the Thread object.  This method is called as the
    -- last thing the thread does; this is the normal way for a thread
    -- to die.  However, since the thread is still running in this,
    -- we can't actually do the clean up.  So we just make a note
    -- that it is pending.  After the next thread starts (in method "Run")
    -- we'll finish the job.
    --
      var junk: int
      junk = SetInterruptsTo (DISABLED)
      -- print ("Finishing ")
      -- print (currentThread.name)
      -- print ("\n")
      threadsToBeDestroyed.AddToEnd (currentThread)
      currentThread.Sleep ()
      -- Execution will never reach the next instruction
      FatalError ("This thread will never run again")
    endFunction

-----------------------------  FatalError_ThreadVersion  -----------------------

  function FatalError_ThreadVersion (errorMessage: ptr to array of char)
    --
    -- This function will print out the name of the current thread and
    -- the given error message.  Then it will call "RuntimeExit" to
    -- shutdown the system.
    --
      var
        junk: int
      junk = SetInterruptsTo (DISABLED)
      print ("\nFATAL ERROR")
      if currentThread    -- In case errors occur before thread initialization
        print (" in ")
        print (currentThread.name)
      endIf
      print (": \"")
      print (errorMessage)
      print ("\" -- TERMINATING!\n\n")
      print ("(To find out where execution was when the problem arose, type 'st' at the emulator prompt.)\n")
      RuntimeExit ()
    endFunction

-----------------------------  SetInterruptsTo  ---------------------------------

  function SetInterruptsTo (newStatus: int) returns int
    --
    -- This routine is passed a status (DISABLED or ENABLED).  It
    -- returns the previous interrupt status and sets the interrupt
    -- status to "newStatus".
    --
    -- Since this routine reads and modifies a shared variable
    -- (currentInterruptStatus), there is a danger of this routine
    -- being re-entered.  Therefore, it momentarily will disable
    -- interrupts, to ensure a valid update to this variable.
    --
      var
        oldStat: int
      Cleari ()
      oldStat = currentInterruptStatus
      if newStatus == ENABLED
        currentInterruptStatus = ENABLED
        Seti ()
      else
        currentInterruptStatus = DISABLED
        Cleari ()
      endIf
      return oldStat
    endFunction

-----------------------------  Semaphore  ---------------------------------

  behavior Semaphore
    -- This class provides the following methods:
    --    Up()  ...also known as "V" or "Signal"...
    --         Increment the semaphore count.  Wake up a thread if
    --         there are any waiting.  This operation always executes
    --         quickly and will not suspend the thread.
    --    Down()   ...also known as "P" or "Wait"...
    --         Decrement the semaphore count.  If the count would go
    --         negative, wait for some other thread to do an Up()
    --         first.  Conceptually, the count will never go negative.
    --    Init(initialCount)
    --         Each semaphore must be initialized.  Normally, you should
    --         invoke this method, providing an 'initialCount' of zero.
    --         If the semaphore is initialized with 0, then a Down()
    --         operation before any Up() will wait for the first
    --         Up().  If initialized with i, then it is as if i Up()
    --         operations have been performed already.
    --
    -- NOTE: The user should never look at a semaphore's count since the value
    -- retrieved may be out-of-date, due to other threads performing Up() or
    -- Down() operations since the retrieval of the count.

      ----------  Semaphore . Init  ----------

      method Init (initialCount: int)
          if initialCount < 0
            FatalError ("Semaphore created with initialCount < 0")
          endIf
          count = initialCount
          waitingThreads = new List [Thread]
        endMethod

      ----------  Semaphore . Up  ----------

      method Up ()
          var
            oldIntStat: int
            t: ptr to Thread
          oldIntStat = SetInterruptsTo (DISABLED)
          if count == 0x7fffffff
            FatalError ("Semaphore count overflowed during 'Up' operation")
          endIf
          count = count + 1
          if count <= 0
            t = waitingThreads.Remove ()
            t.status = READY
            readyList.AddToEnd (t)
          endIf
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Semaphore . Down  ----------

      method Down ()
          var
            oldIntStat: int
          oldIntStat = SetInterruptsTo (DISABLED)
          if count == 0x80000000
            FatalError ("Semaphore count underflowed during 'Down' operation")
          endIf
          count = count - 1
          if count < 0
            waitingThreads.AddToEnd (currentThread)
            currentThread.Sleep ()
          endIf
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

  endBehavior

-----------------------------  Mutex  ---------------------------------

  behavior Mutex
    -- This class provides the following methods:
    --    Lock()
    --         Acquire the mutex if free, otherwise wait until the mutex is
    --         free and then get it.
    --    Unlock()
    --         Release the mutex.  If other threads are waiting, then
    --         wake up the oldest one and give it the lock.
    --    Init()
    --         Each mutex must be initialized.
    --    IsHeldByCurrentThread()
    --         Return TRUE iff the current (invoking) thread holds a lock
    --         on the mutex.

       -----------  Mutex . Init  -----------

       method Init ()
           waitingThreads = new List [Thread]
         endMethod

       -----------  Mutex . Lock  -----------

       method Lock ()
           var
             oldIntStat: int
           if heldBy == currentThread
             FatalError ("Attempt to lock a mutex by a thread already holding it")
           endIf
           oldIntStat = SetInterruptsTo (DISABLED)
           if !heldBy
             heldBy = currentThread
           else
             waitingThreads.AddToEnd (currentThread)
             currentThread.Sleep ()
           endIf
           oldIntStat = SetInterruptsTo (oldIntStat)
         endMethod

       -----------  Mutex . Unlock  -----------

       method Unlock ()
           var
             oldIntStat: int
             t: ptr to Thread
           if heldBy != currentThread
             FatalError ("Attempt to unlock a mutex by a thread not holding it")
           endIf
           oldIntStat = SetInterruptsTo (DISABLED)
           t = waitingThreads.Remove ()
           if t
             t.status = READY
             readyList.AddToEnd (t)
             heldBy = t
           else
             heldBy = null
           endIf
           oldIntStat = SetInterruptsTo (oldIntStat)
         endMethod

       -----------  Mutex . IsHeldByCurrentThread  -----------

       method IsHeldByCurrentThread () returns bool
           return heldBy == currentThread
         endMethod

  endBehavior

-----------------------------  Condition  ---------------------------------

  behavior Condition
    -- This class is used to implement monitors.  Each monitor will have a
    -- mutex lock and one or more condition variables.  The lock ensures that
    -- only one process at a time may execute code in the monitor.  Within the
    -- monitor code, a thread can execute Wait() and Signal() operations
    -- on the condition variables to make sure certain condions are met.
    --
    -- The condition variables here implement "Mesa-style" semantics, which
    -- means that in the time between a Signal() operation and the awakening
    -- and execution of the corrsponding waiting thread, other threads may
    -- have snuck in and run.  The waiting thread should always re-check the
    -- data to ensure that the condition which was signalled is still true.
    --
    -- This class provides the following methods:
    --    Wait(mutex)
    --         This method assumes the mutex has alreasy been locked.
    --         It unlocks it, and goes to sleep waiting for a signal on
    --         this condition.  When the signal is received, this method
    --         re-awakens, re-locks the mutex, and returns.
    --    Signal(mutex)
    --         If there are any threads waiting on this condition, this
    --         method will wake up the oldest and schedule it to run.
    --         However, since this thread holds the mutex and never unlocks
    --         it, the newly awakened thread will be forced to wait before
    --         it can re-acquire the mutex and resume execution.
    --    Broadcast(mutex)
    --         This method is like Signal() except that it wakes up all
    --         threads waiting on this condition, not just the next one.
    --    Init()
    --         Each condition must be initialized.

      ----------  Condition . Init  ----------

      method Init ()
          waitingThreads = new List [Thread]
        endMethod

      ----------  Condition . Wait  ----------

      method Wait (mutex: ptr to Mutex)
          var
            oldIntStat: int
          if ! mutex.IsHeldByCurrentThread ()
            FatalError ("Attempt to wait on condition when mutex is not held")
          endIf
          oldIntStat = SetInterruptsTo (DISABLED)
          mutex.Unlock ()
          waitingThreads.AddToEnd (currentThread)
          currentThread.Sleep ()
          mutex.Lock ()
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Condition . Signal  ----------

      method Signal (mutex: ptr to Mutex)
          var
            oldIntStat: int
            t: ptr to Thread
          if ! mutex.IsHeldByCurrentThread ()
            FatalError ("Attempt to signal a condition when mutex is not held")
          endIf
          oldIntStat = SetInterruptsTo (DISABLED)
          t = waitingThreads.Remove ()
          if t
            t.status = READY
            readyList.AddToEnd (t)
          endIf
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Condition . Broadcast  ----------

      method Broadcast (mutex: ptr to Mutex)
          var
            oldIntStat: int
            t: ptr to Thread
          if ! mutex.IsHeldByCurrentThread ()
            FatalError ("Attempt to broadcast a condition when lock is not held")
          endIf
          oldIntStat = SetInterruptsTo (DISABLED)
          while true
            t = waitingThreads.Remove ()
            if t == null
              break
            endIf
            t.status = READY
            readyList.AddToEnd (t)
          endWhile
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

  endBehavior

-----------------------------  Thread  ---------------------------------

  behavior Thread

      ----------  Thread . Init  ----------

      method Init (n: String)
        --
        -- Initialize this Thread object, but do not schedule it for
        -- execution yet.
        --
          name = n
          status = JUST_CREATED
          -- The next line initializes the systemStack array, without filling it in.
          *((& systemStack) asPtrTo int) = SYSTEM_STACK_SIZE
          systemStack [0] = STACK_SENTINEL
          systemStack [SYSTEM_STACK_SIZE-1] = STACK_SENTINEL
          stackTop = & (systemStack[SYSTEM_STACK_SIZE-1])
          regs = new array of int { 13 of 0 }
          isUserThread = false
          userRegs = new array of int { 15 of 0 }
        endMethod

      ----------  Thread . Fork  ----------

      method Fork (fun: ptr to function (int), arg: int)
        --
        -- This method will schedule this thread for execution; in other words
        -- it will make it ready to run by adding it to the "ready queue."  This
        -- method is passed a function and a single integer argument.  When the
        -- thread runs, the thread will execute this function on that argument
        -- and then termiante.  This method will return after scheduling this
        -- thread.
        --
          var
            oldIntStat, junk: int
          oldIntStat = SetInterruptsTo (DISABLED)
          -- print ("Forking thread...\n")
          initialFunction = fun
          initialArgument = arg
          stackTop = stackTop - 4
          *(stackTop asPtrTo int) = ThreadStartUp asInteger
          status = READY
          readyList.AddToEnd (self)
          junk = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Thread . Yield  ----------

      method Yield ()
        --
        -- This method should only be invoked on the current thread.  The
        -- current thread may yield the processor to other threads by
        -- executing:
        --       currentThread.Yield ()
        -- This method may be invoked with or without interrupts enabled.
        -- Upon return, the interrupts will be in the same state; however
        -- since other threads are given a chance to run and they may allow
        -- interrupts, interrupts handlers may have been invoked before
        -- this method returns.
        --
          var
            nextTh: ptr to Thread
            oldIntStat, junk: int
          -- ASSERT:
              if self != currentThread
                FatalError ("In Yield, self != currentThread")
              endIf
          oldIntStat = SetInterruptsTo (DISABLED)
          -- print ("Yielding ")
          -- print (name)
          -- print ("\n")
          nextTh = readyList.Remove ()
          if nextTh
            -- print ("About to run ")
            -- print (nextTh.name)
            -- print ("\n")
            if status == BLOCKED
              FatalError ("Status of current thread should be READY or RUNNING")
            endIf
            status = READY
            readyList.AddToEnd (self)
            Run (nextTh)
          endIf
          junk = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  Thread . Sleep  ----------

      method Sleep ()
        --
        -- This method should only be invoked on the current thread.  It
        -- will set the status of the current thread to BLCOKED and will
        -- will switch to executing another thread.  It is assumed that
        --     (1) Interrupts are disabled before calling this routine, and
        --     (2) The current thread has been placed on some other wait
        --         list (e.g., for a Semaphore) or else the thread will
        --         never get scheduled again.
        --
          var nextTh: ptr to Thread
          -- ASSERT:
              if currentInterruptStatus != DISABLED
                FatalError ("In Sleep, currentInterruptStatus != DISABLED")
              endIf
          -- ASSERT:
              if self != currentThread
                FatalError ("In Sleep, self != currentThread")
              endIf
          -- print ("Sleeping ")
          -- print (name)
          -- print ("\n")
          status = BLOCKED
          nextTh = readyList.Remove ()
          if nextTh == null
            FatalError ("Ready list should always contain the idle thread")
          endIf
          Run (nextTh)
        endMethod

      ----------  Thread . CheckOverflow  ----------

      method CheckOverflow ()
        --
        -- This method checks to see if this thread has overflowed its
        -- pre-alloted stack space.  WARNING: the approach taken here is only
        -- guaranteed to work "with high probability".
        --
          if systemStack[0] != STACK_SENTINEL
            FatalError ("System stack overflow detected!")
          elseIf systemStack[SYSTEM_STACK_SIZE-1] != STACK_SENTINEL
            FatalError ("System stack underflow detected!")
          endIf
        endMethod

      ----------  Thread . Print  ----------

      method Print ()
        --
        -- Print this object.
        --
          var i: int
              oldStatus: int
          oldStatus = SetInterruptsTo (DISABLED)
          print ("  Thread \"")
          print (name)
          print ("\"    (addr of Thread object: ")
          printHex (self asInteger)
          print (")\n")
          print ("    machine state:\n")
          for i = 0 to 12
            print ("      r")
            printInt (i+2)
            print (": ")
            printHex (regs[i])
            print ("   ")
            printInt (regs[i])
            print ("\n")
          endFor
          printHexVar ("    stackTop", stackTop asInteger)
          printHexVar ("    stack starting addr", (& systemStack[0]) asInteger)
          switch status
            case JUST_CREATED:
              print ("    status = JUST_CREATED\n")
              break
            case READY:
              print ("    status = READY\n")
              break
            case RUNNING:
              print ("    status = RUNNING\n")
              break
            case BLOCKED:
              print ("    status = BLOCKED\n")
              break
            case UNUSED:
              print ("    status = UNUSED\n")
              break
            default:
              FatalError ("Bad status in Thread")
          endSwitch
          print ("    is user thread: ")
          printBool (isUserThread)
          nl ()
          print ("    user registers:\n")
          for i = 0 to 14
            print ("      r")
            printInt (i+1)
            print (": ")
            printHex (userRegs[i])
            print ("   ")
            printInt (userRegs[i])
            print ("\n")
          endFor
          oldStatus = SetInterruptsTo (oldStatus)
        endMethod

  endBehavior

-----------------------------  ThreadPrintShort  ---------------------------------

  function ThreadPrintShort (t: ptr to Thread)
    --
    -- This function prints a single line giving the name of thread "t",
    -- its status, and the address of the Thread object itself (which may be
    -- helpful in distinguishing Threads when the name is not helpful).
    --
      var
        oldStatus: int = SetInterruptsTo (DISABLED)
      if !t
        print ("NULL\n")
        return
      endIf
      print ("  Thread \"")
      print (t.name)
      print ("\"    status=")
      switch t.status
        case JUST_CREATED:
          print ("JUST_CREATED")
          break
        case READY:
          print ("READY")
          break
        case RUNNING:
          print ("RUNNING")
          break
        case BLOCKED:
          print ("BLOCKED")
          break
        case UNUSED:
          print ("UNUSED")
          break
        default:
          FatalError ("Bad status in Thread")
      endSwitch
      print ("    (addr of Thread object: ")
      printHex (t asInteger)
      print (")")
      nl ()
      -- t.Print ()
      oldStatus = SetInterruptsTo (oldStatus)
    endFunction

-----------------------------  ThreadManager  ---------------------------------

  behavior ThreadManager

      ----------  ThreadManager . Init  ----------

      method Init ()
        --
        -- This method is called once at kernel startup time to initialize
        -- the one and only "ThreadManager" object.
        --
          var
          i: int

          print ("Initializing Thread Manager...\n")

          --Initialization of fields.
          threadTable = new array of Thread {10 of new Thread}
          freeList = new List [Thread]
          threadManagerLock = new Mutex
          threadManagerLock.Init()
          aThreadBecameFree = new Condition
          aThreadBecameFree.Init()
          inQueue = 0
          
          --Setting threads to Unused and putting on proper arrays/lists
          for i=0 to 9
            threadTable[i] = new Thread
            threadTable[i].Init(" a thread")
            threadTable[i].status = UNUSED
            freeList.AddToEnd(&threadTable[i])
            endFor

        endMethod

      ----------  ThreadManager . Print  ----------

      method Print ()
        -- 
        -- Print each thread.  Since we look at the freeList, this
        -- routine disables interrupts so the printout will be a
        -- consistent snapshot of things.
        -- 
        var i, oldStatus: int
          oldStatus = SetInterruptsTo (DISABLED)
          print ("Here is the thread table...\n")
          for i = 0 to MAX_NUMBER_OF_PROCESSES-1
            print ("  ")
            printInt (i)
            print (":")
            ThreadPrintShort (&threadTable[i])
          endFor
          print ("Here is the FREE list of Threads:\n   ")
          freeList.ApplyToEach (PrintObjectAddr)
          nl ()
          oldStatus = SetInterruptsTo (oldStatus)
        endMethod

      ----------  ThreadManager . GetANewThread  ----------

      method GetANewThread () returns ptr to Thread
        -- This method returns a new Thread; it will wait until one is available.
          var
            myThread: ptr to Thread
            threadManagerLock.Lock()
            
            if (freeList.IsEmpty() || (inQueue>0))
              inQueue = inQueue + 1
              aThreadBecameFree.Wait(&threadManagerLock)
              inQueue = inQueue + 1
            endIf

            myThread = freeList.Remove()
            myThread.status = JUST_CREATED
            
            threadManagerLock.Unlock()

            return myThread

        endMethod

      ----------  ThreadManager . FreeThread  ----------

      method FreeThread (th: ptr to Thread) 
        -- This method is passed a ptr to a Thread. It moves it to the FREE list.

            threadManagerLock.Lock()
            
            th.status = UNUSED
            freeList.AddToEnd(th)
            aThreadBecameFree.Signal(&threadManagerLock)

            threadManagerLock.Unlock()
        endMethod

    endBehavior

--------------------------  ProcessControlBlock  ------------------------------

  behavior ProcessControlBlock

      ----------  ProcessControlBlock . Init  ----------
      --
      -- This method is called once for every PCB at startup time.
      --
      method Init ()
          pid = -1
          status = FREE
	  lastError = E_No_Error
          addrSpace = new AddrSpace
          addrSpace.Init ()
-- Uncomment this code later...

          fileDescriptor = new array of ptr to OpenFile
                      { MAX_FILES_PER_PROCESS of null }

        endMethod

      ----------  ProcessControlBlock . Print  ----------

      method Print ()
        --
        -- Print this ProcessControlBlock using several lines.
        --
        var i: int
          self.PrintShort ()
          addrSpace.Print ()
          print ("    myThread = ")
          ThreadPrintShort (myThread)
-- Uncomment this code later...

          print ("    File Descriptors:\n")
          for i = 0 to MAX_FILES_PER_PROCESS-1
            if fileDescriptor[i]
              fileDescriptor[i].Print ()
            else
              print ("null\n")
            endIf
          endFor
          print (" Working Dir: ") workingDir.Print()

        endMethod

      ----------  ProcessControlBlock . PrintShort  ----------

      method PrintShort ()
        --
        -- Print this ProcessControlBlock on one line.
        --
          print ("  ProcessControlBlock   (addr=")
          printHex (self asInteger)
          print (")   pid=")
          printInt (pid)
          print (", status=")
          if status == ACTIVE
            print ("ACTIVE")
          elseIf status == ZOMBIE
            print ("ZOMBIE")
          elseIf status == FREE
            print ("FREE")
          else
            FatalError ("Bad status in ProcessControlBlock")
          endIf
          print (", parentsPid=")
          printInt (parentsPid)
          print (", exitStatus=")
          printInt (exitStatus)
          nl ()
        endMethod

    endBehavior

-----------------------------  ProcessManager  ---------------------------------

  behavior ProcessManager

      ----------  ProcessManager . Init  ----------

      method Init ()
        -- This method is called once at kernel startup time to initialize
        -- the one and only "processManager" object.  
        var
          i: int
          print ("Initializing Process Manager...\n")

          --Initializing all variables
          processManagerLock = new Mutex
          processManagerLock.Init()
          aProcessBecameFree = new Condition
          aProcessBecameFree.Init()
          aProcessDied = new Condition
          aProcessDied.Init()
          nextPid = 1
          freeList = new List [ProcessControlBlock]
          processTable = new array of ProcessControlBlock {MAX_NUMBER_OF_PROCESSES of new ProcessControlBlock}
          inQueue = 0


          --Initializing processTable
          for i = 0 to 9
            processTable[i] = new ProcessControlBlock
            processTable[i].Init()
            processTable[i].status = FREE
            freeList.AddToEnd(&processTable[i])
          endFor

        endMethod

      ----------  ProcessManager . Print  ----------

      method Print ()
        -- 
        -- Print all processes.  Since we look at the freeList, this
        -- routine disables interrupts so the printout will be a
        -- consistent snapshot of things.
        -- 
        var i, oldStatus: int
          oldStatus = SetInterruptsTo (DISABLED)
          print ("Here is the process table...\n")
          for i = 0 to MAX_NUMBER_OF_PROCESSES-1
            print ("  ")
            printInt (i)
            print (":")
            processTable[i].Print ()
          endFor
          print ("Here is the FREE list of ProcessControlBlocks:\n   ")
          freeList.ApplyToEach (PrintObjectAddr)
          nl ()
          oldStatus = SetInterruptsTo (oldStatus)
        endMethod

      ----------  ProcessManager . PrintShort  ----------

      method PrintShort ()
        -- 
        -- Print all processes.  Since we look at the freeList, this
        -- routine disables interrupts so the printout will be a
        -- consistent snapshot of things.
        -- 
        var i, oldStatus: int
          oldStatus = SetInterruptsTo (DISABLED)
          print ("Here is the process table...\n")
          for i = 0 to MAX_NUMBER_OF_PROCESSES-1
            print ("  ")
            printInt (i)
            processTable[i].PrintShort ()
          endFor
          print ("Here is the FREE list of ProcessControlBlocks:\n   ")
          freeList.ApplyToEach (PrintObjectAddr)
          nl ()
          oldStatus = SetInterruptsTo (oldStatus)
        endMethod

      ----------  ProcessManager . GetANewProcess  ----------

      method GetANewProcess () returns ptr to ProcessControlBlock
        -- This method returns a new ProcessControlBlock; it will wait until one is available.
        var
          myProcessB: ptr to ProcessControlBlock
          
          processManagerLock.Lock()

          if (freeList.IsEmpty() || (inQueue>0))
          --while freeList.IsEmpty()
            inQueue = inQueue + 1
            aProcessBecameFree.Wait(&processManagerLock)
            inQueue = inQueue - 1
         -- endWhile
          endIf
          

          myProcessB = freeList.Remove()
         
          myProcessB.status = ACTIVE
          myProcessB.pid = nextPid
          nextPid = nextPid + 1

          processManagerLock.Unlock()
          
          return myProcessB

        endMethod

      ----------  ProcessManager . FreeProcess  ----------

      method FreeProcess (p: ptr to ProcessControlBlock)
        -- This method is passed a ptr to a Process;  
        --It moves it to the FREE list.
        
        processManagerLock.Lock()
       
        p.status=FREE
        freeList.AddToEnd(p)
        aProcessBecameFree.Signal(&processManagerLock)
        
        processManagerLock.Unlock()
        
        endMethod

-----------------------------  FindProcess  ------------------------------------

method FindProcess (pid: int) returns ptr to ProcessControlBlock
  var
  i: int

  for i = 0 to MAX_NUMBER_OF_PROCESSES-1
      if processManager.processTable[i].pid == pid
        return  &processManager.processTable[i]
      endIf
    endFor

  return null
  
endMethod

-----------------------------  TurnIntoZombie ----------------------------------
  
  method TurnIntoZombie (p: ptr to ProcessControlBlock)
    
    var
    i: int
    parent: ptr to ProcessControlBlock

    processManager.processManagerLock.Lock()

    --Identify childeren of process that are zombies.
    for i = 0 to MAX_NUMBER_OF_PROCESSES-1
      if p.pid == processManager.processTable[i].parentsPid 
      && processManager.processTable[i].status == ZOMBIE

        --For each zombie child, change status to FREE
        processManager.processTable[i].status = FREE

        --Add it back to PCB Free list
        processManager.freeList.AddToEnd(&processManager.processTable[i])
        processManager.aProcessBecameFree.Signal(&processManagerLock)
      endIf
    endFor

    parent = processManager.FindProcess(p.parentsPid)
    if parent != null && parent.status == ACTIVE
        p.status=ZOMBIE
        --Free the thread?
        --p.myThread = null
        processManager.aProcessDied.Broadcast(&processManagerLock)
        else
          p.status=FREE
          processManager.freeList.AddToEnd(p)
          processManager.aProcessBecameFree.Signal(&processManagerLock)
      endIf

      processManager.processManagerLock.Unlock()
    endMethod

-----------------------------  WaitForZombie ----------------------------------
    method WaitForZombie (proc: ptr to ProcessControlBlock) returns int

        var
          eStatus: int
     
        --1. Lock the process manager.
        processManager.processManagerLock.Lock()
        
        --2. Wait until the status of proc is ZOMBIE, using a while loop and the aProcessDied condition variable.

        while (proc.status != ZOMBIE)
          processManager.aProcessDied.Wait(&processManagerLock)
        endWhile

        --3. Fetch proc’s exitStatus.
        eStatus = proc.exitStatus
        
        --4. If the child was killed by an error, set the last error to E User Proc
        
        if eStatus == -1
          currentThread.myProcess.lastError = E_User_Process
        endIf

        --5. Change proc’s status to FREE, add it to the PCB free list, and signal the aProcessBecameFree condition variable.
        proc.status=FREE
        processManager.freeList.AddToEnd(proc)
        processManager.aProcessBecameFree.Signal(&processManagerLock)

        --6. Unlock the process manager and return the exit status.
        processManager.processManagerLock.Unlock()
        
        return eStatus

      endMethod

    endBehavior

-----------------------------  PrintObjectAddr  ---------------------------------

  function PrintObjectAddr (p: ptr to Object)
    --
    -- Print the address of the given object.
    --
      printHex (p asInteger)
      printChar (' ')
    endFunction

-----------------------------  ProcessFinish  --------------------------

  function ProcessFinish (exitStatus: int)
    --
    -- This routine is called when a process is to be terminated.  It will
    -- free the resources held by this process and will terminate the
    -- current thread.
    --
      
      var
        junk: int
        i: int
        zombieProcess: ptr to ProcessControlBlock

      --store exit status in PCB
      currentThread.myProcess.exitStatus = exitStatus


      junk = SetInterruptsTo(DISABLED)

      currentThread.myProcess.myThread = null

      zombieProcess = currentThread.myProcess

      currentThread.myProcess = null

      currentThread.isUserThread = false

      junk = SetInterruptsTo(ENABLED)

      --Close any open files!
      for i = 0 to MAX_FILES_PER_PROCESS-1
        if zombieProcess.fileDescriptor[i] != null
          --if zombieProcess.fileDescriptor[i].numberOfUsers == 0
            fileManager.Close(zombieProcess.fileDescriptor[i])
         -- endIf
        endIf
      endFor

      --close working dir
      fileManager.Close(zombieProcess.workingDir)

      frameManager.ReturnAllFrames(&zombieProcess.addrSpace)

      processManager.TurnIntoZombie(zombieProcess)

      ThreadFinish()

    endFunction

-----------------------------  InitFirstProcess --------------------------------

  function InitFirstProcess ()
    --
    -- Initialize the first process ... just get a thread and fork it to use StartUserProcess
    var
       userProgram: ptr to Thread
       userProgram = (threadManager.GetANewThread())
       userProgram.Fork(StartUserProcess, 0)
       --return

    --new Thread "UserProgram"= GetANewThread
    --init UserProgram
    --Fork UserProgram to StartUserProcess w/ 0
    --FatalError ("InitFirstProcess is not implemented")
    endFunction

      ----------------------StartUserProcess ---------------------------

    function StartUserProcess(arg: int)
    var
      thisPCB: ptr to ProcessControlBlock
      myFile: ptr to OpenFile
      initPC: int
      InitUserStackTop: int
      initSystemStackTop: int
      oldIntStat: int
      --thisNull: typeOfNull

      thisPCB = processManager.GetANewProcess()
      thisPCB.workingDir = fileSystem.rootDirectory
      currentThread.myProcess = thisPCB
      thisPCB.myThread = currentThread

      --open executable
      myFile = fileManager.Open(INIT_NAME, fileSystem.rootDirectory, O_READ, MODE_READ)
      if(myFile == null)
        FatalError("Problem Opening File in FileManager . Open")
      endIf

      --create logical address space & read the executable into it
      initPC = myFile.LoadExecutable(&(thisPCB.addrSpace))
      if initPC == -1
        FatalError("Error getting initPC from LoadExecutable")
      endIf

      --close executable file
      fileManager.Close(myFile)

      --compute initial value for user-level stack
      --InitUserStackTop = logical address past end of logical addresss space
      InitUserStackTop = thisPCB.addrSpace.numberOfPages*PAGE_SIZE


      --Jump into a user level thread
      --Reset the system stack top pointer
      initSystemStackTop = (& currentThread.systemStack[SYSTEM_STACK_SIZE-1]) asInteger

      -- 1. Disable Interrupts
      oldIntStat = SetInterruptsTo(DISABLED)

      -- 2. Initialize the page table registers for this logical address space
      thisPCB.addrSpace.SetToThisPageTable()

      -- 3. Set the isUserThread variable in the current thread to true
      currentThread.isUserThread = true

      --Following all done in BecomeUserThread
      -- 4. Set system register r15, the system stack top
      -- 5. Set user register r15, the user stack top
      -- 6. Clear the System mode bit in the condition code register to switch into user mode
      -- 7. Set the Paging bit in the cond. code register, causing the MMU to do virtual memory mapping
      -- 8. Set the Interrupts Enabled bit in the cond. code register, so that future interrupts will be handle
      -- 9. Jump to the initial entry point in the program
      BecomeUserThread(InitUserStackTop, initPC, initSystemStackTop, 0)
       

      
    endFunction


-----------------------------  SerialHandlerFunction  -------------------------
    function SerialHandlerFunction()
      serialDriver.SerialHandler()
    endFunction


-----------------------------  FrameManager  ---------------------------------

  behavior FrameManager

      ----------  FrameManager . Init  ----------

      method Init ()
        --
        -- This method is called once at kernel startup time to initialize
        -- the one and only "frameManager" object.  
        
        -- Check that the area to be used for paging contains zeros.
        -- The BLITZ emulator will initialize physical memory to zero, so
        -- if by chance the size of the kernel has gotten so large that
        -- it runs into the area reserved for pages, we will detect it.
        -- Note: this test is not 100%, but is included nonetheless.

        var i: int
          print ("Initializing Frame Manager...\n")
          framesInUse = new BitMap
          framesInUse.Init (NUMBER_OF_PHYSICAL_PAGE_FRAMES)
          numberFreeFrames = NUMBER_OF_PHYSICAL_PAGE_FRAMES
          frameManagerLock = new Mutex
          frameManagerLock.Init ()
          newFramesAvailable = new Condition
          newFramesAvailable.Init ()

          for i = PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME
                   to PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME+300
                   by 4
            if 0 != *(i asPtrTo int)
              FatalError ("Kernel code size appears to have grown too large and is overflowing into the frame region")
            endIf
          endFor
        endMethod

      ----------  FrameManager . Print  ----------

      method Print ()
        --
        -- Print which frames are allocated and how many are free.
        --
          frameManagerLock.Lock ()
          print ("FRAME MANAGER:\n")
          printIntVar ("  numberFreeFrames", numberFreeFrames)
          print ("  Here are the frames in use: \n    ")
          framesInUse.Print ()
          frameManagerLock.Unlock ()
        endMethod

      ----------  FrameManager . GetAFrame  ----------

      method GetAFrame () returns int
        --
        -- Allocate a single frame and return its physical address.  If no frames
        -- are currently available, wait until the request can be completed.
        --
          var f, frameAddr: int

          -- Acquire exclusive access to the frameManager data structure...
          frameManagerLock.Lock ()

          -- Wait until we have enough free frames to entirely satisfy the request...
          
          while numberFreeFrames < 1
              newFramesAvailable.Wait (&frameManagerLock)
          endWhile

          -- Find a free frame and allocate it...
          f = framesInUse.FindZeroAndSet ()
          numberFreeFrames = numberFreeFrames - 1

          -- Unlock...
          frameManagerLock.Unlock ()

          -- Compute and return the physical address of the frame...
          frameAddr = PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME + (f * PAGE_SIZE)
          -- printHexVar ("GetAFrame returning frameAddr", frameAddr)
          return frameAddr
        endMethod

     ----------  FrameManager . PutAFrame  ----------

      method PutAFrame ( frameAddr: int )
          
          var
            bitNumber: int
            
            frameManagerLock.Lock ()
            
            bitNumber = (frameAddr-PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME)/PAGE_SIZE
            
            framesInUse.ClearBit(bitNumber)

            numberFreeFrames= numberFreeFrames + 1
            
            newFramesAvailable.Signal (&frameManagerLock)
            
            frameManagerLock.Unlock ()

        endMethod


      ----------  FrameManager . GetNewFrames  ----------

      method GetNewFrames (aPageTable: ptr to AddrSpace, numFramesNeeded: int)
        var
          i: int
          virtAddr: int
          physicalAddi: int

          frameManagerLock.Lock ()
          
          while numberFreeFrames < numFramesNeeded
              newFramesAvailable.Wait (&frameManagerLock)
          endWhile

          for i = 0 to numFramesNeeded-1

            virtAddr = framesInUse.FindZeroAndSet()

            physicalAddi = PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME + (virtAddr*PAGE_SIZE)

              aPageTable.SetFrameAddr(i, physicalAddi)
            
          endFor

          numberFreeFrames= numberFreeFrames-numFramesNeeded

          aPageTable.numberOfPages = numFramesNeeded

          frameManagerLock.Unlock ()

        endMethod

      ----------  FrameManager . ReturnAllFrames  ----------

      method ReturnAllFrames (aPageTable: ptr to AddrSpace)
        
        var
          i: int
          frmAddr: int
          bitNumber: int
          numFramesReturned: int

          frameManagerLock.Lock ()

          numFramesReturned = aPageTable.numberOfPages

          for i = 0 to numFramesReturned-1

            frmAddr = aPageTable.ExtractFrameAddr(i)
            bitNumber = (frmAddr-PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME)/PAGE_SIZE
            framesInUse.ClearBit(bitNumber)

          endFor

          numberFreeFrames= numberFreeFrames + numFramesReturned

          newFramesAvailable.Signal(&frameManagerLock)
          
          frameManagerLock.Unlock ()

        endMethod

    endBehavior

-----------------------------  AddrSpace  ---------------------------------

  behavior AddrSpace

      ----------  AddrSpace . Init  ----------

      method Init ()
        --
        -- Initialize this object.
        --
          numberOfPages = 0
          pageTable = new array of int { MAX_PAGES_PER_VIRT_SPACE of 0x00000003 }
        endMethod

      ----------  AddrSpace . Print  ----------

      method Print ()
        --
        -- Print this object.
        --
          var i: int
          print ("        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n")
          print ("     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n")
          for i = 0 to numberOfPages-1
            print ("     ")
            printHex ((&pageTable[i]) asInteger)
            print (":  ")
            printHex (pageTable[i])
            print ("     ")
            printHex (i * PAGE_SIZE)   -- Logical address
            print ("  ")
            printHex (self.ExtractFrameAddr (i))       -- Physical address
            print ("    ")
            if self.ExtractUndefinedBits (i) != 0
              printHex (self.ExtractUndefinedBits (i))
            else
              print ("          ")
            endIf
            print ("     ")
            if self.IsDirty (i)
              print ("YES")
            else
              print ("   ")
            endIf
            print ("      ")
            if self.IsReferenced (i)
              print ("YES")
            else
              print ("   ")
            endIf
            print ("         ")
            if self.IsWritable (i)
              print ("YES")
            else
              print ("   ")
            endIf
            print ("      ")
            if self.IsValid (i)
              print ("YES")
            else
              print ("   ")
            endIf
            nl ()
          endFor
        endMethod

      ----------  AddrSpace . ExtractFrameAddr  ----------

      method ExtractFrameAddr (entry: int) returns int
        --
        -- Return the physical address of the frame in the selected page
        -- table entry.
        --
          return (pageTable[entry] & 0xffffe000) 
        endMethod

      ----------  AddrSpace . ExtractUndefinedBits  ----------

      method ExtractUndefinedBits (entry: int) returns int
        --
        -- Return the undefined bits in the selected page table entry.
        --
          return (pageTable[entry] & 0x00001ff0) 
        endMethod

      ----------  AddrSpace . SetFrameAddr  ----------

      method SetFrameAddr (entry: int, frameAddr: int)
        -- Set the physical address of the frame in the selected page table entry to the value of the argument "frameAddr".
        
          pageTable[entry] = (pageTable[entry] & 0x00001fff) | frameAddr
        endMethod

      ----------  AddrSpace . IsDirty  ----------

      method IsDirty (entry: int) returns bool
        --
        -- Return true if the selected page table entry is marked "dirty".
        --
          return (pageTable[entry] & 0x00000008) != 0
        endMethod

      ----------  AddrSpace . IsReferenced  ----------

      method IsReferenced (entry: int) returns bool
        --
        -- Return true if the selected page table entry is marked "referenced".
        --
          return (pageTable[entry] & 0x00000004) != 0
        endMethod

      ----------  AddrSpace . IsWritable  ----------

      method IsWritable (entry: int) returns bool
        --
        -- Return true if the selected page table entry is marked "writable".
        --
          return (pageTable[entry] & 0x00000002) != 0
        endMethod

      ----------  AddrSpace . IsValid  ----------

      method IsValid (entry: int) returns bool
        --
        -- Return true if the selected page table entry is marked "valid".
        --
          return (pageTable[entry] & 0x00000001) != 0
        endMethod

      ----------  AddrSpace . SetDirty  ----------

      method SetDirty (entry: int)
        --
        -- Set the selected page table entry's "dirty" bit to 1.
        --
          pageTable[entry] = pageTable[entry] | 0x00000008
        endMethod

      ----------  AddrSpace . SetReferenced  ----------

      method SetReferenced (entry: int)
        --
        -- Set the selected page table entry's "referenced" bit to 1.
        --
          pageTable[entry] = pageTable[entry] | 0x00000004
        endMethod

      ----------  AddrSpace . SetWritable  ----------

      method SetWritable (entry: int)
        --
        -- Set the selected page table entry's "writable" bit to 1.
        --
          pageTable[entry] = pageTable[entry] | 0x00000002
        endMethod

      ----------  AddrSpace . SetValid  ----------

      method SetValid (entry: int)
        --
        -- Set the selected page table entry's "valid" bit to 1.
        --
          pageTable[entry] = pageTable[entry] | 0x00000001
        endMethod

      ----------  AddrSpace . ClearDirty  ----------

      method ClearDirty (entry: int)
        --
        -- Clear the selected page table entry's "dirty" bit.
        --
          pageTable[entry] = pageTable[entry] & ! 0x00000008
        endMethod

      ----------  AddrSpace . ClearReferenced  ----------

      method ClearReferenced (entry: int)
        --
        -- Clear the selected page table entry's "referenced" bit.
        --
          pageTable[entry] = pageTable[entry] & ! 0x00000004
        endMethod

      ----------  AddrSpace . ClearWritable  ----------

      method ClearWritable (entry: int)
        --
        -- Clear the selected page table entry's "writable" bit.
        --
          pageTable[entry] = pageTable[entry] & ! 0x00000002
        endMethod

      ----------  AddrSpace . ClearValid  ----------

      method ClearValid (entry: int)
        --
        -- Clear the selected page table entry's "valid" bit.
        --
          pageTable[entry] = pageTable[entry] & ! 0x00000001
        endMethod

      ----------  AddrSpace . SetToThisPageTable  ----------

      method SetToThisPageTable ()
        --
        -- This method sets the page table registers in the CPU to
        -- point to this page table.  Later, when paging is enabled,
        -- this will become the active virtual address space.
        --
          LoadPageTableRegs ((& pageTable[0]) asInteger, numberOfPages*4)
        endMethod

      ----------  AddrSpace . CopyBytesFromVirtual  ----------

      method CopyBytesFromVirtual (kernelAddr, virtAddr, numBytes: int)
                    returns int
        --
        -- This method copies data from a user's virtual address space
        -- to somewhere in the kernel space.  We assume that the
        -- pages of the virtual address space are resident in
        -- physical page frames.  This routine returns the number of bytes
        -- that were copied; if there was any problem with the virtual
        -- addressed data, it returns -1.
        --
          var copiedSoFar, virtPage, offset, fromAddr: int
          -- print ("CopyBytesFromVirtual called...\n")
          -- printHexVar ("  kernelAddr", kernelAddr)
          -- printHexVar ("  virtAddr", virtAddr)
          -- printIntVar ("  numBytes", numBytes)
          if numBytes == 0
            return 0
          elseIf numBytes < 0
	    currentThread.myProcess.lastError = E_Bad_Value
            return -1
          endIf
          virtPage = virtAddr / PAGE_SIZE
          offset = virtAddr % PAGE_SIZE
          -- printHexVar ("  virtPage", virtPage)
          -- printHexVar ("  offset", offset)
          while true
            if virtPage >= numberOfPages
              print ("  Virtual page number is too large!!!\n")
	      currentThread.myProcess.lastError = E_Bad_Value
              return -1
            endIf
            if ! self.IsValid (virtPage)
              print ("  Virtual page is not marked VALID!!!\n")
	      currentThread.myProcess.lastError = E_Bad_Value
              return -1
            endIf
            fromAddr = self.ExtractFrameAddr (virtPage) + offset
            -- printHexVar ("  Copying bytes from physcial addr", fromAddr)
            while offset < PAGE_SIZE
              -- printHexVar ("  Copying a byte to physcial addr", kernelAddr)
              -- printChar (* (fromAddr asPtrTo char))
              * (kernelAddr asPtrTo char) = * (fromAddr asPtrTo char)
              offset = offset + 1
              kernelAddr = kernelAddr + 1
              fromAddr = fromAddr + 1
              copiedSoFar = copiedSoFar + 1
              if copiedSoFar == numBytes
                return copiedSoFar
              endIf
            endWhile
            virtPage = virtPage + 1
            offset = 0
          endWhile
        endMethod

      ----------  AddrSpace . CopyBytesToVirtual  ----------

      method CopyBytesToVirtual (virtAddr, kernelAddr, numBytes: int)
                    returns int
        --
        -- This method copies data from the kernel's address space to
        -- somewhere in the virtual address space.  We assume that the
        -- pages of the virtual address space are resident in physical
        -- page frames.  This routine returns the number of bytes
        -- that were copied; if there was any problem with the virtual
        -- addressed data, it returns -1.
        --
          var copiedSoFar, virtPage, offset, destAddr: int
          if numBytes == 0
            return 0
          elseIf numBytes < 0
	    currentThread.myProcess.lastError = E_Bad_Value
            return -1
          endIf
          virtPage = virtAddr / PAGE_SIZE
          offset = virtAddr % PAGE_SIZE
          while true
            if (virtPage >= numberOfPages) ||
               (! self.IsValid (virtPage)) ||
               (! self.IsWritable (virtPage))
	      currentThread.myProcess.lastError = E_Bad_Value
              return -1
            endIf
            destAddr = self.ExtractFrameAddr (virtPage) + offset
            while offset < PAGE_SIZE
              * (destAddr asPtrTo char) = * (kernelAddr asPtrTo char)
              offset = offset + 1
              kernelAddr = kernelAddr + 1
              destAddr = destAddr + 1
              copiedSoFar = copiedSoFar + 1
              if copiedSoFar == numBytes
                return copiedSoFar
              endIf
            endWhile
            virtPage = virtPage + 1
            offset = 0
          endWhile
        endMethod

      ----------  AddrSpace . GetStringFromVirtual  ----------

      method GetStringFromVirtual (kernelAddr: String, virtAddr, maxSize: int) returns int
        --
        -- This method is used to copy a String from virtual space into
        -- a given physical address in the kernel.  The "kernelAddr" should be
        -- a pointer to an "array of char" in the kernel's code.  This method
        -- copies up to "maxSize" characters from approriate page frame to this
        -- to the target array in the kernel.
        --
        -- Note: This method resets the "arraySize" word in the target.  It is
        -- assumed that the target array has enough space; no checking is done.
        -- The caller should supply a "maxSize" telling how many characters may
        -- be safely copied.
        --
        -- If there are problems, then -1 is returned.  Possible problems:
        --       The source array has more than "maxSize" elements
        --       The source page is invalid or out of range
        -- If all okay, then the number of characters copied is returned.
        --
          var sourceSize: int
          -- print ("GetStringFromVirtual called...\n")
          -- printHexVar ("  kernelAddr", kernelAddr asInteger)
          -- printHexVar ("  virtAddr", virtAddr)
          -- printIntVar ("  maxSize", maxSize)
          -- Begin by fetching the source size
          if self.CopyBytesFromVirtual ((&sourceSize) asInteger,
                                        virtAddr,
                                        4) < 4
            return -1
          endIf
          -- printIntVar ("  sourceSize", sourceSize)
          -- Make sure the source size is okay
          if sourceSize > maxSize
	    currentThread.myProcess.lastError = E_Bad_Value
            return -1
          endIf
          -- Change the size of the destination array
          * (kernelAddr asPtrTo int) = sourceSize
          -- Next, get the characters
          return self.CopyBytesFromVirtual (kernelAddr asInteger + 4,
                                            virtAddr + 4,
                                            sourceSize)
        endMethod

    endBehavior

-----------------------------  TimerInterruptHandler  ---------------------------------

  function TimerInterruptHandler ()
    --
    -- This routine is called when a timer interrupt occurs.  Upon entry,
    -- interrupts are DISABLED.  Upon return, execution will return to
    -- the interrupted process, which necessarily had interrupts ENABLED.
    --
    -- (If you wish to turn time-slicing off, simply disable the call
    -- to "Yield" in the code below.  Threads will then execute until they
    -- call "Yield" explicitly, or until they call "Sleep".)
    --
      currentInterruptStatus = DISABLED
      -- printChar ('_')
      currentThread.Yield ()
      currentInterruptStatus = ENABLED
    endFunction

-----------------------------  DiskInterruptHandler  --------------------------

  function DiskInterruptHandler ()
    --
    -- This routine is called when a disk interrupt occurs.  It will
    -- signal the "semToSignalOnCompletion" Semaphore and return to
    -- the interrupted thread.
    --
    -- This is an interrupt handler.  As such, interrupts will be DISABLED
    -- for the duration of its execution.
    --
-- Uncomment this code later...
      --FatalError ("DISK INTERRUPTS NOT EXPECTED IN PROJECT 3")

      currentInterruptStatus = DISABLED
      -- print ("DiskInterruptHandler invoked!\n")
      if diskDriver.semToSignalOnCompletion
        diskDriver.semToSignalOnCompletion.Up()
      endIf

    endFunction

-----------------------------  SerialInterruptHandler  --------------------------

  function SerialInterruptHandler ()
    --
    -- This routine is called when a serial interrupt occurs.  It will
    -- signal the "semToSignalOnCompletion" Semaphore and return to
    -- the interrupted thread.
    --
    -- This is an interrupt handler.  As such, interrupts will be DISABLED
    -- for the duration of its execution.
    --
      currentInterruptStatus = DISABLED
      if serialDriver.initialized
        serialDriver.serialNeedsAttention.Up()
      endIf

    endFunction
-----------------------------  IllegalInstructionHandler  --------------------------

  function IllegalInstructionHandler ()
    --
    -- This routine is called when an IllegalInstruction exception occurs.  Upon entry,
    -- interrupts are DISABLED.  We should not return to the code that had
    -- the exception.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("An IllegalInstruction exception has occured while in user mode")
    endFunction

-----------------------------  ArithmeticExceptionHandler  --------------------------

  function ArithmeticExceptionHandler ()
    --
    -- This routine is called when an ArithmeticException occurs.  Upon entry,
    -- interrupts are DISABLED.  We should not return to the code that had
    -- the exception.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("An ArithmeticException exception has occured while in user mode")
    endFunction

-----------------------------  AddressExceptionHandler  --------------------------

  function AddressExceptionHandler ()
    --
    -- This routine is called when an AddressException occurs.  Upon entry,
    -- interrupts are DISABLED.  We should not return to the code that had
    -- the exception.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("An AddressException exception has occured while in user mode")
    endFunction

-----------------------------  PageInvalidExceptionHandler  --------------------------

  function PageInvalidExceptionHandler ()
    --
    -- This routine is called when a PageInvalidException occurs.  Upon entry,
    -- interrupts are DISABLED.  For now, we simply print a message and abort
    -- the thread.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("A PageInvalidException exception has occured while in user mode")
    endFunction

-----------------------------  PageReadonlyExceptionHandler  --------------------------

  function PageReadonlyExceptionHandler ()
    --
    -- This routine is called when a PageReadonlyException occurs.  Upon entry,
    -- interrupts are DISABLED.  For now, we simply print a message and abort
    -- the thread.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("A PageReadonlyException exception has occured while in user mode")
    endFunction

-----------------------------  PrivilegedInstructionHandler  --------------------------

  function PrivilegedInstructionHandler ()
    --
    -- This routine is called when a PrivilegedInstruction exception occurs.  Upon entry,
    -- interrupts are DISABLED.  We should not return to the code that had
    -- the exception.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("A PrivilegedInstruction exception has occured while in user mode")
    endFunction

-----------------------------  AlignmentExceptionHandler  --------------------------

  function AlignmentExceptionHandler ()
    --
    -- This routine is called when an AlignmentException occurs.  Upon entry,
    -- interrupts are DISABLED.  We should not return to the code that had
    -- the exception.
    --
      currentInterruptStatus = DISABLED
      ErrorInUserProcess ("An AlignmentException exception has occured while in user mode")
    endFunction

-----------------------------  ErrorInUserProcess  --------------------------

  function ErrorInUserProcess (errorMessage: String)
    --
    -- This routine is called when an error has occurred in a user-level
    -- process.  It prints the error message and terminates the process.
    --
      print ("\n**********  ")
      print (errorMessage)
      print ("  **********\n\n")

      -- Print some information about the offending process...
      if currentThread.myProcess
        currentThread.myProcess.Print ()
      else
        print ("  ERROR: currentThread.myProcess is null\n\n")
      endIf
      currentThread.Print ()

      -- Uncomment the following for even more information...
      -- threadManager.Print ()
      -- processManager.Print ()

      ProcessFinish (-1)
    endFunction

-----------------------------  SyscallTrapHandler  --------------------------

  function SyscallTrapHandler (syscallCodeNum, arg1, arg2, arg3, arg4: int) returns int
    --
    -- This routine is called when a syscall trap occurs.  Upon entry, interrupts
    -- will be DISABLED, paging is disabled, and we will be running in System mode.
    -- Upon return, execution will return to the user mode portion of this
    -- thread, which will have had interrupts ENABLED.
    --
      currentInterruptStatus = DISABLED
      /*****
      print ("Within SyscallTrapHandler: syscallCodeNum=")
      printInt (syscallCodeNum)
      print (", arg1=")
      printInt (arg1)
      print (", arg2=")
      printInt (arg2)
      print (", arg3=")
      printInt (arg3)
      print (", arg4=")
      printInt (arg4)
      nl ()
      *****/
      if syscallCodeNum == SYSCALL_GETERROR
         return currentThread.myProcess.lastError
      endIf
      currentThread.myProcess.lastError = E_No_Error
      switch syscallCodeNum
        case SYSCALL_FORK:
          return Handle_Sys_Fork ()
        case SYSCALL_GETDISKINFO:
	        return Handle_Sys_GetDiskInfo (arg1 asPtrTo diskInfo)
        case SYSCALL_YIELD:
          Handle_Sys_Yield ()
          return 0
        case SYSCALL_EXEC:
         return Handle_Sys_Exec (arg1 asPtrTo array of char,
                                  arg2 asPtrTo array of ptr to array of char )
        case SYSCALL_JOIN:
          return Handle_Sys_Join (arg1)
        case SYSCALL_EXIT:
          Handle_Sys_Exit (arg1)
          return 0
        case SYSCALL_STAT:
           return Handle_Sys_Stat(arg1 asPtrTo array of char, arg2 asPtrTo statInfo)
        case SYSCALL_PIPE:
          return Handle_Sys_Pipe(arg1 asPtrTo array of int)
        case SYSCALL_CHDIR:
          return Handle_Sys_Chdir(arg1 asPtrTo array of char)
        case SYSCALL_OPEN:
          return Handle_Sys_Open (arg1 asPtrTo array of char, arg2, arg3)
        case SYSCALL_READ:
          return Handle_Sys_Read (arg1, arg2 asPtrTo char, arg3)
        case SYSCALL_WRITE:
          return Handle_Sys_Write (arg1, arg2 asPtrTo char, arg3)
        case SYSCALL_SEEK:
          return Handle_Sys_Seek (arg1, arg2)
        case SYSCALL_CLOSE:
          Handle_Sys_Close (arg1)
          return 0
        case SYSCALL_DUP:
          return Handle_Sys_Dup(arg1)
        case SYSCALL_SHUTDOWN:
          Handle_Sys_Shutdown ()
          return 0
        case SYSCALL_GETPID:
          return currentThread.myProcess.pid
        case SYSCALL_GETPPID:
          return currentThread.myProcess.parentsPid
        default:
          print ("Syscall code = ")
          printInt (syscallCodeNum)
          nl ()
          FatalError ("Unknown syscall code from user thread")
      endSwitch
      return 0
    endFunction

-----------------------------  Handle_Sys_GetDiskInfo  -------------------------

  function Handle_Sys_GetDiskInfo (buffPtr: ptr to diskInfo) returns int
    
    if buffPtr asInteger < 0 ||  buffPtr asInteger + 20 > 
	    currentThread.myProcess.addrSpace.numberOfPages*PAGE_SIZE
      currentThread.myProcess.lastError = E_Bad_Address
      return -1
    endIf

	  return fileSystem.GetDiskInfo (buffPtr)

  endFunction

-----------------------------  Handle_Sys_Exit  ---------------------------------

  function Handle_Sys_Exit (returnStatus: int)
    ProcessFinish(returnStatus)
    endFunction

-----------------------------  Handle_Sys_Shutdown  ---------------------------------

  function Handle_Sys_Shutdown ()
      print("Handle_Sys_Shutdown invoked!")
      nl()
    endFunction

-----------------------------  Handle_Sys_Yield  ---------------------------------

  function Handle_Sys_Yield ()

      currentThread.Yield()
      return

    endFunction

-----------------------------  Handle_Sys_Fork  ---------------------------------

  function Handle_Sys_Fork () returns int
      var
        newThread: ptr to Thread
        newPCB: ptr to ProcessControlBlock
        junk: int
        i: int
        oldUserPC: int

    --1. Allocate and set up new Thread and ProcessControlBlock objects.
      newThread = threadManager.GetANewThread()
      newPCB = processManager.GetANewProcess()
      
      newPCB.myThread = newThread
      newPCB.parentsPid = currentThread.myProcess.pid

      newThread.name = "myNewThread"
      newThread.status = JUST_CREATED
      newThread.myProcess = newPCB

      --save regs
      SaveUserRegs(&newThread.userRegs[0])
      junk = SetInterruptsTo(ENABLED)

      newThread.stackTop = & (newThread.systemStack[SYSTEM_STACK_SIZE-1])
      

      --For future Assign:
      --copy the fileDescriptor array here! 
      
      
      newPCB.workingDir = fileSystem.rootDirectory
      for i=0 to MAX_FILES_PER_PROCESS-1
        if currentThread.myProcess.fileDescriptor[i] != null
          newPCB.fileDescriptor[i]= currentThread.myProcess.fileDescriptor[i].NewReference()
        endIf
      endFor

    --2. Make a copy of the address space.
    frameManager.GetNewFrames(&newPCB.addrSpace, currentThread.myProcess.addrSpace.numberOfPages)

    --Copy each page using MemoryCopy
    for i = 0 to currentThread.myProcess.addrSpace.numberOfPages-1
      MemoryCopy(newPCB.addrSpace.ExtractFrameAddr(i) , currentThread.myProcess.addrSpace.ExtractFrameAddr(i), 8192)
    endFor

    --set writable bit in child to same as the parent's
    if currentThread.myProcess.addrSpace.IsWritable(1)
      newPCB.addrSpace.SetWritable(1)
    else
      newPCB.addrSpace.ClearWritable(1)
    endIf

    oldUserPC = GetOldUserPCFromSystemStack ()

    --3. Invoke Thread.Fork to start up the new process’s thread.
    newThread.Fork(ResumeChildAfterFork, oldUserPC)

    --4. Return the child’s pid.
    return newPCB.pid
    
    endFunction

-----------------------------  ResumeChildAfterFork  ----------------------------

function ResumeChildAfterFork(oldUserPC: int)
  var
    junk: int
    initSystemStackTop: int
    InitUserStackTop: int

  junk = SetInterruptsTo(DISABLED)
  currentThread.myProcess.addrSpace.SetToThisPageTable()

  RestoreUserRegs(&currentThread.userRegs[0])
  currentThread.isUserThread = true

  InitUserStackTop = ((currentThread.stackTop asPtrTo int) asInteger)

  initSystemStackTop = (& currentThread.systemStack[SYSTEM_STACK_SIZE-1]) asInteger

  BecomeUserThread(currentThread.userRegs[14], oldUserPC, initSystemStackTop, 0)

  endFunction

-----------------------------  Handle_Sys_Join  ---------------------------------

  function Handle_Sys_Join (processID: int) returns int
    var
    --i: int
    myProcess: ptr to ProcessControlBlock

    myProcess = processManager.FindProcess(processID)
    if myProcess != null && (myProcess.parentsPid == currentThread.myProcess.pid) && (myProcess.status !=FREE )
      return processManager.WaitForZombie(myProcess)
      else
        currentThread.myProcess.lastError = E_No_Child
        return -1 
    endIf

  endFunction

-----------------------------  Handle_Sys_Exec  ---------------------------------

 function Handle_Sys_Exec (filename: ptr to array of char,
                            args: ptr to array of ptr to array of char) returns int
      
      var
        i, initPC, InitUserStackTop, initSystemStackTop, oldIntStat, argsAddi, addiOffset, argOffset, numArgs, stringAddi, origChars, alteredChars, trash, physicalAddi: int
        myFile: ptr to OpenFile
        newAddrSpace: AddrSpace = new AddrSpace
        strBuffer: array [MAX_STRING_SIZE] of char

      --Error checks:
      --Setting error for call with bad argument pointers
      
      
      if filename ==null
        currentThread.myProcess.lastError=E_Bad_Address
        return -1
      endIf
      
      /*
      if args==null
        currentThread.myProcess.lastError=E_No_Entry
        return -1
      endIf
      */

      --Copy filename string from vit addi to kernel addi space. 
      --Copy characters into an array. Set to MAX_STRING_SIZE and verify it's not exceeded
      --i = currentThread.myProcess.addrSpace.GetStringFromVirtual
      i = currentThread.myProcess.addrSpace.GetStringFromVirtual (
                                                        & strBuffer,
                                                        filename asInteger,
                                                        MAX_STRING_SIZE)
      
      if i < 0
        return -1
      endIf
      

      --open executable
      myFile = fileManager.Open(& strBuffer, currentThread.myProcess.workingDir , O_READ, MODE_READ)
      if(myFile == null)
        return -1
        --FatalError("Problem Opening File in FileManager . Open")
      endIf

      newAddrSpace.Init()
      --create logical address space & read the executable into it
      initPC = myFile.LoadExecutable(&(newAddrSpace))
      
      if initPC == -1
        currentThread.myProcess.lastError=E_Permissions
        frameManager.ReturnAllFrames(&newAddrSpace)
        return -1
      endIf

        --Figure out number of arguments
          argsAddi = args asInteger
          trash = currentThread.myProcess.addrSpace.CopyBytesFromVirtual(((&numArgs) asInteger),argsAddi,4)
          
          if trash == -1
            print("error with copyFromVirt argsAddi\n")
            return -1
          endIf
          
          print("Number of arguments is: ")
          printInt(numArgs)
          nl()          

          argOffset = 4*(numArgs+1)


          InitUserStackTop = currentThread.myProcess.addrSpace.numberOfPages*PAGE_SIZE
          
          --Physical address 
          --get the frame address of last page
          physicalAddi = newAddrSpace.ExtractFrameAddr(newAddrSpace.numberOfPages)
          physicalAddi= physicalAddi+8192
          * ( (physicalAddi-argOffset) asPtrTo int) = numArgs
          
          
          addiOffset = argOffset -4

      --3) for each argument (could have max arguments of ~150 maybe)
          for i = 0 to numArgs-1
          printIntVar("arg offset", argOffset)
          printIntVar("addiOffset", addiOffset)
            --3a. get logical address in oldAddrSpace of String
          
            trash = currentThread.myProcess.addrSpace.CopyBytesFromVirtual(((&stringAddi) asInteger), argsAddi+(4*(i+1)), sizeOf int)
            if trash == -1
              return -1
            endIf

            --3b. get length of arg from oldAddrSpace (CopyBytesFromVirtual)
            trash = currentThread.myProcess.addrSpace.CopyBytesFromVirtual((&origChars) asInteger, stringAddi, sizeOf int)
            if trash == -1
              return -1
            endIf

            printIntVar("num characters", origChars)
            -- calculate amount needed to keep 4 byte aligned
            if (origChars%4) != 0
              alteredChars = origChars + (4-(origChars%4))
              else
                alteredChars = origChars
            endIf

            --increase string offset size
            argOffset = argOffset + 4+alteredChars
            
            --grab string from virtual
            trash = currentThread.myProcess.addrSpace.GetStringFromVirtual ( ((physicalAddi - argOffset) asPtrTo array of char), stringAddi, origChars)
            
            --add address of new string into "array of arrays"
            --physical address on left. logical address on right
            * ( (physicalAddi - addiOffset) asPtrTo int) = InitUserStackTop - argOffset

            addiOffset = addiOffset - 4

          endFor
      
      
      --Now that we know new one is good we returning frames of old/set curProcess addiSpace
      frameManager.ReturnAllFrames(&currentThread.myProcess.addrSpace)
      currentThread.myProcess.addrSpace = newAddrSpace

      --close executable file
      fileManager.Close(myFile)

      --compute initial value for user-level stack
      --InitUserStackTop = logical address past end of logical addresss space
      --InitUserStackTop = currentThread.myProcess.addrSpace.numberOfPages*PAGE_SIZE

      --Jump into a user level thread
      --Reset the system stack top pointer
      initSystemStackTop = (& currentThread.systemStack[SYSTEM_STACK_SIZE-1]) asInteger

      -- 1. Disable Interrupts
      oldIntStat = SetInterruptsTo(DISABLED)

      -- 2. Initialize the page table registers for this logical address space
      currentThread.myProcess.addrSpace.SetToThisPageTable()

      -- 3. Set the isUserThread variable in the current thread to true
      currentThread.isUserThread = true

      BecomeUserThread(InitUserStackTop-argOffset, initPC, initSystemStackTop, (InitUserStackTop-(4*(numArgs+1))))

      return 3000

    endFunction

-----------------------------  Handle_Sys_Chdir  ---------------------------------
function Handle_Sys_Chdir(filename: String) returns int
      var
        i:int
        strBuffer: array [MAX_STRING_SIZE] of char
        --fileDesIndex: int
        newFile: ptr to OpenFile
        --Copy the filename string from virtual space to a small buffer in this routine.
        i = currentThread.myProcess.addrSpace.GetStringFromVirtual (
                                              & strBuffer,
                                              filename asInteger,
                                              MAX_STRING_SIZE)
        if i==(-1)
          currentThread.myProcess.lastError=E_Bad_Value
          return -1
        endIf
       
        newFile = fileManager.Open(&strBuffer, currentThread.myProcess.workingDir, O_READ / O_WRITE, MODE_READ)

        if newFile == null
          return -1
        endIf

        if newFile.kind != DIRECTORY
          return -1
        endIf

        fileManager.Close(currentThread.myProcess.workingDir)
        currentThread.myProcess.workingDir = newFile
        
        return 0
endFunction

-----------------------------  Handle_Sys_Dup  ---------------------------------

function Handle_Sys_Dup(fd: int) returns int
  var
    fileDesIndex, i: int
    --dupedFile: ptr to OpenFile

     --check that fileDesc is valid (legal index into fileDescriptor array & file referenced must have been open)
      if (fd<0||fd>MAX_NUMBER_OF_OPEN_FILES||currentThread.myProcess.fileDescriptor[fd] == null)
        currentThread.myProcess.lastError = E_Bad_FD
        return -1
      endIf


    fileDesIndex = -1
    for i = 0 to MAX_FILES_PER_PROCESS-1
      if currentThread.myProcess.fileDescriptor[i] == null
        fileDesIndex = i
        currentThread.myProcess.fileDescriptor[fileDesIndex] = currentThread.myProcess.fileDescriptor[fd].NewReference()
        break
      endIf
    endFor

    if fileDesIndex == -1
      currentThread.myProcess.lastError = E_No_Resource
    endIf

    return fileDesIndex
endFunction


-----------------------------  Handle_Sys_Pipe  ---------------------------------
function Handle_Sys_Pipe (fds: ptr to array[2] of int) returns int
  var
    fileDesIndex, fdsAddi, i, trash: int
    readOFile, writeOFile: ptr to OpenFile
    myPipe: ptr to Pipe
    
    fdsAddi = fds asInteger
    readOFile= fileManager.GetAnOpenFile(true)
    --readOFile.Init(PIPE, null, O_READ)
    --printIntVar("readFile users", readOFile.numberOfUsers)
    readOFile.numberOfUsers = readOFile.numberOfUsers + 1
    writeOFile = fileManager.GetAnOpenFile(true)
    --writeOFile.Init(PIPE, null, O_WRITE)
    writeOFile.numberOfUsers = writeOFile.numberOfUsers + 1

    myPipe = fileManager.GetFreePipe()
    if !myPipe.Open()
      return -1
    endIf
    
    readOFile.pipe = myPipe
    readOFile.kind = PIPE
    readOFile.flags = O_READ

    writeOFile.pipe = myPipe
    writeOFile.kind = PIPE
    writeOFile.flags = O_WRITE
    
    i = 2
    trash = currentThread.myProcess.addrSpace.CopyBytesToVirtual(fdsAddi, ((&i) asInteger), sizeOf int)
    if trash == -1
      return -1
      else
        fdsAddi = fdsAddi + 4
    endIf
    
    --•Locate an empty slot in this process’s fd fileDescriptor array & put pipe OpenFile ptrs in it...
        fileDesIndex = -1
        for i = 0 to MAX_FILES_PER_PROCESS-1
          if currentThread.myProcess.fileDescriptor[i] == null
            fileDesIndex = i
            break
          endIf
        endFor
      
        if fileDesIndex == -1
          currentThread.myProcess.lastError=E_No_Resource
          return -1
          else
            --printIntVar("current file Descriptor isssssss", fileDesIndex) 
            currentThread.myProcess.fileDescriptor[fileDesIndex] = readOFile
            i = currentThread.myProcess.addrSpace.CopyBytesToVirtual(fdsAddi, ((&fileDesIndex) asInteger), sizeOf int)
            if i == -1
              return -1
              else
                fdsAddi = fdsAddi + 4
            endIf
        endIf
        
        fileDesIndex = -1
        for i = 0 to MAX_FILES_PER_PROCESS-1
          if currentThread.myProcess.fileDescriptor[i] == null
            fileDesIndex = i
            break
          endIf
        endFor
        if fileDesIndex == -1
          currentThread.myProcess.lastError=E_No_Resource
          return -1
          else
            --printIntVar("current file Descriptor isssssss", fileDesIndex) 
            currentThread.myProcess.fileDescriptor[fileDesIndex] = writeOFile
            i = currentThread.myProcess.addrSpace.CopyBytesToVirtual(fdsAddi, (&fileDesIndex) asInteger, sizeOf int)
            if i == -1
              return -1
            endIf
        endIf
  
  return 0
endFunction

-----------------------------  Handle_Sys_Open  ---------------------------------

  function Handle_Sys_Open (filename: ptr to array of char, flags, mode: int) returns int
      var
        i:int
        strBuffer: array [MAX_STRING_SIZE] of char
        fileDesIndex: int
        newFile: ptr to OpenFile
        --Copy the filename string from virtual space to a small buffer in this routine.
        i = currentThread.myProcess.addrSpace.GetStringFromVirtual (
                                              & strBuffer,
                                              filename asInteger,
                                              MAX_STRING_SIZE)
        if i==(-1)
          currentThread.myProcess.lastError=E_Bad_Value
          return -1
        endIf

        --•Locate an empty slot in this process’s fileDescriptor array.
        fileDesIndex = -1
        for i = 0 to MAX_FILES_PER_PROCESS-1
          if currentThread.myProcess.fileDescriptor[i] == null
            fileDesIndex = i
            break
          endIf
        endFor
      
        --•If there are no empty slots, return -1.
        if fileDesIndex == -1
        currentThread.myProcess.lastError=E_No_Resource
          return fileDesIndex
        endIf

        if !((flags ==  O_READ)||(flags== O_WRITE)||(flags== O_RDWR)||(flags== O_CREATE)||(flags== O_MAYCREATE))
          currentThread.myProcess.lastError = E_Bad_Value
          return -1
        endIf

        --Dealing with case that we're opening serialDevice
        if StrEqual(&strBuffer, "/dev/serial")
          currentThread.myProcess.fileDescriptor[fileDesIndex]= &fileManager.serialTerminalFile
          return fileDesIndex
        endIf
       
        newFile = fileManager.Open(&strBuffer, currentThread.myProcess.workingDir, flags, mode)

        if newFile == null

          return -1
        endIf

        if newFile.kind == DIRECTORY
          return -1
        endIf

        currentThread.myProcess.fileDescriptor[fileDesIndex] = newFile
        
        return fileDesIndex
        endFunction

-----------------------------  Handle_Sys_Read  ---------------------------------

  function Handle_Sys_Read (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
      var
        theProc: ptr to ProcessControlBlock
        file: ptr to OpenFile
      
      theProc = currentThread.myProcess

      --check that fileDesc is valid (legal index into fileDescriptor array & file referenced must have been open)
      if (fileDesc<0||fileDesc>MAX_NUMBER_OF_OPEN_FILES||theProc.fileDescriptor[fileDesc] == null)
        theProc.lastError = E_Bad_FD
        return -1
        else 
          file = theProc.fileDescriptor[fileDesc]
      endIf

      if((buffer asInteger + sizeInBytes)> (currentThread.myProcess.addrSpace.numberOfPages*8192) || (buffer asInteger)<0)
              currentThread.myProcess.lastError=E_Bad_Address
              return -1
          endIf

      if sizeInBytes<0
        theProc.lastError = E_Bad_Value
        return -1
      endIf

      --check file was opened with correct open (reading)
      if !((file.flags==O_READ) || (file.flags==O_RDWR))
        theProc.lastError = E_Permissions
        return -1
      endIf

      if file.kind == TERMINAL
        return serialRead(buffer, sizeInBytes)
      endIf

      if file.kind == PIPE
        --file.numberOfUsers = file.numberOfUsers + 1
        return file.pipe.Read(buffer, sizeInBytes)
      endIf

      --check if buffer is a valid pointer && that entire buffer is valid and writeable

      return fileSystem.ReadFile(file, buffer, sizeInBytes)

    endFunction

-----------------------------  serialRead   ---------------------------------

function serialRead(buffer: ptr to char, sizeInBytes: int) returns int
      var
        virtPage, nextPos, temp, junk: int
        aChar: char
        
        temp = 0
        nextPos = buffer asInteger
        virtPage  = nextPos / PAGE_SIZE

        
        while temp < sizeInBytes
          
          --check vitual page num is between 0 and top legal page in the address space
          if(virtPage>currentThread.myProcess.addrSpace.numberOfPages || virtPage<0)
              currentThread.myProcess.lastError=E_Bad_Address
              return -1
          endIf

          --check Page is valid
          if !(currentThread.myProcess.addrSpace.IsValid(virtPage))
            currentThread.myProcess.lastError = E_Bad_Address --E_Bad_Value
            return temp
          endIf

          --check page is writeable
          if !(currentThread.myProcess.addrSpace.IsWritable(virtPage))
            currentThread.myProcess.lastError = E_Permissions
            return -1
          endIf

          --Set "DirtyBit" for this page        
          currentThread.myProcess.addrSpace.SetDirty(virtPage)

          --Set "ReferencedBit" for this page
          currentThread.myProcess.addrSpace.SetReferenced(virtPage)

        --printIntVar("ziseinBytes", sizeInBytes)
        
        --not sure where to put the looop
        --while temp < sizeInBytes

          aChar = serialDriver.GetChar()

          --value checks...
          if aChar == '\r'
            aChar = '\n'
          endIf
          if aChar == intToChar(4)
            return temp
          endIf


          --perform virtual to physical translation
          --theProc.addrSpace.CopyBytesToVirtual(virtAddr, kernelAddr, 1)
          junk = currentThread.myProcess.addrSpace.CopyBytesToVirtual(nextPos, (&aChar) asInteger, 1)        
          if junk == -1
            print("Error with CopyBytesToVirt in sys_read!!!\n")
            return -1
          endIf

          nextPos = (nextPos + 1)

          temp = temp + 1
          
          --Think I need this...?
          virtPage = nextPos / PAGE_SIZE

          if aChar == '\n'
            return temp
          endIf

        endWhile
      
                
        --return number of chars gotten from input stream & moved into user space bufferr
        return sizeInBytes

      endFunction

-----------------------------  Handle_Sys_Write  ---------------------------------

  function Handle_Sys_Write (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
    var
        theProc: ptr to ProcessControlBlock
        file: ptr to OpenFile
        test: int
      theProc = currentThread.myProcess

      --check that fileDesc is valid (legal index into fileDescriptor array & file referenced must have been open)
      if (fileDesc<0||fileDesc>MAX_NUMBER_OF_OPEN_FILES||theProc.fileDescriptor[fileDesc] == null)
        theProc.lastError = E_Bad_FD
        return -1
        else
          file=theProc.fileDescriptor[fileDesc]
      endIf
          
      if sizeInBytes<0
        theProc.lastError = E_Bad_Value
        return -1
      endIf

      --check file was opened with correct open (reading)
      if !((theProc.fileDescriptor[fileDesc].flags==O_WRITE) || (theProc.fileDescriptor[fileDesc].flags==O_RDWR))
        theProc.lastError = E_Permissions
        return -1
      endIf

      if file.kind == TERMINAL
        test = serialWrite(buffer, sizeInBytes)
        --printChar(*buffer)
        return test
      endIf

      if file.kind == PIPE
        --file.numberOfUsers = file.numberOfUsers + 1
        return file.pipe.Write(buffer, sizeInBytes)
      endIf

      --check if buffer is a valid pointer && that entire buffer is valid and writeable

      return fileSystem.WriteFile(theProc.fileDescriptor[fileDesc], buffer, sizeInBytes)


    endFunction

-----------------------------  serialWrite  ---------------------------------
  function serialWrite(buffer: ptr to char, sizeInBytes: int) returns int
      var
        virtPage, nextPos, temp, junk: int
        aChar: char

      nextPos = buffer asInteger
      virtPage  = nextPos / PAGE_SIZE
        
        --check vitual page num is between 0 and top legal page in the address space
        if(virtPage>currentThread.myProcess.addrSpace.numberOfPages || virtPage<0)
          currentThread.myProcess.lastError=E_Bad_Address
          return -1
        endIf

        --check Page is valid
        if !(currentThread.myProcess.addrSpace.IsValid(virtPage))
          currentThread.myProcess.lastError = E_Bad_Value
          return -1
        endIf

        --check page is writeable
        if !(currentThread.myProcess.addrSpace.IsWritable(virtPage))
          currentThread.myProcess.lastError = E_Permissions
          return -1
        endIf

        --Set "ReferencedBit" for this page
        currentThread.myProcess.addrSpace.SetReferenced(virtPage)
        
        temp = 0

        while temp < sizeInBytes

          --perform virtual to physical translation
          junk = currentThread.myProcess.addrSpace.CopyBytesFromVirtual((&aChar) asInteger, nextPos , 1)
          if junk == -1
            print("Error with CopyBytesFromVirt in sys_write!!!\n")
            return -1
          endIf

          --still need to work on this...
          if aChar == '\r'
            aChar = '\n'
          endIf
          if aChar == '\n'
            serialDriver.PutChar('\r')
          endIf
          serialDriver.PutChar(aChar)
          --keep track of virt addi (to store next character)
          nextPos = (nextPos + 1)

          temp = temp + 1
          if aChar == '\n'
            return temp
          endIf

        endWhile
      
        return sizeInBytes
      endFunction
-----------------------------  Handle_Sys_Seek  ---------------------------------

  function Handle_Sys_Seek (fileDesc: int, newCurrentPos: int) returns int
    var
    theProc: ptr to ProcessControlBlock
    file: ptr to OpenFile
    
    theProc =currentThread.myProcess

    if (fileDesc<0||fileDesc>MAX_NUMBER_OF_OPEN_FILES||theProc.fileDescriptor[fileDesc] == null)
      theProc.lastError = E_Bad_FD
      return -1
      else
        file=theProc.fileDescriptor[fileDesc]
      endIf


    --Deal with the possibility that the new current position is less that -1.  (Zero is okay.)
    if newCurrentPos<(-1)
      theProc.lastError=E_Bad_Value
      return -1
    endIf

    --Deal with the possibility that the new current position is greater than the file size.
    if newCurrentPos>file.fcb.inode.fsize
       theProc.lastError=E_Bad_Value
      return -1
    endIf

    fileManager.fileManagerLock.Lock()

    --Update the current position.
    if newCurrentPos==(-1)
      file.currentPos=file.fcb.inode.fsize
      else
        file.currentPos=newCurrentPos
    endIf

    fileManager.fileManagerLock.Unlock()

    --Return the new current position.
    return file.currentPos

    --Remember to unlock the FileManager regardless of whether you are making a normal returnor an error return.



    endFunction

---------------------------  Handle_Sys_Stat  --------------------------------------
function Handle_Sys_Stat (fileName: ptr to array of char, statBuf: ptr to statInfo) returns int

  var
    i:int
    fileInt: int
    myFile: ptr to FileControlBlock
    strBuffer: array [MAX_STRING_SIZE] of char = new array of char {MAX_STRING_SIZE of '\0'}
    myStat: statInfo

    --Validate the arguments. 
      if !validatePointers(fileName, statBuf)
        return -1
      endIf

    --Get the file name from the user process
    i = currentThread.myProcess.addrSpace.GetStringFromVirtual (
                                              & strBuffer,
                                              fileName asInteger,
                                              MAX_STRING_SIZE)

    
    --Get the “File Control Block” for the file. 
    --fileInt = fileSystem.NameToInodeNum(& strBuffer, currentThread.myProcess.workingDir)
    fileInt = fileSystem.NameToInodeNum(&strBuffer, fileSystem.rootDirectory)
    myFile = fileManager.GetFCB(fileInt)

    -- Create a statInfo record using the FCB.
    myStat.inodeNum = myFile.inode.number 
    myStat.nlinks = myFile.inode.nlinks
    myStat.mode = myFile.inode.mode
    myStat.fsize = myFile.inode.fsize
    myStat.balloc = myFile.inode.balloc 


    --Copy the statInfo record to the user space.
    i = currentThread.myProcess.addrSpace.CopyBytesToVirtual(statBuf asInteger, (&myStat) asInteger, sizeOf statInfo)
    if i == -1
      return -1
    endIf
    
        -- Release the FCB. You will need to lock the “fileManagerLock” before releasing the FCB. (Remember to unlock the lock.)
    fileManager.fileManagerLock.Lock()
    fileManager.fcbFreeList.AddToEnd(myFile)
    fileManager.anFCBBecameFree.Signal(&fileManager.fileManagerLock)
    fileManager.fileManagerLock.Unlock()

  return 0
  endFunction

---------------------------  validatePointers  ---------------------------
----utility functions that "validate pointers in address space"

function validatePointers(fileName: ptr to array of char, statBuf: ptr to statInfo) returns bool
  var
    i:int
    strBuffer: array [MAX_STRING_SIZE] of char = new array of char {MAX_STRING_SIZE of '\0'}
  

  i = currentThread.myProcess.addrSpace.GetStringFromVirtual (
                                              & strBuffer,
                                              fileName asInteger,
                                              MAX_STRING_SIZE)

  if i != -1
    return true
  else
    return false
  endIf
endFunction

-----------------------------  Handle_Sys_Close  ---------------------------------

  function Handle_Sys_Close (fileDesc: int)
      --implementing
  
      var
      aProcess: ptr to ProcessControlBlock

      aProcess = currentThread.myProcess

      if fileDesc<0 || fileDesc> MAX_NUMBER_OF_OPEN_FILES
        currentThread.myProcess.lastError = E_Bad_FD
        return
      endIf
      
      if aProcess.fileDescriptor[fileDesc] != null
          if aProcess.fileDescriptor[fileDesc].kind != TERMINAL
            fileManager.Close(aProcess.fileDescriptor[fileDesc])
            aProcess.fileDescriptor[fileDesc] = null
            else
            aProcess.fileDescriptor[fileDesc] = null
          endIf
        else
        currentThread.myProcess.lastError = E_Bad_FD
      endIf

    endFunction

-----------------------------  DiskDriver  ---------------------------------

  const
    DISK_STATUS_BUSY                               = 0x00000000
    DISK_STATUS_OPERATION_COMPLETED_OK             = 0x00000001
    DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_1   = 0x00000002
    DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_2   = 0x00000003
    DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_3   = 0x00000004
    DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_4   = 0x00000005
    DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_5   = 0x00000006

    DISK_READ_COMMAND  = 0x00000001
    DISK_WRITE_COMMAND = 0x00000002

  behavior DiskDriver
    --
    -- There is only one instance of this class.  It provides "read" and "write"
    -- methods to transfer data from and to the disk.
    --
    -- In this implementation, all I/O is synchronous.  These methods perform
    -- busy-waiting until the disk operation has completed.

      ----------  DiskDriver . Init  ----------

      method Init ()
          print ("Initializing Disk Driver...\n")
          DISK_STATUS_WORD_ADDRESS = 0x00FFFF08 asPtrTo int
          DISK_COMMAND_WORD_ADDRESS = 0x00FFFF08 asPtrTo int
          DISK_MEMORY_ADDRESS_REGISTER = 0x00FFFF0C asPtrTo int
          DISK_SECTOR_NUMBER_REGISTER = 0x00FFFF10 asPtrTo int
          DISK_SECTOR_COUNT_REGISTER = 0x00FFFF14 asPtrTo int
          semToSignalOnCompletion = null
          semUsedInSynchMethods = new Semaphore
          semUsedInSynchMethods.Init (0)
          diskBusy = new Mutex
          diskBusy.Init ()
        endMethod

      ----------  DiskDriver . SynchReadSector  ----------

      method SynchReadSector  (sectorAddr, numberOfSectors, memoryAddr: int)
        --
        -- This method reads "numberOfSectors" sectors (of PAGE_SIZE bytes each)
        -- from the disk and places the data in memory, starting at "memoryAddr".
        -- It waits until the I/O is complete before returning.
        --
        -- If there is a (simulated) disk hardware failure, then this routine
        -- simply tries again in an infinite loop, until it succeeds.
        --
          -- print ("SynchReadSector called\n")
          -- printIntVar ("  sectorAddr", sectorAddr)
          -- printIntVar ("  numberOfSectors", numberOfSectors)
          -- printHexVar ("  memoryAddr", memoryAddr)
          diskBusy.Lock ()
          while true

            self.StartReadSector  (sectorAddr, numberOfSectors, memoryAddr,
                                   & semUsedInSynchMethods)
            semUsedInSynchMethods.Down ()

            -- Check the return status
            switch * DISK_STATUS_WORD_ADDRESS
              case DISK_STATUS_OPERATION_COMPLETED_OK:
                diskBusy.Unlock ()
                return
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_1:
                FatalError ("Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_2:
                FatalError ("Disk I/O error in SynchReadSector: Attempt to access invalid memory address")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_3:
                FatalError ("Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_4:
                -- This case occurs when there is a hard or soft (simulated)
                -- hardware error while performing the disk operation.
                break
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_5:
                FatalError ("Disk I/O error in SynchReadSector: Bad command word")
              default:
                FatalError ("SynchReadSector: Unexpected status code")
            endSwitch
            -- print ("\n\nIn SynchReadSector: A simulated disk I/O error occurred...\n\n")
          endWhile

        endMethod

      ----------  DiskDriver . StartReadSector  ----------

      method StartReadSector  (sectorAddr, numberOfSectors, memoryAddr: int,
                               whoCares: ptr to Semaphore)
        --
        -- This method reads "numberOfSectors" sectors (of PAGE_SIZE bytes each)
        -- from the disk and places the data in memory, starting at "memoryAddr".
        -- The "whoCares" argument is a Semaphore that we will signal after the
        -- I/O operation is complete; if null no thread will be notified.
        --
          -- print ("StartReadSector called\n")
          -- printIntVar ("  sectorAddr", sectorAddr)
          -- printIntVar ("  numberOfSectors", numberOfSectors)
          -- printHexVar ("  memoryAddr", memoryAddr)
          -- printHexVar ("  whoCares", whoCares asInteger)

          -- Save the semaphore
          semToSignalOnCompletion = whoCares

          -- Move the parameters to the disk and start the I/O
          * DISK_MEMORY_ADDRESS_REGISTER = memoryAddr
          * DISK_SECTOR_NUMBER_REGISTER = sectorAddr
          * DISK_SECTOR_COUNT_REGISTER = numberOfSectors
          * DISK_COMMAND_WORD_ADDRESS = DISK_READ_COMMAND    -- Starts the I/O
        endMethod

      ----------  DiskDriver . SynchWriteSector  ----------

      method SynchWriteSector  (sectorAddr, numberOfSectors, memoryAddr: int)
        --
        -- This method writes "numberOfSectors" sectors (of PAGE_SIZE bytes each)
        -- to the disk.  It waits until the I/O is complete before returning.
        --
        -- If there is a (simulated) disk hardware failure, then this routine
        -- simply tries again in an infinite loop, until it succeeds.
        --
          -- print ("SynchWriteSector called\n")
          -- printIntVar ("  sectorAddr", sectorAddr)
          -- printIntVar ("  numberOfSectors", numberOfSectors)
          -- printHexVar ("  memoryAddr", memoryAddr)
          diskBusy.Lock ()
          while true
            self.StartWriteSector  (sectorAddr, numberOfSectors, memoryAddr,
                                    & semUsedInSynchMethods)
            semUsedInSynchMethods.Down ()

            -- Check the return status
            switch * DISK_STATUS_WORD_ADDRESS
              case DISK_STATUS_OPERATION_COMPLETED_OK:
                diskBusy.Unlock ()
                return
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_1:
                FatalError ("Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_2:
                FatalError ("Disk I/O error in SynchWriteSector: Attempt to access invalid memory address")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_3:
                FatalError ("Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector")
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_4:
                -- This case occurs when there is a hard or soft (simulated)
                -- hardware error while performing the disk operation.
                break
              case DISK_STATUS_OPERATION_COMPLETED_WITH_ERROR_5:
                FatalError ("Disk I/O error in SynchWriteSector: Bad command word")
              default:
                FatalError ("SynchWriteSector: Unexpected status code")
            endSwitch
            -- print ("\n\nIn SynchWriteSector: A simulated disk I/O error occurred...\n\n")
          endWhile

        endMethod

      ----------  DiskDriver . StartWriteSector  ----------

      method StartWriteSector  (sectorAddr, numberOfSectors, memoryAddr: int,
                                whoCares: ptr to Semaphore)
        --
        -- This method writes "numberOfSectors" sectors (of PAGE_SIZE bytes each)
        -- to the disk.  It returns immediately after starting the I/O.
        --
        -- The "whoCares" argument is a Semaphore that we will signal after the
        -- I/O operation is complete; if null no thread will be notified.
        --
          -- print ("SynchWriteSector called\n")
          -- printIntVar ("  sectorAddr", sectorAddr)
          -- printIntVar ("  numberOfSectors", numberOfSectors)
          -- printHexVar ("  memoryAddr", memoryAddr)

          -- Save the semaphore
          semToSignalOnCompletion = whoCares

          * DISK_MEMORY_ADDRESS_REGISTER = memoryAddr
          * DISK_SECTOR_NUMBER_REGISTER = sectorAddr
          * DISK_SECTOR_COUNT_REGISTER = numberOfSectors
          * DISK_COMMAND_WORD_ADDRESS = DISK_WRITE_COMMAND    -- Starts the I/O
        endMethod

    endBehavior

-----------------------------  FileManager  ---------------------------------

  behavior FileManager

      ----------  FileManager . Init  ----------

      method Init ()
        --
        -- This method is called once at kernel startup time to initialize
        -- the one and only "FileManager" object.  It is passed a pointer
        -- to a frame of memory. 
        --
        var i: int

          print ("Initializing File Manager...\n")
          fileManagerLock = new Mutex
          fileManagerLock.Init ()

          -- Initialize the FileControlBlock stuff
          fcbFreeList = new List [FileControlBlock]
          anFCBBecameFree = new Condition
          anFCBBecameFree.Init ()
          fcbTable = new array of FileControlBlock
                { MAX_NUMBER_OF_FILE_CONTROL_BLOCKS of new FileControlBlock }
          for i = 0 to MAX_NUMBER_OF_FILE_CONTROL_BLOCKS-1
            fcbTable[i].Init()
	    fcbTable[i].inode.Init()
            fcbFreeList.AddToEnd (&fcbTable[i])
          endFor

          --Initialize all the pipes shinanigans
          anOpenPipeBecameFree = new Condition
          anOpenPipeBecameFree.Init()
          pipes = new array of Pipe {MAX_NUMBER_OF_PIPES of new Pipe}
          openPipeFreeList = new List [Pipe]
          for i = 0 to MAX_NUMBER_OF_PIPES-1
            pipes[i].Init()
            openPipeFreeList.AddToEnd(&pipes[i])
          endFor

          -- Initialize the OpenFile stuff
          openFileFreeList = new List [OpenFile]
          anOpenFileBecameFree = new Condition
          anOpenFileBecameFree.Init ()
          openFileTable = new array of OpenFile
                { MAX_NUMBER_OF_OPEN_FILES of new OpenFile }
          for i = 0 to MAX_NUMBER_OF_OPEN_FILES-1
            openFileFreeList.AddToEnd (&openFileTable[i])
          endFor

          -- Create the special "stdin/stdout" open file
          serialTerminalFile = new OpenFile
          serialTerminalFile.kind = TERMINAL
          serialTerminalFile.flags = O_RDWR
         endMethod

      ----------  FileManager . Print  ----------

      method Print ()
        var i: int
          fileManagerLock.Lock ()           -- Need lock since we touch freeLists
          print ("Here is the FileControlBlock table...\n")
          for i = 0 to MAX_NUMBER_OF_FILE_CONTROL_BLOCKS-1
            print ("  ")
            printInt (i)
            print (":  ")
            fcbTable[i].Print()
          endFor
          print ("Here is the FREE list of FileControlBlocks:\n   ")
          fcbFreeList.ApplyToEach (printFCB)
          nl ()
          print ("Here is the OpenFile table...\n")
          for i = 0 to MAX_NUMBER_OF_OPEN_FILES-1
            print ("  ")
            printInt (i)
            print (":  0x")
            printHex ((& openFileTable[i]) asInteger)
            print (":  ")
            openFileTable[i].Print()
          endFor
          print ("Here is the FREE list of OpenFiles:\n")
          openFileFreeList.ApplyToEach (printOpen)
          fileManagerLock.Unlock ()
        endMethod

      ----------  FileManager . Open  ----------

  method Open (filename: String, dir: ptr to OpenFile, flags, mode: int)
      	     returns ptr to OpenFile
      --
      -- This method is called to open a file.  It returns pointer to
      -- a newly allocated OpenFile.  It will set its "numberOfUsers"
      -- count to 1.
      --
      -- The file must already exist on the disk.  If it cannot be found,
      -- this method returns null.
      --
      -- This method is reentrant, and may block the caller.
      --
          var open: ptr to OpenFile
              fcb: ptr to FileControlBlock
	     -- rwFlags: int
	      iNum: int
	      isRoot: bool
        --openInt: int

	  isRoot = StrCmp(filename, "/") == 0 

	  -- Quick check for sanity
	  if fileSystem.rootDirectory == null && !isRoot
	     currentThread.myProcess.lastError = E_Bad_Address
	    return null
	  endIf

	  -- Get the inode number
      
      --printIntVar("dir.kind is", dir.kind)
    
	    iNum = fileSystem.NameToInodeNum (filename, dir)

	  if iNum < 0
	    -- Should we create a file here? (unimplemented)
      --open=fileSystem.CreateFile(dir, filename, flags, mode)

      --set an error?  --currentThread.myProcess.lastError = E_Bad_Address
      return null
	  endIf

    -- First, get an FCB that points to the file.
    -- This will increment fcb.numberOfUsers.
    fcb = fileManager.GetFCB (iNum)
	  if fcb == null
	    currentThread.myProcess.lastError = E_No_Resource
	    return null
	  endIf

    -- Next, allocate an OpenFile, waiting if necessary.
    open = self.GetAnOpenFile(true)

    -- Connect it to this FCB and set its "numberOfUsers" count.
    
    fileManagerLock.Lock()
	  if (fcb.inode.mode & TYPE_FILE) == TYPE_FILE
             open.Init (FILE, fcb, flags & 3)
	    else
	     open.Init (DIRECTORY, fcb, flags & 3)
	  endIf

    -- Release FileManagerLock and return a pointer to the OpenFile object
    fileManagerLock.Unlock()

    open.flags = flags
    open.kind = mode
    --open.fcb.inode.number=iNum

    return open
  endMethod

      ----------  FileManger . GetAnOpenFile --------
      method GetAnOpenFile (block: bool) returns ptr to OpenFile
        var open: ptr to OpenFile
          fileManagerLock.Lock()
          if openFileFreeList.IsEmpty() && !block
            fileManagerLock.Unlock()
            return null
          endIf
          while openFileFreeList.IsEmpty ()
            anOpenFileBecameFree.Wait (& fileManagerLock)
          endWhile
          open = openFileFreeList.Remove ()
          fileManagerLock.Unlock ()
          return open
        endMethod

      ----------  FileManger . GetFreePipe --------
     method GetFreePipe () returns ptr to Pipe
        var open: ptr to Pipe
          fileManagerLock.Lock()
          if openPipeFreeList.IsEmpty()
	          fileManagerLock.Unlock()
	          return null
	        endIf
          while openPipeFreeList.IsEmpty ()
            anOpenPipeBecameFree.Wait (& fileManagerLock)
          endWhile
          open = openPipeFreeList.Remove ()
	        fileManagerLock.Unlock ()
	        return open
        endMethod
      
      ----------  FileManager . FreePipe  ----------
      --
        --fileManager lock should be held for this by current thread.
        method FreePipe (open: ptr to Pipe)
            open.Close()
            openPipeFreeList.AddToEnd (open)
            anOpenPipeBecameFree.Signal (& fileManagerLock)
        endMethod

              ----------  FileManager . ClosePipe  ----------
      --
      method ClosePipe(open: ptr to OpenFile)
          fileManagerLock.Lock()
          open.numberOfUsers = open.numberOfUsers - 1 
          if open.numberOfUsers <= 0
            self.FreePipe(open.pipe)
            openFileFreeList.AddToEnd (open)
            anOpenFileBecameFree.Signal (&fileManagerLock)
          endIf
          fileManagerLock.Unlock()
        endMethod

      ----------  FileManager . Close  ----------
      --
      -- This method is called to close an OpenFile.  If there is a pending
      -- write (i.e., the buffer is dirty) then it is written out first.
      --
      -- The "numberOfUsers" for the OpenFile is decremented and, if zero,
      -- the OpenFile is freed.  If the OpenFile is freed, then the
      -- "numberOfUsers" for the FCB is decremented.  If it too is zero, the
      -- FCB is freed.
      --
      method Close (open: ptr to OpenFile)
          var fcb: ptr to FileControlBlock
          if open == & serialTerminalFile
            return
          endIf

          if open.kind == PIPE
            self.ClosePipe(open)
            return
          endIf

          fileManagerLock.Lock()
          open.fcb.Flush()
          open.numberOfUsers = open.numberOfUsers - 1
          if open.numberOfUsers <= 0
            fcb = open.fcb
            openFileFreeList.AddToEnd (open)
            anOpenFileBecameFree.Signal (& fileManagerLock)
            fcb.Release(&fileManagerLock)
          endIf
          fileManagerLock.Unlock()
        endMethod

      ----------  FileMangger . LookupFCB --------
      method LookupFCB (inodeNum: int) returns
      	      ptr to FileControlBlock

        var i: int
         for i = 0 to MAX_NUMBER_OF_FILE_CONTROL_BLOCKS-1
            if fcbTable[i].inode.number == inodeNum
              return &fcbTable[i]
            endIf
          endFor
	  return null
        endMethod

      ----------  FileManager . GetFCB  ----------

      method GetFCB (inodeNum: int ) returns ptr to FileControlBlock
      --
      -- This method is called when opening a file.  It will search
      -- the fcbTable for an entry matching the file, that is the inode number.
      -- If none is found, a new FCB is returned
      --
      -- The file must already exist on the disk.  If it cannot be found,
      -- this method returns null. 
      --
      -- The numberOfUsers field in the FCB is set to one.
      --
      -- This method is reentrant, and may block the caller.
      --
          var
              fcb: ptr to FileControlBlock

          --printIntVar ("GetFCB: inodeNum", inodeNum)

          fileManagerLock.Lock()

          -- See if there is an FCB for this file; if so return it.
	  fcb = self.LookupFCB (inodeNum)
	  if fcb != null
             fcb.numberOfUsers = fcb.numberOfUsers + 1
             fileManagerLock.Unlock()
             return fcb
          endIf

          -- Get an unused FCB, waiting until one becomes available
          while fcbFreeList.IsEmpty ()
            anFCBBecameFree.Wait (& fileManagerLock)
          endWhile
          fcb = fcbFreeList.Remove ()

          fcb.numberOfUsers = 1

          -- Safe to unlock now, inode read will provide its own synch 
          fileManagerLock.Unlock()

          -- Check for correctness of new fcb returned 
          if fcb.relativeSectorInBuffer >= 0 || fcb.bufferIsDirty
            FatalError (
	       "In FileManager.Open: a free FCB appears not to have been closed properly")
          endIf

          -- Read the inode ...
	  fcb.inode.GetInode (inodeNum)

	  -- Now return the fcb
          return fcb
        endMethod

       ----------  FileManager . SynchRead  ----------

      method SynchRead (open: ptr to OpenFile, 
                        targetAddr, bytePos, numBytes: int) returns bool
          --
          -- This method reads "numBytes" from this file and stores
          -- them at the address pointed to by "targetAddr".  If everything
          -- was read okay, it returns TRUE; if problems it returns FALSE.
          --
          -- It reads a page at a time into an internal buffer
          -- by calling "diskDriver.SynchReadSector".
          --
          var sector, offset, posInBuffer, bytesToMove: int
	   -- dataSector: int
              fcb: ptr to FileControlBlock
          --printHexVar ("SynchRead called  targetAddr", targetAddr)
          --printIntVar ("                  bytePos", bytePos)
          --printIntVar ("                  numBytes", numBytes)
          fileManagerLock.Lock()

          if ! open || ! open.fcb || open.fcb.inode.number < 0
            FatalError ("FileManager.SynchRead: file not properly opened")
          endIf
          fcb = open.fcb
          while numBytes > 0
            -- At this point targetAddr and numBytes tell what work is left to do.
            -- printHexVar ("NEXT MOVE:\n  targetAddr", targetAddr)
            -- printIntVar ("  numBytes", numBytes)
            -- printHexVar ("          ", numBytes)
            -- printIntVar ("  relativeSectorInBuffer", fcb.relativeSectorInBuffer)
            -- printIntVar ("  bytePos", bytePos)
            -- printHexVar ("         ", bytePos)
            sector = bytePos / PAGE_SIZE
            offset = bytePos % PAGE_SIZE
            -- printIntVar ("  sector", sector)
            -- printIntVar ("  offset", offset)
            -- printHexVar ("        ", offset)
            if fcb.relativeSectorInBuffer != sector
	        if !open.fcb.ReadSector(sector,false) 
		   return false
		endIf
            endIf
            posInBuffer = fcb.bufferPtr + offset
            bytesToMove = Min (numBytes, PAGE_SIZE - offset)
            -- printHexVar ("  MOVING - targetAddr", targetAddr)
            -- printHexVar ("         - source addr (posInBuffer)", posInBuffer)
            -- printIntVar ("         - bytesToMove", bytesToMove)
            MemoryCopy (targetAddr, posInBuffer, bytesToMove)
            targetAddr = targetAddr + bytesToMove
            bytePos = bytePos + bytesToMove
            numBytes = numBytes - bytesToMove
            -- printHexVar ("  NEW targetAddr", targetAddr)
            -- printIntVar ("  NEW bytePos", bytePos)
            -- printHexVar ("             ", bytePos)
            -- printIntVar ("  NEW numBytes", numBytes)
            -- printHexVar ("              ", numBytes)
          endWhile
          fileManagerLock.Unlock()
          return true
        endMethod

      ----------  FileManager . SynchWrite  ----------

      method SynchWrite (open: ptr to OpenFile, 
                         sourceAddr, bytePos, numBytes: int) returns bool
          --
          -- This method reads "numBytes" from the memory address "sourceAddr"
          -- and writes them to the file at "bytePos".  If everything
          -- was written okay, it returns TRUE; if problems it returns FALSE.
          --
          -- It operates on an internal buffer by calling
          -- "diskDriver.SynchReadSector" and "diskDriver.SynchWriteSector".
          --


          --update the SynchWrite code given above to make sure it calls ReadSector anytime it needs to allocate a new data block


          var sector, offset, posInBuffer, bytesToMove: int
              fcb: ptr to FileControlBlock

          -- print ("--------------------\n")
          -- printHexVar ("SynchWrite called  sourceAddr", sourceAddr)
         
         
         --printIntVar ("                   bytePos", bytePos)
         --printIntVar ("                   numBytes", numBytes)
	  -- open.fcb.inode.Print()
          
          fileManagerLock.Lock()
          
          if ! open || ! open.fcb || open.fcb.inode.number < 0
              FatalError ("FileManager.SynchWrite: file not properly opened")
          
          endIf
          
          fcb = open.fcb
          
          while numBytes > 0
            -- At this point sourceAddr and numBytes tell what work is left to do.
            --printHexVar ("NEXT MOVE:\n  sourceAddr", sourceAddr)
            --printIntVar ("  numBytes", numBytes)
            -- printHexVar ("          ", numBytes)
            --printIntVar ("  relativeSectorInBuffer", fcb.relativeSectorInBuffer)
            --printIntVar ("  bytePos", bytePos)
            -- printHexVar ("         ", bytePos)
           
            sector = bytePos / PAGE_SIZE
            offset = bytePos % PAGE_SIZE
            -- printIntVar ("  sector", sector)
            -- printIntVar ("  offset", offset)
           
            bytesToMove = Min (numBytes, PAGE_SIZE - offset)
            if offset == 0 && bytesToMove == PAGE_SIZE
	            && bytePos < open.fcb.inode.fsize
              -- No need to read the sector first
              open.fcb.Flush()
              elseIf fcb.relativeSectorInBuffer != sector
	              -- Read the sector before we do a partial write

                --ENTRY INTO THE AllocateNewSector
                if !fcb.ReadSector (sector,true)
                  return false
                endIf
            endIf
            posInBuffer = fcb.bufferPtr + offset
            fcb.relativeSectorInBuffer = sector
            fcb.bufferIsDirty = true
            -- printHexVar ("  MOVING - sourceAddr", sourceAddr)
            -- printHexVar ("         - target (posInBuffer)", posInBuffer)
            -- printIntVar ("         - bytesToMove", bytesToMove)
            
            MemoryCopy (posInBuffer, sourceAddr, bytesToMove)
            sourceAddr = sourceAddr + bytesToMove
            bytePos = bytePos + bytesToMove

            --printIntVar("beforeeeeeeeeeee numBytes: ", numBytes)
            numBytes = numBytes - bytesToMove
            --printIntVar("aftereeeeeeeee numBytes: ", numBytes)
            --printIntVar("bytest to move: ", bytesToMove)


            -- printHexVar ("  NEW sourceAddr", sourceAddr)
            -- printIntVar ("  NEW bytePos", bytePos)
            -- printHexVar ("             ", bytePos)
            -- printIntVar ("  NEW numBytes", numBytes)
            -- printHexVar ("              ", numBytes)
          
          endWhile
          fileManagerLock.Unlock()
         
          return true
        endMethod

    endBehavior

  function copyUnalignedWord (destPtr, fromPtr: ptr to int)
      var from, dest: ptr to char
      from = fromPtr asPtrTo char
      dest = destPtr asPtrTo char
      *dest = *from
      *(dest+1) = *(from+1)
      *(dest+2) = *(from+2)
      *(dest+3) = *(from+3)
    endFunction

  function printFCB (fcb: ptr to FileControlBlock)
      printInt (fcb.inode.number)
      printChar (' ')
    endFunction

  function printOpen (open: ptr to OpenFile)
      print ("  0x")
      printHex (open asInteger)
      print (":  ")
      open.Print ()
    endFunction

-----------------------------  ToyFs         --------------------------------

  behavior ToyFs

     --------------- ToyFs . Init  ----------------

      method Init()
        var
            p: ptr to int

          -- Get a frame for inode manipulations and initialize the lock
          inodeBuffer = frameManager.GetAFrame ()
          inodeBuffSec = -1
          fsLock = new Mutex
          fsLock.Init ()

          -- Read in sector 0 from the disk.  This is the super bloc,
          superBlock = frameManager.GetAFrame ()
          diskDriver.SynchReadSector (0,    -- sector to read
                                      1,    -- number of sectors to read
                                      superBlock)
          p = superBlock asPtrTo int

          if *p != 0x54794673 -- "TyFs", the ToyFs magic number
            FatalError ("Magic number in sector 0 of ToyFs file system is bad")
          endIf

          -- Get file system parameters
          p = p+4
          fssize = *p
          p = p+4
          numInodes = *p
          numDblocks = fssize - numInodes/128 - 1

          --print ("super: fssize: ")  printInt (fssize)
          --print (" inodes: ") printInt (numInodes)
          --print (" dblocks: ") printInt (numDblocks)
          --print ("\n")

          -- Skip over unused integer
          p = p+8
          i_bitmap = new BitMap
          i_bitmap.InitFromPtr(numInodes+1, p asPtrTo array of int)
          --print ("inode ") i_bitmap.Print()

          -- Move over i_bitmap
          p = p + *p*4 + 4
          d_bitmap = new BitMap
          d_bitmap.InitFromPtr(numDblocks+1, p asPtrTo array of int)
          --printIntVar("dbit map size: ", numDblocks)
          --print ("data ") d_bitmap.Print()

         -- offset for data sectors
          fileSystem.dataSecOffset =  numInodes / INODES_PER_SEC
          --printIntVar ("dataSecOffset: ", fileSystem.dataSecOffset)

          -- Create the Root Directory
          rootDirectory = null
          rootDirectory = fileManager.Open("/",null,O_READ,0)
          rootDirectory.kind = DIRECTORY

       endMethod

      --------------- ToyFs . SaveSuper  ----------------
    method SaveSuper ()
          diskDriver.SynchWriteSector (0,    -- sector to Write
                                       1,    -- number of sectors to read
                                       superBlock)
      endMethod


      --------------- ToyFs . OpenLastDir  ----------------

    method OpenLastDir (filename: String, startDir: ptr to OpenFile,
    	   	        lastElIndex: ptr to int) returns ptr to OpenFile
        var
	    elName: array [ MAX_STRING_SIZE ] of char
	    ix : int
	    sIx: int
	    eIx: int
	    sizeP: ptr to int
	    entPtr: ptr to dirEntry
	    elDir: ptr to OpenFile
	    iNode: InodeData
	    fcb: ptr to FileControlBlock

	    elName = new array [ MAX_STRING_SIZE ] of char 
	    	     	 { MAX_STRING_SIZE of '\0' }
	    sizeP = (&elName) asPtrTo int
	    iNode = new InodeData
	    *lastElIndex = -1

	    ix = StrChr (filename, '/', 0)
	    if ix < 0
	       *lastElIndex = 0
	       return startDir.NewReference()
	    endIf

	    if ix == 0
	       elDir = fileSystem.rootDirectory.NewReference()
	       sIx = 1
	       eIx = StrChr(filename, '/', 1)
	    else
	       elDir = startDir.NewReference()
	       eIx = ix
	       sIx = 0
	    endIf

	    -- Loop through
	    while eIx > 0
	      -- Copy File name
	      if eIx - sIx > MAX_STRING_SIZE
	         fileManager.Close(elDir)
		 return null
	      endIf
	      for ix = 0 to eIx-sIx-1
	         elName[ix] = filename[sIx+ix]
	      endFor
	      *sizeP = eIx-sIx

	      -- Get the entry
	      -- print("OpenLastDir: elName: ") print(&elName) nl()
	      entPtr = elDir.Lookup(&elName)
	      if entPtr == null
	          fileManager.Close(elDir)
		  currentThread.myProcess.lastError = E_No_Entry
		  return null
	      endIf
	      iNode.GetInode(entPtr.inodeNum)
	      if (iNode.mode & TYPE_DIR) != TYPE_DIR
	          fileManager.Close(elDir)
		  currentThread.myProcess.lastError = E_Not_A_Directory
		  return null
	      endIf

	      -- Get FCB / OpenFile ...
	      fcb = fileManager.GetFCB(entPtr.inodeNum)
	      fileManager.Close(elDir)
	      if fcb == null
		 currentThread.myProcess.lastError = E_No_Resource
		 return null
	      endIf

	      -- Get an OpenFile
	      elDir = fileManager.GetAnOpenFile(false)
	      if elDir == null
		 currentThread.myProcess.lastError = E_No_Resource
		 return null
	      endIf
	      elDir.Init(DIRECTORY,fcb,O_READ)

	      -- Update for next element
	      sIx = eIx+1
	      eIx = StrChr (filename, '/', sIx)
	    endWhile
	    
	    *lastElIndex = sIx
	    return elDir

      endMethod


      --------------- ToyFs . NameToInodeNum  ----------------

    method NameToInodeNum (filename: String, dir : ptr to OpenFile) returns int
        var 
	    dirEnt: ptr to dirEntry
	    curDir: ptr to OpenFile  -- for walking the tree
	    retVal: int
	    lastElStart: int
	    lastElName: array [ MAX_STRING_SIZE ] of char
	    ix: int

	--print ("NameToInodeNum: looking for ") print (filename) print (" (len is ")
        --printInt (filename arraySize) print (")\n")

	-- Quick check for root dir
        if StrCmp (filename, "/") == 0
	   return 1
        endIf

	-- initialize the search
	if dir.kind != DIRECTORY 
	   FatalError ("NameToInodeNum on non-Directory file.")
	endIf

	-- Start at
	curDir = self.OpenLastDir (filename, dir, &lastElStart)
	if (curDir == null)
	    return -1
        endIf

        if (filename arraySize - lastElStart > MAX_STRING_SIZE) 
           fileManager.Close(curDir)
           return -1
        endIf           

	
	-- Do the lookup(s) ....
	*((&lastElName) asPtrTo int) = filename arraySize - lastElStart
	for ix = 0 to filename arraySize - lastElStart -1
	   lastElName[ix] = filename[lastElStart+ix]
	endFor
	--print ("NameToInodeNum: last element is: ") print (&lastElName) nl()
	dirEnt = curDir.Lookup(&lastElName)
        fileManager.Close(curDir)

	if dirEnt == null
	   currentThread.myProcess.lastError = E_No_Entry
	   return -1
	endIf
	retVal = dirEnt.inodeNum

	return retVal
      endMethod

      --------------- ToyFs . AllocInode  ----------------
    method AllocInode () returns int
      var retVal: int
          idata: InodeData
        fsLock.Lock()
        retVal = i_bitmap.FindZeroAndSet()
	if retVal >= 0
	  self.SaveSuper()
	  fsLock.Unlock()
	  idata = new InodeData
	  idata.number = retVal
	  idata.nlinks = 0
	  idata.mode = 0
	  idata.fsize = 0
	  idata.balloc = 0
	  idata.direct = new array [10] of int { 10 of 0 }
	  idata.indir1 = 0
	  idata.indir2 = 0
	  idata.dirty = true
	  idata.indSec = -1
	  idata.WriteInode()
	else
	  fsLock.Unlock()
	endIf
	return retVal
      endMethod

      --------------- ToyFs . FreeInode  ----------------
    method FreeInode (iNum: int)
        fsLock.Lock()
        i_bitmap.ClearBit(iNum)
	self.SaveSuper()
	fsLock.Unlock()
      endMethod

        --------------- ToyFs . AllocDataBlock  ----------------
    method AllocDataBlock () returns int
      var 
        retVal: int
        fsLock.Lock()
        
        retVal = d_bitmap.FindZeroAndSet()
    
        self.SaveSuper()
        
        fsLock.Unlock()
        return retVal
    
    endMethod

      --------------- ToyFs . FreeDataBlock  ----------------
    method FreeDataBlock (dbNum: int)
        fsLock.Lock()
         d_bitmap.ClearBit(dbNum)
	self.SaveSuper()
	fsLock.Unlock()
      endMethod

      --------------- ToyFs . ReadFile  ----------------
    method ReadFile (file: ptr to OpenFile, userBuffer: ptr to char,
                     sizeInBytes: int)  returns int
      var
        virtAddr: int
        virtPage: int        --Virtual address into which to read the next chunk (virtual address page number)
        offset: int          -- Virtual address into which to read the next chunk (offset into the page)
        chunkSize: int       --The number of bytes to be read for this chunk
        nextPosInFile: int   --The position in the file from which to read the next chunk
        copiedSoFar: int     --The number of bytes read from disk so far
        destAddr: int
        sizeOfFile: int

        virtAddr = userBuffer asInteger
        virtPage = virtAddr / PAGE_SIZE
        offset = virtAddr % PAGE_SIZE
        copiedSoFar = 0
        nextPosInFile= file.currentPos
        sizeOfFile = file.fcb.inode.fsize
        
        
      -- Each iteration will compute the size of the next chunk
      -- and process it...
     
      while true
        -- Compute the size of this chunk...
        chunkSize = PAGE_SIZE-offset
  
        if (nextPosInFile + chunkSize) > sizeOfFile
          chunkSize = sizeOfFile - nextPosInFile
        endIf


        if (copiedSoFar + chunkSize) > sizeInBytes
          chunkSize = sizeInBytes - copiedSoFar
        endIf

        -- See if we are done...
        if chunkSize <= 0
          break
        endIf

        -- Check for errors...
        if(virtPage>currentThread.myProcess.addrSpace.numberOfPages || virtPage<0)
          currentThread.myProcess.lastError=E_Bad_Address
          return -1
        endIf
        
        if !(currentThread.myProcess.addrSpace.IsWritable(virtPage))
          currentThread.myProcess.lastError = E_Permissions
          return -1
        endIf

        --check that you're not at end of file and trying to read more bytes than we have...
          if sizeInBytes>copiedSoFar && chunkSize<copiedSoFar
            break
          endIf
        
        -- Do the read...
        --Set "DirtyBit" for this page        
        currentThread.myProcess.addrSpace.SetDirty(virtPage)

        --Set "ReferencedBit" for this page
        currentThread.myProcess.addrSpace.SetReferenced(virtPage)
        
         -- Perform read into destAddr, nextPosInFile, chunkSize bytes
        destAddr = currentThread.myProcess.addrSpace.ExtractFrameAddr(virtPage) + offset
        if!(fileManager.SynchRead(file, destAddr, nextPosInFile, chunkSize))
          return -1
        endIf

        -- Increment...
        nextPosInFile = nextPosInFile + chunkSize

        copiedSoFar = copiedSoFar + chunkSize

        virtPage = virtPage + 1
        offset = 0
        
        -- See if we are done...
        if copiedSoFar == sizeInBytes
          break
        endIf

    
      endWhile

      fileManager.fileManagerLock.Lock()
      file.currentPos=file.currentPos+copiedSoFar
      fileManager.fileManagerLock.Unlock()

      return copiedSoFar

    endMethod

      --------------- ToyFs . WriteFile  ----------------

    method  WriteFile (file: ptr to OpenFile, userBuffer: ptr to char, sizeInBytes: int)  returns int
      var
        virtAddr: int
        virtPage: int        --Virtual address into which to read the next chunk (virtual address page number)
        offset: int          -- Virtual address into which to read the next chunk (offset into the page)
        chunkSize: int       --The number of bytes to be read for this chunk
        nextPosInFile: int   --The position in the file from which to read the next chunk
        copiedSoFar: int     --The number of bytes read from disk so far
        destAddr: int
        sizeOfFile: int
       --k: int
        --extendNextPos: bool = false
        --size: int
        --extendSize: bool = false

        virtAddr = userBuffer asInteger
        virtPage = virtAddr / PAGE_SIZE
        offset = virtAddr % PAGE_SIZE
        copiedSoFar = 0
        nextPosInFile= file.currentPos
        
        sizeOfFile = file.fcb.inode.fsize

        --Updating the file size in the inode and write back the inode to the disk
        if sizeOfFile + sizeInBytes> sizeOfFile
          fileManager.fileManagerLock.Lock()
          file.fcb.inode.fsize = sizeOfFile + sizeInBytes
          file.fcb.inode.dirty = true
          file.fcb.inode.WriteInode()
          fileManager.fileManagerLock.Unlock()
        endIf

        sizeOfFile = file.fcb.inode.fsize

      while true
        -- Compute the size of this chunk...
        chunkSize = PAGE_SIZE-offset

        --conditions for writing using more blocks n stuff... conditions prob correct... prob not how im using them...
        
        if (nextPosInFile + chunkSize) > sizeOfFile 
          chunkSize = sizeOfFile - nextPosInFile
        endIf

        if (copiedSoFar + chunkSize) > sizeInBytes
          chunkSize = sizeInBytes - copiedSoFar
        endIf

        -- See if we are done...
        if chunkSize <= 0
          break
        endIf

        -- Check for errors...
        if(virtPage>currentThread.myProcess.addrSpace.numberOfPages || virtPage<0)
          currentThread.myProcess.lastError=E_Bad_Address
          return -1
        endIf

        if !(currentThread.myProcess.addrSpace.IsWritable(virtPage))
          currentThread.myProcess.lastError = E_Permissions
          return -1
        endIf

        -- Do the read...
        --Set "DirtyBit" for this page
        currentThread.myProcess.addrSpace.SetDirty(virtPage)

        --Set "ReferencedBit" for this page
        currentThread.myProcess.addrSpace.SetReferenced(virtPage)
        
         -- Perform read into destAddr, nextPosInFile, chunkSize bytes
        destAddr = currentThread.myProcess.addrSpace.ExtractFrameAddr(virtPage) + offset
        if!(fileManager.SynchWrite(file, destAddr, nextPosInFile, chunkSize))
          return -1
        endIf

        -- Increment...
        nextPosInFile = nextPosInFile + chunkSize

        copiedSoFar = copiedSoFar + chunkSize

        virtPage = virtPage + 1
        offset = 0

        -- See if we are done...
        if copiedSoFar == sizeInBytes
          break
        endIf

      endWhile

      fileManager.fileManagerLock.Lock()
      file.currentPos=file.currentPos+copiedSoFar
      fileManager.fileManagerLock.Unlock()

      return copiedSoFar
      endMethod

     --------------- ToyFs . CreateFile  ----------------                                  

    method CreateFile (dir : ptr to OpenFile, filename: String, flags:int, mode: int )
    	   returns ptr to OpenFile
         FatalError ("ToyFs . CreateFile Not Implemented.")
         return null
      endMethod

      --------------- ToyFs . MakeDir  ----------------

    method MakeDir (dirname: String) returns int
         FatalError ("ToyFs . MakeDir Not Implemented.")
         return -1
      endMethod

      --------------- ToyFs . RemoveDir  ----------------

    method RemoveDir (dirname: String) returns int
        FatalError ("ToyFs . MakeDir Not Implemented.")
         return -1
      endMethod

      --------------- ToyFs . Link  ----------------

    method Link (oldname, newname: String) returns int
         FatalError ("ToyFs . MakeDir Not Implemented.")
         return -1
     endMethod


      --------------- ToyFs .Unlink   ----------------

    method Unlink (filename: String) returns int
        FatalError ("ToyFs . MakeDir Not Implemented.")
         return -1
      endMethod

        --------------- ToyFs . GetDiskInfo  ----------------
    method GetDiskInfo (buffPtr: ptr to diskInfo) returns int
    	var 
        di: diskInfo
	      rv: int
        
        di.diskSize = fssize
        di.totalInodes = numInodes
        di.freeInodes = i_bitmap.NumberOfClearBits()
        di.totalDblocks = numDblocks
        di.freeDblocks = d_bitmap.NumberOfClearBits()
        
        rv = currentThread.myProcess.addrSpace.
              CopyBytesToVirtual (buffPtr asInteger, (&di) asInteger, 20)
        
        if rv != 20
          return -1
        
        else
          return 0
        endIf
      
      endMethod

  endBehavior


-----------------------------  InodeData         --------------------------------

  behavior InodeData

      ---------- InodeData . Init  -----------
      -- This method is called for each file opened,  each FCB has one
      -- This reads the inode data for the file at init time
      -- theLock should be a pointer to the FileManager.fileManagerLock
      -- bufptr should be a pointer to a frame allocated by the FileMangager
      --        for inode reads/writes  (should be improved!)
      -- num is the inode number
      --
      method Init ()
          -- Nothing is valid, set invalid inode number
          number = -1
        endMethod

      --------------- InodeDate . GetInode ----------------
      --
      -- Gets an inode from the disk
      -- 

      method GetInode ( num : int )
          var inodeSec : int
	      p : ptr to diskInode
              ix : int

	  -- Calculate where to get the inode
	  inodeSec = (num-1) / INODES_PER_SEC
	  fileSystem.fsLock.Lock()

	  -- Read the proper one
	  if (fileSystem.inodeBuffSec != inodeSec)
	     -- Read the proper sector 
            diskDriver.SynchReadSector ( inodeSec + 1,  1,
                       fileSystem.inodeBuffer)
            fileSystem.inodeBuffSec = inodeSec
          endIf

	  -- Point to the diskInode
	  p = (fileSystem.inodeBuffer 
	             + (((num - 1) % INODES_PER_SEC) * INODE_SIZE)) asPtrTo diskInode

          --print ("added = ") printInt (((num - 1) % INODES_PER_SEC) * INODE_SIZE) nl()
          --printIntVar ("num", num)
          --print ("p is 0x") printHex ( p asInteger ) nl()

	  -- Set the fields of this in memory Inode
          number = num
	  nlinks = p.nlinksAndMode >> 16
	  mode   = p.nlinksAndMode & 0xff
	  fsize  = p.fsize
	  balloc = p.balloc
	  direct = new array [10] of int { 10 of 0 }
	  for ix = 0 to 9 
	     direct[ix] = p.direct[ix]
	  endFor
	  indir1 = p.indir1
	  indir2 = p.indir2

	  dirty = false
	  indSec = -1      -- -1 means not in use

	  fileSystem.fsLock.Unlock()

	  --print ("GetInode: ")
	  --self.Print()
        endMethod

      method WriteInode()
          var inodeSec : int
	      p : ptr to diskInode
              ix : int

	  if ! dirty
	     return
	  endIf

	  -- Calculate the location of the inode
	  inodeSec = (number-1) / INODES_PER_SEC
	  fileSystem.fsLock.Lock()

	  -- Read the proper one
	  if (fileSystem.inodeBuffSec != inodeSec)
	     -- Read the proper sector 
            diskDriver.SynchReadSector ( inodeSec + 1,  1,
                       fileSystem.inodeBuffer)
            fileSystem.inodeBuffSec = inodeSec
          endIf

	  -- Point to the diskInode
	  p = (fileSystem.inodeBuffer 
	             + (((number - 1) % INODES_PER_SEC) * INODE_SIZE)) asPtrTo diskInode
          *((&p.direct) asPtrTo int) = 10
          p.nlinksAndMode = nlinks << 16 | mode
	  p.fsize = fsize
	  p.balloc = balloc
	  for ix = 0 to 9
	     p.direct[ix] = direct[ix]
	  endFor
	  p.indir1 = indir1
	  p.indir2 = indir2

	  diskDriver.SynchWriteSector ( inodeSec + 1,  1,
                       fileSystem.inodeBuffer)

	  dirty = false
	  fileSystem.fsLock.Unlock()

        endMethod

      method Print()
          var ix : int 
          print ("IN: ")
	  printInt (number) print (" ")
	  if ((mode & TYPE_DIR) == TYPE_DIR)
	    print ("d")
	  else
	    print ("-")
	  endIf
	  if ((mode & MODE_READ) == MODE_READ)
	    print ("r")
	  else
	    print ("-")
	  endIf
	  if ((mode & MODE_WRITE) == MODE_WRITE)
	    print ("w")
	  else
	    print ("-")
	  endIf
	  if ((mode & MODE_EXE) == MODE_EXE)
	    print ("x ")
	  else
	    print ("- ")
	  endIf
	  printInt (nlinks) print (" ")
          printInt (fsize) print (" (")
          printInt (balloc) print (") [")
          for ix = 0 to 9 
             printInt (direct[ix]) 
	     if ix < 9 
	       print (",")
	     else
	       print ("] ")
             endIf
	  endFor
	  printInt (indir1)
	  if (dirty)
             print (" dirty")
	  endIf
          nl()
	  if (indSec != -1 )
	    for ix = 0 to 2047
              if *((indSec + 4*ix) asPtrTo int) != 0 
	         printInt(ix) print("[")
                 printInt (*((indSec + 4*ix) asPtrTo int))  print ("] ")
              endIf
            endFor
            nl()
          endIf
        endMethod

      ----------- InodeData . GetDataSectorNumber () -------------

      -- This is expected to be called with fileManagerLock locked!

      method GetDataSectorNumber ( logicalSector: int ) returns int
        var dbPtr: ptr to int
	        --printIntVar ("GetDataSectorNumber:logicalSector", logicalSector)
       	  if logicalSector < 10 
	      return direct[logicalSector]
          else
              if logicalSector < 2058
	         if indir1 == 0
		    return 0
		 endIf 
	         if indSec <= 0
		    -- Need to load the dbSec
		    self.GetIndirect()
		 endIf
		 dbPtr = (indSec + (logicalSector-10)*4) asPtrTo int
		 return *dbPtr
	      else
	         -- Not implemented
		 FatalError ("Double Indirect not implemented.")
	      endIf
          endIf
     	  return 0
        endMethod

      ----------- InodeData . AllocateNewSector () -------------

      method AllocateNewSector (logicalSector: int) returns bool
        var
          k: int
          q: int
          indPtr: int

      --print("entering allocatnewsector \n" )

      k=fileSystem.AllocDataBlock()        
      
      self.balloc=self.balloc+1
      self.dirty=true
        
        --For a direct block, you just enter the pointer in the direct block and you are done. 
        if logicalSector<=9
              self.direct[logicalSector] = k
        else
            if self.indir1 == 0
              self.balloc=self.balloc+1
              q=fileSystem.AllocDataBlock()
              self.indir1 = q
            endIf
            
            self.GetIndirect()
            indPtr = (indSec + (logicalSector-10)*4)
            *(indPtr asPtrTo int) = k
            self.SaveIndirect()
        endIf

        self.WriteInode()
        
        return true
      endMethod

      ----------- InodeData . GetIndirect () -------------

      method GetIndirect ()
	
	-- read the indirect block
	if indir1 == 0
	   FatalError ("GetIndirect: no indirect block to get.")
	endIf
	indSec = frameManager.GetAFrame() 
	diskDriver.SynchReadSector (indir1 + fileSystem.dataSecOffset, 1, indSec)

	endMethod
  
     ----------- InodeData . SaveIndirect () -------------

      method SaveIndirect ()
	
	   -- read the indirect block
	   if indir1 == 0 || indSec < 0
	      FatalError ("SaveIndirect with no indirect!")
	   endIf
	   diskDriver.SynchWriteSector (indir1 + fileSystem.dataSecOffset, 1, indSec)

	endMethod

      ----------- InodeData . FreeIndirect () -------------

      method FreeIndirect ()

          -- Did we read one?
	  if indSec <= 0
	    return
	  endIf
 	
	  -- Free the frame
	  frameManager.PutAFrame(indSec)
          indSec = -1
        endMethod

      ----------- InodeData . SetMode () -------------

      method SetMode ( newMode: int )
         -- implementation not given
         fileSystem.rootDirectory.fcb.inode.mode = newMode
         endMethod

    endBehavior

-----------------------------  FileControlBlock  ---------------------------------

  behavior FileControlBlock

      ----------  FileControlBlock . Init  ----------
      --
      -- This method is called once at startup time.  It preallocates a buffer
      -- in memory which may be needed when I/O is done on the file.
      --
      method Init ()
          numberOfUsers = 0
          bufferPtr = frameManager.GetAFrame ()
          relativeSectorInBuffer = -1
          bufferIsDirty = false
	  inode = new InodeData
         endMethod

      ----------  FileControlBlock . Print  ----------

      method Print ()
          print ("inode.number=")
          printInt (inode.number)
          print (",  numberOfUsers=")
          printInt (numberOfUsers)
          print (",  bufferPtr=")
          printHex (bufferPtr)
          print (",  relativeSectorInBuffer=")
          printInt (relativeSectorInBuffer)
          nl ()
	  print ("Inode: ")
	  inode.Print()
        endMethod

      ----------  FileControlBlock . ReadSector  ----------

      method ReadSector (newSector: int, allocateNew: bool) returns bool
        var dataSector: int
          

          --print("entered Read Sector! \n \n")
          if (newSector == relativeSectorInBuffer)
            return true
          endIf
          
          if bufferIsDirty
            self.Flush()
          endIf
          -- get the new one
          relativeSectorInBuffer = newSector
          dataSector = inode.GetDataSectorNumber(relativeSectorInBuffer)
          if dataSector == 0
            MemoryZero (bufferPtr, PAGE_SIZE)
            if allocateNew

              --Entry point...
              return  inode.AllocateNewSector(newSector)
              else
                return  true
            endIf
            else 
              diskDriver.SynchReadSector (
                dataSector + fileSystem.dataSecOffset, 1, bufferPtr)
          endIf
          return true
        endMethod

     ----------  FileControlBlock . Flush  ----------

      method Flush ()
        --
        -- This method writes out the buffer, if it is dirty.  This method
        -- assumes the caller already holds the fileManagerLock.
        -- 
	var dataSector: int

          if bufferIsDirty
            if relativeSectorInBuffer < 0
              FatalError ("FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1")
            endIf
            bufferIsDirty = false
	    dataSector = inode.GetDataSectorNumber(relativeSectorInBuffer)
	    if dataSector == 0
	       FatalError ("FCB.Flush ... no disk segment to flush to...")
	    endIf
            diskDriver.SynchWriteSector (
                       dataSector + fileSystem.dataSecOffset, 1, bufferPtr)
          endIf
        endMethod

    ----------  FileControlBlock . Release  ----------

      -- Must be called with fileManagerLock locked.

      method Release (lock: ptr to Mutex)
         numberOfUsers = numberOfUsers - 1
         if numberOfUsers <= 0
	    -- Final close, mark unused and release any indirect frame
	    relativeSectorInBuffer = -1
	    inode.FreeIndirect ()
	    inode.number = -1
            fileManager.fcbFreeList.AddToEnd (self)
            fileManager.anFCBBecameFree.Signal ( lock )
         endIf
        endMethod

    endBehavior


-----------------------------  OpenFile  ---------------------------------

  behavior OpenFile

      ----------  OpenFile . Init  ----------

     method Init (fKind: int, fFcb: ptr to FileControlBlock, openFlags: int)
     	  kind = fKind
	      fcb  = fFcb
        currentPos = 0
	      numberOfUsers = 1
	      addPos = -1
       endMethod


      ----------  OpenFile . Print  ----------

      method Print ()
          print ("    OPEN FILE:   currentPos=")
          printInt (currentPos)
	  print (" numOfUsers=") printInt(numberOfUsers)
          print (", fcb=")
          if fcb
            fcb.Print ()
          else
            print ("null\n")
          endIf
        endMethod

      ----------  OpenFile . NewReference  ----------

      method NewReference () returns ptr to OpenFile
           numberOfUsers = numberOfUsers + 1
	   return self
        endMethod

      ----------  OpenFile . ReadBytes  ----------

      method ReadBytes (targetAddr, numBytes: int) returns bool
          --
          -- This method reads "numBytes" from this file and stores
          -- them at the address pointed to by "targetAddr".  If everything
          -- was read okay, it returns TRUE; if problems it returns FALSE.
          --
          -- This method may block the caller.  This method is reentrant.
          --
          var pos: int
          -- printIntVar ("OpenFile.ReadBytes    currentPos", currentPos)
          fileManager.fileManagerLock.Lock ()
          pos = currentPos
          currentPos = currentPos + numBytes
          fileManager.fileManagerLock.Unlock ()
          return fileManager.SynchRead (self, targetAddr, pos, numBytes)
        endMethod

      ----------  OpenFile . ReadInt  ----------

      method ReadInt () returns int
          --
          -- Read the next 4 bytes from a file and return it as an integer.
          --
          var i: int
          if ! self.ReadBytes ((&i) asInteger, 4)
            FatalError ("Within ReadInt: ReadBytes failed")
          endIf
          return i
        endMethod

      ----------  OpenFile . LoadExecutable  ----------

      method LoadExecutable (addrSpace: ptr to AddrSpace) returns int
        --
        -- This method reads an executable "a.out" file from the disk, creates
        -- a virtual address space (with all pages resident in memory), and
        -- loads the executable program into the new address space.
        --
        -- The virtual address space will consist of (in this order):
        --     The environment page(s)     see NUMBER_OF_ENVIRONMENT_PAGES
        --     The text page(s)
        --     The data page(s)
        --     The bss page(s)
        --     The stack page(s)           see USER_STACK_SIZE_IN_PAGES
        --
        -- The given "addrSpace" is assumed to be empty; this method will
        -- allocate new frames and initialize the page table.
        --
        -- If all is okay, this method returns the initial PC, which will be
        -- the address of the first word of the first text page.
        --
        -- If any problems arise, this method returns -1.
        --
          var nextVirtPage, addr: int
              textSize, dataSize, bssSize, textStart, dataStart, bssStart: int
              i, textSizeInPages, dataSizeInPages, bssSizeInPages: int
 
          -- Make sure this address space is empty...
          if addrSpace.numberOfPages != 0
            FatalError ("LoadExecutable: This virtual address space is not empty")
          endIf
         
          -- Read and check the magic number...
          if  self.ReadInt () != 0x424C5A78    -- in ASCII: "BLZx"
            --print ("LoadExecutable: Bad magic number\n")
            return -1
          endIf

          -- Read in the header info...
          textSize = self.ReadInt ()
          dataSize = self.ReadInt ()
          bssSize = self.ReadInt ()
          textStart = self.ReadInt ()
          dataStart = self.ReadInt ()
          bssStart = self.ReadInt ()

          -- Compute the size of the text segment in pages...
          if textSize % PAGE_SIZE != 0
            print ("LoadExecutable: The text segment size not a multiple of page size\n")
            return -1
          endIf
          textSizeInPages = textSize / PAGE_SIZE

          -- Environment pages are filled in by the OS; make sure the executable
          -- and the OS agree about how many there are to be...
          if textStart != NUMBER_OF_ENVIRONMENT_PAGES * PAGE_SIZE
            print ("LoadExecutable: The environment size does not")
	    print (" match the 'loadAddr' info supplied to the linker\n")
            return -1
          endIf

          -- Compute the size of the data segment in pages...
          if dataSize % PAGE_SIZE != 0
            print ("LoadExecutable: The data segment size not a multiple of page size\n")
            return -1
          endIf
          if dataStart != textStart + textSize
            print ("LoadExecutable: dataStart != textStart + textSize\n")
            return -1
          endIf
          dataSizeInPages = dataSize / PAGE_SIZE

          -- Compute the size of the bss segment in pages...
          if bssSize % PAGE_SIZE != 0
            print ("LoadExecutable: The bss segment size not a multiple of page size\n")
            return -1
          endIf
          if bssStart != dataStart + dataSize
            print ("LoadExecutable: bssStart != dataStart + dataSize\n")
            return -1
          endIf
          bssSizeInPages = bssSize / PAGE_SIZE

          -- Compute how many pages to put into the address space...
          i = textSizeInPages + dataSizeInPages + bssSizeInPages +
              USER_STACK_SIZE_IN_PAGES + NUMBER_OF_ENVIRONMENT_PAGES

          /*****
          printIntVar ("NUMBER_OF_ENVIRONMENT_PAGES", NUMBER_OF_ENVIRONMENT_PAGES)
          printIntVar ("USER_STACK_SIZE_IN_PAGES", USER_STACK_SIZE_IN_PAGES)
          printIntVar ("textSizeInPages", textSizeInPages)
          printIntVar ("dataSizeInPages", dataSizeInPages)
          printIntVar ("bssSizeInPages", bssSizeInPages)
          printIntVar ("addrSpace.numberOfPages", addrSpace.numberOfPages)
          printIntVar ("Number of pages in this address space", i)
          printIntVar ("MAX_PAGES_PER_VIRT_SPACE", MAX_PAGES_PER_VIRT_SPACE)
          *****/

          -- Allocate the frames...
          if i > MAX_PAGES_PER_VIRT_SPACE
            print ("LoadExecutable: This virtual address space exceeds the limit\n")
            printIntVar ("LoadExecutable: Number of pages in this address space", i)
            printIntVar ("LoadExecutable: MAX_PAGES_PER_VIRT_SPACE", MAX_PAGES_PER_VIRT_SPACE)
            return -1
          endIf

          frameManager.GetNewFrames (addrSpace, i)

          --print ("LoadExecutable: The address space just allocated...\n")
          --addrSpace.Print ()

          -- Read and check the separator...
          if  self.ReadInt () != 0x2a2a2a2a
            --print ("LoadExecutable: Invalid file format - missing separator (1)\n")
            frameManager.ReturnAllFrames (addrSpace)
            return -1
          endIf

          -- Read the text segment...
          nextVirtPage = textStart / PAGE_SIZE
          for i = 1 to textSizeInPages
            addr = addrSpace.ExtractFrameAddr (nextVirtPage)
            -- printIntVar ("About to read; nextVirtPage", nextVirtPage)
            -- printHexVar ("               addr", addr)
            if ! self.ReadBytes (addr, PAGE_SIZE)
              print ("LoadExecutable: Problems reading from file (text)\n")
              frameManager.ReturnAllFrames (addrSpace)
              return -1
            endIf
            addrSpace.ClearWritable (nextVirtPage)
            nextVirtPage = nextVirtPage + 1
          endFor

          -- Read and check the separator...
          if  self.ReadInt () != 0x2a2a2a2a
            --print ("LoadExecutable: Invalid file format - missing separator (2)\n")
            frameManager.ReturnAllFrames (addrSpace)
            return -1
          endIf

          -- Read the data segment...
          for i = 1 to dataSizeInPages
            addr = addrSpace.ExtractFrameAddr (nextVirtPage)
            -- printIntVar ("About to read; nextVirtPage", nextVirtPage)
            -- printHexVar ("               addr", addr)
            if ! self.ReadBytes (addr, PAGE_SIZE)
              print ("LoadExecutable: Problems reading from file (text)\n")
              frameManager.ReturnAllFrames (addrSpace)
              return -1
            endIf
            nextVirtPage = nextVirtPage + 1
          endFor

          -- Read and check the separator...
          if  self.ReadInt () != 0x2a2a2a2a
            print ("LoadExecutable: Invalid file format - missing separator (3)\n")
            frameManager.ReturnAllFrames (addrSpace)
            return -1
          endIf

          -- Zero out the bss segment...
          addr = addrSpace.ExtractFrameAddr (nextVirtPage)
          -- printIntVar ("About to zero bss segment; page", nextVirtPage)
          -- printHexVar ("                           addr", addr)
          -- printHexVar ("                           bssSizeInBytes", bssSize)
          MemoryZero (addr, bssSize)

          -- User programs begin execution at the first word of the text segment...
          return textStart
        endMethod


      ----------  OpenFile . Lookup  ----------

      method Lookup ( filename: String)
     	     returns ptr to dirEntry
	  var ent: ptr to dirEntry

            if kind != DIRECTORY
	      FatalError ("Lookup on a non-Directory file.")
 	    endIf

	     -- Start at beginning
	     currentPos = 0
	     addPos = -1
	     ent = self.GetNextEntry(filename arraySize)
	     while ent != null
	        if StrCmp (filename, &ent.name) == 0
		   return ent
		endIf
		ent = self.GetNextEntry(filename arraySize)
	     endWhile
	     
	     -- Not found
	     return null
	endMethod

      ----------  OpenFile . GetNextEntry  ----------

      -- newSize -> used during lookup to keep a pointer
      -- to where an entry of newSize characters may be inserted

      method GetNextEntry (newSize: int) returns ptr to dirEntry
         var sec: int
	     offset: int
	     retVal: ptr to dirEntry

           if kind != DIRECTORY
	      FatalError ("GetNextEntry on a non-Directory file.")
	   endIf

	   sec = currentPos / PAGE_SIZE
	   offset = currentPos % PAGE_SIZE

	   if fcb.relativeSectorInBuffer != sec
	      -- print ("Need to load new sector!\n")
	      if !fcb.ReadSector(sec,false)
	        currentThread.myProcess.lastError = E_No_Entry
	        return null
	      endIf
	   endIf

	   -- Point to an entry in the buffer	   
	   retVal = (fcb.bufferPtr + offset) asPtrTo dirEntry

	   -- End of directory?
	   if retVal.inodeNum == -1
	     currentThread.myProcess.lastError = E_No_Entry
	     return null
	   endIf

	   -- End of Sector?
	   if retVal.inodeNum == 0

	     -- Can we save a new entry here?
	     if addPos == -1 && offset <= PAGE_SIZE - entSize(newSize)
	     	addPos = currentPos
	     endIf

	     -- Get Next sector
	     sec = sec + 1
	     offset = 0
	     currentPos = sec * PAGE_SIZE
	     
	     retVal = (fcb.bufferPtr + offset) asPtrTo dirEntry
	     if retVal.inodeNum == -1
	       currentThread.myProcess.lastError = E_No_Entry
	       return null
	     endIf

	   endIf

	   -- Update Current pointer
	   currentPos = currentPos + entSize(retVal.name arraySize)
	   
           return retVal
	endMethod

      ----------  OpenFile . AddEntry  ----------

      method AddEntry (inodeNum: int, filename: String) returns bool
        var 
	   ent: ptr to dirEntry
	   pi: ptr to int
	   sec: int
	   offset: int
	   save: int

	   -- Sanity check
           if kind != DIRECTORY
	      FatalError ("AddEntry on a non-Directory file.")
	   endIf

	   -- See if it exists already
	   ent = self.Lookup (filename)
	   if ent != null
	      print ("AddEntry: found name ") print(filename) nl()
	      return false
	   endIf

	   -- Check addPos ...
	   if addPos < 0
	      addPos = fcb.inode.fsize - 4
	   endIf

	   -- Now add the the entry, addPos should be set to
	   sec = addPos / PAGE_SIZE
	   offset = addPos % PAGE_SIZE
	   -- Make sure the correct sector is loaded
	   if fcb.relativeSectorInBuffer != sec
	      -- print ("Need to load new sector!\n")
	      if !fcb.ReadSector(sec, true)
	        return false
	      endIf
	   endIf

	   -- the location in the directory that the filename will fit
	   ent = (fcb.bufferPtr + offset) asPtrTo dirEntry
	   if ent.inodeNum != 0 && ent.inodeNum != -1
	      FatalError ("OpenFile.AddEntry incorrectly set addPos")
	   endIf

	   -- Special case: -1 and not enough room in the current
	   -- sector.
	   if ent.inodeNum == -1 && entSize(filename arraySize) > PAGE_SIZE - offset
	        -- don't use indirect block for directories ...
	        if sec == 9 || ! fcb.inode.AllocateNewSector(sec+1)
		   return false
		endIf
		fileSystem.fsLock.Lock()
	        ent.inodeNum = 0
		fcb.bufferIsDirty = true
		fcb.Flush()
		sec = sec + 1
		offset = 0
		MemoryZero (fcb.bufferPtr, PAGE_SIZE)
		ent = fcb.bufferPtr asPtrTo dirEntry
		ent.inodeNum = -1
		currentPos = (sec-1) * PAGE_SIZE
		fcb.inode.fsize = currentPos+4
		fcb.inode.dirty = true
		fcb.relativeSectorInBuffer = sec
		fileSystem.fsLock.Unlock()
	   endIf

	   -- Now add the new entry.
	   -- print ("AddEntry: ") print (filename) nl()
	   fileSystem.fsLock.Lock()
	   save = ent.inodeNum
	   ent.inodeNum = inodeNum
	   pi = ent asPtrTo int
	   *(pi+4) = filename arraySize
	   StrCopy(&ent.name, filename)
	   fcb.bufferIsDirty = true
	   offset = offset + entSize(filename arraySize)
	   ent = (fcb.bufferPtr + offset) asPtrTo dirEntry
	   ent.inodeNum = save
	   currentPos = currentPos + entSize(filename arraySize)
	   if currentPos+4 > fcb.inode.fsize
	      fcb.inode.fsize = currentPos+4
	      fcb.inode.dirty = true
	      fileSystem.fsLock.Unlock()
	      fcb.inode.WriteInode()
           else
	      fileSystem.fsLock.Unlock()
           endIf
	   
	   fcb.Flush()
           return true
	endMethod

   ----------  OpenFile . RemoveEntry  ----------

     -- Lookup must be called just before calling RemoveEntry.
     -- RemoveEntry will remove the entry found a successful
     -- call to Lookup.
   
      method RemoveEntry (filename: String, ent: ptr to dirEntry) returns bool
          var 
            offset: int
            entSz: int
            cpySz: int

          -- Sanity check
                if kind != DIRECTORY
              FatalError ("RemoveEntry on a non-Directory file.")
          endIf

          -- print ("OpenFile:RemoveEntry -> ") print(filename) nl()
          if (StrCmp(filename,".") == 0) ||  (StrCmp(filename,"..") == 0)
              return false
          endIf

          fileSystem.fsLock.Lock()
          offset = (ent asInteger) - fcb.bufferPtr
          if offset < 0 || offset >= PAGE_SIZE
              fileSystem.fsLock.Unlock()
              print ("RemoveEntry Bug!\n")
              return false
          endIf

          -- Update Current pointer to location of entry
          entSz =  entSize(ent.name arraySize)
          currentPos = currentPos - entSz
          
          -- calculate how much to move
          if fcb.inode.fsize - currentPos < PAGE_SIZE - offset
              cpySz = fcb.inode.fsize - currentPos - entSz
          else
              cpySz = PAGE_SIZE - offset
          endIf

          --printIntVar("offset", offset) 
          --printIntVar ("currentPos", currentPos) 
          --printIntVar ("cpySz", cpySz)

          MemoryCopy (fcb.bufferPtr+offset, fcb.bufferPtr+offset+entSz, cpySz)
          fcb.bufferIsDirty = true
          if fcb.inode.fsize - currentPos < PAGE_SIZE - offset
              fcb.inode.fsize = fcb.inode.fsize - entSz
              fcb.inode.dirty = true
              fileSystem.fsLock.Unlock()
              fcb.inode.WriteInode()
          else
                    fileSystem.fsLock.Unlock()
          endIf

          -- Delete the last block(s)?  <Needs to be implemented>

          return true
      
      endMethod


  endBehavior


  -----------------------------------  SerialDriver  ----------------------------

  behavior SerialDriver

  -------------------------------  SerialDriver . Init --------------------------
    method Init()

      print("Initializing Serial Driver... \n")

      serialDriver.serial_status_word_address = (SERIAL_STATUS_WORD_ADDRESS asPtrTo int)
      serialDriver.serial_data_word_address = (SERIAL_DATA_WORD_ADDRESS asPtrTo int)
      serialDriver.serialLock = new Mutex
      serialDriver.serialLock.Init()
      
      serialDriver.getBuffer = new array of char {SERIAL_GET_BUFFER_SIZE of '\0'}
      serialDriver.getBufferSize = 0
      serialDriver.getBufferNextIn = 0
      serialDriver.getBufferNextOut = 0
      serialDriver.getCharacterAvail = new Condition
      serialDriver.getCharacterAvail.Init()

      serialDriver.putBuffer = new array of char {SERIAL_PUT_BUFFER_SIZE of '\0'}
      serialDriver.putBufferSize = 0
      serialDriver.putBufferNextIn = 0
      serialDriver.putBufferNextOut = 0
      serialDriver.putBufferSem = new Semaphore
      serialDriver.putBufferSem.Init(1)
      
      serialDriver.serialNeedsAttention = new Semaphore
      serialDriver.serialNeedsAttention.Init(0)
      serialDriver.serialHandlerThread = new Thread
      serialDriver.serialHandlerThread.Init("serialThread")
      serialDriver.serialHandlerThread.Fork(SerialHandlerFunction, 0)

      serialDriver.initialized = true

    endMethod

  -------------------------------  SerialDriver . PutChar --------------------------
    --PutChar  is  passed  a  character,  which  it  will  add  to  the  putBuffer  queue.  
    --If  theputBuffer  is  full,  the  PutChar  method  will  block;
    --otherwise  it  will  return  immediately  afterbuffering the character. 
    --PutChar will not wait for the I/O to complete. 
    
    method PutChar(value: char)
      serialDriver.putBufferSem.Down()

      serialDriver.serialLock.Lock()

      serialDriver.putBuffer[putBufferNextIn]= value

      --Not sure of these either...
      serialDriver.putBufferNextIn=(serialDriver.putBufferNextIn +1) % SERIAL_PUT_BUFFER_SIZE
      serialDriver.putBufferSize=serialDriver.putBufferSize+1

      serialDriver.serialLock.Unlock()

      serialDriver.serialNeedsAttention.Up()

    endMethod


  -------------------------------  SerialDriver . GetChar --------------------------

    --The GetChar methodwill get a character from the getBuffer queue and return it.  
    --If the getBuffer queue is empty (i.e.,there is no type-ahead), 
    --GetChar will block and wait for the user to type a character beforereturning.
    
    method GetChar () returns char
      var
        ourChar: char

      serialDriver.serialLock.Lock()
      
      serialDriver.serialNeedsAttention.Up()
      --waiting here because it's not getting signaled... need interrupt to happen?

      if getBufferSize == 0
        serialDriver.getCharacterAvail.Wait(&serialLock)
      endIf

      ourChar = serialDriver.getBuffer[getBufferNextOut]

      --Not sure about how I'm adjusting this...
      serialDriver.getBufferNextOut=(serialDriver.getBufferNextOut+1)%SERIAL_GET_BUFFER_SIZE
      serialDriver.getBufferSize=serialDriver.getBufferSize-1
      
      serialDriver.serialLock.Unlock()
      return ourChar
    
    endMethod

  -------------------------------  SerialDriver . SerialHandler --------------------------

    method SerialHandler()
      var
        getChar: char

      while true 
        serialDriver.serialNeedsAttention.Down()
        
        --if key is pressed, feth from device and move to getBuffer
        if (*serialDriver.serial_status_word_address & 0x00000001)  == 1
          getChar = intToChar(*serialDriver.serial_data_word_address &  0x000000FF)
          
          serialDriver.serialLock.Lock()

          if serialDriver.getBufferSize == 9
            print ("\nSerial input buffer overrun - character ")
            printChar (getChar)
            print (" was ingored\n")

            else
              serialDriver.getBuffer[serialDriver.getBufferNextIn] = getChar
              serialDriver.getBufferSize=serialDriver.getBufferSize+1
              serialDriver.getBufferNextIn = (serialDriver.getBufferNextIn +1) % SERIAL_GET_BUFFER_SIZE
              serialDriver.getCharacterAvail.Signal(&serialDriver.serialLock)
          endIf

          serialDriver.serialLock.Unlock()

        endIf
        
        --if serial transmission channel is free & more characters waiting in put buffer,
        --outputing of next character is started
        
        --maybe use read...
        if (*serialDriver.serial_status_word_address & 0x00000002)  == 2
          serialDriver.serialLock.Lock()

          --printIntVar("putBufferSize is", putBufferSize)
          if serialDriver.putBufferSize != 0
            
            getChar=serialDriver.putBuffer[serialDriver.putBufferNextOut]

            serialDriver.putBufferSize = serialDriver.putBufferSize - 1
            serialDriver.putBufferNextOut =(serialDriver.putBufferNextOut + 1) % SERIAL_PUT_BUFFER_SIZE

            --Moving character into the serial device data register
            --maybe use write...
            --printChar(intToChar(*serialDriver.serial_data_word_address = *serialDriver.serial_data_word_address | charToInt(getChar)))
            --*serialDriver.serial_data_word_address = *serialDriver.serial_data_word_address | 0x00FFFF00 
            *serialDriver.serial_data_word_address =  (getChar)
            serialDriver.putBufferSem.Up() 
          endIf

          serialDriver.serialLock.Unlock()
        endIf

      endWhile
    endMethod


  endBehavior

  ----------------------------------------  Pipe  ------------------------------------

  behavior Pipe

    -------------------------------------  Pipe . Init  ------------------------------------

    method Init()
        pipeMutex = new Mutex
        pipeMutex.Init()

        readQueue = new Condition 
        readQueue.Init()

        writeQueue = new Condition
        writeQueue.Init()

        writer = new Condition
        writer.Init()
    endMethod

    -------------------------------------  Pipe . Open  ------------------------------
    method Open() returns bool
        
        /*
        if bufferFrame != -1 || head != -1 || tail != -1 || numberOfUsers != -1
          return false
        endIf
        */
        pipeMutex.Lock()
        bufferFrame = frameManager.GetAFrame()
        --printIntVar("bufferFrame at the start is...", bufferFrame)
        head = 0
        tail = 0
        numberOfUsers = 2
        charsInPipe = 0
        pipeMutex.Unlock()

      return true
    
    endMethod
    
    

    -------------------------------------  Pipe . Read  ------------------------------
    /*
    A reader takes data out of the buffer and returns it to the user process.  It will copy the maximum of the bytes 
    requested and the number of bytes in the buffer.  After a copy of the bytes available,  the number of bytes transferred
    is returned to the user.  When the buffer is empty, any process trying to read from it must be suspended.  
    When a read completes, it makesroom in the buffer and if a writer is suspended, it must restart the writer. 
    Also, readers may need to restart other readers and writers may need to restart other writers.
    */
    method Read(buffer: ptr to char, sizeInBytes: int) returns int
        var
        readSoFar, nextPos, i, junk: int
        
        nextPos = buffer asInteger
        readSoFar = 0
        
        pipeMutex.Lock()
        
        
        while readSoFar < sizeInBytes
          

          --Checking to see if we need to close
          if numberOfUsers <= 1
            for i = 0 to charsInPipe-1
              junk = currentThread.myProcess.addrSpace.CopyBytesToVirtual(nextPos, bufferFrame + tail, 1)
              if junk == -1
                
                print("Error with CopyBytesFromVirt in pipeReadOther!!!\n")
                pipeMutex.Unlock()
                return -1
              endIf

              tail = (tail + 1) % PAGE_SIZE
              charsInPipe = charsInPipe - 1
              nextPos = nextPos + 1
              readSoFar = readSoFar + 1

            endFor

            --readQueue.Broadcast(&pipeMutex)
            pipeMutex.Unlock()
            return readSoFar

          endIf

          if charsInPipe <= 0
            writer.Signal(&pipeMutex)
            readQueue.Wait(&pipeMutex)
          endIf

          junk = currentThread.myProcess.addrSpace.CopyBytesToVirtual(nextPos, bufferFrame + tail, 1)
          if junk == -1

            print("Error with CopyBytesFromVirt in pipeReadMain!!!\n")
            pipeMutex.Unlock()
            return -1
          
          endIf

          tail = (tail + 1) % PAGE_SIZE
          charsInPipe = charsInPipe - 1

          nextPos = nextPos + 1
          readSoFar = readSoFar + 1     
        endWhile

        writeQueue.Signal(&pipeMutex)
        readQueue.Broadcast(&pipeMutex)
        pipeMutex.Unlock()

        return readSoFar

    endMethod


    -------------------------------------  Pipe . Write  ------------------------------
    /*
     This method adds data to the bufferFrame.  When the buffer is full, any process trying to write to it must be suspended.  
     If the writer is writing more than can fit in the buffer, it should do apartial write, go to sleep, and then continue
     the write after it starts running again. This could happen multiple times if it is writing a lot of data, for example
     more than a PAGESIZE ofdata. When a write to the buffer happens, even if the writer must be suspended because there is not enough room in 
     the buffer to complete the write, a waiting reader must be restarted. 
    */
    method Write(buffer: ptr to char, sizeInBytes: int) returns int
      var
        copiedSoFar, nextPos, junk: int
        
        nextPos = buffer asInteger
        copiedSoFar = 0
        
        pipeMutex.Lock()

        while copiedSoFar < sizeInBytes

          if numberOfUsers <= 1
            writeQueue.Broadcast(&pipeMutex)
            currentThread.myProcess.lastError = E_No_Reader
            pipeMutex.Unlock()
            return -1
          endIf

          if charsInPipe >= PAGE_SIZE
            readQueue.Signal(&pipeMutex)
            writer.Wait(&pipeMutex)
          endIf
          
          junk = currentThread.myProcess.addrSpace.CopyBytesFromVirtual(bufferFrame + head, nextPos , 1)
          if junk == -1
            print("Error with CopyBytesFromVirt in pipeWrite!!!\n")
            pipeMutex.Unlock()
            return -1
          endIf

          head = (head + 1) % PAGE_SIZE
          charsInPipe = charsInPipe + 1
          nextPos = nextPos + 1
          copiedSoFar = copiedSoFar + 1
        endWhile

        writeQueue.Broadcast(&pipeMutex)
        readQueue.Signal(&pipeMutex)

        pipeMutex.Unlock()

        return copiedSoFar
  
    endMethod

    -------------------------------------  Pipe . Close  ------------------------------
    method Close()
      pipeMutex.Lock()
      frameManager.PutAFrame(bufferFrame)
      numberOfUsers = numberOfUsers -1
      pipeMutex.Unlock()
    endMethod


  endBehavior

endCode