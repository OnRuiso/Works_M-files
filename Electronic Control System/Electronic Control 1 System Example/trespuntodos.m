disp("Funcion de Tranferencia")

syms s k T

X = ( 10 ) / ( (s)*( s + 4 ) );
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

disp("Funcion de Tranferencia Impulso")

numerador = [0 10];
denominador1 = [1 0];
denominador2 = [1 4];
den = conv(denominador1,denominador2)
unitario = [1 zeros(1,20)];
k=0:20;
y = filter(numerador,den,unitario);
stem(k,y)
title("Funcion de Tranferencia impulso")

disp("Funcion de Tranferencia Impulso")

syms s k T

G = ( (10) / ( (s)*( s + 4 ) ) );
pretty(G)
g = ilaplace(G);
pretty(g)
gkT = compose(g,k*T);
pretty(gkT)
Gz = ztrans(gkT);
pretty(Gz)

disp('Con retenedor de orden cero')

numerador = [0 10];
denominador1 = [1 0];
denominador2 = [1 4];
N=Numerador;
D=Denominador;

[ND,DD]=c2dm(N,D,1,'zoh');
printsys(ND,DD,'z')

%%
