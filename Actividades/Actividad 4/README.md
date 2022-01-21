# USAGE

*Query1 Personas 1*
```sh
begin;
update personas1 set edad = case when edad < 85 then edad + 15 else 00 end where rut in (select rut from ruts);
rollback;
```

*Query2 Personas 1*
```sh
begin;
update personas1 set edad = (case when personas1.edad < 85 then personas1.edad + 15 else 00 end) where exists (select from ruts where personas1.rut = ruts.rut);
rollback;
```

*Query1 Personas 2*
```sh
begin;
update personas2 set edad = case when edad < 85 then edad + 15 else 00 end where rut in (select rut from ruts);
rollback;
```

*Query 2 Personas 2*
```sh
begin;
update personas2 set edad = (case when personas1.edad < 85 then personas2.edad + 15 else 00 end) where exists (select from ruts where personas2.rut = ruts.rut);
rollback;
```