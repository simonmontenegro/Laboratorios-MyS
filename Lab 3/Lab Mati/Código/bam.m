%se crea la función mab solicitada que recibe los valores de a, b, c, d, e y f y
%que retorna las matrices A, B, C, y D
function [A, B, C, D] = bam(a,b,c,d,e,f)
%se definen las matrices A, B, C y D según los resultados obtenidos tras
%resolver el diagrama de bloques a mano.
A = [c/b -a/b;d/e f/e];
B = [a/b; 0];
C = [1 0];
D = 0;
end
