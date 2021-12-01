function [Gi, BaE]=testamatrici(MaxEntry, MaxRow, MaxCols)
n   =100;
%A   =randi(MaxEntry,[MaxRow,MaxCols]);
Gi  =[];
BaE =[];
x=[];
y=[];
    for i=1:n
        A=randi(MaxEntry,[MaxRow,MaxCols]);
        [L,U]=lufact(A);
         x(i)= makeG(A,L,U);
         y(i)=makeBa(A,L,U);
    Gi=transpose(x);
    BaE=transpose(y);
    end
    %statisticheLU(MaxEntry, MaxRow, MaxCols);
    mediumError =mean    (BaE);
    varError    =var     (BaE);
    minError    =min     (BaE);
    maxError    =max     (BaE);
    mediumGrowth=mean    (Gi);
    varGrowth   =var     (Gi);
    minGrowth   =min     (Gi);
    maxGrowth   =max     (Gi);



end