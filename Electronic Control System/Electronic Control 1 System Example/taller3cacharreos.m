%% Funcion de Transferencia

% La funcion de transferencia de un sistema continuo relaciona las
% transdormadas de Laplace de la salida en tiempo continuo con la
% correspondiente entrada de tiempo continuo

syms s k T

X = ( 1 ) / ( s + 2 );
x = ilaplace(X);
pretty(X)
pretty(x)
xkT = compose(x,k*T);
xz  = ztrans(xkT);
pretty(xz)

T=0.2;

ykT = compose(x,k*T);
yz  = ztrans(ykT);
pretty(yz)

%% Funcion de transferencia pulso o impulso

% realaciona las tranformadas Z de la salida en los instantes de muestreo
% con la correspondiente entrada muestreada.

numerador = [0 1];
denominador = [1 2];
unitario = [1 zeros(1,20)];
k=0:20;
y = filter(numerador,denominador,unitario);
stem(k,y)
title("Funcion de Tranferencia impulso")

%% Funcion de Transferencia impulso 

syms s k T

G = ( (1) / ( s + 2 ) );
pretty(G)
g = ilaplace(G);
pretty(g)
gkT = compose(g,k*T);
pretty(gkT)
Gz = ztrans(gkT);
pretty(Gz)

%% Retenedor de orden cero

disp('Con retenedor de orden cero')

Numerador= [0 1];
Denominador= [1 2];
N=Numerador;
D=Denominador;

[ND,DD]=c2dm(N,D,1,'zoh');
printsys(ND,DD,'z')

