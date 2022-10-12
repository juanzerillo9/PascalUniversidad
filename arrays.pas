program arrays;
 // Arrays
(*

Const
     MaxElem=50;

Type
    TArray = array [1..MaxElem] of byte;

    NOMBRE         INDICE    TIPO

Var
   A:TArray;




ARRAY LLEVA UN CONTADOR : N
N ES INDICE DE LONGITUD DEL ARRAY



*)

Type
    TArray = array [1..5] of byte;

    NOMBRE         INDICE    TIPO

Var
   A:TArray;

procedure Carga(var A:TArray, var N:Byte);
var
   arch:text;

begin
    N:=0;
    assign(arch, 'Datos.txt');
    reset(arch);

    while not eof(arch) do
          begin
            N:=N+1;
            readln(arch, A[N]);
          end;

end;


procedure Escribe(A:TArray, N:byte);
var
   i:byte;
begin
    for i:=1 to N do
        writeln(A[i]);
end;

procedure Genera(A:TArray; N;byte;, var B:TArray; var M:byte, X:=byte);
var
   i:byte;
begin
    M:=0;
    for i:=1 to N do
        if A[i] mod x = 0  then
           begin
                m:=m+1;
                B[M]:=A[i];
           end;
end;

begin

  carga(a, n);
  escribe(a, n);
  repeat
    writeln('Ingresar parametro de filtro X ');
    readlnln(x);
  until num <> 0;
  Genera(a, n, x);
  escribe(b, m);


end.




