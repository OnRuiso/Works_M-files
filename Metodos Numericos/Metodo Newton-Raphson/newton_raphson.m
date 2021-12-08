## Metodo Abierto de Newton Raphson

function n_r = newton_raphson(x0,f,d,Es,maxiter)
  #maxiter = numero maximo de iteraciones
  #Es = error 
  #d = funcion deribada
  #f = funcion
  #X0 = punto de valor inicial
  
  i = 1
  x = [x0-5:x0+5]
  y=f(x)
  figure
  hold on;
    grid;
    p1=plot(x,y)
    p2=plot(x,x*0)
    xlabel("Eje x")
    ylabel("Eje y")
    set(p1,'Color','magenta','LineWidth',2)
    set(p2,'Color','cyan','LineWidth',1)
  hold off;
  
  while i<=maxiter
    disp("-----------------------------------------------------------");
    disp("Iteracion : "),disp(i);
    if d(x0)==0
      disp("La deribada es igual a cero");
      break;
    endif
    xi = x0 - (f(x0)/d(x0));
    Ea = abs( (xi-x0)/(xi) )+100;
    disp("El error aproximado es: "), disp(Ea);
    disp("El valor de la funcion es: "),disp(f(xi));
    disp("El valor de la deribada es: "),disp(d(xi));
    disp("El valor del punto es: "),disp(xi);
    if Ea<=Es
      i=maxiter+1;
      disp("Llego al error tolerado");
     else
      i = i+1;
      x0=xi;
    endif
  endwhile
  
  disp("La mejor aprocimacion para la raiz fue: "),disp(xi);
  
endfunction
