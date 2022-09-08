%Se declaran las funciones del enunciado y sus derivadas
f1 = @(x) x^2 - 42;
df1 = @(x) 2*x;
f2 = @(x) x^3 - 4*x^2 + 5*sin(2*pi*x);
df2 = @(x) 3*x^2 - 8*x + 10*pi*cos(2*pi*x);

syms x y z
F1 = x^2 + y - 37;
F2 = x - y^2 - 5;
F3 = x + y + z - 3;
F = [F1; F2; F3];

%Se declaran las constantes a utilizar
tol = 0.00000000000000001;
a = 1;
b = 100;

%Llamado a metodos
% Newton Raphson
tic;
[iteracionesNR1, erroresNR1, raicesNR1, operacionesNR1] = newtonraphson(f1, df1, 1, tol);
tNR1 = toc;

tic;
[iteracionesNR2, erroresNR2, raicesNR2, operacionesNR2] = newtonraphson(f2, df2, 1, tol);
tNR2 = toc;

% Biseccion
tic;
[iteracionesB1, erroresB1, raicesB1, operacionesB1] = biseccion(a, b, tol, f1);
tB1 = toc;

tic;
[iteracionesB2, erroresB2, raicesB2, operacionesB2] = biseccion(a, b, tol, f2);
tB2 = toc;

% Regula Falsi
tic;
[iteracionesRF1, erroresRF1, raicesRF1, operacionesRF1] = regulaFalsi(a, b, tol, f1);
tRF1 = toc;

tic;
[iteracionesRF2, erroresRF2, raicesRF2, operacionesRF2] = regulaFalsi(a, b, tol, f2);
tRF2 = toc;

% Secante
tic;
[iteracionesS1, erroresS1, raicesS1, operacionesS1] = secante(f1, a, b, tol);
tS1 = toc;

tic;
[iteracionesS2, erroresS2, raicesS2, operacionesS2] = secante(f2, a, b, tol);
tS2 = toc;

% MultiVariable Newton
tic;
[iteracionesM, erroresM, raicesM, operacionesM, errores1M, erroresInfM] = multivariable(F, tol);
tM = toc;

%Desarrollo de normalizacion para poder crear gráficas (Datos obtenidos a través de prubas de
%maximasIteraciones y test de convergencia
Tiempos = [0.00200000, 0.00200000; 0.00520000, 0.00410000; 0.00600000, 0.13710000; 0.00110000, 0.00036560];
normaTiempo = max(max(Tiempos));
TiemposNormalizados = Tiempos'/normaTiempo; 
%Graficable; no requiere mayor análisis para el informe.

Operaciones = [56 56;899 928;4769 261459;187 187];
normaOperaciones = max(max(Operaciones));
OperacionesNormalizados = Operaciones'/normaOperaciones;
%Graficable; sin embargo regula falsi genera un dato enorme que
%no permite visualizar correctamente los otros datos.

MatrizErroresM = [erroresM; errores1M; erroresInfM];
normaErroresM = max(max(MatrizErroresM));
MatrizErroresMNormalizados = MatrizErroresM'/normaErroresM;


graficaErroresMultivariable(MatrizErroresMNormalizados);



