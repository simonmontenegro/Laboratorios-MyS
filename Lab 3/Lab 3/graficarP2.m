function graficarP2(titulo, xlab, ylab, f1, f2, f3, leg1, leg2, leg3, leg4, leg5, leg6)
    title(titulo)                           %Titulo
    xlabel(xlab)                            %nombre eje x
    ylabel(ylab)                            %nombre eje y
    
    hold on                                 %Mantiene ambas gráficas

    plot(f1, "b +")                         %Grafica f1
    plot(f2, "r -")                         %Grafica f2
    plot(f3, "g *")                         %Grafica f3
    legend(leg1,leg2,leg3,leg4,leg5,leg6)   %Leyendas
    
    hold off        

end