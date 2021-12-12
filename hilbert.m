clc
clear
H = cell(10, 1);
gee=[];
bee=[];
for i=1:100
H{i}=hilb(i);
[L,U,g,b]=lufact(H{i});
gee(i)=g;
bee(i)=b;
end
mediumError =mean    (bee);
varError    =var     (bee);
minError    =min     (bee);
maxError    =max     (bee);
mediumGrowth=mean    (gee);
varGrowth   =var     (gee);
minGrowth   =min     (gee);
maxGrowth   =max     (gee);
x=1:100;
yyaxis right
semilogy(x,gee);
yyaxis left
semilogy(x,bee);
grid on
