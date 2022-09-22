program project;
(*

Ej 16.-En una competencia participan N deportistas que se identifican con su n° de Documento
y lanzan una JABALINA.
Una vez lanzada, se registra el documento y la Distancia del lanzamiento.
Se requiere:
a) Conocer el Documento del Ganador y su Distancia.
b) Conocer la Distancia Media de la prueba.

*)

var
  arch:text;
  n, i:byte;
  dist, distMax, distAcum:real;
  aux, docum, documMax:char;

begin

  assign(arch,'Farmacia.txt');

  reset(arch);

  readln(arch, n);

  readln(arch, docum);

  distMax:=0;

  distAcum:=0;

  for i:=1 to n do

        begin
          readln(arch,dist, aux, docum);

          if distMax<dist then

             begin

               distMax:=dist;

               documMax:=docum;

               distAcum:=distAcum+dist;
             end;

          writeln(dist:8:2, aux, docum);

        end;
  writeln('El documento ganador es ', documMax, ' con una distancia RECORD de ', (distMax):8:2 );
  writeln('El promedio total es ', (distAcum/n):8:2, ' para ', n, ' corredores.');

  readln;



end.

