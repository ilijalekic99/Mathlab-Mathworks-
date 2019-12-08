function L = legendre_poly(n)
    
    L = zeros(n+1);
    L(1, n+1) = 1;
    L(2, n) = 1;

    for i=2:n
        L(i+1, :) = ((2*i-1)*[L(i, 2:end), 0] - (i-1)*L(i-1, :))/i;
    end    
    
    X = linspace(-1, 1, 100);
    
    boje = 'cmykrgb';
    
    plot(X, polyval(L(1,:), X), boje(1));
    
    hold on;
    
    for i=2:n+1
        plot(X, polyval(L(i,:), X), boje(mod(i,7)+1));
    end
    
    
    hold off;
    
end