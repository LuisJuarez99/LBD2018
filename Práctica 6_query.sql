/*	PRÁCTICA 6 LGJM	 */

use BDHotel

/* TAREA
	3 subconsultas
		1 subconsulta de tablas
		1 subconsulta de columna
		1 subconsulta with

	5 vistas
		NOTA: Tienen que ser como reporte, se debe incluir, join, función de agregación o ambas
		- Join
		- Función de agregación

	1 consulta dinámica
*/

/* 3 SUBCONSULTAS */

/* 1 SUBCONSULTA DE TABLAS
	Se muestran los servicios que se han pedido más de 2 veces*/
select * from Servicio

select*
from(select s.nombre, COUNT(s.idServicio) as cantidad
	from Servicio as s
	group by nombre) as NC
where NC.Cantidad > 2

/* 1 SUBCONSULTA DE COLUMNA
	Muestra los servicios que se han pedido más de 2 veces*/
insert into Servicio (idServicio, nombre, precio) values (8,'SPA',500)
insert into Servicio (idServicio, nombre, precio) values (9,'Cena',300)
insert into Servicio (idServicio, nombre, precio) values (10,'Cena',300)
insert into Servicio (idServicio, nombre, precio) values (11,'limpieza',1000)
insert into Servicio (idServicio, nombre, precio) values (12,'limpieza',500)
insert into Servicio (idServicio, nombre, precio) values (13,'Cena',250)

select TOP 2 *from
    (
	select nombre, (
			select count(idServicio)
			from Servicio as S
			where S.nombre = Servicio.nombre
		     ) as 'Cantidad'
	from Servicio
	) as NC
where NC.Cantidad > 2

/*1 SUBCONSULTA WITH
	Se muestran los servicios que se han pedido más de 2 veces*/
WITH SumaServicios as (
SELECT s.nombre, count(s.idServicio) as Cantidad
	FROM Servicio as s
	group by s.nombre
)

SELECT*
FROM SumaServicios
WHERE SumaServicios.cantidad > 2

/* 5 VISTAS */
/*(1)	Realizamos una consulta para comprobar los datos existentes en la tabla Reservacion*/
select * from Reservacion

create view ReservacionesDelMes as(
	select r.idReservacion, c.nomComp as 'Nombre del Cliente', r.fechaEntrada as 'Fecha de entrada reservacion', 
	r.fechaSalida as 'Fecha Salida Reservacion'
	from Cliente as c inner join Venta as v on c.idCliente = v.idCliente
		inner join VentaReservaciones as vr on vr.idVenta = v.idVenta
		inner join Reservacion as r on r.idReservacion = vr.idReservacion
	Where MONTH(r.fechaEntrada) = MONTH(GETDATE())
)

/*Para mostrar los resultados realizar un update a la base de datos*/

update Reservacion
set fechaSalida = '13/10/2018', fechaEntrada = '17/10/2018'
where idReservacion = 2

update Reservacion
set fechaSalida = '15/10/2018', fechaEntrada = '20/10/2018'
where idReservacion = 5

select * from ReservacionesDelMes

/*(2)	Muestra los empleados del departamento de Recepcion*/
select * from Empleado
select * from Departamento

create view EmpleadoRecepcion as(
select (e.Nombre + ' ' + e.ApPat+ ' ' +e.ApMat) as NombreCompleto,
	   d.nombre
 from Empleado as e
 left join Departamento as d on d.idDepartamento = e.idDepartamento
 where d.nombre = 'Recepcion'
)

select  * from EmpleadoRecepcion

/*(3)	Muestra el estado de las habitaciones*/
select * from Habitacion

create view EstadoHabitacion as(
select h.idHabitacion,
	   d.estado
 from Habitacion as h
 left join Disponibilidad as d
 on h.idHabitacion = d.idHabitacion
)

select  * from EstadoHabitacion

/*(4)	Muestra la cantidad de empleados por departamento*/
select * from Empleado
select * from Departamento

insert into Empleado(idEmpleado,nombre,apPat,apMat,edad, idDepartamento)
values(8,'Manuel', 'Juarez', 'Melchor', 22, 1)
insert into Empleado(idEmpleado,nombre,apPat,apMat,edad, idDepartamento)
values(9,'Alan', 'Melchor', 'Méndez', 31, 6)
insert into Empleado(idEmpleado,nombre,apPat,apMat,edad, idDepartamento)
values(10,'Sofia', 'Melchor', 'Méndez', 35, 3)


create view EmpleadoDepartamento as(
select COUNT(e.idempleado) as 'numero de empleados', d.nombre
FROM Empleado as e
inner join Departamento as d on d.idDepartamento = e.idDepartamento
group by d.nombre
)

select  * from EmpleadoDepartamento

/*(5)	Muestra el número de habitaciones por piso*/
select * from Habitacion

create view HabitacionesPiso as(
select COUNT(idHabitacion) as 'numero de habitaciones', piso
FROM Habitacion
group by piso
)

select  * from HabitacionesPiso

/* 1 CONSULTA DINÁMICA*/

/*Muestra los servicios utilizados por un usuario en específico*/
select * from Cliente

declare @query nvarchar (max)
declare @nomCliente nvarchar (max) = 'Luis Gerardo'

set @query ='
  select v.idVenta,
        c.nombre,c.apPat,
        s.*
  from venta as v
  inner join cliente as c on c.idCliente = v.idCliente
  inner join ServiciosVendidos as sv on sv.idVenta = v.idVenta
  inner join Servicio as s on s.idServicio = sv.idServicio
  where c.nombre = ''' + @nomCliente +''''

exec (@query)