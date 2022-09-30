program ej4;

function importe(tipo:char; monto:real):real;
begin
  case  tipo of
        'C': Importe:=monto*1.07;
        'D': Importe:=monto*1.05;
        'E': Importe:=monto*0.9;

  end;
end;

var
   monto:real;
   tipo:char;
   arch:text;
begin
  assign(arch, 'Pagos.txt');
  reset(arch);

  while not eof(arch) do
        begin
            readln(arch, tipo, monto);
            writeln('El monto es: ', importe(tipo, monto):8:2);
        end;
  close(arch);
  readln;
end.

