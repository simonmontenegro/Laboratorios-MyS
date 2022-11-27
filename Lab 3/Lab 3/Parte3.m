%Se declaran las matrices obtenidas en la parte2
A = [-15 10;5 -7.5];
B = [0.5; 0.25];
C = [1 0;0 1];
D = 0;

%Se declaran los tiempos de muestro (enunciado)
T1 = 0.001;
T2 = 0.1;
T3 = 2;

%Se obtiene el modelo del sistema dadas las matrices A, B, C y D
M = ss(A, B, C, D);

%Se obtienen los modelos para cada tiempo de muestro para el tipo de
% discretización 'zero order hold'
MZ_1 = c2d(M , T1, "zoh");
MZ_2 = c2d(M , T2, "zoh");
MZ_3 = c2d(M , T3, "zoh");

%De manera análoga, se obtienen los modelos para cada tiempo de muestro
% para el tipo de discretización 'first order hold'
MF_1 = c2d(M , T1, "foh");
MF_2 = c2d(M , T2, "foh");
MF_3 = c2d(M , T3, "foh");

%Se grafican los resultados tal y como se especifica en lo solicitado
%Para 'zoh' ante una entrada de tipo escalon
graficarP3(1, "Zero order hold", "Tiempo (s)", "H (z)", step(MZ_1), ...
    step(MZ_2), step(MZ_3), "M1", "M2", "M3")

%Para 'foh' ante una entrada de tipo escalon
graficarP3(2, "Firts order hold", "Tiempo (s)", "H (z)", step(MF_1), ...
    step(MF_2), step(MF_3), "M1", "M2", "M3")

