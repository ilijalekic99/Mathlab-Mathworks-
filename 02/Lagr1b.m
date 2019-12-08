function [L, y] = Lagr1b(x, a, b, n)

[X,Y] = tablica(a, b, n);
L = 0;

%racunanje koeficijenata polinoma
for i = 1:n
    p=1;
    for j = 1:n
        if i~=j
            p = conv(p, [1, -X(j)]/(X(i)-X(j)));
        end
    end
    L  = L + p * Y(i);
end

%racunamo vrednost polinoma L u tacki x
y = polyval(L, x);

end