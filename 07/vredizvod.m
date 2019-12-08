function y = vredizvod(x)
    
    [X,Y,Yi] = izvod();
    
    X = X(2:end-1);
    Y = Yi;
    n = length(X);
    tabp = zeros(n-1);
    pom = Y;
    
    for i = 1:n-1
        pom = diff(pom)./(X(i+1:end) - X(1:end-i));
        tabp(1:n-i, i) = pom;
    end
   
   y = Y(1);
   p = 1;
   
   %prvi nacin, direktno
   for i = 1:n-1
      p = p * (x-X(i));
      y = y + p * tabp(1, i);
   end
   
   
   %drugi nacin, preko polinoma
   y2 = Y(1);
   p = 1;
   for i = 1:n-1
      p = conv(p, [1, -X(i)]);
      y2 = [0,y2] + p * tabp(1,i);
   end
   
   rez = polyval(y ,x);
   
   disp('1.nacin');
   disp(y);
   disp('2.nacin');
   disp(rez);
   
   
end