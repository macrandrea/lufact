function A=makedd(size)
    A=rand(size)-0.5;
    for i=1:size
        A(i,i)=sum(abs(A(i,:)))*sign(A(i,i));
    end
end