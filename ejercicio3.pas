program project1;
const
   previsional=0.89;
   cobertura=0.05;
var
  sueldo ,sueldobruto, sueldoparcial, sueldoparcial2:real;
begin


  writeln('Ingrese el sueldo a calcular: ');
  readln(sueldo);

  sueldoparcial:= sueldo * previsional;
  sueldoparcial2:= sueldo * cobertura;
  sueldobruto:= sueldoparcial - sueldoparcial2;

  writeln('Su sueldo bruto es: ', sueldobruto:8:2);
  readln;
end.

