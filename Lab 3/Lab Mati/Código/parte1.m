%funciones que limpian la consola y el workspace
clear
clc
%se inicializan los valores a, b, c, d, e y f para probar las funciones
a=1;
b=1;
c=1;
d=1;
e=1;
f=1;
%se define s para definir la función de transferencia
s = tf("s");
%se define la caja h1 del diagrama de bloques
h1 = a/(b*s-c);
%se define la caja h2 del diagrama de bloques
h2 = d/(e*s-f);
%se calcula la función de transferencia usando la función feedback
h_feedback = feedback(h1,h2);
%se calculan las matrices del modelo de estado para luego calcular la
%función de transferencia
[A,B,C,D] = bam(a,b,c,d,e,f);
%se calcula la función de transferencia usando la función creada mab
h_mab = mab(A,B,C,D);

%se grafican los resultados usando mab y usando feedback
%se agrega título al gráfico
title("Comparación entre H(s) mab y H(s) feedback")
%se le agregan nombres a los ejes del gráfico
ylabel("H(s)")
xlabel("Tiempo(s)")
%se utiliza hold para graficar ambos gráficos en una sola ventana
hold on
%se grafica h(s) usando mab en color verde
plot(step(h_mab),"g *")
%se grafica h(s) usando feedback en color rojo
plot(step(h_feedback),"r +")
%se agrega la leyenda
legend("H(s) usando mab","H(s) usando feedback")
hold off


