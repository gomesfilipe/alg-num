% Calcula os parâmetros do modelo de regressão linear.
% n: Número de pontos.
% v: Quantidade de variáveis explicativas.
% p: Quantidade de parâmetros do modelo.
% x: Variáveis explicativas originais.
% y: Variáveis respostas.
% Retorna o vetor solução b com os parâmetros do modelo, o coeficiente de determinação r2
% e a informamação sobre erro. Caso ocorra erro, convencionei b ser vazio e r2 igual a -1.
function [b, r2, s2, info] = reg_linear_mult(n, v, p, x, y)
    [MatX, info] = matriz_explicativas(n, v, p, x)

    if info != 0 % Erro.
        b = [] % Erro.
        r2 = -1 % Erro.
        return
    endif

    for i = (1: 1: p)
        for j = (1: 1: i)
            soma = 0;
            for k = (1: 1: n)
                soma = soma + MatX(k, i) * MatX(k, j);
            endfor

            Sxx(i, j) = soma;

            if i != j
                Sxx(j, i) = soma;
            endif

            soma = 0;
            for k = (1: 1: n)
                soma = soma + MatX(k, i) * y(k);
            endfor

            Sxy(i) = soma; % Vetor dos termos independentes.

        endfor
    endfor

    [U, d] = elim_gauss_pivotacao(p, Sxx, Sxy);
    b = subs_retroativas(p, U, d);

    info = 0;
    S = 0;
    Sy2 = 0;

    for i = (1: 1: n)
        u = 0;
        for j = (1: 1: p)
            u = u + MatX(i, j) * b(j);
        endfor

        S = S + (y(i) - u) * (y(i) - u);
        Sy2 = Sy2 + y(i) * y(i);
    endfor

    r2 = 1 - S / (Sy2 - Sxy(1) * Sxy(1) / n);
    s2 = S / (n - p);
endfunction
