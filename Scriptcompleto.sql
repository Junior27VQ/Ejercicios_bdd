--Tablas principales
create table libros(
	codigo varchar(5) primary key,
	titulo varchar(50) not null,
	paginas int not null
);

create table autores(
	id int primary key,
	nombre varchar(50) not null,
	pais varchar(30) not null
);
--Tabala de rompimiento
create table libro_autor(
	la_libro_codigo_fk varchar(5) not null,
	la_autor_id_fk int not null,
	anio_publicado int not null,

	constraint libro_fk foreign key(la_libro_codigo_fk) references libros(codigo),
	constraint autor_fk foreign key(la_autor_id_fk) references autores(id),
	constraint la_pk primary key(la_libro_codigo_fk,la_autor_id_fk)
);
--Insertar datos
insert into libros(codigo,titulo,paginas)
values('A123Z','Pepito',458),
		('B456Y','Narnia',623),
		('C789X','Calabosos',582),
		('D147W','Blancaniebes',698),
		('E258V','PiterPan',785);
insert into autores(id,nombre,pais)
values(1,'Salomon','Grecia'),
		(2,'Marlon','Alemania'),
		(3,'Jesus','Noruega'),
		(4,'Maria','Persia'),
		(5,'Poseidon','Paris');
insert into libro_autor(la_libro_codigo_fk,la_autor_id_fk,anio_publicado)
values('A123Z',1,1989),
		('B456Y',2,1886),
		('C789X',3,1956),
		('D147W',4,1852),
		('E258V',5,1987);

--Consultas sql
--Mostrar datos
select l.titulo,a.nombre,a.pais,la.anio_publicado
from libro_autor la 
inner join libros l on la.la_libro_codigo_fk = l.codigo
inner join autores a on la.la_autor_id_fk = a.id;
--Mostrar unicamente los libro publicados despues del año 2020.
select l.titulo,a.nombre,a.pais,la.anio_publicado
from libro_autor la 
inner join libros l on la.la_libro_codigo_fk = l.codigo
inner join autores a on la.la_autor_id_fk = a.id
where la.anio_publicado>2020;
--Mostrar únicamente autores de un país específico usando WHERE.
select l.titulo,a.nombre,a.pais,la.anio_publicado 
from libro_autor la 
inner join libros l on la.la_libro_codigo_fk = l.codigo
inner join autores a on la.la_autor_id_fk = a.id
where a.pais='Grecia';
--Ordenar los libros por año de publicación descendente.
select l.titulo,a.nombre,a.pais,la.anio_publicado 
from libro_autor la 
inner join libros l on la.la_libro_codigo_fk = l.codigo
inner join autores a on la.la_autor_id_fk = a.id
order by la.anio_publicado desc;
--Contar cuántos libros tiene cada autor utilizando:
select a.nombre, count(*) as libro_autor
from libro_autor la 
inner join libros l on la.la_libro_codigo_fk = l.codigo
inner join autores a on la.la_autor_id_fk = a.id
GROUP BY a.nombre;

--Modificacion de la tabla
alter table libros add precio double precision;
--Actualizar tabla
update libros set precio=1.25 where codigo='A123Z';
update libros set precio=0.35 where	codigo='B456Y';
update libros set precio=2.75 where	codigo='C789X';
update libros set precio=1.45 where	codigo='D147W';
update libros set precio=3.25 where	codigo='E258V';
--realizar un SELECT mostrando: titulo y precio
select titulo,precio
from libros