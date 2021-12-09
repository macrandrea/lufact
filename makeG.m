function g=makeG(A,L,U)
    mA=max(max(abs(A)));
    mU=max(max(abs(U)));
    mL=max(max(abs(L)));
    g=mL*mU/mA;
end