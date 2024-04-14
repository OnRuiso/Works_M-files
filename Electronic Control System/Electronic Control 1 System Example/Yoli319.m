%% Punto 19

% Usando Matlab´s LTI Viewer determinar el tiempo pico y el tiempo de
% establecimiento de la respuesta transitoria del sistema a lazo cerrado de
% la figura P13.8


numgz = 0.13*[1 1];
dengz = poly([1 0.74]);
T = 0.1;
Gz=tf(numgz,dengz,T)
Gzpkz = zpk(Gz)
Tz=feedback(Gz,1)
ltiview