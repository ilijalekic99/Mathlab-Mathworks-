function [y] = Njutn(x)

t = tablicaCheck();
if t~=1
    error('Nije ekvidistantna');
end

p = polozaj(x);
tablica;
n = length(X);

if p==0
    error(['Ulazni argument mora biti manji od ', num2str(X(2)), 'ili veci od ', num2str(X(n-1))]);
end

%matrica koja sadrzi konacne razlike
tabk = zeros(n-1);

%pomocna promenljiva nad kojom cemo primenjivati diff
kon = F;
for i = 1:n-1
    kon = diff(kon);
    tabk(1:n-i, i) = kon;
end

%stampamo tablicu
disp(tabk);

if p==1
    % I Njutnov interpolacioni polinom
    q = (x-X(1))/(X(2)-X(1));
    p = 1;
    y = F(1);
    
    %recikliramo mnozilac q!
    for i = 1:n-1
        p = p * (q-i+1);
        y = y + p*tabk(1, i)/factorial(i);
    end

elseif p==2
    % II Njutnov interpolacioni polinom
    q = (x-X(n))/(X(n)-X(n-1));
    p = 1;
    y = F(n);
    
    for i = 1:n-1
       p = p * (q+i-1); 
       y = y + p*tabk(n-i, i)/factorial(i);      
    end
end

disp(y);

end