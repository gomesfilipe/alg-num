function script2()
    n = 6 % Pontos.
    v = 1 % Variáveis explicativas.
    p = 3 % Parâmetros do modelo. y(x) = b0 + b1 * x + b2 * x².
    x = [-2; -1.5; 0; 1; 2.2; 3.1] % Tabela de variáveis explicativas.
    y = [-30.5; -20.2; -3.3; 8.9; 16.8; 21.4] % Tabela de variáveis explicativas.

    [b, r2, info] = reg_linear_mult(n, v, p, x, y)
endfunction
