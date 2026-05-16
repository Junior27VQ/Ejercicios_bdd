#--Diferencia Entre PostgreSQL y MySQL
drop table if exists estudiantes;

#--Crear la Tabla
create table estudiantes(
	id_estudiante int not null,
	nombres varchar(50) not null,
	apellidos varchar(50) not null,
	edad int not null,
	curso varchar(50) not null,
	fecha_registro varchar(10) not null,
    constraint estudiantes_pk primary key(id_estudiante)
);

#--Insercion de Datos
insert into estudiantes values(1, 'Marcos', 'Meneses', 20, 'POO','2026-01-01');
insert into estudiantes values(2, 'San', 'Ruiz', 18, 'BDD','2026-02-11');
insert into estudiantes values(3, 'Mala', 'Lusifer', 15, 'PYTHON','2026-03-12');
insert into estudiantes values(4, 'Moli', 'Truejo', 16, 'JAVASCRIPT','2026-04-13');
insert into estudiantes values(5, 'Con', 'Kiel', 21, 'IA','2026-05-14');
insert into estudiantes values(6, 'Soni', 'Meza', 25, 'POO','2026-01-10');
insert into estudiantes values(7, 'Coni', 'Kei', 14, 'BDD','2026-02-11');
insert into estudiantes values(8, 'Oni', 'Ayanocoyi', 15, 'PYTHON','2026-03-06');
insert into estudiantes values(9, 'Doni', 'Karoisagua', 21, 'JAVASCRIPT','2026-04-08');
insert into estudiantes values(10, 'Moli', 'Mora', 21, 'IA','2026-05-25');
insert into estudiantes values(11, 'Frank', 'Ruiz', 22, 'POO','2026-01-11');
insert into estudiantes values(12, 'Sami', 'Ramoz', 16, 'BDD','2026-02-23');
insert into estudiantes values(13, 'Luna', 'Milan', 23, 'PYTHON','2026-03-02');
insert into estudiantes values(14, 'Luis', 'Tor', 17, 'JAVASCRIPT','2026-04-20');
insert into estudiantes values(15, 'Derek', 'Moro', 21, 'IA','2026-05-30');

#--Consultar Datos
select * from estudiantes;
select nombres, curso from estudiantes;
select * from estudiantes where edad>18;
select * from estudiantes where edad>17 and edad<26;
select * from estudiantes where curso='Base de Datos';
select * from estudiantes where fecha_registro>'2026-03-01';
select * from estudiantes where fecha_registro between '2026-01-01' and '2026-04-30';

#--UPDATE Actualizar Datos
update estudiantes set curso='Programacion' where id_estudiante=8;
update estudiantes set edad=18 where curso='IA';
update estudiantes set fecha_registro='2026-05-20' where apellidos='Moro';
update estudiantes set curso='Base de datos', nombres='Samira' where id_estudiante=9;
update estudiantes set apellidos='Requejo' where fecha_registro='2026-05-20';

#--DELETE Eliminar Datos
delete from estudiantes where id_estudiante=7;
delete from estudiantes where edad=18;
delete from estudiantes where curso='Base de datos';
delete from estudiantes where fecha_registro='2026-05-25';
delete from estudiantes where apellidos='Moro';


#--Modificacion de la tabla
alter table estudiantes add column correo varchar(100);

#--Actualizacion de Scripts:
delete from estudiantes;
#--Todos los INSERT
insert into estudiantes values(1, 'Marcos', 'Meneses', 20, 'Programacion','2026-01-01', 'marcos@gmail.com');
insert into estudiantes values(2, 'San', 'Ruiz', 18, 'BDD','2026-02-11', 'sam@gmail.com');
insert into estudiantes values(3, 'Mala', 'Lusifer', 15, 'PYTHON','2026-03-12', 'mala@gmail.com');
insert into estudiantes values(4, 'Moli', 'Truejo', 16, 'JAVASCRIPT','2026-04-13', 'moli@gmail.com');
insert into estudiantes values(5, 'Con', 'Kiel', 21, 'IA','2026-05-14', 'con@gmail.com');
insert into estudiantes values(6, 'Soni', 'Meza', 25, 'POO','2026-01-10', 'soni@gmail.com');
insert into estudiantes values(7, 'Coni', 'Kei', 14, 'BDD','2026-02-11', 'coni@gmail.com');
insert into estudiantes values(8, 'Oni', 'Ayanocoyi', 15, 'PYTHON','2026-03-06', 'oni@gmail.com');
insert into estudiantes values(9, 'Doni', 'Karoisagua', 21, 'JAVASCRIPT','2026-04-08', 'doni@gmail.com');
insert into estudiantes values(10, 'Moli', 'Mora', 21, 'IA','2026-05-25', 'moli@gmail.com');
insert into estudiantes values(11, 'Frank', 'Ruiz', 22, 'POO','2026-01-11', 'frank@gmail.com');
insert into estudiantes values(12, 'Sami', 'Ramoz', 16, 'BDD','2026-02-23', 'sami@gmail.com');
insert into estudiantes values(13, 'Luna', 'Milan', 23, 'PYTHON','2026-03-02', 'luna@gmail.com');
insert into estudiantes values(14, 'Luis', 'Tor', 17, 'JAVASCRIPT','2026-04-20', 'luis@gmail.com');
insert into estudiantes values(15, 'Derek', 'Moro', 21, 'IA','2026-05-30', 'derek@gmail.com');
#--Algunos UPDATE
update estudiantes set fecha_registro='2026-05-20' where correo='frank@gmail.com';
update estudiantes set fecha_registro='2026-05-21' where correo='soni@gmail.com';
update estudiantes set fecha_registro='2026-05-22' where correo='oni@gmail.com';
update estudiantes set fecha_registro='2026-05-23' where correo='doni@gmail.com';
update estudiantes set fecha_registro='2026-05-24' where correo='moli@gmail.com';
#--Algunos SELECT
select * from estudiantes where correo='moli@gmail.com';
select * from estudiantes where correo='mala@gmail.com';
select * from estudiantes where correo='soni@gmail.com';
select * from estudiantes where correo='marcos@gmail.com';
select * from estudiantes where correo='sami@gmail.com';

#--Consultas con Fechas
select * from estudiantes where fecha_registro>'2026-02-01';
select * from estudiantes where fecha_registro<'2026-05-01';
select * from estudiantes where fecha_registro between '2026-05-01' and '2026-05-30';
select * from estudiantes where fecha_registro>'2026-03-15';
select * from estudiantes where curso='Programacion' and fecha_registro>'2026-01-01';

