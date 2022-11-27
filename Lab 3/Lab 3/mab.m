%Funcion que recibe recibe las matrices A, B, C y D
% y retorna la función de transferencia del sistema.
% algebraico)
function H = mab(A, B, C, D)
    %Se define 's' como variable
    s = tf("s");

    %Se declara la matriz identidad
    I = [1 0;0 1];

    %Se explicita la expresión para el cálculo genérico de la
    % función de transferencia
    H = C * ((s*I-A)^-1)*B + D;
end