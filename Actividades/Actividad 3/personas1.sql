-- Query 1
begin;
delete from personas1 using ruts where personas1.rut = ruts.rut;
rollback;

-- Query 2
begin;
delete from personas1 where personas1.rut in (select rut from ruts);
rollback;

--Query 3
begin;
delete from personas1 where exists (select from ruts where personas1.rut = ruts.rut);
rollback;