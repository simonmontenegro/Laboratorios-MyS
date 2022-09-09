function [solucion] = newtonRaphson(f, x0, iteracion, error)
    imagen = polyeval(f, x0);

    df = derivar(f);

    imagen_df = polyeval(df, x0);

    x1 = x0 - imagen/imagen_df;

    nuevo_error = abs(x1-x0);

    if(iteracion <= 0 || nuevo_error < error)
        solucion = x1;
    end

    solucion = newtonRaphson(f, x1, iteracion, nuevo_error);
end