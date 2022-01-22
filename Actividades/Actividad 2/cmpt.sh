#Creacion de la tabla temporal, para los ruts que se han de ingresar.
create temporary table ruts (rut numeric(10));
#Se copian los valores del archivo 10mil a la tabla temporal
#creada anteriormente.
copy ruts from ’/home/joaquin/BDDA/BDDA2/diezmil’;
#Por ultimo se recuperan los valores que han de corresponder
#con respecto a PERSONAS1
\copy (select personas1.direccion from personas1, ruts where personas1.rut = ruts.rut) to ’/tmp/savep1.txt’;
