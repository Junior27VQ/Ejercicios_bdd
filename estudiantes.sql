--Crear la Tabla
create table estudiantes(
	id_estudiante int not null primary key,
	nombres varchar(50) not null,
	apellidos varchar(50) not null,
	edad int not null,
	curso varchar(50) not null,
	fecha_registro varchar(10) not null
);