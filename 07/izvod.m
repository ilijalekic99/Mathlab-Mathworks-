function[X,Y,Yi] = izvod()
    
tablica;
Yi = (Y(3:end) - Y(1:end-2))./(X(3:end) - X(1:end-2));

end