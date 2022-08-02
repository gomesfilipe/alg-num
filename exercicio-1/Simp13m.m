% Calcula a integral com a regra do 1/3 de Simpson.
% a: Início do intervalo de integração.
% b: Final do intervalo de integração.
% m: Quantidade de subintervalos.
% func: Callback para a função a ser integrada.
function [result] = Simp13m(a, b, m, func)
    h = (b - a) / m;
    j = 1;
    % Criando vetor com os valores da função nos pontos dos subintervalos.
    for i = (a: h: b)
        f(j) = func(i);
        j = j + 1;
    endfor

    Sum = f(1);
    for i = (2: 2: m - 1)
        Sum = Sum + 4 * f(i) + 2 * f(i + 1);
    endfor

    Sum = Sum + 4 * f(m) + f(m + 1);
    result = h * Sum / 3;
endfunction
