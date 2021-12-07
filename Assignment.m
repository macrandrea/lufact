clc; 
clear;
tic;
MaxEntry=10;
n=100;
[Gi, BaE,M]=testamatrici(MaxEntry,n);
%statistiche
mediumError =mean    (BaE);
varError    =var     (BaE);
minError    =min     (BaE);
maxError    =max     (BaE);
mediumGrowth=mean    (Gi);
varGrowth   =var     (Gi);
minGrowth   =min     (Gi);
maxGrowth   =max     (Gi);
toc;