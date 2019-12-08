function [x] = nula()
    
    [X,Y,Yi] = izvod();
    X = X(2:end-1);
    x = njutn(0, Yi, X);

end

function[y] = njutn(x, X, Y)

    n = length(X);
    pom = Y;
    tabp = zeros(n-1);
    
    for i = 1:n-1
        pom = diff(pom)./(X(i+1:end) - X(1:n-i));
        tabp(1:n-i, i) = pom;
    end
    
    p = 1;
    y = Y(1);
    
    for i = 1:n-1
        p = p * (x-X(i));
        y = y + p * tabp(1,i);
    end    
    
end