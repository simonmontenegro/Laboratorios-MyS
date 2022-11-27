function graficarP3(fig, titulo, xlab, ylab, f1, f2, f3, leg1, leg2, leg3)
    figure(fig)                             %Nombre figura

    title(titulo)                           %Titulo
    xlabel(xlab)                            %nombre eje x
    ylabel(ylab)                            %nombre eje y
    
    hold on                                 %Mantiene ambas gráficas

    plot(f1)                                %Grafica f1
    plot(f2)                                %Grafica f2
    plot(f3)                                %Grafica f3
    legend(leg1,leg2,leg3)                  %Leyendas
    
    hold off        

end