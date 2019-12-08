function[V] = zapremina(a, b, tol)

    funkcija;
    f = @(x) pi*f(x).^2;
    h = (b-a)/2;
    X = a:h:b;
    F = f(X);
    I0 = h/3 * (F(1) + F(end) + 4*sum(F(2:2:end-1)) + 2*sum(F(3:2:end-1)));
    
    h = h/2;
    X = a:h:b;
    F = f(X);
    I1 = h/3 * (F(1) + F(end) + 4*sum(F(2:2:end-1)) + 2*sum(F(3:2:end-1)));
    
    biter = 2;
    
    while Runge(I0, I1) > tol
        I0 = I1;
        h = h/2;
        X = a:h:b;
        F = f(X);
        I1 = h/3 * (F(1) + F(end) + 4*sum(F(2:2:end-1)) + 2*sum(F(3:2:end-1)));
        biter = biter + 1;
    end
    
    V = I1;
    
end