function [derivada] = derivar(f)
    grado = length(f) - 1;

    derivada = [];

    for i = grado:-1:1
        derivada(length(f) - i) = f(length(f) - i)*grado;
        grado = grado - 1;
    end
end