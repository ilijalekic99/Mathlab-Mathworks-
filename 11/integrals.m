function[I, biter] = integrals(a, b, tol)
    
    funkcija;
    h = (b-a)/2;
    X = a:h:b;
    F = f(X);
    
    I0 = h/3 * (F(1) + F(end) + 2*sum(F(3:2:end-1)) + 4*sum(F(2:2:end-1)));
    
    h = h/2;
    X = a:h:b;
    F = f(X);
    
    I1 =  h/3 * (F(1) + F(end) + 2*sum(F(3:2:end-1)) + 4*sum(F(2:2:end-1)));
    
    biter = 2;
    
    while(abs(I1-I0)/15 > tol)
        I0 = I1;
        h = h/2;
        X = a:h:b;
        F = f(X);
        
        I1 =  h/3 * (F(1) + F(end) + 2*sum(F(3:2:end-1)) + 4*sum(F(2:2:end-1)));
        biter = biter + 1;
    end
    
    I = I1;
    
end