function [L,U,g,ba] = lufact(A)
n=length(A);
m=width(A);
L=eye(n,n);
U=A;
 if m==n % check for square
     for k=1:n-1 %col
     	for j=k+1:n %row
             if det(A(j-1,k))~=0 %check for the det(A) to be diff from zero
                 L(j,k)=A(j,k)/A(k,k);
                 U(j,k:n)=A(j,k:n)-L(j,k)*A(k,k:n);
             else
                 error('factorization breaks down due to division by a quantity smaller than machine precision')
             end
       end       
     end
 else
     error('non-square matrix')
 end
 g=makeG(A,L,U); %growth factor
 ba=makeBa(A,L,U); %backward error
 %ba=norm(A - L*U,'inf') / norm(A, 'inf');
end
