%x = logspace(0,100);
%%y2 = 5 - 3*sin(x/4);
%loglog(x,Gi,x,y,'--');
%legend('gamma','bound');
%grid on;
% x=1:100;
%y=ones(100,1);
%y1=ones(100,1).*-10e-16;
%%semilogy(x,Gi,x,y);
%%legend('gamma','bound');
%semilogy(x,BaE,x,y);
%legend('NWRBackErr','One U-bound');
%grid on
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
x=1:100;
yyaxis right
semilogy(x,gee);
yyaxis left
semilogy(x,bee);
grid on


mediumError =mean    (bee);
varError    =var     (bee);
minError    =min     (bee);
maxError    =max     (bee);
mediumGrowth=mean    (gee);
varGrowth   =var     (gee);
minGrowth   =min     (gee);
maxGrowth   =max     (gee);
