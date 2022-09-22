program ejercicio14;
// 14.-Leer dos enteros, intercambiar el contenido de ambas variables y mostrarlas por pantalla.
var
  variable, variable2, variable3: integer;
begin
  writeln('Ingrese dos variables: ');
  readln(variable, variable2);
  writeln('Su variable 1 es: ', variable, ' y su variable 2 es: ', variable2);

  variable3:= variable;
  variable := variable2;
  variable2 := variable3;

  writeln('Ahora su variable 1 es: ', variable, ' y su variable 2 es: ', variable2);
  readln;
end.

