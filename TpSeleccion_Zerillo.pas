program TpSeleccion_Zerillo;

(*
    Alumno: Juan Cruz Zerillo Barella


    TP SELECCION - ENUNCIADO

    Una heladería realiza ventas los fines de semana, se pide calcular y mostrar el importe que debe
    pagar cada cliente.

    Los datos que se ingresan son:
    PESO: cantidad de kilos de helado a comprar (Real).
    TIPO: tipo de helado ‘A’:Agua, ‘L’:Leche, ‘C’:Crema (Carácter).

    El precio se calcula de acuerdo al tipo, cada Kg del tipo ‘A’ cuesta 2000 pesos, del tipo ‘L’
    cuesta 2300 pesos y del tipo ‘C’ cuesta 2500 pesos.

    Si el peso está entre 1.5 y 3 Kg se aplica un descuento del 5%, si el peso es mas de 3 hasta 5 Kg
    se aplica un descuento del 7% y si el peso es más de 5 Kg se aplica un descuento del 10% sobre
    el valor a pagar.

*)

//Asignacion de las variables:
var
  peso, descuento, precio:real;
  tipo:char;

begin
  // Imprimir en pantalla y pedir ingreso de datos,
  // Lo programo en distintas lineas para evitar que guarde un caracter vacio en la variable de tipo CHAR.

  writeln('Inserte Peso: ');

  readln(peso);

  writeln('Inserte Tipo de helado: Insertar A, L o C: ');

  readln(tipo);

  // Ya que el tipo de la variable 'tipo' es Char, utilizo un  case of para determinar el precio.

  case upcase(tipo) of
       'A':  precio:=2000;
       'L':  precio:=2300;
       'C':  precio:=2500;
  else
    writeln('No tenemos ese gusto!!!')
  end;



  // Condicion para saber el DESCUENTO que aplica, guardo el descuento en una variable 'descuento'
  // Guardo con un valor de 0.95, 0.93 o 0.9 para utilizar la variable directamente en la operacion final
  // Aclarar que el descuento = 1 en el else es para casos que no sean contemplados como todo aquel peso INFERIOR a 1.5.
  // El programa aun asi detecta numeros NEGATIVOS, para lo que aplico una solucion al final.

    if (peso>=1.5) and (peso<=3) then
       descuento:=0.95
    else
        if (peso>3) and (peso<=5) then
           descuento:=0.93
        else
            if peso>5 then
                descuento:=0.9
            else
                descuento:=1;


    // Sabiendo el peso, el precio y el descuento que se aplica, procedo a comprobar si es diferente a 0 la variable peso
    // ya que en el case agrege una condicion donde si no se cumple ninguna de mis 3 opciones, el precio no se define
    // y da un mensaje de error.

    // La solucion a los casos donde el peso sea negativo es dar vuelta el signo multiplicando por -1.

    // Para estos ultimos dos casos, opto por un IF secuencial, donde no necesariamente van a activarse.

   if peso<0 then
       peso := peso * -1;

   if precio<>0 then
      writeln((precio*peso)*descuento:8:2,' es el costo total!! ');

   readln;

end.

