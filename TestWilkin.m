clear;
clc;
%n=2;
%A=wilkin(n);
%e=ones(1,n)';
%b=A*e;
%x=A\e;
%if n=1 then GEPP is accurate with a W
%H=hilb(10);
%[L,U]=flufact(H);
A=randi(100, [10,10]);
A = A(randperm(size(A, 1)), :); 
%A = makeDD(A);
[L,U]=flufact(A);
