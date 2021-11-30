## Metodo Abierto de la Secante

function s = secanteModificada(x0,d,f,Es,maxiter)
  i = 1
  x = [x0-10:x0+10]
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
    
    disp("El valor de x0 es: "),disp(x0);
    disp("El valor de delta es: "),disp(d);
    disp("Delta*x0: "),disp(d*x0);
    disp("(Delta*x0)+(x0) = " ),disp((d*x0)+x0);
    disp("El valor de la funcion en x0 es: "),disp(f(x0));
    disp("El valor de la funcion en f((d*x0)+x0) es: "),disp(f((d*x0)+x0));
    disp("El valor del siguiente punto xi sera: "),disp(xi);

    xi = (x0) - ( (d*x0*f(x0))/(f(x0+(d*x0))-f(x0)) );
    disp("El valor siguiente xi es: "),disp(xi);
    
    if xi == 0
      break;
    endif
    
    if maxiter>=1
      Ea = abs( (xi-xaux)/(xi) )*100;
      disp("El error aproximado es: "), disp(Ea);
    endif
    
        
    if Ea<=Es
      i=maxiter+1;
      disp("Llego al error tolerado");
     else
      i = i+1;
      xaux=x0;
      x0=xi;
    endif
  endwhile
  
  disp("La mejor aprocimacion para la raiz fue: "),disp(xi);
  
endfunction
