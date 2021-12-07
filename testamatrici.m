function [Gi, BaE,M]=testamatrici(MaxEntry,n)
%n   =10;
Gi  =[];
BaE =[];
x=[];
y=[];
M = cell(n, 1);
    for i=1:n
          A=rand(MaxEntry);
           M{i}=A;
            [L,U]=lufact(A);
             x(i)= makeG(A,L,U) ;
             y(i)= makeBa(A,L,U);
     end
    Gi=transpose(x);
    BaE=transpose(y);
end
