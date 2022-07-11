% Calcula o valor absoluto de um número.
% a: Valor cujo módulo será calculado.
% Retorna o módulo de a.
function [a] = modulo(a)
    if a < 0
        a = a * (-1);
    endif
endfunction
