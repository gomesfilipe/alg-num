% Calcula a exatidão da solução de um sistema linear A * x = b.
% A: Matriz de coeficientes.
% b: Vetor independente.
% x: Vetor solução.
% Retorna o vetor resíduo do sistema. Quanto mais próximo de 0, melhor.
function [r] = residuo(A, b, x)
    r = A * x - b;

endfunction
