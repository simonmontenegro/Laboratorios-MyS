function graficar(funcion, limites, titulo, ejeX, ejeY, formato)
    plot(limites, funcion, formato);
    title (titulo);
    ylabel (ejeY);
    xlabel (ejeX);
end
