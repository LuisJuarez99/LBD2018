/* PRÁCTICA 8 LGJM */

/*
	3 triggers	(instead y after)
		update
		insert
		delete
*/

use BDHotel

/*Creamos un trigger que en lugar de actualizar se solicitan los datos que se quisieron insertar y borrar  */

create trigger TR_CLIENTE
on Cliente 
instead of update
as
begin
		select * 
		from inserted
		select * 
		from deleted
END

select * from Cliente
update Cliente
set nombre = 'Luis'
where idCliente = 102

/*Creamos un trigger para agregar una nueva habitacion*/

create trigger TR_AGREGAR_HABITACION
on Habitacion
after insert
as
begin
		select * 
		from inserted
END

select * from Habitacion
insert into Habitacion(idHabitacion,clase,piso,costoDiario)
values (108,'Suite',2,3100)


/*Creamos un trigger para eliminar la Disponibilidad */

create trigger TR_DISPONIBILIDAD
on Disponibilidad
after delete
as
begin
		select * from deleted
END

delete from Disponibilidad where idDisponibilidad = 16

select * from Disponibilidad