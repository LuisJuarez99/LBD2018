/*PRÁCTICA 5 LGJM*/

/*	
	5 select básicos 
		- cambiar nombre de columnas
		- usar alias
		- usar funciones
*/

use BDHotel

select sum(vr.Precio) as TotalPrecio
from VentaReservaciones as vr

select sum(n.SueldoTotal) as Sueldo
from Nomina as n

select len(c.Nombre + ' ' + c.ApPat+ ' ' +c.ApMat) as LongitudNombre
from Cliente as c

select Max(e.edad) as EdadMayor
from Empleado as e

select Min(e.edad) as EdadMenor
from Empleado as e


/*
	4 select Join 
		- cross
		- inner 
		- left
		- right
*/

/*Se muestra los sueldos totales de los empleados*/
 select e.Nombre, e.apPat, e.apMat,
	n.sueldoTotal
from Empleado as e,Nomina as n

/*Se muestra habitaciones por reservacion*/
select h.idHabitacion,
	   r.idReservacion
from Habitacion as h
inner join Reservacion as r
on r.idHabitacion = h.idHabitacion

/*Verificar los estados de las habitaciones*/
select h.idHabitacion,
	   d.estado
from Habitacion as h
left join Disponibilidad as d
on h.idHabitacion = d.idHabitacion

 /*Verificar los estados de las habitaciones*/
select h.idHabitacion,
	   d.estado
from Habitacion as h
right join Disponibilidad as d
on h.idHabitacion = d.idHabitacion


/*	
	5 selects con where en diferentes tablas y columnas
		- 1 con order by
*/

/*Se muestran las habitaciones disponibles*/
select h.idHabitacion,
	   d.estado
from Habitacion as h
left join Disponibilidad as d on d.idHabitacion = h.idHabitacion
where d.estado = 'disponible'
order by h.idHabitacion desc

/*Mostrar reservaciones con costo menor 5000*/
select idReservacion , precio
from Reservacion 
where precio < 5000

/*Mostrar a los empleados mayores a 30 años*/
select (Nombre + ' ' + ApPat+ ' ' +ApMat) as NombreCompleto, edad
from Empleado
where edad > 30

/*Mostrar los servicios solicitados por el cliente Luis Gerardo*/
select v.idVenta,
	c.nombre,c.apPat,
	s.*
from venta as v
inner join cliente as c on c.idCliente = v.idCliente
inner join ServiciosVendidos as sv on sv.idVenta = v.idVenta
inner join Servicio as s on s.idServicio = sv.idServicio
where c.nombre = 'Luis Gerardo'

/*Mostrar los empleados del área de recepción*/
select (e.Nombre + ' ' + e.ApPat+ ' ' +e.ApMat) as NombreCompleto,
	   d.nombre
from Empleado as e
left join Departamento as d on d.idDepartamento = e.idDepartamento
where d.nombre = 'recepcion'


/*
	5 selects con funciones de agregación (min, max, avg, sta, count) 
		- 2 sin group by
		- 3 con group by
			- 1 con having
*/


/*Mostrar cuánto cuesta el servicio menos caro*/
select min(precio) as 'Servicio menos caro'
from Servicio

/*Se muestra cuál es el piso más alto del hotel*/
select max(piso) as 'Piso más alto'
from Habitacion

/*Muestra el número de empleados que tiene cada departamento*/
select count(e.idempleado) as 'Númmero de empleados', d.nombre
from Empleado as e
inner join Departamento as d on d.idDepartamento = e.idDepartamento
group by d.nombre

/*Se muestra cuántos clientes han pedido un servicio en específico*/
 select count(c.idCliente) as 'Número de clientes', s.nombre
from venta as v
inner join cliente as c on c.idCliente = v.idCliente
inner join ServiciosVendidos as sv on sv.idVenta = v.idVenta
inner join Servicio as s on s.idServicio = sv.idServicio
group by s.nombre

/*Se muestran los pisos con 3 o más habitaciones*/
select count(idHabitacion) as 'Num Habitaciones', piso
from Habitacion
group by piso
having count(idHabitacion) >= 3
order by count(idHabitacion) desc



/*
	3 select con join y group by
*/

/*Mostrar cantidad de empleados por cada departamento*/
select count(e.idempleado) as 'Num Empleados por Dpto', d.nombre
from Empleado as e
inner join Departamento as d on d.idDepartamento = e.idDepartamento
group by d.nombre

/*Muestra la cantidad de clientes por cada venta*/
 select count(c.idCliente) as 'Num clientes', v.idVenta
from venta as v
inner join cliente as c on c.idCliente = v.idCliente
group by v.idVenta

/*Mostrar cantidad de servicios pedidos*/
 select count(c.idCliente) as 'Cant Servicios', s.nombre
from venta as v
inner join cliente as c on c.idCliente = v.idCliente
inner join ServiciosVendidos as sv on sv.idVenta = v.idVenta
inner join Servicio as s on s.idServicio = sv.idServicio
group by s.nombre


/*
	1 select into con drop table y reinsertar filas
*/

select idEmpleado, nombre, apPat, apMat, nomComp, edad, idDepartamento
into #empleado
from Empleado

drop table Empleado

create table Empleado(
	idEmpleado int NOT NULL,
	nombre varchar(50) NULL,
	apPat varchar(50) NULL,
	apMat varchar(50) NULL,
	nomComp  as (nombre+' '+apPat+' '+apMat),
	edad int NULL,
	idDepartamento int NULL)

insert into  Empleado(idEmpleado, nombre, apPat, apMat, edad, idDepartamento)
select idEmpleado, nombre, apPat, apMat, edad, idDepartamento
from #empleado  /*TABLA TEMPORAL EMPLEADO*/

select * from Empleado