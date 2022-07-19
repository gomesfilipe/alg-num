% Função para auxiliar a eliminação de Gauss com pivotação parcial.
% Encontra o maior elemento em módulo de uma coluna abaixo do pivô.
% n: Dimensão da matriz M.
% pivo: Linha pivotal.
% M: Matriz de coeficientes.
% linha: Índice da linha que contém o maior elemento em módulo da coluna.
% Retorna o índice da linha que contém o maior elemento em módulo da coluna.
function [linha] = maior_modulo(n, pivo, M)
    maior = modulo(M(pivo, pivo));
    linha = pivo;
    for i = (pivo + 1: 1: n)
        if modulo(M(i, pivo)) > maior
            maior = modulo(M(i, pivo));
            linha = i;
        endif
    endfor
endfunction
