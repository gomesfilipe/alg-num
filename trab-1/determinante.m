% Calcula o determinante de uma matriz triangular superior.
% n: Dimensão da matriz.
% U: Matriz triangular superior.
% Retorna o determinante da matriz U.
function [d] = determinante(n, U)
    d = U(1, 1);
    for i = (2: 1: n)
        d = d * U(i, i);
    endfor
endfunction
