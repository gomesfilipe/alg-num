% Eliminação de Gauss para o sistema A * x = b sem pivotação parcial.
% n: Dimensão da matriz A.
% A: Matriz de coeficientes.
% b: Vetor independente.
% Retorna A como matriz triangular superior e b após as operações l-elementares.
function [A, b] = elim_gauss(n, A, b)
    for j = (1: 1: n - 1) # Etapa.
        for i = (j + 1: 1: n) # Linhas.
            mult = A(i, j) / A(j, j);
            for k = (j: 1: n) # Colunas (no slide da professora está j+1 para economizar operações).
                A(i, k) = A(i, k) - mult * A(j, k);
            endfor
            b(i) = b(i) - mult * b(j);
        endfor
    endfor
endfunction
