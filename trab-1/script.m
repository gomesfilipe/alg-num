function script()
    n = 3;
    A = [-2 3 1; 2 1 -4; 7 10 -6];
    b = [-5; -9; 2];

    printf('Normal:\n')
    [U, d] = elim_gauss(n, A, b)
    [x] = subs_retroativas(n, U, d)
    [r] = residuo(A, b, x)

    printf('\n-------------\n')
    printf('\nPivotacao parcial:\n')

    [U, d] = elim_gauss_pivotacao(n, A, b)
    [x] = subs_retroativas(n, U, d)
    [r] = residuo(A, b, x)

endfunction
