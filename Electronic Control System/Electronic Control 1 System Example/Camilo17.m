%% Punto 17

%Para el sistema digital que se muestra en la Figura P13.6, donde 
%G1(s) = K / (s+1)(s+4) , encuentre el valor de K para obtener un exceso 
%de 16.3%. También , encuentre el rango de K para una planta estable.
%El periodo de muestreo es de 0.1s

T = 0.1;

num=[1];
den1=[1 1];
den2=[1 4];
den= conv(den1,den2);

disp('G(t)')

G1 = tf(num,den)

disp('G(z)')

G2 = c2d(G1,T,'zoh')
Gz = tf(G2,[])

rlocus(Gz)
zgrid([],[])
[k,p]=rlocfind(Gz)
pause
