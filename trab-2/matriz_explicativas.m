% Gera a matriz de variáveis explicativas de acordo com o modelo especificado.
% n: Número de pontos.
% v: Quantidade de variáveis explicativas.
% p: Quantidade de parâmetros do modelo.
% x: Submatriz com variáveis explicativas originais.
% Retorna a matriz de variáveis explicativas e a informação sobre erro.
function [MatX, info] = matriz_explicativas(n, v, p, x)
    if p < v % Modelo não permitido.
        info = 1; % Erro.
        MatX = []; % Erro.
        return;
    endif

    info = 0;
    if v == 1 % Regressão polinomial.
        for i = (1: 1: n)
            MatX(i, 1) = 1;
        endfor

        for j = (2: 1: p)
            for i = (1: 1: n)
                MatX(i, j) = MatX(i, j - 1) * x(i, 1);
            endfor
        endfor
    else % Regressão linear múltipla.
        for i = (1: 1: n)
            MatX(i, 1) = 1;
        endfor
        
        for j = (2: 1: p)
            for i = (1: 1: n)
                MatX(i, j) = x(i, j - 1);
            endfor
        endfor
    endif
endfunction
