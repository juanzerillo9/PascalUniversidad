program ej6guia5;
(*

5.- Leer de un archivo de texto sobre tres arreglos los datos de un conjunto de autos, por cada uno:
- Patente
- Año
- Precio
Se pide mediante un menú que permita la repetición de las opciones con diferentes valores,
calcular:
a. Para un año dado, precio mínimo (puede no existir)
b. Para un precio dado cantidad de vehículos por debajo de dicho valor
c. Para un rango de años dado [Año1, Año2] precio promedio de los autos en dicho rango (puede
no existir)

*)
type
    St25 = string[6];
    TPat = array[1..50] of St25;
    TAnios=array[1..50] of word;
    TPrecios=array[1..50] of real;

procedure Lectura(var Patentes:TPat; var anios:TAnios;var precios:TPrecios; var N:byte);
var
  arch:text;
begin
  assign(arch, 'Autos.txt');
  reset(arch);
  N:=0;
  while not eof(arch) do
        begin
          n:=n+1;
          readln(arch, Patentes[n], anios[n], precios[n]);
          writeln(Patentes[n],' ', anios[n], ' ' , precios[n]:8:2);
        end;
   close(arch);
end;

procedure Minimo(Anios:TAnios; precios:Tprecios; n:byte; valor:word; var minim:real);
var
  i:byte;
begin
  minim:=9999999;
  for i:=1 to n do
      begin
        if (Anios[i] = valor) and (precios[i] < minim) then
           minim:=precios[i];
      end;
  if minim =  9999999 then
     minim:= 0;
end;


procedure Debajo(precio:real; precios:Tprecios; var cantidad:byte; n:byte);
var
  i:byte;
begin
  cantidad := 0;
  for i:=1 to n do
      begin
        if precios[i] < precio then
           cantidad:=cantidad+1;
      end;
end;

procedure intervalo(a1,a2:real; anios:tanios; precios:Tprecios; var promedio:real; n:byte);
var
  i, dentro:byte;
begin
  promedio:=0;
  Dentro:=0;
  for i:=1 to n do
      begin
         if (anios[i]>=a1) and (anios[i]<=a2) then
            begin
                 promedio:=promedio+precios[i];
                 Dentro:=dentro+1;
            end;
      end;
  if dentro > 0 then
     promedio:=promedio/dentro;
end;

var
  Patentes:TPat;
  Anios: Tanios;
  Precios: Tprecios;
  N, cantidad:byte;
  valor, a1, a2:word;
  minim, precio, promedio:real;
begin
  Lectura(Patentes, Anios, Precios, N);


  writeln('Ingrese un anio para el minimo: ');
  readln(valor);
  Minimo(Anios, precios, n, valor, minim);
  writeln('El minimo es ', minim:8:2);


  writeln('Ingrese un precio para conocer el rango: ');
  readln(precio);
  Debajo(precio, precios, cantidad, n);
  writeln('Por debajo de ese precio hay ', cantidad, ' vehiculos.');


  writeln('Ingrese un anio inicial: ');
  readln(a1);
  writeln('Ingrese un anio final: ');
  readln(a2);
  intervalo(a1, a2, anios, precios, promedio, n);
  writeln('El promedio de los precios entre esos anios es de: ', promedio:8:2);

  readln;


end.
