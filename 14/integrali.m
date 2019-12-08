function []= integrali(f, a, b)

% f = inline(f);

I1 = integral(f, a, b);
I2 = integral(@(x) f(x).*sin(x), a, b);
L = legendre_poly(5);
I3 = integral(@(x) f(x).*polyval(L(6, :), x), a, b);
I4 = integral(@(x) polyval(L(6,:),x).*polyval(L(4,:),x), a, b);

disp(I1);
disp(I2);
disp(I3);
disp(I4);

end