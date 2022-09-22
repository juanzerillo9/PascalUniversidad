program ej;
(*
15-En un entrenamiento de ciclismo cada participante, efectúa una vuelta a la pista y al
terminar la misma se registra el nombre (*** fin de datos), la velocidad máxima alcanzada y
sus pulsaciones.
Se pide desarrollar un programa Pascal que lea de teclado los datos mencionados, obtenga e
informe:
 La categoría de cada ciclista y su nivel de riesgo
 La cantidad de participantes en cada categoría
 El porcentaje de participantes cuyo de nivel de riesgo es 3
Calcule CATEGORIA y NIVEL DE RIESGO según las siguientes tablas:
Pulsaciones Nivel de Riesgo
hasta 120 1
Entre 121 y 160 2
Más de 160 3
Velocidad Máxima Categoría
Más de 50km/h A
Entre 40km/h y 49km/h B
Menos de 40km/h C
 Como modificaría el código si se pidiera además
a. Promedio de velocidades máximas
b. Cantidad de corredores de categoría A con nivel de riesgo 1
c. Informar categorías sin participantes
*) *)

var
  nombre:string;
  acVel,velMax:real;
  pulsac, riesg, partic, particA, particB, particC, CantCorrAy1:byte;
  categ:char;
begin
partic:=0;
acVel:=0;
particA:=0;
particB:=0;
particC:=0;
CantCorrAy1:=0;

writeln('Nombre del ciclista: ');
readln(nombre);
writeln('Velocidad maxima del ciclista: ');
readln(velmax);
writeln('pulsaciones del ciclista: ');
readln(pulsac);

while nombre<>'***' do
  begin
     partic:=partic+1;
     case pulsac of
     1-120:riesg:=1;
     121-160:riesg:=2;
     else
       riesg:=3
     end;

     if velMax>50 then
        begin
        categ:='A';
        acVel:=acVel+velMax;
        particA:=particA+1;
        end
     else
       if velmax>40 then
          begin
               categ:='B';
               acVel:=acVel+velMax;
               particB:=particB+1;
          end
       else
         begin
               categ:='C';
               acVel:=acVel+velMax;
               particC:=particC+1;
          end;

     writeln('El ciclista pertenece a la categoria ', categ, ' y su nivel de riesgo es ', riesg);

     if (categ='A') and (riesg=1) then
        CantCorrAy1:= CantCorrAy1+1;

    writeln('Nombre del ciclista: ');
    readln(nombre);
    writeln('Velocidad maxima del ciclista: ');
    readln(velmax);
    writeln('pulsaciones del ciclista: ');
    readln(pulsac);
  end;
writeln('El promedio de velocidad maxima es: ',(acVel/partic):8:2);

if particA=0 then
   writeln('La categoria A no tiene participanes.');
if particB=0 then
   writeln('La categoria B no tiene participanes.');
if particC=0 then
   writeln('La categoria C no tiene participanes.');

readln;
end.
