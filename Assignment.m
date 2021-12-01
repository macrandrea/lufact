clc; 
clear;
%A=randi(100, [3,3]);
%A=[4,3;6,3];
%[L,U, g,ba]=lufact(A);
%[Elle,Uu,Gi, BaE]=
MaxEntry=10; MaxRow=4; MaxCols=4;
[Gi, BaE]=testamatrici(10, 4, 4);
%statisticheLU(MaxEntry, MaxRow, MaxCols);
mediumError =mean    (BaE);
varError    =var     (BaE);
minError    =min     (BaE);
maxError    =max     (BaE);
mediumGrowth=mean    (Gi);
varGrowth   =var     (Gi);
minGrowth   =min     (Gi);
maxGrowth   =max     (Gi);
