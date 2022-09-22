program ejercicio;
var
  x, y: real;

begin
  // 12.-Ingresar X e Y, representan ordenada y abscisa de un punto en el plano, determinar a qué
  // cuadrante pertenecen, si está sobre un eje o en el centro.

  writeln('Ingrese un X y un Y');
  readln(x, y);

  // X mayor Y mayor A 0
  if (x>0) and (y>0) then
     writeln('Arriba Derecha')
  else
      // X mayor Y menor A 0

      if (x>0) and (y<0) then
         writeln('Abajo Derecha')
      else
            // X mayor Y igual A 0

          if(x>0) and (y=0) then
             writeln('Al medio del lado Derecho')
          else
                // X menor Y mayor A 0

              if (x<0) and (y>0) then
                 writeln('Izquierda Arriba')
              else
                    // X menor Y menor A 0

                  if (x<0) and (y<0) then
                     writeln('Izquierda Abajo')
                  else
                        // X mayor Y igual A 0

                      if (x<0) and (y=0) then
                         writeln('Izquierda al Medio')
                      else
                            // X igual Y igual A 0

                          if y=0 then
                             writeln('Centro')
                          else
                                // X igual Y mayor A 0

                              if y>0 then
                                 writeln('Arriba al Medio')
                              else
                                    // X igual Y menor A 0

                                  if y<0 then
                                     writeln('Abajo al Medio');


  readln;

end.

