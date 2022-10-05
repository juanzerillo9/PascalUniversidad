program guia5ej5;

procedure Suma(n1,d1,n2,d2:integer; var ns, ds:integer);
begin
  ds:=d1*d2;
  ns:=(n1*d2)+(n2*d1);
end;
var
  n1, n2, d1, d2, ns, ds:integer;
begin
  repeat
        writeln('Ingrese numerador 1: ');
        readln(n1);
  until n1<>0;
  repeat
        writeln('Ingrese denominador 1: ');
        readln(d1);
  until d1<>0;
  repeat
        writeln('Ingrese numerador 2: ');
        readln(n2);
  until n2<>0;
  repeat
        writeln('Ingrese denominador 2: ');
        readln(d2);
  until d2<>0;

  Suma(n1, d1, n2, d2, ns, ds);

  writeln('La suma de las fracciones es: ');
  writeln(' ');
  writeln(' ',ns);
  writeln('----');
  writeln(' ',ds);
  readln;


end.

