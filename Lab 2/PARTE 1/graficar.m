function graficar(nro_figura, FT, titulo, ejeX, ejeY)
    figure(nro_figura)
    step(FT)%se gráfica la respuesta función de transferencia a un escalón
    %se le añaden título, grilla y nombres a los ejes al gráfico
    title(titulo)
    grid("on")
    xlabel(ejeX)
    ylabel(ejeY)
end