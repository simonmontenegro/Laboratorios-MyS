%se crea la función mab solicitada que recibe las matrices A, B, C y D y
%que retorna la función de transferencia
function h = mab(A,B,C,D)
%se inicializa la matriz identidad necesaria
I = [1 0;0 1];
%se define s para definir la función de transferencia
s = tf("s");
%se hace uso de la formula para calcular la función de transferencia
h = C*((s*I-A)^-1) * B + D;
end