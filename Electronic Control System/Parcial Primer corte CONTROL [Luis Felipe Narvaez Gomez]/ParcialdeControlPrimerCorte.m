%% PARCIAL DE CONTROL PRIMER CORTE
%% Primer punto

%Paraa el sistema digital que se muestra en la figura, donde G1(s) =
%K/(s+1)(s+x) , encuentre el valor de k para obtener un 16.3% de sobrepaso.
%Tambien encuentre el intervalo de k para la estabilidad, sea T =0.1
%segundos.
%X es el ultimo digito de su codigo distinto de 0

T = 0.1; % Defino el periodp

num=[1]; %Formo el numerador

%Debido a que mi codigo es 3120905 , ssiendo el ultimo valor 5 , este 
%correspondera al valor de x, ed decir , x=5

den1=[1 1]; %Formo la primera parte del denominador
den2=[1 5]; %Formo a segunda parte del denominador

den= conv(den1,den2); 
%Hago la convolucion entre el denominador 1 y el denominador 2 para generar
%el denominador por completo en la funcion

% funcion de transferencia en tiempo continuo
disp('G(t)')
G1 = tf(num,den)
% funcion de tranferencia con el retenedor , ahora esta discretizado
disp('G(z)')
G2 = c2d(G1,T,'zoh')
Gz = tf(G2,[])
% Se procede a graficar en el plano Z
rlocus(Gz)
zgrid([],[])
title('Plano Z')
[k,p]=rlocfind(Gz)
pause

