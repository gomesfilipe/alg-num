function script_testes()
    n = 5;
    A = [0 1 3 2 4; 8 -2 9 -1 2; 5 1 1 -7 2; -2 4 5 1 0; 7 -3 2 -4 1];
    b = [3; -5; 6; -1; 8];

    printf('Normal:\n')
    [U, d] = elim_gauss(n, A, b)
    [x] = subs_retroativas(n, U, d)
    [d] = determinante(n, U)
    [r] = residuo(A, b, x)

    printf('\n-------------\n')

    printf('\nPivotacao parcial:\n')
    [U, d] = elim_gauss_pivotacao(n, A, b)
    [x] = subs_retroativas(n, U, d)
    [d] = determinante(n, U)
    [r] = residuo(A, b, x)
endfunction
