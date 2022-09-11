function [resultado] = promedio(datos)
    resultado = 0;
    for elemento = 1:length(datos)
        resultado = resultado + datos(elemento);
    end

    resultado = resultado/length(datos);
end