program practica_parcial;

type
  st5=string[4];
  tm=array[1..50, 1..7]of integer;
  tv=array[1..50]of st5;

procedure CargaDatos(var Vnom:tv; Var MKM:tm; var N:byte; var meta:integer);
var
  arch:text;
  j:byte;

begin
    assign(arch, 'corredores.txt' ); reset(arch);

    readln(arch, meta);

    n:=0;

    while not eof(arch) do
      begin
        n:=n+1;

        read(arch, vnom[n]);

        writeln(vnom[n]);

        for j:=1 to 7 do
            read(arch, mkm[n, j]);

         readln(arch);
      end;

    close(arch);

end;



procedure Pasan(vnom:tv; var pasaron:tv; mkm:tm; n:byte; var k:byte; meta:integer);
var
  i, j:byte;

begin
  k:=0;

  for i:=1 to n do
    begin
      j:=1;
      while (j<=7) and (mkm[i,j]<=meta) do
             j:=j+1;



      if (j<=7) then
         begin
           k:=k+1;
           pasaron[k]:=vnom[i];
         end;

    end;

end;

function CantDias(pos:byte; mkm:tm; meta:word):byte;
var
  j, pasa:byte;

begin
  pasa:=0;

  for j:=1 to 7 do

    if meta<mkm[pos, j] then
       pasa:=pasa+1;

  CantDias:=pasa;
end;

function posMax(Mat:Tm; n:byte):byte;

var

   i, j:byte;
   suman:word;
   max:word;

begin

  for i:=1 to n do

    begin

      for j:=1 to 7 do
        suman:= suman + mat[i,j];

      if suman > max then
         begin
              posMax:=i;
              max:=suman;
         end;

    end;
end;

var
   i, k, n, pos, dias:byte;
   meta:integer;
   pasaron, vnom:TV;
   mkm:tm;

begin
     CargaDatos(Vnom,MKM,N,meta);
     Pasan(vnom, pasaron, mkm, n, k, meta);

     for i:=1 to K do
       write(pasaron[i], ' ');
     writeln;

     pos:=posmax(mkm, n);
     dias:=CantDias(pos ,mkm,meta);

     if dias<>0 then
        writeln(' el corredor con promedio max es el : ', pos, ' y paso ', dias, ' la meta' )
     else
         writeln(' No paso ningun dia');


     readln;
end.

