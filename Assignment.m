clc; 
clear;
tic;
size=100;
n=100;
[Gi, BaE,M]=testamatrici(size,n);
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