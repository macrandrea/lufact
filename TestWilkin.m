clear;
clc;
n=55;%54;
A=wilkin(n);
e=ones(1,n)';
b=A*e;
x=A\b;
%if n=1 then GEPP is accurate with a W
%H=hilb(10);
[L,U]=lufact(A);
ba=makeBa(A,L,U);
g=makeG(A,L,U);
