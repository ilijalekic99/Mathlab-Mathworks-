function [I] = trapez(a,b)

funkcija;
X = linspace(a,b,9);
Y = f(x);
n = length(X);
h = X(2)-X(1);

I = h/2*(Y(1) + 2*sum(Y(2:n-1) + Y(n)));

end