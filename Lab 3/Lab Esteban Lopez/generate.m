%% Funcion Generate.m 
    % Grupo 2
    % Esteban Lopez
    % Alex Muñoz
    % Dennis Urrutia
    % Francisco Rousseau
    

%% Variables 
% N  variables a generar
% x es el vector de largo N con las variables
% m es la media de la muestra
% v la varianza  de la muestra

%% Funcion 
function [x,m,v] = generate(N)   
   %% Obtencion de la Funcion de Distribucion
    
    % La intetral de f1 es (1/4)*(x-2)^2
    F1 = @(x) (1/4)*(x-2).^2;
    
    % La integra de f2 es  -x^2/12 + x - 9/4
    % no obstante se le suma la integral entre 2 y 3 (cuyo valor es 1/4)
    % del tramo anterior para completar el area bajo la curva
    F2 = @(x) -1 * ( x.^2/12) +x -2; 
    
%% Obtencion de Variables Aleatorias Uniformes
    a = 2;
    b = 6;    
    x_in = (b-a).*rand(N,1) + a;
 
 %% Obtencion de las Variables Aleatorias
    x = [];
    for val = x_in
       if val >= 2 | val <= 3
            x = [x,F1(val)];
       elseif val >= 3 | val <= 6
           x= [x,F2(val)];
        end
    end
    
%% Calculo de la Media y Varianza
   m = mean(x);
   v = var(x);
end