% Aplica substituições retroativas num sistema linear.
% Pré condição: U deve ser matriz triangular superior.
% n: Dimensão da matriz U.
% U: Matriz dos coeficientes após eliminação de Gauss.
% d: Vetor independente após eliminação de Gauss.
% Retorna o vetor solução x do sistema linear.
function [x] = subs_retroativas(n, U, d)
    x(n, 1) = d(n) / U(n, n);

    for i = (n - 1: -1: 1)
        soma = 0;
        
        for  j = (i + 1: 1: n)
            soma = soma + U(i, j) * x(j);
        endfor

        x(i, 1) = (d(i) - soma) / U(i, i);
    endfor
endfunction
