% Aproxima o valor da raiz da função f com derivada df com ponto base x com
% tolerância toler e no máximo iterMax iterações usando o método de Newton-Raphson.
function [raiz, iter, info] = newton_raphson(x, toler, iterMax, f, df)
    epsilon = toler;
    deltax = 1 + toler;
    iter = 0;

    while(true)
        Fx = f(x);
        DFx = df(x);

        if((abs(deltax) <= toler && abs(Fx) <= toler) || abs(DFx) < epsilon || iter >= iterMax)
            break
        endif

        deltax = Fx / DFx;
        x = x - deltax;
        iter = iter + 1;
    endwhile

    raiz = x;

    if(abs(deltax) <= toler && abs(Fx) <= toler)
        info = 0;
    else
        info = 1;
    endif
endfunction
