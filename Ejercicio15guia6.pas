program Ejercicio15guia6;
(*
  15.- A partir de un arreglo A de reales desordenado, se pide generar otro arreglo B con los mismos
  elementos de A ordenados, utilizando el procedimiento InsertaOrdenado()

*)
type
  tv=array[1..50]of real;

Procedure cargaVector(var v:tv;var n:byte);
var
   x:real;
begin
  n:=1;
  writeln('Ingresar num: ');
  readln(v[n]);
  while v[n]<>0 do
        begin
             n:=n+1;
             writeln('Ingresar num: ');
             readln(v[n]);
        end;
  n:=n-1;
end;

procedure Burbujeo (Var V:tv; N:Byte);
var
  aux:real;
  i, tope, k:byte;
begin
  tope:=n;
  repeat
  k:=0;
  for i:=1 to tope-1 do
      begin
          if V[i] > v[i+1] then
             begin
                  aux:=v[i];
                  v[i]:= v[i+1];
                  v[i+1]:= aux;
                  k:=i;
             end;
          tope:=k;
      end;

  until k<=1;
end;


procedure MuestraVector(v:TV; n:byte);
var
   i:byte;
begin
   for i:=1 to n do
            write(v[i]:8:2, ' ');
   writeln(' ');
end;

var
 A, B:TV;
 n,m:byte;

begin
     cargaVector ( A , N );
     b:=a;
     burbujeo(b, n);
     MuestraVector(A, N);
     MuestraVector(B, n);
     readln;
end.

