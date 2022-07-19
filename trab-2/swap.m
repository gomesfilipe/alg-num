% Função para auxiliar na eliminação de Gauss com pivotação parcial.
% Troca o valor de duas variáveis.
% a: Variável que terá seu valor permutado.
% b: Variável que terá seu valor permutado.
% Retorna a e b com seus valores invertidos. 
function [a, b] = swap(a, b)
    aux = a;
    a = b;
    b = aux;
endfunction
