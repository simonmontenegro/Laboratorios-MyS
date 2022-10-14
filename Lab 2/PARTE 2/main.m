clear
clc

%Se define el parametro S
s = tf('s');

%Se define como funcion racional todas las funciones de transferencia
H1 = (4*s)/(10*s^2 + 4);
H2 = 3/(6*s + 16);
H3 = (4*s + 10)/(4*s^3 + 9*s^2 + 5*s);
H4 = 1/(7*s + 10);
H5 = (8*s + 8)/(s^3 + 2*s^2 + 3*s);
H6 = (3*s + 2)/(5*s^2 + 7*s + 10);

%Se identifica el lazo de retroalimentacion
feedbackH3 = feedback(H3,+1);

%Se conecta en serie H4 y H5 con el lazo encontrado
Fb3H4 = feedbackH3 * H4;
Fb3H5 = feedbackH3 * H5;

%Se suma lo anterior
suma_Fb3H4_Fb3H5 = Fb3H4 + Fb3H5;

%Se conecta en serie lo anterior con H6
serieH6 = suma_Fb3H4_Fb3H5 * H6;

%Se suma H1, H2 y serieH6
H = H1 + H2 + serieH6;

%Resultado H
display(H)

%Se grafica la respuesta de H (funcion de transferencia del sistema) a un
%escalon
graficar(1, H, "Respuesta del sistema a un escalon", "Tiempo [s]", "H(s)")
