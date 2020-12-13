mtype ={a,b,c,d};
	proctype A(chan out,in){
S10:
if
::out ! a ; goto S11;
:: in ? b;goto S11;
fi;
S11:
if
:: in ? d ; goto S10;
:: in ? b; goto S12;
:: out ! c; goto S12;
fi;
S12:
in ? b;goto S11;
}
proctype B(chan out,in){
S20:
out ! b ; goto S21;
S21:
in ? a;goto S22;
S22:
if
:: in ? a;goto S23;
:: in ? c; goto S20;
fi;
S23:
out ! d;goto S22;
}
init{
chan c12 = [2] of {mtype};
chan c21 = [2] of {mtype};
run A(c12,c21);
run B(c21,c12);
}	
