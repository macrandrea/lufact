clear;
clc;
n=60;
A=wilkin(n);
e=ones(1,n)';
b=A*e;
x=A\e;
%if n=1 then GEPP is accurate with a W
%H=hilb(10);
[L,U]=flufact(A);
