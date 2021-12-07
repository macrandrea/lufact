clc; 
clear;
tic;
MaxEntry=10;
[Gi, BaE,M,x,y]=testamatrici(MaxEntry);
%statistiche
mediumError =mean    (y);
varError    =var     (y);
minError    =min     (y);
maxError    =max     (y);
mediumGrowth=mean    (x);
varGrowth   =var     (x);
minGrowth   =min     (x);
maxGrowth   =max     (x);
toc;




%H=hilb(10);
%[L,U]=lufact(H);
