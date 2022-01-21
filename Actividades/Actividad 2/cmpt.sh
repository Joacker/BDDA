#Creacion de la tabla temporal, para los ruts que se han de ingresar.
2 create temporary table ruts (rut numeric(10));
3 #Se copian los valores del archivo 10mil a la tabla temporal
4 #creada anteriormente.
5 copy ruts from ’/home/joaquin/BDDA/BDDA2/diezmil’;
6 #Por ultimo se recuperan los valores que han de corresponder
7 #con respecto a PERSONAS1
8 \copy (select personas1.direccion from personas1, ruts
9 where personas1.rut = ruts.rut) to ’/tmp/savep1.txt’;