program matriz;
  (*

  MATRICES EN PASCAL:

  MINIMOS, MINIMOS EN FILA, CARGA DE MATRICES, LECTURA, IMPRESION, COINCIDENCIAS CON VECTORES

  *)
type
  TipoMatriz=array[1..50, 1..50]of integer;

function Minimo(v:tipoMatriz; n, m:byte):integer;
var
  i,j:byte;
  min:integer;
begin
  min:=v[1,1];
  for i:=1 to n do
        for j:=1 to m do
              if min>v[i,j] then
                 min:=v[i,j];;
  minimo:=min;
end;

procedure MuestraTabla(v:tipoMatriz; m:word);
var
  i, num:byte;
begin
  writeln('de que numero quiere la tabla: ');
  readln(num);
  for i:=1 to M do
      writeln(v[num, i]);
end;
procedure CargaMatriz(var matr:tipomatriz; n, m:byte);
var
    j, i:word;
begin
   for j:=1 to m do
         for i:=1 to n do
                  matr[i, j]:=i*j;
end;

procedure MuestraMatriz(matr:tipomatriz;n, m:byte);
var
   j, i:byte;
begin
        for i:=1 to n do
       begin
         for j:=1 to m do
             begin
                  write(matr[i, j], '    ');
             end;
         writeln;
       end;

end;

function minfila(mat:tipomatriz; n, m:byte; fila:byte):integer;
var
   i, j:byte;
   min:integer;
begin
  min:=mat[fla, 1];
  for i:=1 to m do
      if min>mat[fila, i] then
         min:=mat[fila, i];
  minfila:=min;
end;

function CuantasCoinciden(mat:tipomatriz; n,m:byte, vec:tv):byte;
var
   cont ,i, j:byte;
begin

     cont:=0;
     for i:=1 to n do
         begin
              j:=1;
              while (j<M) and (vec[j]=mat[i, j]) do
                    j:=j+1;
              if vec[j]=mat[i, j] then
                 cont:=cont+1;
         end;
     cuantascoinciden:=cont;
end;



var
  matr:TipoMatriz;
  n, m:byte;

begin
   CargaMatriz(matr, 10, 10);
   MuestraMatriz(matr, 10, 10);
   MuestraTabla(Matr, 10);

   writeln('El minimo de la matriz es: ', minimo(matr, n, m));
   readln;
end.

