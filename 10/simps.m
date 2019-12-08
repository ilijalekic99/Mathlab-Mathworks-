function I = simps(a, b)
    
funkcija;
X = linspace(a,b,9);
Y = f(X);
h = X(2)-X(1);
n = length(X);

I = h/3 * (Y(1) + Y(n) + 2*sum(Y(3:2:n-2)) + 4*sum(Y(2:2:n-1)));

end