function [I, biter] = integralt(a, b, tol)
    
funkcija;
h = b-a;
X = a:h:b;
F = f(X);

I0 = h/2 * (F(1) + 2*sum(F(2:end-1)) + F(end));

h = h/2;
X = a:h:b;
F = f(X);

I1 = h/2 * (F(1) + 2*sum(F(2:end-1)) + F(end));

biter = 2;
while(abs(I1-I0)/3) > tol
  I0 = I1;
  h = h/2;
  X = a:h:b;
  F = f(X);
  I1 = h/2 * (F(1) + 2*sum(F(2:end-1)) + F(end));    
  biter  = biter + 1;
end

I = I1;

end