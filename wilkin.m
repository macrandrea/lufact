function W = wilkin(n)
    W=eye(n); % start from the identity matrix
    for i=1:n-1 % put to -1 the lower triangular part
        for j=i+1:n
            W(j,i)= -1 ;
        end
    end
    W(:,n)=ones(n,1); % put to 1 the last column
end