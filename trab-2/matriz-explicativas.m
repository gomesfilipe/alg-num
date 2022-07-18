function [MatX, info] = matriz_explicativas(n, v, p, x)
    if p < v % Modelo não permitido.
        info = 1;
        return [MatX, info];
    endif

    info = 0
    if v == 1 % Regressão polinomial.
        for i = (1: 1: n)
            MatX(i, 1) = x(i, 1);
        endfor

        for j = (2: 1: p)
            for i = (1: 1: n)
                MatX(i, j) = MatX(i, j - 1) * x(i, 1);
            endfor
        endfor
    else % Regressão linear múltipla.
        for j = (1: 1: p)
            for i =(1: 1: n)
                MatX(i, j) = x(i, j)
            endfor
        endfor
    endif
endfunction
