function W = wilkin(n)
W=eye(n);
W_n=ones(n,1);
    for i=1:n-1 %col
        for j=i+1:n %row
            W(j,i)= -1 ; %W(i,j)= -1
            if i==n-1
                if j==n
                W(:,j)=W_n(:); %W(:,i+1)=W_n(:)
                end
            end
        end
    end
end