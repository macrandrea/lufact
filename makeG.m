function g=makeG(A,L,U)
    mA=max(max(A));
    mU=max(max(U));
    mL=max(max(L));
    g=(abs(mL)*abs(mU))/(abs(mA));
end