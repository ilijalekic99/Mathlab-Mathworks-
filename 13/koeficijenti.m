function rez = koeficijenti(d, t, n)
    
    [M,V] = sistem(d,t,n);
    rez = M\V;

end