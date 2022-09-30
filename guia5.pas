program guia5;
// parametros por valor y por referencia.
(*

- Leer pares de números enteros desde un archivo de texto y para cada uno de ellos verificar
mediante función booleana si el mayor de ellos es múltiplo del menor, además calcular e
imprimir el porcentaje de los pares que cumplen.

*)

function verifica(n1, n2:integer):boolean;
var
  aux:boolean;

begin
     if (n1 mod n2 =0) then
         aux:=True
     else
         aux:=false;

     verifica:=aux;
end;
var
  arch:text;
  checkeo:boolean;
  num1,num2:integer;
  contTotal,ContCumple:byte;
begin
  assign(arch, 'Pares.txt');
  reset(arch);

  while not eof(arch) do
        begin
          readln(arch, num1, num2);
          contTotal:=contTotal + 1;

          if num1>num2 then
              checkeo:=verifica(num1, num2)
          else
              checkeo:=verifica(num2, num1);

          if checkeo then
              contCumple:=contCumple+1;
        end;
  if(conttotal<>0) then
      writeln('El porcentaje que cumple es: ', contcumple/conttotal*100:8:2)
  else
      writeln('bro???');
  close(arch);
  readln;
end.

