function x = nula(a,b,n)
    
[c,d] = promenaZnaka(a,b,n);

if isempty([c,d])
    error('Nema nulu na ovom segmentu');
end

[X,Y] = tablica(c,d,n);

pom = Y;
n = length(Y);
tabk = zeros(n-1);

for i = 1:n-1
   pom = diff(pom);
   tabk(1:n-i , i) = pom;
end

f = @(q) (-1) * (Y(n) + q*(q+1)*tabk(n-2, 2)/2 + q*(q+1)*(q+2)*tabk(n-3, 3)/6) / tabk(n-1,1);
    
q0 = f(0);
q1 = f(q0);

while(abs(q1-q0) > 10^(-4))
    q0 = q1;
    q1 = f(q1);
end

h = X(2)-X(1);
x = X(n) + h*q1;

end