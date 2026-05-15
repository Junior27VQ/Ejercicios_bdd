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
insert into estudiantes values(6, 'Marcos', 'Meneses', 20, 'POO','2026-05-10', 'marcos@gmail.com');
insert into estudiantes values(7, 'San', 'Ruiz', 18, 'BDD','2026-05-11', 'sam@gmail.com');
insert into estudiantes values(8, 'Mala', 'Lusifer', 15, 'PYTHON','2026-05-12', 'mala@gmail.com');
insert into estudiantes values(9, 'Moli', 'Truejo', 16, 'JAVASCRIPT','2026-05-13', 'moli@gmail.com');
insert into estudiantes values(10, 'Con', 'Kiel', 21, 'IA','2026-05-14', 'con@gmail.com');

--Consultar Datos
select * from estudiantes;
select nombres, curso from estudiantes;
select * from estudiantes where edad>18;
select * from estudiantes where edad>18 and edad<25;
select * from estudiantes where curso='Base de Datos';
select * from estudiantes where fecha_registro>'2026-03-01';
select * from estudiantes where fecha_registro between '2026-01-01' and '2026-04-30';

--UPDATE Actualizar Datos
update estudiantes set curso='Programacion' where id_estudiante=8;
update estudiantes set edad=18 where curso='IA';
update estudiantes set fecha_registro='2026-05-20' where correo='con@gmail.com';
update estudiantes set curso='BAse de datos', nombres='Samira' where fecha_registro='2026-05-20';
update estudiantes set apellidos='Requejo' where id_estudiante=9;
--DELETE Eliminar Datos
delete from estudiantes where id_estudiante=7;
delete from estudiantes where edad=18;
delete from estudiantes where curso='BAse de datos';
delete from estudiantes where fecha_registro='2026-05-25';
delete from estudiantes where correo='con@gmail.com';

--Modificacion de la tabla
alter table estudiantes add column correo varchar(100);

--Actualizacion de Scripts
--Consultas con Fechas
select * from estudiantes where fecha_registro>'2026-02-01';
select * from estudiantes where fecha_registro<'2026-05-01';
select * from estudiantes where fecha_registro between '2026-05-01' and '2026-05-30';
select * from estudiantes where fecha_registro>'2026-03-15';
select * from estudiantes where curso='Programacion';
