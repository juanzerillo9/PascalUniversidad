program Ejercicio14guia6;
 (*
 14.- Ingresar un conjunto de números ordenados almacenando en un arreglo los números sin
repetición
 *)
type
  vt=array[1..50]of integer;

Procedure cargaVector(var v:vt;var n:byte);
var
   x:integer;
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

procedure MuestraVector(v:vt; n:byte);
var
   i:byte;
begin
   for i:=1 to n do
            write(v[i], ' ');
end;

procedure Burbujeo (Var V:vt; N:Byte);
var
  aux:integer;
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

function EncuentraRepetidos(var v:vt; var n:byte):byte;
var
  i:byte;
begin
  EncuentraRepetidos:=0;
  for i:=1 to n-1 do
      begin
           if v[i]=v[i+1] then
              EncuentraRepetidos:=i;
      end;
end;

Procedure Elimina ( Var V: vt; Var N : Byte; Pos:Byte);
Var
 i: Byte;
Begin
 For i:= Pos to N-1 do
     V[ i ] := V[ i+1 ];
 N:=N-1;
End;

var
   n:byte;
   v:vt;
begin
  cargaVector (v , n);
  MuestraVector(v, n);
  writeln(' ');

  burbujeo(v, n);

  repeat
        Elimina ( V, n, encuentraRepetidos(v,n));
  until EncuentraRepetidos(v,n)=0;

  MuestraVector (v, n);
  readln;

end.

