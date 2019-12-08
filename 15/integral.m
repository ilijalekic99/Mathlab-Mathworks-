function I = integral(n, m, tol)
   
    a = -1;
    b = 1;
    
    h = (b-a)/2;
    X = a:h:b;
    P = polinom(n, m);
    f = @(x) polyval(P, x).*exp(x);
    Y = f(X);
    S1 = h/3 * (Y(1) + Y(end) + 4*sum(Y(2:2:end-1)) + 2*sum(Y(3:2:end-1)));
    
    h = h/2;
    X = a:h:b;
    Y = f(X);
    S2 = h/3 * (Y(1) + Y(end) + 4*sum(Y(2:2:end-1)) + 2*sum(Y(3:2:end-1)));

    biter = 2;
    
    while abs(S1-S2)/15 > tol
       S1 = S2;
       h = h/2;
       X= a:h:b;
       Y = f(X);
       S2 = h/3 * (Y(1) + Y(end) + 4*sum(Y(2:2:end-1)) + 2*sum(Y(3:2:end-1)));
       biter = biter + 2;
    end
    
    I= S2;
    
end