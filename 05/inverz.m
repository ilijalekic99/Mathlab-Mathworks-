function [x] = inverz(y)

[X1, Y1] = tablica;
[X, I] = sort(Y1);
Y = X1(I);

disp(X);
disp(Y);

x = lagr(y, X, Y); 
disp(x);

end

function [y] = lagr(x, X, Y)
    n = length(X);
    y = 0;
    for i = 1:n
        p = 1;
        for j = 1:n
            if j~=i
                p = p*(x-X(j))/(X(i)-X(j));
            end
        end
        y = y + p*Y(i);
    end    
    
end