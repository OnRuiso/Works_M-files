numerador=[1 -0.4 0];
denominador=[1 -1.1 0.3];
u=[1 zeros(1,6)];

k=0:6;
funcion = filter(numerador,denominador,u);
%pretty(funcion)

stem(k,funcion)
title('Tranformada Z')
xlabel('valores de K')
ylabel('Y(k)')

syms z T

Xz = ( (z)*(z-0.4) ) / ( (z-0.5)*(z-0.6) );
pretty(Xz)

limit(Xz,z,0)
limit(Xz,z,1)
limit(Xz,z,2)
limit(Xz,z,3)
limit(Xz,z,4)
limit(Xz,z,5)
limit(Xz,z,6)
