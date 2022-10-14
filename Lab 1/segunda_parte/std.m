function [resultado] = std(datos)
    sumatoria = 0;
    media = promedio(datos);
    
    for elemento = 1:length(datos)
        sumatoria = sumatoria + (datos(elemento) - media)^2;
    end
    
    resultado = sqrt((sumatoria)/length(datos));
end