% Eliminação de Gauss para o sistema A * x = b com pivotação parcial.
% n: Dimensão da matriz A.
% A: Matriz de coeficientes.
% b: Vetor independente.
% Retorna A como matriz triangular superior e b após as operações l-elementares.
function [A, b] = elim_gauss_pivotacao(n, A, b)
    for j = (1: 1: n - 1) # Etapa.
        linha = maior_modulo(n, j, A);

        if linha != j
            A = troca_linhas(n, j, linha, A);
            [b(j), b(linha)] = swap(b(j), b(linha));
        endif

        for i = (j + 1: 1: n) # Linhas.
            mult = A(i, j) / A(j, j);

            for k = (j + 1: 1: n) # Colunas.
                A(i, k) = A(i, k) - mult * A(j, k);
            endfor

            b(i) = b(i) - mult * b(j);
        endfor
    endfor
endfunction
