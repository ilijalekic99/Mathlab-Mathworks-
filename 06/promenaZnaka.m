function[c,d] = promenaZnaka(a, b, n)
 
[X, Y] = tablica(a,b,n);
I = find(Y(1:end-1).*Y(2:end) < 0, 1);
c = X(I);
d = X(I+1);

end