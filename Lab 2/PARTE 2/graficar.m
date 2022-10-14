function graficar(nro_figura, FT, titulo, ejeX, ejeY)
    figure(nro_figura)
    step(FT)
    
    title(titulo)
    grid("on")
    xlabel(ejeX)
    ylabel(ejeY)
end