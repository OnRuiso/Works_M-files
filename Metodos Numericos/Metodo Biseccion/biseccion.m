# Metodo de la biseccion

function b=biseccion(f,maxiter,Es,xl,xu)
  # xl=-6.5;
  # xu=-4;
  if f(xl)*f(xu)<0
    i=1;
    while i<=maxiter
      disp("Iteracion: ");
      disp(i+1);
      xm = (xl+xu)/2;
      if f(xl)*f(xm)<0
        xu=xm;
      elseif f(xu)*f(xm) < 0
        xl=xm; 
      endif
      xm2=(xl+xu)/2;
      Ea = abs((xm2-xm)/xm2)*100;
      disp("El error aproximado es: "), disp(Ea);
      if Ea <= Es
        i=maxiter+1;
      else
        i = i+1;
      endif
            
    endwhile
    disp("La mejor aproximacion a la raiz es: "),disp(xm2);
  endif
endfunction

