function grafica = SistemaENL()
  x=[-10:0.1:10];
  y = sqrt(25-x.^2);
  y2 = 5-x;
  
  figure;
  hold on;
  grid;
  p1 = plot(x,y,x,-y);
  p2 = plot(x,y2);
  p3 = plot(x,x*0);
  xlabel("Eje X");
  ylabel("Eje Y");
  set(p1,'Color','red','LineWidth',2)
  set(p2,'Color','green','LineWidth',2) 
  set(p3,'Color','blue','LineWidth',1)
  hold off;
  endfunction