program project1;

// Un supermercado otorga puntos para canjear por premios, por las compras que realiza en
// tres rubros. Otorga 1punto cada $3 en alimentos,$2 en limpieza y $5 en otros. Ingresar los tres
// importes e informar los puntos obtenidos. (si en algún rubro no realizó compras, dicho importe es
// cero)

var
  gasto_alim, gasto_limp, gasto_otros: real;
  puntos_alim, puntos_limp, puntos_otros: integer;
begin
  write('Inserte cuanto gasto en alimentos, cuanto en limpieza y cuanto en otros: ');
  readln(gasto_alim, gasto_limp, gasto_otros);


  puntos_alim:= round(gasto_alim / 3);
  puntos_limp:= round(gasto_limp / 2);
  puntos_otros:= round(gasto_otros / 5);

  writeln('Sus puntos son en alimentos son ', puntos_alim, ' en limpieza tiene ', puntos_limp, ' puntos y en otros ', puntos_otros, ' puntos');
  readln;
end.

