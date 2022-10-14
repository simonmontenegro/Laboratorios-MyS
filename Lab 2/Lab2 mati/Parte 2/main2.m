%estas 2 instrucciones son para limpiar el workspace y la consola
%respectivamente.
clear
clc
%Parte 2
s = tf('s');%se crea el modelo para las funciones de transferencia
%se crean las 6 funciones de transferencia del diagrama de bloques
funcion_1 = (4*s)/(10*s^2 + 4);
funcion_2 = 3/(6*s + 16);
funcion_3 = (4*s + 10)/(4*s^3 + 9*s^2 + 5*s);
funcion_4 = 1/(7*s + 10);
funcion_5 = (8*s + 8)/(s^3 + 2*s^2 + 3*s);
funcion_6 = (3*s + 2)/(5*s^2 + 7*s + 10);
retroalimentacion = feedback(funcion_3,+1);%retroalimentación positiva de la parte inferior
feedback_funcion4 = retroalimentacion * funcion_4;%conexion en serie de retroalimentacion y funcion 4
feedback_funcion5 = retroalimentacion * funcion_5;%conexion en serie de retroalimentacion y funcion 5
%se aplica el sumador que está antes de la funcion 6
sumador1 = feedback_funcion4 + feedback_funcion5;
%luego el resultado se conecta en serie con la función 6
parte_inferior = sumador1 * funcion_6;
%finalmente se calcula el último sumador que conecta en paralelo el
%resultado anterior con las funciones 1 y 2
funcion_transferencia = funcion_1 + funcion_2 + parte_inferior;
step(funcion_transferencia)%se gráfica la respuesta función de transferencia a un escalón
%se le añaden título, grilla y nombres a los ejes al gráfico
title("Gráfico de la respuesta a un escalón")
grid("on")
xlabel("Tiempo")
ylabel("H(s)")


