# USAGE
## Creación de entorno
```sql
create table datos(
    codigo numeric(2),
    nombre char(1)
);
insert into datos (codigo, nombre) values (1,’A’);
insert into datos (codigo, nombre) values (2,’B’);
insert into datos (codigo, nombre) values (3,’C’);
insert into datos (codigo, nombre) values (4,’D’);
insert into datos (codigo, nombre) values (5,’E’);
insert into datos (codigo, nombre) values (6,’F’);
insert into datos (codigo, nombre) values (7,’G’);
insert into datos (codigo, nombre) values (8,’H’);
insert into datos (codigo, nombre) values (9,’J’);
insert into datos (codigo, nombre) values (10,’K’);
```
## Paso 1
```sql
update datos set nombre = ’X’ where codigo = 5;
update datos set nombre = ’Y’ where codigo = 5;
```
*Esta consulta se aplica en ambas consolas*
```sql
select datos.nombre from datos where datos.codigo = 5;
```
## Paso 2
```sql
begin;
update datos set nombre = ’W’ where codigo = 3;
select nombre from datos where codigo = 3;
```
```sql
begin;
select nombre from datos where codigo = 3;
```
*Ya realizadas, se procede a cerrar la transacción de la C1.*
```sql
commit;
```
*En la segunda consola se vuelve a consultar el NOMBRE y posterior se cierra la transacción con COMMIT*
```sql
select nombre from datos where codigo = 3;
commit;
```
## Paso 3
