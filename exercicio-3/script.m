function script()
    x = 0.5;
    toler = 10 ^ (-3);
    iterMax = 10000;
    [raiz, iter, info] = newton_raphson(x, toler, iterMax, @func, @derivada)
endfunction
