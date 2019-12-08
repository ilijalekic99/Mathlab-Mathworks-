function y = vredfunk(x)
    
    if ~tablicaCheck()
        error('Nisu ispunjeni uslovi zadatka!');
    end
    
    tablica;
    n = length(X);
    tabp = zeros(n-1);
    pod = Y;
    
    %pravimo podeljene razlike
    for i = 1:n-1
        pod = diff(pod)./(X(i+1:n)-X(i:n-1));
        tabp(1:n-i, i) = pod;
    end    
    
    disp(tabp);

    %izracunavanje vrednosti polinoma
    p = 1;
    y = Y(1);
    for i = 1:n-1
        p = p*(x-X(i));
        y = y + p*tabp(1, i);
    end

    disp('1. nacin: ');
    disp(y);
    
    %drugi nacin, preko polinoma
    y2 = Y(1);
    p = 1;
    for i = 1:n-1
       p = conv(p, [1, -X(i)]);
       y2 = [0,y2] + tabp(1, i)*p;
    end
    
    rez = polyval(y2, x);
    disp('2. nacin: ');
    disp(rez);
    
end