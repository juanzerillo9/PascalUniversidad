program project2;
var
   velocidad, kilometros, horas, litros, consumo:real;
begin
  write('Ingresar por teclado la distancia (en kilómetros), el tiempo (en horas) y la cantidad de gasoil empleado:');
  readln(kilometros, horas, litros);
  velocidad:=kilometros/horas;
  consumo:= litros / kilometros;
  writeln('La velocidad es: ', velocidad:8:2);
  writeln('El consumo fue de: ', consumo:8:2);
  readln();

end.

