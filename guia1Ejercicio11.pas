program guia1Ejercicio11;

// Eliminar elementos de un array


procedure Elimina(Var V:Tv; var N:Byte; pos:byte);
var
  i:byte;
begin
  for i:=pos+1 to n do
      begin
           v[i-1]:=v[i];
           n:=n-1;
      end;
end;

procedure Inserta()
var
  i:byte;
begin
end;


procedure insertaOrdenado(var v:tv; var N:byte; x:real);
var
  j:=byte;
begin
  j:=n;
  while (j>0) and (v[j]>x) do
        begin
             v[j+1]:=v[j]; j:=j-1;
        end;
  v[j+1]:=x;
  n:=n+1;
end;

procedure intercalacion(v1, v2, v3:tv; n,m:byte; var v3:tv; var k:byte);
var
  t,i,j:byte;
begin
  i:=1;
  j:=1;
  k:=0;

  while (i<=n) and (j<=m) do
        begin
             k:=k+1;
             if v1[i]<v2[j] then
                begin
                  v3[k]:= v1[i];
                  i:=i+1;
                end
             else
                 if v1[i]>v2[j] then
                    begin
                      v3[k]:= v2[j];
                      j:=i+1;
                    end
             else
                 begin
                      v3[k]:= v1[i];
                      i:=i+1;
                      j:=j+1;
                 end;
        end;

  for t:=i to n do
      begin
           k:=k+1;
           v3[k]:=v1[t];
      end;

  for t:=i to m do
      begin
           k:=k+1;
           v3[k]:=v2[t];
      end;

end;


type
  tv=array[1..50]of byte;

begin


end.

