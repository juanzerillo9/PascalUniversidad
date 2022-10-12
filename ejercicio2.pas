program ejercicio2;

Type
  TV = array [1..50] of word;
procedure Carga(var vec:TV; var N:byte);
var
  arch:text;
begin
  n:=0;
  assign(arch, 'Naturales.txt');
  reset(arch);
  while not eof(arch) do
        begin
          n:=n+1;
          readln(arch, vec[n]);
        end;
  close(arch);
end;
procedure NulosParesInpares(var nulos,pares,impares:byte; n:byte; Vec:TV);
var
  i:byte;
begin
  nulos:=0;
  pares:=0;
  impares:=0;

  for i:=1 to N do
      begin
        if (vec[i] mod 2 = 0) and (vec[i]<> 0) then
           pares:=pares+1
        else
            if (vec[i] mod 2 <> 0) then
               impares:=impares+1
        else
            nulos:=nulos+1;
      end;
end;


procedure Multiplica(Vec:TV; N:byte; valor:word);
var
  i: byte;
begin
  i:=2;
  while i<=n do
        begin
          writeln('Posicion ', i , ' con valor ', vec[i]*valor);
          i:=i+2;
        end;
end;
function Maximo(Vec:TV; N:Byte):byte;
var
  i, posmax:byte;
  max:word;
begin
  max:=0;
  for i:=1 to n do
      begin
        if vec[i]>max then
           begin
              max:=vec[i];
              posmax:=i;
           end;
        maximo:=posmax;
      end;

end;

var
  vec: TV;
  n,nulos, pares, impares:byte;
  valor:word;

begin
  Carga(vec, n);
  NulosParesInpares(nulos,pares,impares, n,Vec);
  writeln('Cantidad de nulos es ', nulos, ' la cantidad de pares es ', pares, ' la cantidad de impares es ',impares);
  repeat
    writeln('Ingresar el valor a multiplicar');
    readln(valor);
  until valor<>0;
  Multiplica(vec, n , valor);
  writeln('La posicion del maximo es: ', maximo(vec, n));
  readln;
  end.

