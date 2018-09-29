-- PRÁCTICA 4

create database BDHotel

use BDHotel

insert into Cliente(idCliente, nombre, apPat, apMat)
values (101,'Mauro', 'Duque', 'Montemayor')

insert into Cliente(idCliente, nombre, apPat, apMat)
values (102,'Luis Gerardo', 'Juárez', 'Melchor')

insert into Cliente(idCliente, nombre, apPat, apMat)
values (103,'Félix', 'Delgadillo', 'Barrios')

insert into Cliente(idCliente, nombre, apPat, apMat)
values (104,'Pablo', 'Rodríguez', 'Rea')

insert into Cliente(idCliente, nombre, apPat, apMat)
values (105,'Manuel', 'González', 'Aguilar')

insert into Cliente(idCliente, nombre, apPat, apMat)
values (106,'Fátima', 'Rodríguez', 'Rodríguez')

insert into Cliente(idCliente, nombre, apPat, apMat)
values (107,'Jose', 'Antonio', 'Juárez')



insert into Departamento(idDepartamento, nombre)
values (1, 'Recepcion')

insert into Departamento(idDepartamento, nombre)
values (2, 'Ama de llaves')

insert into Departamento(idDepartamento, nombre)
values (3, 'Contabilidad')

insert into Departamento(idDepartamento, nombre)
values (4, 'Mantenimiento y decoración')

insert into Departamento(idDepartamento, nombre)
values (5, 'Alimentos y bebidas')

insert into Departamento(idDepartamento, nombre)
values (6, 'Seguridad')

insert into Departamento(idDepartamento, nombre)
values (7, 'Recursos Humanos')



insert into Disponibilidad(idDisponibilidad, fecha, estado)
values (11, '29/09/2018', 'Disponible')

insert into Disponibilidad(idDisponibilidad, fecha, estado)
values (12, '15/12/2017', 'No disponible')

insert into Disponibilidad(idDisponibilidad, fecha, estado)
values (13, '15/11/2017', 'No disponible')

insert into Disponibilidad(idDisponibilidad, fecha, estado)
values (14, '16/09/2017', 'No disponible')

insert into Disponibilidad(idDisponibilidad, fecha, estado)
values (15, '16/08/2017', 'Disponible')

insert into Disponibilidad(idDisponibilidad, fecha, estado)
values (16, '24/07/2017', 'Disponible')

insert into Disponibilidad(idDisponibilidad, fecha, estado)
values (17, '15/06/2017', 'No disponible')



insert into Empleado(idEmpleado,nombre,apPat,apMat,edad)
values(1,'Juan', 'Ignacio', 'Zurita', 18)

insert into Empleado(idEmpleado,nombre,apPat,apMat,edad) 
values(2,'Jorge', 'Rodríguez', 'Hernández', 34)

insert into Empleado(idEmpleado,nombre,apPat,apMat,edad) 
values(3,'Pedro', 'Delgadilllo', 'Ata', 67)

insert into Empleado(idEmpleado,nombre,apPat,apMat,edad) 
values(4,'Pablo', 'Melchor', 'Zapata', 24)

insert into Empleado(idEmpleado,nombre,apPat,apMat,edad)
values(5,'Félix', 'Rea', 'Paredes', 21)

insert into Empleado(idEmpleado,nombre,apPat,apMat,edad)
values(6,'Gerardo', 'Montemayor', 'González', 20)

insert into Empleado(idEmpleado,nombre,apPat,apMat,edad) 
values(7,'Luis', 'Duque', 'Guerrero', 31)



insert into Habitacion(idHabitacion, clase, piso, costoDiario)
values (101, 'Suite', 2, 3100)

insert into Habitacion(idHabitacion, clase, piso, costoDiario)
values (102, 'Doble', 3, 1600)

insert into Habitacion(idHabitacion, clase, piso, costoDiario)
values (103, 'Individual', 1, 800)

insert into Habitacion(idHabitacion, clase, piso, costoDiario)
values (104, 'Doble', 3, 1600)

insert into Habitacion(idHabitacion, clase, piso, costoDiario)
values (105, 'Suite', 2, 3100)

insert into Habitacion(idHabitacion, clase, piso, costoDiario)
values (106, 'Individual', 4, 500)

insert into Habitacion(idHabitacion, clase, piso, costoDiario)
values (107, 'Triple', 2, 1200)



insert into Nomina(idNomina, sueldoPorHora, horasTrabajadas, sueldoTotal)
values (101, 50, 8, 400)

insert into Nomina(idNomina, sueldoPorHora, horasTrabajadas, sueldoTotal)
values (102, 50, 14, 700)

insert into Nomina(idNomina, sueldoPorHora, horasTrabajadas, sueldoTotal)
values (103, 50, 4, 200)

insert into Nomina(idNomina, sueldoPorHora, horasTrabajadas, sueldoTotal)
values (104, 50, 9, 450)

insert into Nomina(idNomina, sueldoPorHora, horasTrabajadas, sueldoTotal)
values (105, 50, 10, 500)

insert into Nomina(idNomina, sueldoPorHora, horasTrabajadas, sueldoTotal)
values (106, 50, 20, 1000)

