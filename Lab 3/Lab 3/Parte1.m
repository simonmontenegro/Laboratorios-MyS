clear
clc

%Se define 's' como variable}
s = tf("s");

%Se declaran a, b, c, d, e y f con valor 1 para la experimentación
a = 1; b = 1; c = 1; d = 1; e = 1; f = 1;

%Se declara H1
H1 = a/(b*s-c);

%Se declara H2
H2 = d/(e*s-f);

%Se obtienen las matrices del modelo de estado a partir de
% la función bam.
[A,B,C,D] = bam(a,b,c,d,e,f);

%Se obtiene la función de transferencia del sistema a partir
% de la función mab
Hmab = mab(A, B, C, D);

%Se obtiene la función de transferencia del sistema a partir
% de la función de matlab feedback
Hfb = feedback(H1,H2);

%Se grafican ambas funciones para poder compararlas
graficarP1("Comparativa entre función de transferencia mab y feedback", ...
    "Tiempo (s)", "H(s)", Hmab, Hfb, "H(s) mab", "H(s) feedback")

