function [L,U,g,ba,A] = lufact(A)
n=length(A);
m=width(A);
L=eye(n,n);
X=A;
U=X;
 if m==n % check for square
     for k=1:n-1 %col
     	 for j=k+1:n %row
              if U(k,k)~=10*exp(-16)%check for the det(A) to be diff from numerical zero
                  L(j,k)  =U(j,k)/         U(k,k);
                  U(j,k:n)=U(j,k:n)-L(j,k)*U(k,k:n);
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
end
