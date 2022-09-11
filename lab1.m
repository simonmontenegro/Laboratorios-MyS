% María Jesús Cañoles 203001592
% Simón Montenegro 197947217

% ----- Primera parte -----
% Pregunta 1
% a(x) = 6log4(5x + 15) − log2(2x)
x = 0: .01: 15*pi;
fa = 6*((log(5*x + 15))/log(4)) - log2(2*x);
graficar(fa, x, "Función 1", "Eje x", "Eje y", "r * ");

% b(x) = sen(6log10(2x + 9)) + cos(2ln(x + 16))
fb = sin(6*log10(2*x + 9)) + cos(2*log(x + 16));
graficar(fb, x, "Función 2", "Eje x", "Eje y", "g + ");

%Grafica de a(x) y b(x)
graficarCombinado(fa, fb, x, "Funciones 1 y 2", "Eje x", "Eje y", "r * ", "g + ")

% Pregunta 2
% c(x) = 2e(2x+3)
% Escala normal
x2 = -10: .05: 10;
fc = 2 * exp(2*x2 + 3);
graficarNormal(fc, x2, "Función 3 (escala normal)", "Eje x", "Eje y")

% Escala logaritmica
graficarLogaritmica(fc, x2, "Función 3 (escala logaritmica)", "Eje x", "Eje y")











% ----- Segunda parte -----

% Pregunta 1
f = [3, 4, 1, -15];
solucion = newtonRaphson(f, 3, 0.0001, 2);

% Pregunta 2
%arreglo = input("Ingrese un arreglo (entre corchetes y separado por espacios) para calcular su desviación estándar: ");
%arreglo = num2str(arregloStr);

% sumatoria = 0;
% promedio = 0;
% for elemento = 1:length(arreglo)
%     promedio = promedio + arreglo(elemento);
% end
% promedio = promedio/length(arreglo);
% 
% for elemento = 1:length(arreglo)
%     sumatoria = sumatoria + (arreglo(elemento) - promedio)^2;
% end
% 
% std = sqrt((sumatoria)/length(arreglo));
% disp("La desviacióne estándar del arreglo ingresado es: " + string(std));

