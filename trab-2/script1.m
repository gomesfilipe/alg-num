function script1()
    n = 8 % Pontos.
    v = 2 % Variáveis explicativas.
    p = 3 % Parâmetros do modelo. y(x1, x2) = b0 + b1 * x1 + b2 * x2.
    x = [-1 -2; 0 -1; 1 0; 2 1; 4 1; 5 2; 5 3; 6 4] % Tabela de variáveis explicativas.
    y = [13; 11; 9; 4; 11; 9; 1; -1] % Tabela de variáveis explicativas.

    % [m] = matriz_explicativas(n, v, p, x)
    [x, r2, info] = reg_linear_mult(n, v, p, x, y)

endfunction
