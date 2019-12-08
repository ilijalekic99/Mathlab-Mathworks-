function[] = grafik(a, b, n)
    
    %formiramo gust vektor, da bi grafici bili glatkiji
    X = linspace(a,b, 100);

    %ucitavanje funkcije
    funkcija;
    plot(X, f(X), 'k');
    
    %na stek za crtanje dodaje jos jednu sliku
    hold on;
    
    %nije bitno koju vrednost x damo funkciji, jer su nam potrebni samo koeficijenti
    [L, y] = Lagr1b(0, a, b, n);
    plot(X, polyval(L,X), 'r');
    
    % Dodatak: prikazacemo da u MATLAB-u mogu da se iscrtavaju i druge stvari,
    % na primer, cvorove interpolacije cemo iscrtati kao zvezdice
    % uzimamo cvorove interpolacije
    [X1, Y1] = tablica(a, b, n);
    % ucrtavamo vrednosti funkcije u cvorovima
    % dodavanje * u opciju ' r ' znaci da se crtaju crvene zvezdice umesto pune linije
    plot(X1, Y1, ' r* ' )
    
    %oznacavamo da se nijedan grafik vise ne dodaje na crtez
    hold off;
    
    % dodavanje legende na crtez
    legend( ' funkcija ' , ' polinom ' , ' vrednosti u cvorovima ' )
    
end