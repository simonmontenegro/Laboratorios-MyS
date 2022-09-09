function [iteraciones, errores, raices, operaciones] = newtonraphson(f, df, x0, tol)
x = x0;
iters = 0;
iteraciones = [];
errores = [];
raices = [];
operaciones = 0;
iteracionesPermitidas = 7;
while (abs(f(x)) > tol && iters < iteracionesPermitidas)
    x = x - f(x)/df(x);
    iters = iters + 1;
    iteraciones = [iteraciones, iters];
    errores = [errores, abs(f(x))];
    raices = [raices, x];
    operaciones = operaciones + 8;
    
    if(iters > 10)
        if(var(errores(1, end-9:end)) == 0)
            break;
        end
    end
    
end

end