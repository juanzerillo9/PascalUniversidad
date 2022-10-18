program Algoritmo_de_burbujeo;



(*

Metodo de burbuja

SUBIR LOS MAYORES:



*)


procedure Burbujeo (Var V:TV; N:Byte);
var
  aux:real;
  i, tope, k:byte;
begin
  tope:=n;
  repeat
  k:=0;
  for i:=1 to tope-1 do
      begin
          if V[i] > v[i+1] then
             begin
                  aux:=v[i];
                  v[i]:= v[i+1];
                  v[i+1]:= aux;
                  k:=i;
             end;
          tope:=k;
      end;

  until k<=1;
end;

