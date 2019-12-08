function [M,V] = sistem(d, t, n)
    
    M = zeros(n+1);
    V = zeros(1, n+1);
    
    for i=1:n+1
       for j=1:n+1
            M(i,j) = ((j-1)*d/n)^(i-1);
       end 
       p = @(x) t(x).*x.^(i-1);
       V(i) = integral(p, 0, d);    
    end
    
    V=V';
    
end    