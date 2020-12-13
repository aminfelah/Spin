chan c12 = [2] of {byte}
	chan c21 = [1] of {byte}
	int msg;
	proctype client()
	{
		s0 : c12!1;
		       goto s1;
		s1 : 
		       c21?msg;
		       if 
		       :: c21?2 ->  goto s2;
		       :: c21?3 -> goto s0;
		       fi;
		s2 : c12!4;
		       goto s0;
	}
	
	proctype serveur()
	{
	              s0 : c12?4;
		       goto s2;
	              s2 :  do
		      ::c21!2;goto s3;
		      ::c21!3; goto s0;
	 	     od;
	              s3 : c12?4;
		     goto s0;
	}
	
	init
	{
		run client();
		run serveur();
	}
