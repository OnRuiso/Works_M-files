%% Taller de Clase
% Yoli Milena Cely Gomez
% Luis Felipe Narvaez Gomez

%% Ejercicio 3.2   

% Numeral (a)
syms s k T
disp('Ejercicio 3.2')
G = (1)/(s+2); % declaracion variable
pretty(G)

g=ilaplace(G); %
pretty(g)

gkT=compose(g,k*T);
pretty(gkT)

Gz=ztrans(gkT);
pretty(Gz)

Gz=subs(Gz,T,0.2);
Gz=vpa(simplify(Gz),3); % mostrar en decimales
pretty(Gz)

disp('Consola')

% Numeral (b)

disp('Ejercicio 3.2')
Gs = tf(1,[1 2]); % declaracion variable

T1=0.5;

GZ=c2d(Gs,T1,'zoh');

disp('Consola')

%% Ejercicio 3.3

num=[0 10];
den1=[1 0];
den2=[1 4];

den = conv(den1,den2)
[Var]=c2dm(num,den,0.2,'zoh')

%% Ejercicio 

%% numeral a

NUM=[0 1];
DEN=[1 2];

NUM1=[0 10];
DEN11=[1 0];
DEN12=[1 4];
DEN1=conv(DEN11,DEN12)

Numerador=conv(NUM,NUM1)
Denominador=conv(DEN,DEN1)

[Variable]=c2dm(Numerador,Denominador,0.2)

disp('consola')

%% numeral b

syms s k T z

G1 = ((1)/(s+2));
G2 = ( (10)/((s)*(s+4)) );

g1 = ilaplace(G1);
g2 = ilaplace(G2);

gK1 = compose(g1,k*T);
gK2 = compose(g2,k*T);

Gz1 = ztrans(gK1);
Gz2 = ztrans(gK2);

Gz1 = subs(Gz1,T,0.2);
Gz2 = subs(Gz2,T,0.2);

Gz1 = vpa(Gz1,3);
pretty(Gz1)
Gz2 = vpa(Gz2,3);
pretty(Gz2)

Geq= Gz1*Gz2;
pretty(vpa(Geq,3))

disp('consola')
