function [mediumError,varError,minError   ,maxError   , mediumGrowth ,varGrowth  ,minGrowth  ,maxGrowth]  =statisticheLU(MaxEntry, MaxRow, MaxCols)
[Gi, BaE]=testamatrici(MaxEntry, MaxRow, MaxCols);
mediumError =mean    (BaE);
varError    =variance(BaE);
minError    =min     (BaE);
maxError    =max     (BaE);
mediumGrowth=mean    (Gi);
varGrowth   =variance(Gi);
minGrowth   =min     (Gi);
maxGrowth   =max     (Gi);
end