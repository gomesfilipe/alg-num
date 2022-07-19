% Função para auxiliar na eliminação de Gauss com pivotação parcial.
% Troca os valores de duas linhas da matriz de coeficientes de um sistema linear.
% n: Dimensão da matria M.
% p: Índice da linha da matriz que terá seu valor permutado.
% q: Índice da linha da matriz que terá seu valor permutado.
% M: Matriz de coeficientes.
% Retorna a matriz M com suas linhas p e q invertidas. 
function [M] = troca_linhas(n, p, q, M) # Troca as linhas p, q da matriz M.
    for j = (1: 1: n)
        [M(p, j), M(q, j)] = swap(M(p, j), M(q, j));
    endfor
endfunction
