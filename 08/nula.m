function [x] = nula()

    [X,Y,Y2] = drugiizvod();
    
    X = X(2:end-1);
    Y = Y2;
    
    n = length(X);
    pom = Y;
    tabk = zeros(n-1);
    
    for i = 1:n-1
        pom = diff(pom);
       tabk(1:n-i, i) = pom; 
    end
    
    f = @(q)  (-1)*(Y(1) + q*(q-1)*tabk(1,2)/2 + q*(q-1)*(q-2)*tabk(1,3)/6)/tabk(1,1);
    
    q0 = f(0);
    q1 = f(q0);
    
    while(abs(q1-q0)>10^(-4))
        q0 = q1;
        q1 = f(q1);
    end

    h = X(2)-X(1);
    x = X(1)+q1*h;
    
end