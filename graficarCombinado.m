function graficarCombinado(funcion1, funcion2, limites, titulo, ejeX, ejeY, formato1, formato2)
    plot(limites, funcion1, formato1, 'DisplayName','Funcion a(x)');
    title (titulo);
    ylabel (ejeY);
    xlabel (ejeX);

    hold on

    plot(limites, funcion2, formato2, 'DisplayName','Funcion b(x)');

    hold off

    lgd = legend;
    lgd.NumColumns = 1;
end
