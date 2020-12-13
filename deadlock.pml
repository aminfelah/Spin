proctype machine1(chan out,in){
M10:out ! 1; goto M11;
M11:if
::in ? 2;goto M12;
::in ? 3; goto M10;
fi;
M12: skip	;
}
proctype machine2(chan out,in){
M20:in ? 1;goto M21;
M21:if
::out ! 2 ;goto M22;
::out ! 3 ;goto M20;
fi;
M22:in ? 4;goto M20;
}
init{
chan c12=[2] of {byte};
chan c21=[2] of {byte};
run machine1(c12,c21);
run machine2(c21,c12);
}	
