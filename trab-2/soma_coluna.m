function [soma] = soma_coluna(n, j, x)
    soma = 0;
    for i = (1: 1: n)
        soma = soma + x(i, j);
    endfor
endfunction
