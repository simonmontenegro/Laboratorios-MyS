% María Jesús Cañoles 203001592
% Simón Montenegro 19796

% ----- Primera parte -----

% Pregunta 1
% a(x) = 6log4(5x + 15) − log2(2x)
x = 0: .01: 15*pi;
a = 6*((log(5*x + 15))/log(4)) - log2(2*x);
plot(x, a, "r * ");
title ( "Función 1");
ylabel ( "Eje y" );
xlabel ( "Eje x" );

% b(x) = sen(6log10(2x + 9)) + cos(2ln(x + 16))
b = sin(6*log10(2*x + 9)) + cos(2*log(x + 16));
plot(x, b, "g + ");
title ( "Función 2");
ylabel ( "Eje y" );
xlabel ( "Eje x" );

% Pregunta 2
% c(x) = 2e(2x+3)
% Escala normal
x = -10: .05: 10;
c = 2 * exp(2*x + 3);
plot (x, c);
title ( "Función 3 (escala normal)");
ylabel ( "Eje y" );
xlabel ( "Eje x" );
grid on %Muestra el grafico con grilla

% Escala logaritmica
semilogy (x , c);
title ( "Función 3 (escala logaritmica)");
ylabel ( "Eje y" );
xlabel ( "Eje x" );
grid on %Muestra el grafico con grilla

% ----- Segunda parte -----

% Pregunta 1


% Pregunta 2
arreglo = input("Ingrese un arreglo (entre corchetes y separado por espacios) para calcular su desviación estándar: ");
%arreglo = num2str(arregloStr);

sumatoria = 0;
promedio = 0;
for elemento = 1:length(arreglo)
    promedio = promedio + arreglo(elemento);
end
promedio = promedio/length(arreglo);

for elemento = 1:length(arreglo)
    sumatoria = sumatoria + (arreglo(elemento) - promedio)^2;
end

std = sqrt((sumatoria)/length(arreglo));
disp("La desviacióne estándar del arreglo ingresado es: " + string(std));

