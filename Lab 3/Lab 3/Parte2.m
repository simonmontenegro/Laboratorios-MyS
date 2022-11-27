clc
clear

%Se explicitan las matrices obtenidas del desarrollo algebraico
A = [-15 10;5 -7.5];
B = [0.5;0.25];
C = [1 0;0 1];
D = [0;0];

%Se utiliza la función mab (Parte1) para obtener la función de
%transferencia del sistema
H = mab(A, B, C, D);

%Se declara la entrada u(t) (enunciado)
t = linspace (0 , 12*pi , 5000);
u = 100* sin( t /4);
u (u <0) = 0.;

%Se obtiene el comportamiento del sistema ante un escalon, impulso y u(t),
% respectivamente.
Ystep = step(H);
Yimpulse = impulse(H);
Ylsim = lsim(H, u, t);

%Se grafica lo anterior
graficarP2("Comparación de comportamiento de H(s) ante: escalón, impulso y u(t)", ...
    "Tiempo (s)", "H(s)", Ystep, Yimpulse, Ylsim, "Ante escalón", "Ante escalón", ...
    "Ante impulso", "Ante impulso", "Ante u(t)","Ante u(t)")