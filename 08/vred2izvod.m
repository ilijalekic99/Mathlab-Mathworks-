function y = vred2izvod(x)
    
[X,Y,Y2] = drugiizvod();

X = X(2:end-1);
Y = Y2;

disp(X);
disp(Y);

pom = Y;
n = length(Y);
tabk = zeros(n-1);

for i=1:n-1
   pom = diff(pom);
   tabk(1:n-i, i) = pom;
end

p=1;
y=Y(1);
q = (x-X(1))/(X(2)-X(1));
for i=1:n-1
    p = p*(q-i+1);
    y = y + p*tabk(1,i)/factorial(i);
end

end