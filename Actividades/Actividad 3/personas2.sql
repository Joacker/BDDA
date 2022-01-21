-- Query 1
begin;
delete from personas2 using ruts where personas2.rut = ruts.rut;
rollback;

-- Query 2
begin;
delete from personas2 where personas2.rut in (select rut from ruts);
rollback;

-- Query 3
begin;
delete from personas2 where exists (select from ruts where personas2.rut = ruts.rut);
rollback;