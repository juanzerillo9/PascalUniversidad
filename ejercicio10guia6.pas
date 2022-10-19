program ejercicio10guia6;

(*

10.- Ingresar un número real X y a continuación N números reales, luego evaluar si X se encuentra
entre los N números (no están ordenados).
Informar:
- Si lo encuentra:
 a. el mensaje "el número pertenece al conjunto"
 b. la cantidad de veces que figura
 c. los lugares que ocupa dentro del conjunto de números
- Si no lo encuentra el mensaje "el número no pertenece al conjunto".

*)

type
  tnums=array[1..50]of real;

procedure Buscador( V:tnums; N:byte; x:real; var busca:boolean; var contador:byte);
  Var
      i: byte;
  Begin

  busca:=false;
  contador:=0;
  for i:=1 to n do
      begin
           if v[i] = x then
              begin
                   contador:=contador+1;

                   if not busca then
                      busca:=true;

                   writeln('esta en la posicion ', i);
              end;
      end;
   end;

var
    v:tnums;
    n,contador, i:byte;
    x:real;
    busca:boolean;



begin
  writeln('Ingresar numero real X: ');

  readln(x);

  writeln('Ingresar N: ');

  readln(n);

  for i:=1 to n do
      begin
           writeln('Numero real: ');
           readln(v[i]);
      end;

  Buscador(v, n, x, busca, contador);

  if busca then
     begin
          writeln('el numero pertenece al conjunto');
          writeln('El numero aparece ', contador, ' veces');
     end;
  readln;

end.

