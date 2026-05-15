--Crear la Tabla
create table estudiantes(
	id_estudiante int not null primary key,
	nombres varchar(50) not null,
	apellidos varchar(50) not null,
	edad int not null,
	curso varchar(50) not null,
	fecha_registro varchar(10) not null
);

--Insercion de Datos
insert into estudiantes values(1, 'Ramon', 'Mendez', 15, '3B','2026-05-10');
insert into estudiantes values(2, 'Mari', 'Quevedo', 12, '2A','2026-05-11');
insert into estudiantes values(3, 'Robert', 'Saul', 14, '3A','2026-05-12');
insert into estudiantes values(4, 'Moni', 'Quijote', 16, '1B','2026-05-13');
insert into estudiantes values(5, 'Rambo', 'Del', 13, '1A','2026-05-14');

--Consultar Datos
select * from estudiantes;
select nombres, curso from estudiantes;
select * from estudiantes where edad>18;
select * from estudiantes where edad>18 and edad<25;
select * from estudiantes where curso='Base de Datos';
select * from estudiantes where fecha_registro>'2026-03-01';
select * from estudiantes where fecha_registro between '2026-01-01' and '2026-04-30';

--UPDATE Actualizar Datos
update estudiantes set curso='1B' where id_estudiante=1;
update estudiantes set edad=18 where curso='1B';
update estudiantes set fecha_registro='2026-05-25' where id_estudiante=3;
update estudiantes set curso='2B', nombres='Samira' where id_estudiante=4;
update estudiantes set apellidos='Requejo' where id_estudiante=5;
--DELETE Eliminar Datos
delete from estudiantes where id_estudiante=1;
delete from estudiantes where edad=14;
delete from estudiantes where curso='1B';
delete from estudiantes where fecha_registro='2026-05-25';
delete from estudiantes where nombres='Samira';
