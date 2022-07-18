function [soma] = soma_produtos(n, j1, j2, x)
    soma = 0;
    for i = (1: 1: n)
        soma = soma + x(i, j1) * x(i, j2);
    endfor
endfunction
