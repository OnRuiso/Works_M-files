## Metodo Abierto de la Secante

function s = secante(x0,x1,f,Es,maxiter)
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

    %disp("El valor va de  "+x0+" , "+x1);
    disp("El valor de la funcion en x0 es: "),disp(f(x0));
    disp("El valor de la funcion en x1 es: "),disp(f(x1));
    
    xi = x1 - ( (f(x1)*(x0-x1))/(f(x0)-f(x1)) );
    disp("El valor del siguiente punto xi sera: "),disp(xi);
    
    if xi == 0
      break;
    endif
    
    Ea = abs( (x1-x0)/(x1) )*100;
    disp("El error aproximado es: "), disp(Ea);
        
    if Ea<=Es
      i=maxiter+1;
      disp("Llego al error tolerado");
     else
      i = i+1;
      x0=x1;
      x1=xi
    endif
  endwhile
  
  disp("La mejor aprocimacion para la raiz fue: "),disp(xi);
  
endfunction
