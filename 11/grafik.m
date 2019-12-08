function [] = grafik(a, b)

    
    tol = 10.^(-1:-1:-6);
    
    hold on;
    
    iteracije = zeros(1,6);
    
    for i = 1:length(tol)
       
        [I, biter] = integralt(a,b, tol(i));
        iteracije(i) = biter;
    end    
    
    plot(tol, iteracije, 'r');
    
    for i = 1:length(tol)
       
        [I, biter] = integrals(a,b, tol(i));
        iteracije(i) = biter;
    end    
    plot(tol, iteracije, 'b');
end