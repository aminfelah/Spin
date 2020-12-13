mtype = {A,R};
    chan c1 = [1] of {mtype};
    chan c2 = [1] of {mtype};
    proctype proc1()
    {
        s1 : c1!R;
               goto s2;
        s2:  c2?A;
               goto s1;
    }
    proctype proc2()
    {
                  s1: c1?R;
            goto s2;
                  s2 : c2!A;
             goto s1;
    }
    init
    {
        run proc1();
        run proc2    ();
    }
