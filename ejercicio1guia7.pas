program ejercicio1guia7;
(*

1. Ingresar una matriz de N x M de enteros resolver mediante procedimientos o funciones los siguientes
puntos y mostrar el resultado:
 a. Dado un número, calcular cuantas veces se repite (puede no estar).
 b. Indicar cuántos elementos son nulos, positivos y negativos.
 c. Intercambiar la fila K con la fila H (K y H menor o igual que N)


*)

type

  tm=array [1..50, 1..50]of integer;

procedure CargaMatriz(var mat:tm;var n, m:byte);
var
   i, j:byte;
begin
     writeln('Ingresar n: ');
     readln(n);
     writeln('Ingresar m: ');
     readln(m);

     for i:=1 to n do
           for j:=1 to m do
                 readln(mat[i, j]);
end;

procedure MuestraMatrix ();

var

begin

end;

function CuantasCoinciden(mat:tipomatriz; n,m:byte, valor:integer):byte;
  var
     cont ,i, j:byte;
  begin

       cont:=0;
       for i:=1 to n do
                for j to n do
                      if valor=mat[i, j] then
                         cont:=cont+1;
       cuantascoinciden:=cont;
  end;

procedure posneg(mat:tipomatriz; n,m:byte, var pos, neg, nul:byte);
var
   i,j:byte;
begin
     pos:=0;
     neg:=0;
     nul:=0;
     for i:=1 to n do
           for j:=1 to j do
                   if mat[i,j]>0 then
                      pos:=pos+1
                   else
                     if mat[i,j]<0 then
                        neg:=neg+1
                   else
                     nul:=nul+1;
end;


procedure Switch(var mat:tm; m, h,k:byte);
var
   j:byte;
   aux:integer;
begin
     for j:=1 to m do
           begin
             aux:=mat[h,j];
             mat[h, j]:=mat[k,j];
             mat[k, j]:=aux;
           end;

end;

var
   n,m,h,k,pos,neg,nul:byte;
   valor:integer;
   mat:tm;

begin
   cargamatriz(mat, n, m);

   writeln('Ingrese un valor: ');
   readln(valor);

   writeln('la cantidad de veces que aparece es: ', CuantasCoinciden(mat,n,m, valor));

   posneg(mat, n, m, pos, neg, nul);
   writeln('La cantidad de pos es: ', pos);
   writeln('La cantidad de neg es: ', neg);
   writeln('La cantidad de nul es: ', nul);





