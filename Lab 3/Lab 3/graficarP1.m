function graficarP1(titulo, xlab, ylab, f1, f2, leg1, leg2)
    title(titulo)                   %Titulo
    xlabel(xlab)                    %nombre eje x
    ylabel(ylab)                    %nombre eje y
    
    hold on                         %Mantiene ambas gráficas

    plot(step(f1),"b *")            %Grafica f1
    plot(step(f2),"r +")            %Grafica f2
    legend(leg1,leg2)               %Leyendas
    
    hold off        

end