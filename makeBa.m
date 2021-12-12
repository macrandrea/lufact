function ba=makeBa(A,L,U)
    ba=norm(A - L*U,'inf') / norm(A, 'inf');
end