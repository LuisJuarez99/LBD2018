/* PRÁCTICA 7 LGJM */

/*
	1 procedure de tipo script
	(Ejemplo: información tabla temporal para crear)

	5 procedures de tipo 'consulta'
	donde filtren los reportes de la práctica pasada (de las vistas)

	1 función
*/

use BDHotel

/*1 PROCEDURE TIPO SCRIPT*/
/*Se agrega el nombre de un nuevo cliente*/

create procedure AddCliente(
	@idCliente int,
	@nombre nvarchar(50),
	@apPat nvarchar(50),
	@apMat nvarchar(50)
)
as 
begin
	insert into Cliente(idCliente, nombre, apPat, apMat)
	values (@idCliente,@nombre, @apPat, @apMat)
end

exec AddCliente @idCliente = 8, @nombre = 'Alejandro', @apPat = 'Carrillo', @apMat = 'Hernández'
GO


/*5 PROCEDURES DE TIPO 'CONSULTA'*/
/*(1) Muestra el numero de empleados de un departamento*/

create procedure EmpleadosPorDepartamento(@idDepartamento int)
as 
begin
	select COUNT(e.idempleado) as 'num de empleados', d.nombre
	FROM Empleado as e
	inner join Departamento as d on d.idDepartamento = e.idDepartamento
	where d.idDepartamento = @idDepartamento
	group by d.nombre
end

exec EmpleadosPorDepartamento @idDepartamento = 1
GO

/*(2) Cambiar el nombre de un empleado y mostrar los cambios*/

create procedure UpNombreEmpleado(@nombre nvarchar (50), @idEmpleado int)
as 
begin

select idEmpleado, nombre
into #empleado
from Empleado

update Empleado set nombre = @nombre
where idEmpleado = @idEmpleado

select idEmpleado, nombre as OldNombre 
from #empleado
where idEmpleado = @idEmpleado

select idEmpleado, nombre as NewNombre 
from Empleado
where idEmpleado = @idEmpleado
end

exec UpNombreEmpleado @idEmpleado = 3, @nombre = 'Eduardo'
GO

drop procedure UpNombreEmpleado

/*(3) Mostrar las veces que se ha solicitado un servicio*/

create procedure ServicioPedido(@idServicio int)
as 
begin
  select count(c.idCliente) as 'num de clientes', s.nombre
	from venta as v
	inner join cliente as c on c.idCliente = v.idCliente
	inner join ServiciosVendidos as sv on sv.idVenta = v.idVenta
	inner join Servicio as s on s.idServicio = sv.idServicio
	where s.idServicio = @idServicio
	group by s.nombre
end

exec ServicioPedido @idservicio = 1
GO

drop procedure ServicioPedido

/*(4) Mostrar los servicios que se han solicitado por el cliente*/

create procedure ClienteServicio(@nombre nvarchar (50))
as 
begin
	declare @query nvarchar (max)
	set @query ='
	select v.idVenta,c.nombre,c.apPat,s.*
	from venta as v
	inner join cliente as c on c.idCliente = v.idCliente
	inner join ServiciosVendidos as sv on sv.idVenta = v.idVenta
	inner join Servicio as s on s.idServicio = sv.idServicio
	where c.nombre like ''' + @nombre +''''
	exec (@query)
end

exec ClienteServicio @nombre = 'Jose'
GO

drop procedure ClienteServicio

/*(5) Muestra los empleados de un departamento*/

create procedure EmpleadosDepartamento(@idDepartamento int)
as 
begin
	select (e.Nombre + ' ' + e.ApPat+ ' ' +e.ApMat) as NombreCompleto, d.nombre
	from Empleado as e
	left join Departamento as d on d.idDepartamento = e.idDepartamento
	where d.idDepartamento = @idDepartamento
end

exec EmpleadosDepartamento @idDepartamento = 1
GO

drop procedure EmpleadosDepartamento

/*1 FUNCIÓN*/
/*Se crea una función para mostrar el precio total de VentaReservaciones*/

create function ConsultaPrecios(@idVenReserv decimal)
returns decimal
begin
	declare @precio decimal
	select @precio = sum(Precio) from VentaReservaciones
	return @precio
end
GO

select dbo.ConsultaPrecios(1) as 'PRECIO TOTAL'

drop function ConsultaPrecios

/*Para comprobar el total de las ventas respecto a las reservaciones realizamos la siguiente consulta de la tabla VentaReservaciones*/
select * from VentaReservaciones