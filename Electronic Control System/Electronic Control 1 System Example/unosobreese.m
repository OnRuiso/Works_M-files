
disp("Funcion de Tranferencia 1/s")

syms s k T

X = ( (1) / (s) );
x = ilaplace(X);
pretty(X)
pretty(x)
xkT = compose(x,k*T);
xz  = ztrans(xkT);
pretty(xz)

T=0;

ykT = compose(x,k*T);
yz  = ztrans(ykT);
pretty(yz)

disp("Funcion de Tranferencia Impulso 1/s")

numerador = [0 1];
denominador = [1 0];
unitario = [1 zeros(1,20)];
k=0:20;
y = filter(numerador,denominador,unitario);
stem(k,y)
title("Funcion de Tranferencia impulso 1/s")

disp("Funcion de Tranferencia Impulso 1/s")

syms s k T

G = ( (1) / (s) );
pretty(G)
g = ilaplace(G);
pretty(g)
gkT = compose(g,k*T);
pretty(gkT)
Gz = ztrans(gkT);
pretty(Gz)

disp('Con retenedor de orden cero')

numerador = [0 1];
denominador = [1 0];
N=Numerador;
D=Denominador;

[ND,DD]=c2dm(N,D,1,'zoh');
printsys(ND,DD,'z')
