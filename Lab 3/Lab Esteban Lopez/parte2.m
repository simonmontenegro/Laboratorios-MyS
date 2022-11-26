close all;

% Las matrices obtenidas desde el desarrollo algebraico
A = [-15 10; 5 -7.5];
B = [0.5;0.25];
C = [10 0; 0 10];
D = [0;0];
% Construimos el modelo
M = ss(A,B,C,D);

% Definición de la función u(t) según el enunciado
t = linspace(0, 12*pi, 5000);
u = 100*sin(t/4);
u(u<0) = 0.;

% Grafico resultante
p_i = impulse(M,t);
p_s = step(M,t);
p_u = lsim(M, u, t);

figure
hold on
plot(t,p_i(:,1))
hold on
plot(t,p_i(:,2))
hold on
plot(t,p_s(:,1))
hold on
plot(t,p_s(:,2))
hold on
plot(t,p_u(:,1))
hold on
plot(t,p_u(:,2))
ylabel('Amplitud')
xlabel('Segundos')
legend('Respuesta a un impulso(y1)','Respuesta a un impulso(y2)','Respuesta a un escalón(y1)','Respuesta a un escalón(y2)','Respuesta a u(t) (y1)','Respuesta a u(t) (y2)')

