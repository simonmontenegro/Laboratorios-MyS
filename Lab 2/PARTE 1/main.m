clear
clc

%Primera ecuacion
%Se define el parametro S
s = tf('s');

%Se define como funcion racional la funcion de transferencia obtenida
H1 = (4*s)/(3*s + 1);

%Lazo abierto
H1_A = H1;

%Lazo cerrado
H1_C = feedback(H1,1);

%Se grafica la respuesta ante un escalon; lazo abierto
graficar(1, H1_A, "Gráfica del lazo abierto de H1 ante una entrada escalon.", "tiempo [s]", "H1")

%Se grafica la respuesta ante un escalon; lazo cerrado
graficar(2, H1_C, "Gráfica del lazo cerrado de H1 ante una entrada escalon.", "tiempo [s]", "H1")

%Se obtienen los ceros (y ganancia estática) y los polos para cada lazo
cero_H1_A = zero(H1_A);
polo_H1_A = pole(H1_A);

cero_H1_C = zero(H1_C);
polo_H1_C = pole(H1_C);

%################################################################################################
clear
clc

%Segunda ecuacion
%Se define el parametro S
s = tf('s');

%Se define como funcion racional la funcion de transferencia obtenida
H2 = (5*s^2 + 7*s + 1)/(s^2 + 6*s + 3);

%Lazo abierto
H2_A = H2;

%Lazo cerrado
H2_C = feedback(H2,1);

%Se grafica la respuesta ante un escalon; lazo abierto
graficar(1, H2_A, "Gráfica del lazo abierto de H2 ante una entrada escalon.", "tiempo [s]", "H2")

%Se grafica la respuesta ante un escalon; lazo cerrado
graficar(2, H2_C, "Gráfica del lazo cerrado de H2 ante una entrada escalon.", "tiempo [s]", "H2")

%Se obtienen los ceros (y ganancia estática) y los polos para cada lazo
cero_H2_A = zero(H2_A);
polo_H2_A = pole(H2_A);

cero_H2_C = zero(H2_C);
polo_H2_C = pole(H2_C);


