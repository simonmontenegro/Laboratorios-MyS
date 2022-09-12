function [solucion] = newtonRaphson(f, iteracion, error, x0)
%Se evalua el valor inicial en el polinomio
    imagen = polyval(f, x0);    

%Se obtiene la derivada del polinomio
    df = derivar(f);

%Se evalua el valor inicial en la derivada del polinomio
    imagen_df = polyval(df, x0);

%Se calcula el nuevo valor (posible solucion)
    x1 = x0 - imagen/imagen_df;

%Se obtiene el error
    nuevo_error = abs(x1 - x0);

%Condiciones de borde
    if(iteracion == 0 || nuevo_error < error)
        solucion = x1;
    else
        %Recursion
        solucion = newtonRaphson(f, iteracion-1, error, x1);
    end

end