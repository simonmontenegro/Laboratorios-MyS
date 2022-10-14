function graficarNormal(funcion, limites, titulo, ejeX, ejeY)
    plot (limites, funcion);
    title (titulo);
    ylabel (ejeY);
    xlabel (ejeX);
    grid on %Muestra el grafico con grilla
end
