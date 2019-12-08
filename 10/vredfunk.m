function [X,Y] = vredfunk(k, p)
    
    funkcija;
    X = 2:k;
    Y = zeros(1,k-1);
    
    if p==1
       
       for i=1:k
            Y(1,i) = simps(1,i);
       end
        
    elseif p==2
        for i=1:k
            Y(1,i) = trapez(1,i);
        end
    else
        error('Kurac');
    end
    
    disp(Y);

end