close all;
[a,b,c,d,e,f] = deal(1,4,1,5,2,4);



[A,B,C,D] = bam(a,b,c,d,e,f);
figure
step(mab(A,B,C,D))
hold on
step(test(a,b,c,d,e,f))
legend('manual','nativa')

% Utilizando el desarrollo algebraico se puede utilizar para obtener las
% matrices del modelo de estados
function [A,B,C,D] = bam(a,b,c,d,e,f)
    A = [0 1; -1*(a*d+c*f)/(b*e) (b*f+c*e)/(b*e)];
    B = [0; 1];
    C = [-1*(a*f)/(b*e) a/b];
    D = [0];
end

% Luego la función de transferencia puede ser obtenida utilizando
% H = C*(sI-A)^-1*B-D
function H = mab(A,B,C,D)
    syms s
    H = C*inv(s*eye(2)-A)*B-D;
    % transformación de sym a tf
    [num,den] = numden(H);
    H = tf(sym2poly(num),sym2poly(den));
end

% Función de prueba utilizando feedback para comprobar resultado
function H = test(a,b,c,d,e,f)
    s = tf("s");
    H1 = a/(b*s-c);
    H2 = d/(e*s-f);
    H = feedback(H1,H2, -1);
end


% Se puede utilizar las funciones nativas de Matlab para
% realizar el mismo ejercicio
function [A,B,C,D] = bam2(a,b,c,d,e,f)
    s = tf("s");
    H1 = a/(b*s-c);
    H2 = d/(e*s-f);
    [num,den] = tfdata(feedback(H1,H2, -1),'v');
    [A,B,C,D] = tf2ss(num,den);
end


function H = mab2(A,B,C,D)
    [b,a] = ss2tf(A,B,C,D);
    H = tf(b,a);
end
