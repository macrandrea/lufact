function [Gi, BaE,M]=testamatrici(size,n)
    Gi  =zeros(n,1);
    BaE =zeros(n,1);
    M = cell(n, 3);
    for j=1:n
        A=(rand(size)-0.5)+i*(rand(size)-0.5);
        %A=hilb(j);
        %A=makedd(size);
        M{j,1}=A;
        [L,U,Gi(j,1)]=lufact(A);
        BaE(j,1)= makeBa(A,L,U);
        M{j,2}=L;
        M{j,3}=U;
    end
end