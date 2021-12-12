function g=makeG(A,L,U)
    G=abs(L)*abs(U);
    g=max(max(G))/max(max(abs(A)));
end