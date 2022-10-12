program ejercicio3;
(*
Ingresar en un arreglo N números enteros, generar dos arreglos VPos y VNeg que contendrán
los números positivos y negativos respectivamente. Mostrar el más numeroso, ambos si la cantidad
de elementos coinciden
*)
type
  VT=array[1..50] of integer;

procedure Arreglo(arr:VT; N:byte);
var
  i:byte;
  num:integer;
begin
   for i:=1 to N do
       begin
         writeln('Ingrese un numero: ');
         readln(arr[i]);
       end;
end;

procedure Clasif( var VPos, VNeg:VT;  var m,g:byte; n:byte; Arr:VT);
var
  i:byte;
begin
   m:=0;
   g:=0;
   for i:=1 to n do;
       if arr[i] < 0 then
          begin
            m:=m+1;
            VNEG[m]:=arr[i];
          end
       else
           begin
              g:=g+1;
              Vpos[g]:=arr[i];
           end;

end;

function Numeroso(M,G:byte):string;
var
  mayor:string;
begin
    if M>G then
       mayor:='El mas numeroso es el conjunto NEGATIVO'
    else
       if m=g then
           mayor:='son iguales'
       else
           mayor:='El mas numeroso es el conjunto positivo';
    Numeroso:=mayor;

end;

var
  m, g, n:byte;
  Vpos, Vneg, arr:VT;
Begin
  writeln('Inserte cantidad de elementos del array: ');
  readln(n);
  arreglo(arr, n);
  Clasif(VPos,VNeg,m,g,n, Arr);
  writeln(numeroso(m,g));

  readln;
end.
