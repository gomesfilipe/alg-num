function [result] = script()
    a = 0;
    b = pi;
    m = 12;
    result = Simp13m(a, b, m, @func);
endfunction
