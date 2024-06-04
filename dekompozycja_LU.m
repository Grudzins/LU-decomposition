A = [-1.790 -1.380 2.360 -7.450;
    -8.580 -8.100 -7.430 0.600;
    6.590 -7.990 2.960 4.480;
    -0.970 6.240 8.610 -2.180];
B = [37.060;
    156.470;
    -11.420;
    -100.850];
[L,U,P] = lu(A);
y = L\ (P*B);
x = U\y;

if A*x - B < 1e-10
    disp('Rozwiązanie jest poprawne.');
else
    disp('Rozwiązanie jest niepoprawne');
end

disp('Macierz x:');
disp(x);