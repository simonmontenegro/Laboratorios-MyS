%estas 2 instrucciones son para limpiar el workspace y la consola
%respectivamente.
clear
clc
%parte 1
%1
s = tf('s');%se crea el modelo para las funciones de transferencia
%se crea la primera función de transferencia obtenida
H1 = (4*s)/(3*s + 1);
%Lazo abierto
H1_Abierto = H1;
%Lazo cerrado
H1_Cerrado = feedback(H1,1);%retroalimentación de H1
%se crea la figura del gráfico de la respuesta de lazo abierto a un escalón a H1
figure(1)
step(H1_Abierto)%se gráfica la respuesta función de transferencia a un escalón
%se le añaden título, grilla y nombres a los ejes al gráfico
title("Gráfica de la respuesta de lazo abierto a un escalón a H1")
grid("on")
xlabel("Tiempo")
ylabel("H1(s)")
%se crea la figura del gráfico de la respuesta de lazo cerrado a un escalón a H1
figure(2)
step(H1_Cerrado)%se gráfica la respuesta función de transferencia a un escalón
%se le añaden título, grilla y nombres a los ejes al gráfico
title("Gráfica de la respuesta de lazo cerrado a un escalón a H1")
grid("on")
xlabel("Tiempo")
ylabel("H1(s)")

%se calculan los polos y ceros de ambas respuestas
cero_H1_Abierto = zero(H1_Abierto);
polo_H1_Abierto = pole(H1_Abierto);

cero_H1_Cerrado = zero(H1_Cerrado);
polo_H1_Cerrado = pole(H1_Cerrado);

%2
%se crea la segunda función de transferencia obtenida
H2 = (5*s^2 + 7*s + 1)/(s^2 + 6*s + 3);
%Lazo abierto
H2_Abierto = H2;
%Lazo cerrado
H2_Cerrado = feedback(H2,1);%retroalimentación de H2
%se crea la figura del gráfico de la respuesta de lazo abierto a un escalón a H2
figure(3)
step(H2_Abierto)%se gráfica la respuesta función de transferencia a un escalón
%se le añaden título, grilla y nombres a los ejes al gráfico
title("Gráfica de la respuesta de lazo abierto a un escalón a H2")
grid("on")
xlabel("Tiempo")
ylabel("H2(s)")
%se crea la figura del gráfico de la respuesta de lazo cerrado a un escalón a H2
figure(4)
step(H2_Cerrado)%se gráfica la respuesta función de transferencia a un escalón
%se le añaden título, grilla y nombres a los ejes al gráfico
title("Gráfica de la respuesta de lazo cerrado a un escalón a H2")
grid("on")
xlabel("Tiempo")
ylabel("H2(s)")

%se calculan los polos y ceros de ambas respuestas
cero_H2_Abierto = zero(H2_Abierto);
polo_H2_Abierto = pole(H2_Abierto);

cero_H2_Cerrado = zero(H2_Cerrado);
polo_H2_Cerrado = pole(H2_Cerrado);