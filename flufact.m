function [L,U,g] = flufact(A)
U=transpose(A);
n=length(U);
m=width(U);
if m==n % check for square
    for k=1:n-1 %colfor j=k+1:n %row
        if U(k,k)~=10*exp(-15) %check if we are dividing by 0
           for j=k+1:n
               U(k,j)=U(k,j)/U(k,k);
               U(k+1:n,j)=U(k+1:n,j)-U(k,j)*U(k+1:n,k);
           end
        else
            error('factorization breaks down due to division by a quantity smaller than machine precision')
        end
    end       
else
     error('non-square matrix')
end
U=transpose(U);
L=tril(U,-1)+eye(n,n);
U=triu(U);
g=makeG(A,L,U); %growth factor
end