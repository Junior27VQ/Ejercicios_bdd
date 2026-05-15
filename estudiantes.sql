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

