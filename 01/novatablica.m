tablica;
n = length(X);

%kopiranje starih elemenata niza
X1(1:2:2*n-1) = X;
F1(1:2:2*n-1) = F;

%dodavanje novih cvorova i vrednosti u njima
X1(2:2:2*n-1) = (X1(1:2:2*n-2) + X1(3:2:2*n-1))/2;
F1(2:2:2*n-1) = (F1(1:2:2*n-2) + F1(3:2:2*n-1))/2;

%dodavanje novih vrednosti na drugi nacin
Y1 = F1;
Y1(2:2:2*n-1) = (F(1:n-1)+F(2:n))/2;

disp(X1);
disp(F1);
disp(Y1);