function script_testes()
    n = 4;
    A = [-2 3 1 5; 5 1 -1 0; 1 6 3 -1; 4 5 2 8];
    b = [2; -1; 0; 6];

    printf('Normal:\n')
    [U, d] = elim_gauss(n, A, b);
    [x] = subs_retroativas(n, U, d)
    [d] = determinante(n, U)
    [r] = residuo(A, b, x)

    printf('\n-------------\n')

    printf('\nPivotacao parcial:\n')
    [U, d] = elim_gauss_pivotacao(n, A, b);
    [x] = subs_retroativas(n, U, d)
    [d] = determinante(n, U)
    [r] = residuo(A, b, x)
endfunction
