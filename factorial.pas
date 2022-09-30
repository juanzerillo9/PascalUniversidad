program factorial;
(*- Leer M números y para cada uno calcular e informar el factorial mediante una función
entera. Recordar:
 1 si n=0
 n! =
 n . (n-1)! si n>0 *)

function factorial(numero:integer):integer;
var
  aux:integer;
  i:byte;
begin
  aux:=1;
  if numero<>0 then
     begin
       for i:=1 to numero do
           begin
                aux:=(aux*i);
           end;
     end
  else
      aux:=0;
  factorial:=aux;

end;

var
  m, i:byte;
  funcion, num:integer;

begin
  writeln('Insertar M');
  readln(m);


  for i:=1 to m do
      begin
         writeln('Insertar numero');
         readln(num);

         funcion:=factorial(num);
         writeln(funcion);
      end;
  readln;
end.

