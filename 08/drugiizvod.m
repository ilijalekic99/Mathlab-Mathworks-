function [X,Y,Y2] = drugiizvod()
    
tablica;
h = X(2)-X(1);
Y2 = (Y(1:end-2)-2*Y(2:end-1)+Y(3:end))/h^2;

end