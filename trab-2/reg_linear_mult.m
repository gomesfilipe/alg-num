function [b, r2, info] = reg_linear_mult(n, v, p, x, y)
    [MatX, info] = matriz_explicativas(n, v, p, x);

    if info != 0
        return
    endif

    for i = (1: 1: p)
        for j = (1: 1: i)
            soma = 0;
            for k = (1: 1: n)
                soma = soma + MatX(k, i) * MatX(k, j);
            endfor
            
            Sxx(i, j) = soma;

            if i != j
                Sxx(j, i) = soma;
            endif

            soma = 0;
            for k = (1: 1: n)
                soma = soma + MatX(k, i) * y(k);
            endfor

            Sxy(i) = soma; % Vetor dos termos independentes.

        endfor
    endfor
    
    [U, d] = elim_gauss_pivotacao(p, Sxx, Sxy);
    b = subs_retroativas(p, U, d);
    
    info = 0;
    S = 0;
    Sy2 = 0;

    for i = (1: 1: n)
        u = 0;
        for j = (1: 1: p)
            u = u + MatX(i, j) * b(j);
            S = S + (y(i) - u) * (y(i) - u);
            Sy2 = Sy2 + y(i) * y(i);
        endfor
    endfor

    r2 = 1 - (S / Sy2);
endfunction
