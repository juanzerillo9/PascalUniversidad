program almacen;
(*

Se t


*)

type
    tprecio=array[1..10]of real;
    tcant=array[1..10]of word;
    tprod=array[1..10]of string[7];

procedure cargaVector(var prod:tprod; var cantidad:tcant; var precio:tprecio; var n:byte);
var
  arch:text;

begin
     assign(arch, 'productos.txt');
     reset(arch);
     n:=0;
     while not eof(arch) do
           begin
             n:=n+1;
             readln(arch, prod[n], cantidad[n], precio[n]);

           end;
     close(arch);
end;

function encuentra(precio:tprecio; n:byte; x:real):byte;
var
   j:byte;
begin
     j:=1;
     while (j<=n) and (precio[j]<>x) do
            j:=j+1;
     if j<=n then
        encuentra:=j
     else
        encuentra:=0;

end;

var
  cantidad:tcant;
  precio:tprecio;
  prod:tprod;
  n, pos:byte;
  x:real;
begin
  cargaVector(prod, cantidad, precio, n);

  writeln('precio que busca: ');
  readln(x);

  pos:=encuentra(precio, n, x);
  if pos<>0 then
     begin
            writeln('El objeto que busca es: ', prod[pos]);
            writeln('El total recaudado es de: ', precio[pos]*cantidad[pos]:8:2);
     end
   else
      writeln('mmm no');


  readln;
end.

