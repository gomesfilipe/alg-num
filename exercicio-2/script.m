function script()
    a = 0;
    b = 1;
    toler = 10 ^ (-3);
    iterMax = 10000;
    [raiz, iter, info] = bissecao(a, b, toler, iterMax, @func)
endfunction
