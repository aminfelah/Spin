mtype = { A0 ,  T1  ,  A1 , T0 , T0B ,T1B  } ; 
            chan Fen = [1] of { mtype } ;
        chan Fne = [1] of { mtype } ;
                     chan Frn = [1] of { mtype } ; 
       chan Fnr = [1] of { mtype } ; 
       proctype Emetteur (){
    E1:Fne!T0;goto E2 ; 
    E2: if 
          :: Fne?A0 ;goto E1  
          :: Fne?A1; goto E3  
          fi ; 
    E3:Fen!T1;goto E4 ;
    E4:if
         ::Fne?A0;goto E1 
         ::Fne?A1;goto E3 
          fi 
    }
      proctype Reseau(){
    N1:if
          ::Frn?A0;goto  N2 
          ::Fen?T1;goto N3
          ::Frn?A1;goto  N4
          ::Fen?T0;goto N5
          fi;
    N2:Fne!A0;goto N1;
    N3:if
          ::Fnr!T1;goto N1
          ::Fnr!T1B;goto N1
          fi ;
                   N4:Fne!A1;goto N1;
                   N5:if
                         ::Fnr!T0;goto N1
                         ::Fnr!T0B;goto N1
              fi ;
       }
    proctype Recepteur(){
    R1:if
          ::Fnr?T0;goto R2 
          ::Fnr?T0B;goto R4 
           fi ;
    R2:Frn!A1;goto R3 ; 
    R3:if
          ::Fnr?T1;goto R4 
          ::Fnr?T1B;goto R2
          fi ; 
    R4:Frn!A0; goto R1 ;
    }
    init{  run Reseau() ; run Emetteur() ; run Recepteur() ; }
