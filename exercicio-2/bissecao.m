% Aproxima o valor da raiz da função f num intervalo [a,b] com
% tolerância toler e no máximo iterMax iterações.
function [raiz, iter, info] = bissecao(a, b, toler, iterMax, f) 
    Fa = f(a);
    Fb = f(b);

    if(Fa * Fb > 0)
        info = -1;
        return
    endif
    
    deltax = abs(b - a);
    iter = 0;

    while(true)
        deltax = deltax / 2;
        x = (a + b) / 2;
        Fx = f(x);

        if ((deltax <= toler && abs(Fx) <= toler) || (iter > iterMax))
            break
        endif

        if(Fa * Fx > 0)
            a = x;
            Fa = Fx;
        else
            b = x;
            Fb = Fx;
        endif

        iter = iter + 1;
    endwhile

    raiz = x;

    if(deltax <= toler && abs(Fx) <= toler)
        info = 0;
    else
        info = 1;
    endif

endfunction
