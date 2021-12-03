function [L,U] = lufact(A)
U=A;
n=length(U);
m=width(U);
if m==n % check for square
    for k=1:n-1 %colfor j=k+1:n %row
        if U(k,k)~=0 %check if we are dividing by 0
            for j=k+1:n
                U(j,k)=U(j,k)/U(k,k);
                U(j,k+1:n)=U(j,k+1:n)-U(j,k)*U(k,k+1:n);
            end
        else
            error('factorization breaks down due to division by a quantity smaller than machine precision')
        end
    end       
else
     error('non-square matrix')
end
L=tril(U,-1)+eye(n,n);
U=triu(U);
g=makeG(A,L,U); %growth factor
end