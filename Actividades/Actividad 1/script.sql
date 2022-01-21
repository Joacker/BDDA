CREATE DATABASE tablas;
create table personas1(
    rut numeric(10),
    nombre char(50),
    edad numeric(2),
    direccion char(100)
);
create table personas2(
    rut numeric(10) primary key,
    nombre char(50),
    edad numeric(2),
    direccion char(100)
);
-- Inserción para Personas1
copy personas1 from '/home/joaquin/BDDA/cincomilfixed.csv' delimiter ',';
-- Inserción para Personas2
copy personas2 from '/home/joaquin/BDDA/millones50fixed.csv' delimiter ',';