function [solucion] = newtonRaphson(f, iteracion, error, x0)
    imagen = polyval(f, x0);

    df = derivar(f);

    imagen_df = polyval(df, x0);

    x1 = x0 - imagen/imagen_df;

    nuevo_error = abs(x1 - x0);

    if(iteracion == 0 || nuevo_error < error)
        solucion = x1;
    else
        solucion = newtonRaphson(f, iteracion-1, error, x1);
    end

end