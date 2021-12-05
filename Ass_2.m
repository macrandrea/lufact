clc
clear
A=wilkin(5);
e=ones(1,60)';
[A,L,U,g]=lufact(A);