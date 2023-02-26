program Registros;

Type

    st20 = strint[20];

    TFecha = Record
                  dia, mes:byte;
                  anio:word;
                  end;

    TregPer = Record
                  Nombre=st20;
    end;          Fecha=TFecha;



procedure CargaRegistro ( var reg:tiporegistro);
begin
  with reg do
  begin
    readln(dia);
    readln(mes);
    readln(anio);
  end;
end;



var
  reg:tiporegistro;
begin
  CargaRegistro(reg);
  with reg do
       begin
         writeln(dia);
         writeln(mes);
         writeln(anio);
       end;
  readln;

end.

