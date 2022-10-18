program Ejercicio9Guia6;
(*

ORDENACION DE VECTORES:

- Metodo de seleccion:
  -2 ; 2 ; 5 ; 4 ; 3 ; 8 ; 9 ; 15


  N VALE 8 -> FOR

  Ir buscando el mas chico a medida que avanza el programa.
  Selecciona el elemento menor de la derecha, o mayor si es orden descendente.


  EJERCICIO 9

  9.- Verificar si un arreglo de reales esta ordenado ascendentemente.


*)
type
  TArray=array[1..50]of real;
procedure Ordenar(var V:Tarray; n:byte);
var
  min, i, k:byte;
  aux:real;
begin
     for k:=1 to n-1 do
           begin
                i:=k;
                min:=k;
                for i:=k+1 to n do
                      begin
                           if v[i]<v[min] then
                              min:=i;

                           if min<>k then
                              begin
                                   aux:=v[k];
                                   v[k]:=v[min];
                                   v[min]:=aux;
                              end;

                      end;
           end;

end;
var
  v:tarray;
  n,i:byte;
begin
  writeln('Ingresar N: ');
  readln(n);

  for i:= 1 to n do
        begin
              writeln('Ingresar numero real: ');
              readln(v[i]);
        end;
  ordenar(v, n);
  writeln('Array ordenado: ');
  for i:=1 to n do

       write(v[i]:8:2, ' ');

  readln;


end.

