%% Punto 17

%Para el sistema digital que se muestra en la Figura P13.6, donde 
%G1(s) = K / (s+1)(s+4) , encuentre el valor de K para obtener un exceso 
%de 16.3%. También , encuentre el rango de K para una planta estable.
%El periodo de muestreo es de 0.1s

numgz = [ 0.0431 0.00356];
dengz = poly([0.90484 0.6703]);

disp('G(z)')

Gz = tf(numgz,dengz,[])
rlocus(Gz)
zgrid(0,0)
title(['Plano Z'])
[k,p]=rlocfind(Gz)