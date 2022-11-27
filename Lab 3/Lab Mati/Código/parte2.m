%funciones que limpian la consola y el workspace
clc
clear
%se definen las matrices A, B, C y D según los resultados obtenidos tras
%resolver el modelo fenomenológico a mano.
A = [-15 10;5 -7.5];
B = [0.5; 0.25];
C = [1 0;0 1];
D = 0;
%se calcula la función de transferencia usando la función creada mab
H = mab(A,B,C,D);
%se define la entrada u(t) según pide el enunciado
t = linspace (0 , 12*pi , 5000);
u = 100* sin( t /4);
u (u <0) = 0.;

%se grafican las funciones de transferencia tras las 3 entradas propuestas,
%u(t), escalón e impulso
%se le asigna un título al gráfico
title("Comparación entre H(s) ante un escalón, H(s) ante u(t) y H(s) ante un impulso")
%se le agregan nombres a los ejes del gráfico
ylabel("H(s)")
xlabel("Tiempo(s)")
%se utiliza hold para graficar los 3 gráficos en una sola ventana
hold on
%h(s) ante u(t) en rojo
plot(lsim (H, u, t),"r +")
%h(s) ante un escalón en verde
plot(step(H),"g *")
%h(s) ante un impulso en azul
plot(impulse(H),"b -")
%se crea la leyenda
legend("H(s) ante u(t)","H(s) ante u(t)","H(s) ante escalón","H(s) ante escalón","H(s) ante impulso","H(s) ante impulso")
hold off