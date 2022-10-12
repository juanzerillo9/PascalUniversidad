program project1;

// Vectores paralelos

Type
  st25 = string[25];
  TVNom = array[1..50] of St25;
  TVEdad = array[1..50] of byte;
var
  VNom, Per: TVNom;
  VEdad: TVEdad;
  K,X,E1,E2,N,M:Byte;


procedure LeeParalelo(var VNom:TVNom; Var VEdad:TVEdad; var N:byte);
var
   i:byte;
begin
  readln(N);
  for i:=1 to N do
      begin
        readln(vnom[i]);
        readln(VEdad[i]);
      end;
end;

procedure Listado(VNom: TVNom; Vedad:TVEdad; N,X:Byte);
var
   i:byte
begin
  for i:=1 to N do
      if VEdad[i] > x then

end;

function Porcen(vedad:tvedad; n:byte):real;
var
   i, cont:byte;
begin
  cont:=0;
  for i:=1 to  N do
      if VEdad[i]>=21 then
         cont:=cont+1;

end;

begin
  LeeParalelo(VNom, Vedad, N);
  Writeln('Ingresar edad minima para listado de nombres'); Readln(X);
  Listado(Vnom, Vedad, N, X);
  writeln('El porcentaje de personas mayores de dead es: ', porcen(Verdad, N));
  writeln('Ingrese intervalo')

end.

