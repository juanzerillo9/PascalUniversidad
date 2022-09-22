program exercise;
(*14.-Leer las N ventas efectuadas por una farmacia Social. Por cada una se ingresa el monto y
un código indicador del rubro:
 L - venta libre
 M - medicamentos (23% de descuento)
 P - perfumería (promoción 10% de descuento).
 A - accesorios (promoción, si el monto supera $X corresponde un 5% de descuento)
Se pide informar:
- por cada venta el importe a pagar (con el descuento efectuado, si corresponde)
- Importe total bonificado en concepto de descuentos
- Total de operaciones e importe total en venta libre
- Monto de venta máximo y a que rubro pertenece*)

var
  arch:text;
  n, i, contOp: byte;
  x, importe, final, desc, descTotal, VentLibr,MaxVent: real;
  rubro, aux, MaxRubr: char;

begin
  assign(arch, 'Farmacia.txt');
  reset(arch);
  readln(arch, n);
  readln(arch, x);
  desc:=0;
  descTotal:=0;
  contOp:=0;
  VentLibr:=0;
  maxVent:=0;

for i:=1 to N do
  begin
      readln(arch, importe, aux, rubro);
      rubro:= upcase(rubro);

      case rubro of
          'L':
            begin
                 contOp:= contOp + 1;
                 final:=importe;
                 ventlibr:=VentLibr+final;
            end;
          'M':
            begin
                final:=importe*0.77;
                desc:=importe*0.23;
            end;

          'P':
            begin
                final:=importe*0.9;
                desc:=importe*0.1;
            end;

          'A':
            if importe>x then
               begin
                    final:=importe*0.95;
                    desc:=importe*0.05;
               end
            else
               final:=importe;
      end;


      writeln('El importe es:', importe:8:2, ' con el descuento queda', final:8:2, ' del rubro ', rubro );

      if desc<>0 then
         begin
         writeln('El descuento es de: ', desc:8:2);
         descTotal:= descTotal+desc;
         end;
      if maxVent<importe then
         begin
              maxVent:=importe;
              maxRubr:=rubro;
         end;

      final:=0;
      desc:=0;
end;
    writeln('Total en descuentos: ', descTotal:8:2);
    writeln('Total de Ventas en VL es: ', contOp);
    writeln('Total en VENTA LIBRE: ', VentLibr:8:2);
    writeln('Mayor monto: ', maxVent:8:2, ' y pertenece al rubro ', maxRubr);
    close(arch);
readln;
end.

