clc; 
clear;
MinEntry=0;
MaxEntry=10; MaxRow=4; MaxCols=4;
[Gi, BaE]=testamatrici(MaxEntry, MaxRow, MaxCols);
%statistiche
mediumError =mean    (BaE);
varError    =var     (BaE);
minError    =min     (BaE);
maxError    =max     (BaE);
mediumGrowth=mean    (Gi);
varGrowth   =var     (Gi);
minGrowth   =min     (Gi);
maxGrowth   =max     (Gi);
%statisticheLU(MaxEntry, MaxRow, MaxCols);
%A=randi(100, [3,3]);
%A=[4,3;6,3];
%[L,U, g,ba]=lufact(A);
%[Elle,Uu,Gi, BaE]=
