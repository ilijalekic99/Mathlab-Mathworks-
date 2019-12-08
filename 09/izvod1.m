function [dx, dx2] = izvod1(x)

tablica;
n = length(Y);
kon = Y;
tabk = zeros(n-1);
for i = 1:n-1
   kon = diff(kon); 
   tabk(1:n-i, i) = kon;
end

h = X(2) - X(1);
q = (x-X(1))/h; 

P = Y(1);
Q = 1;

for i = 1:4
   Q = conv(Q, [1, -i+1]);
   P = [0, P] + Q * tabk(1, i) / factorial(i);
end

dx = polyder(P);
dx2 = polyder(dx);

dx = dx/h;
dx2 = dx2/h^2;

dx = polyval(dx,q);
dx2 = polyval(dx2,q);

disp(dx);
disp(dx2);

end