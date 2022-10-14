program guia_pascal;

// GUIA DE PASCAL


//Este procedimiento lee CUALQUIER archivo:

procedure LECTURA();
var
  arch:text;
  cadena_texto:string;
begin
    // CON SOLO ESTAS DOS VARIABLES SE REALIZA LO SIGUIENTE:
  assign(arch, 'Nombre_De_Archivo.txt');
  reset(arch);

  while not eof(arch) do
        begin
             readln(arch, cadena_texto);
             writeln(cadena_texto);
        end;
  // Esto lee e imprime todo el archivo.


end;

// LUEGO DE LEER TODO, CLASIFICAR:

(*

Si los datos tienen esta forma:

------------------------------------------
********************
132 L CADENA DE TEXTO
********************

Primero identificamos los datos:

132: Es un INTEGER o un WORD, procedemos a leerlo como
read(arch, numero); NUMERO ES UNO DE ESOS DOS TIPOS


L: Es un CHAR, necesitamos dos variables: AUX y LETRA, ambas de tipo CHAR.
read(arch, aux, letra); Si el CHAR estuviese primero, no seria necesario.


CADENA DE TEXTO: Contiene espacios y mas de un caracter, por lo tanto es un string
readln(arch, cadena_de_texto);


------------------------------------------

SI EL ARCHIVO TRAE UN 'N':
N SIEMPRE ES BYTE!!!

readln(arch, N);
Este N es la cantidad de ALGUN DATO.
Servira para terminar un CICLO!

********************
for i:=1 to N do
    begin
    end;
********************

Con criterio ubicar ese ciclo donde corresponda.

-------------------------------------------

********************
3
UN DATO
a1
b2
c3
**
SEGUNDO DATO
a1
b2
c3
d4
**
TERCER DATO
a1
b2
**

********************

ANALISIS:
CONTIENE N, UBICAMOS CUAL ES EL N
En este caso, N es la cantidad de DATOS.

arrancamos nuestro programa luego del reset leyendo N
readln(arch, N);


Realizamos un bucle que recorra las N y dentro lea los datos:
for i:=1 to N do
    begin
       readln(arch, dato);
    end;

Esto SOLO LEE LOS PRIMEROS 3 DATOS!!!
Necesitamos un segundo bucle.

Lo que separa entre un N y el otro es una CONDICION DE CORTE,
Esta condicion puede ser un caracter o secuencia de caracteres especificos
(En este caso '**')
Si la condicion de corte fuese otro N, iria otro FOR.

Como nuestra condicion de corte es que nuetro DATO_INTERIOR valga ALGO EN ESPECIFICO

readln(arch, dato_interior);
// PRIMERO LEER EL DATO, SI NO JAMAS INGRESARA AL BUCLE

WHILE DATO_INTERIOR<>'**' DO
      begin
           // VOLVER A LEER EL DATO, PARA EVITAR BUCLES INFINITOS!
           readln(arch, dato_interior);
      end;


**************************************************************
Con esto es mas que suficiente para leer cualquier archivo y trabajar con el!
Dentro de el PROCEDIMIENTO de arriba esta el bucle inicial, con ese bucle se puede
probar si nuestra lectura del archivo es correcta, con todo el resto se puede
clasificar cada una de las variables y bucles del archivo.


*)