insert into Nomina(idNomina, sueldoPorHora, horasTrabajadas, sueldoTotal)
values (107, 50, 48, 2400)



insert into PeriodoReservacion (idPeriReserv) 
values(1)

insert into PeriodoReservacion (idPeriReserv) 
values(2)

insert into PeriodoReservacion (idPeriReserv)
values(3)

insert into PeriodoReservacion (idPeriReserv) 
values(4)

insert into PeriodoReservacion (idPeriReserv) 
values(5)

insert into PeriodoReservacion (idPeriReserv)
values(6)

insert into PeriodoReservacion (idPeriReserv) 
values(7)



insert into Reservacion(idReservacion, fechaEntrada, fechaSalida, estado, diasReservados, costoDiario) 
values(1,'2017-09-02','2017-09-03','pagada',1,500)

insert into Reservacion(idReservacion, fechaEntrada, fechaSalida, estado, diasReservados, costoDiario) 
values(2,'2017-09-03','2017-09-06','por pagar',3,1000)

insert into Reservacion(idReservacion, fechaEntrada, fechaSalida, estado, diasReservados, costoDiario) 
values(3,'2017-11-11','2017-11-15','pagada',4,1500)

insert into Reservacion(idReservacion, fechaEntrada, fechaSalida, estado, diasReservados, costoDiario) 
values(4,'2017-01-14','2017-01-19','por pagar',5,1100)

insert into Reservacion(idReservacion, fechaEntrada, fechaSalida, estado, diasReservados, costoDiario) 
values(5,'2015-04-07','2015-04-10','pagada',3,860)

insert into Reservacion(idReservacion, fechaEntrada, fechaSalida, estado, diasReservados, costoDiario) 
values(6,'2014-03-10','2014-03-13','pagada',3,2500)

insert into Reservacion(idReservacion, fechaEntrada, fechaSalida, estado, diasReservados, costoDiario) 
values(7,'2014-05-10','2014-05-15','pagada',5,1450)



insert into Servicio(idServicio, nombre, precio) 
values(1,'limpieza',1000)

insert into Servicio(idServicio, nombre, precio) 
values(2,'SPA',4000)

insert into Servicio(idServicio, nombre, precio) 
values(3,'Transporte',400)

insert into Servicio(idServicio, nombre, precio) 
values(4,'Cena',300)

insert into Servicio(idServicio, nombre, precio) 
values(5,'Piscina',1600)

insert into Servicio(idServicio, nombre, precio) 
values(6,'Toallas',50)

insert into Servicio(idServicio, nombre, precio) 
values(7,'TV por cable', 500)



insert into ServiciosVendidos(idSerVen, fecha) 
values(1, '02/05/2014')

insert into ServiciosVendidos(idSerVen, fecha)
values(2, '15/11/2017')

insert into ServiciosVendidos(idSerVen, fecha) 
values(3, '13/04/2015')

insert into ServiciosVendidos(idSerVen, fecha) 
values(4, '16/04/2018')

insert into ServiciosVendidos(idSerVen, fecha) 
values(5, '14/01/2012')

insert into ServiciosVendidos(idSerVen, fecha) 
values(6, '19/05/2012')

insert into ServiciosVendidos(idSerVen, fecha)
values(7, '11/02/2012')



insert into Venta(idVenta) 
values(1)

insert into Venta(idVenta) 
values(2)

insert into Venta(idVenta) 
values(3)

insert into Venta(idVenta) 
values(4)

insert into Venta(idVenta) 
values(5)

insert into Venta(idVenta) 
values(6)

insert into Venta(idVenta) 
values(7)



insert into VentaReservaciones(idVenReserv, precio)
values(1,16000)

insert into VentaReservaciones(idVenReserv, precio) 
values(2,11000)

insert into VentaReservaciones(idVenReserv, precio) 
values(3,9000)

insert into VentaReservaciones(idVenReserv, precio) 
values(4,700)

insert into VentaReservaciones(idVenReserv, precio) 
values(5,1300)

insert into VentaReservaciones(idVenReserv, precio) 
values(6,7000)

insert into VentaReservaciones(idVenReserv, precio) 
values(7,19000)



update Cliente set nombre = 'Antonio'
where idCliente = 105

update Departamento set nombre = 'Marketing'
where idDepartamento = 4

update Empleado set nombre = 'Alberto'
where idEmpleado = 2

update Habitacion set clase = 'Doble'
where idHabitacion = 107

update Servicio set nombre = 'Desayuno'
where idServicio = 5



delete from Cliente
where idCliente = 106

delete from Cliente
where nombre = 'Luis Gerardo'

delete from Empleado
where nombre = 'Luis'

delete from Habitacion
where costoDiario = 500

delete from Servicio
where nombre = 'TV por cable'



select * from Cliente
select * from Departamento
select * from Disponibilidad
select * from Empleado
select * from Habitacion
select * from Nomina
select * from PeriodoReservacion
select * from Reservacion
select * from Servicio
select * from ServiciosVendidos
select * from Venta
select * from VentaReservaciones