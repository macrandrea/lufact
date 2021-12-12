function [L,U,g] = lufact(A)
    n=length(A);
    m=width(A);
    L=eye(n,n);
    U=A;
    d=1;
    if m==n % check for square
        for k=1:n-1 %col
            for j=k+1:n %row
                d=d*U(k,k); %determinant of the upper-left k x k submatrix
                if d~=0 %check if d diff from numerical zero
                    L(j,k) = U(j,k)/U(k,k);
                    U(j,k:n) = U(j,k:n)-L(j,k)*U(k,k:n);
                else
                    error('pivot break down')
                end
            end 
        end
    else
        error('non-square matrix')
    end
    U=triu(U); %avoid errors in the lower diagonal of U
    g=makeG(A,L,U); %growth factor
end