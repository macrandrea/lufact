function [Gi, BaE,M]=testamatrici(size,n)
%n   =10;
Gi  =[];
BaE =[];
x=[];
y=[];
M = cell(n, 1);
    for i=1:n
          A=(rand(size)-0.5)+i*(rand(size)-0.5);
           M{i}=A;
           [L,U]=lufact(A);
           x(i)= makeG(A,L,U) ;
           y(i)= makeBa(A,L,U);
     end
    Gi=transpose(x);
    BaE=transpose(y);
end
