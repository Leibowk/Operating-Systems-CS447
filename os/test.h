header test

uses UserSystem, UserLib

 enum  K_bool, K_str

 type  valrec = record
  	           valtp : int
  	           bval : bool
		   sval : ptr to array of char
		 endRecord
  
  functions
   main()
   printVal (data: valrec)
   error (name: ptr to array of char)
  
endHeader

