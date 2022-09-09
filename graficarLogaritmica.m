function graficarLogaritmica(funcion, limites, titulo, ejeX, ejeY)
    semilogy (limites, funcion);
    title (titulo);
    ylabel (ejeY);
    xlabel (ejeX);
    grid on %Muestra el grafico con grilla
end
