syms z T k s
%t =0:20;
%T=0.1;

Ichi = k
Ni = ( (z) / (z - 1) );
San = ( (z) / ((z) - (exp(-T))) );
Shi = ( (z) / ( (z) - (exp(-(T)*(4)))) ) ;
Go = ( ( z - 1 ) / (z) );

pretty(Ichi)
pretty(Ni)
pretty(San)
pretty(Shi)
pretty(Go)

primus = ( ( 1 / 3 )*( Ni ) );
secundus = ( ( 1 / 4 )*( San ) );
tertium = ( ( 2 / 25 )*( Shi ) );

pretty(primus)
pretty(secundus)
pretty(tertium)

prima = ( (primus) - (secundus) + (tertium) );

pretty(prima)

prvyy = ( (prima)*(Go) );
pretty(prvyy)

unue = ( (prvyy)*(Ichi) );
pretty(unue)





