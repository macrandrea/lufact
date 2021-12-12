tic;
size=100;
n=200;
[Gi, BaE,M]=testamatrici(size,n);
%stats
mediumError =mean    (BaE);
varError    =var     (BaE);
minError    =min     (BaE);
maxError    =max     (BaE);
mediumGrowth=mean    (Gi);
varGrowth   =var     (Gi);
minGrowth   =min     (Gi);
maxGrowth   =max     (Gi);
toc;