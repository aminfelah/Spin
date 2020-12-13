byte p1, p2, p3, p4, p5;                 /place penser/
2    byte m1, m2, m3, m4, m5;                 /place manger/
3    byte f1, f2, f3, f4, f5;                 /place fourchette/
4
5    #define in1(x)        (x>0)  -> x=x-1 ;
6    #define in2(x,y,z)         (x>0&&y>0&&z>0) -> x=x-1; y=y-1; z=z-1 ; 
7    #define out1(x)        x=x+1;
8    #define out2(x,y,z)   x=x+1; y=y+1; z=z+1 ;
9
10    init
11    {
12        p1 = 1; p2 = 1; p3 = 1; p4 = 1; p5 = 1;
13        f1 = 1; f2 = 1; f3 = 1; f4 = 1; f5 = 1;
14        m1 = 0; m2 = 0 ; m3 = 0; m4 = 0; m5 = 0 ;
15        do
16        :: atomic { in2(p1, f1, f2) -> out1(m1); }
17        :: atomic { in1(m1) -> out2(p1 , f1 , f2); }
18        :: atomic { in2(p2 , f2, f3) -> out1(m2); }
19        :: atomic { in1(m2) -> out2(p2, f2, f3) ;}
20        :: atomic { in2(p3, f3, f4) -> out1(m3) ;}
21        :: atomic { in1(m3) -> out2(p3, f3, f4) ;}
22        :: atomic { in2(p4, f4, f5) -> out1(m4) ;}
23        :: atomic { in1(m4) -> out2(p4,f4,f5) ;}
24        :: atomic { in2(p5,f5,f1) -> out1(m5) ;}
25        :: atomic { in1(m5) -> out2(p5, f5, f1) ;}
26        od
27    }
