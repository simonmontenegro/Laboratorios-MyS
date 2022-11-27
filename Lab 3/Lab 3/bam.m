%Funcion que recibe recibe a, b, c, d, e y f, y retorna las
% matrices A, B, C y D. (definidas en relación al desarrollo 
% algebraico)
function [A, B, C, D] = bam(a, b, c, d, e, f)
    A = [c/b -a/b;d/e f/e];

    B = [a/b; 0];

    C = [1 0];
    
    D = 0;
end