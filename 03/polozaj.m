function t = polozaj(x)
    
    %funkcija treba da vraca 1 ako je x<x(2), 2 ako je x>x(n-1) ili 0, inace
    
    tablica;
    n = length(X);
    t = 0;
    
    if x<X(2)
        t=1;
    elseif x>X(n-1)
        t=2;
    end
    
end