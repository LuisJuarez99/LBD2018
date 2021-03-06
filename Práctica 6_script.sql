USE [BDHotel]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VentaReservaciones_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[VentaReservaciones]'))
ALTER TABLE [dbo].[VentaReservaciones] DROP CONSTRAINT [FK_VentaReservaciones_Venta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VentaReservaciones_Reservacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[VentaReservaciones]'))
ALTER TABLE [dbo].[VentaReservaciones] DROP CONSTRAINT [FK_VentaReservaciones_Reservacion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Empleado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiciosVendidos_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiciosVendidos]'))
ALTER TABLE [dbo].[ServiciosVendidos] DROP CONSTRAINT [FK_ServiciosVendidos_Venta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiciosVendidos_Servicio]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiciosVendidos]'))
ALTER TABLE [dbo].[ServiciosVendidos] DROP CONSTRAINT [FK_ServiciosVendidos_Servicio]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservacion_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservacion]'))
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [FK_Reservacion_Habitacion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PeriodoReservacion_Reservacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[PeriodoReservacion]'))
ALTER TABLE [dbo].[PeriodoReservacion] DROP CONSTRAINT [FK_PeriodoReservacion_Reservacion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PeriodoReservacion_Disponibilidad]') AND parent_object_id = OBJECT_ID(N'[dbo].[PeriodoReservacion]'))
ALTER TABLE [dbo].[PeriodoReservacion] DROP CONSTRAINT [FK_PeriodoReservacion_Disponibilidad]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nomina_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nomina]'))
ALTER TABLE [dbo].[Nomina] DROP CONSTRAINT [FK_Nomina_Empleado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nomina_Departamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nomina]'))
ALTER TABLE [dbo].[Nomina] DROP CONSTRAINT [FK_Nomina_Departamento]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Departamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Departamento]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Disponibilidad_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Disponibilidad]'))
ALTER TABLE [dbo].[Disponibilidad] DROP CONSTRAINT [FK_Disponibilidad_Habitacion]
GO
/****** Object:  View [dbo].[ReservacionesDelMes]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReservacionesDelMes]'))
DROP VIEW [dbo].[ReservacionesDelMes]
GO
/****** Object:  View [dbo].[HabitacionesPiso]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[HabitacionesPiso]'))
DROP VIEW [dbo].[HabitacionesPiso]
GO
/****** Object:  View [dbo].[EstadoHabitacion]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[EstadoHabitacion]'))
DROP VIEW [dbo].[EstadoHabitacion]
GO
/****** Object:  View [dbo].[EmpleadoRecepcion]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[EmpleadoRecepcion]'))
DROP VIEW [dbo].[EmpleadoRecepcion]
GO
/****** Object:  View [dbo].[EmpleadoDepartamento]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[EmpleadoDepartamento]'))
DROP VIEW [dbo].[EmpleadoDepartamento]
GO
/****** Object:  Table [dbo].[VentaReservaciones]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VentaReservaciones]') AND type in (N'U'))
DROP TABLE [dbo].[VentaReservaciones]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND type in (N'U'))
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[ServiciosVendidos]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiciosVendidos]') AND type in (N'U'))
DROP TABLE [dbo].[ServiciosVendidos]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicio]') AND type in (N'U'))
DROP TABLE [dbo].[Servicio]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND type in (N'U'))
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[PeriodoReservacion]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PeriodoReservacion]') AND type in (N'U'))
DROP TABLE [dbo].[PeriodoReservacion]
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nomina]') AND type in (N'U'))
DROP TABLE [dbo].[Nomina]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND type in (N'U'))
DROP TABLE [dbo].[Habitacion]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Disponibilidad]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Disponibilidad]') AND type in (N'U'))
DROP TABLE [dbo].[Disponibilidad]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departamento]') AND type in (N'U'))
DROP TABLE [dbo].[Departamento]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Cliente]
GO
USE [master]
GO
/****** Object:  Database [BDHotel]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'BDHotel')
DROP DATABASE [BDHotel]
GO
/****** Object:  Database [BDHotel]    Script Date: 13/10/2018 02:30:26 a.m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'BDHotel')
BEGIN
CREATE DATABASE [BDHotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDHotel', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BDHotel.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDHotel_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BDHotel_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [BDHotel] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDHotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDHotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDHotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDHotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDHotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDHotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDHotel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDHotel] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BDHotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDHotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDHotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDHotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDHotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDHotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDHotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDHotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDHotel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDHotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDHotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDHotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDHotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDHotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDHotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDHotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDHotel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDHotel] SET  MULTI_USER 
GO
ALTER DATABASE [BDHotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDHotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDHotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDHotel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BDHotel]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[apPat] [varchar](50) NULL,
	[apMat] [varchar](50) NULL,
	[nomComp]  AS (((([nombre]+' ')+[apPat])+' ')+[apMat]),
	[fotografia] [image] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Departamento](
	[idDepartamento] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[idDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Disponibilidad]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Disponibilidad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Disponibilidad](
	[idDisponibilidad] [int] NOT NULL,
	[idHabitacion] [int] NULL,
	[fecha] [datetime] NULL,
	[estado] [varchar](50) NULL,
 CONSTRAINT [PK_Disponibilidad] PRIMARY KEY CLUSTERED 
(
	[idDisponibilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[apPat] [varchar](50) NULL,
	[apMat] [varchar](50) NULL,
	[nomComp]  AS (((([nombre]+' ')+[apPat])+' ')+[apMat]),
	[edad] [int] NULL,
	[idDepartamento] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Habitacion](
	[idHabitacion] [int] NOT NULL,
	[clase] [varchar](50) NULL,
	[piso] [int] NULL,
	[costoDiario] [int] NULL,
 CONSTRAINT [PK_Habitacion] PRIMARY KEY CLUSTERED 
(
	[idHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nomina]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nomina]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Nomina](
	[idNomina] [int] NOT NULL,
	[idEmpleado] [int] NULL,
	[idDepartamento] [int] NULL,
	[sueldoPorHora] [int] NULL,
	[horasTrabajadas] [int] NULL,
	[sueldoTotal] [int] NULL,
 CONSTRAINT [PK_Nomina] PRIMARY KEY CLUSTERED 
(
	[idNomina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PeriodoReservacion]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PeriodoReservacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PeriodoReservacion](
	[idPeriReserv] [int] NOT NULL,
	[idDisponibilidad] [int] NULL,
	[idReservacion] [int] NULL,
 CONSTRAINT [PK_PeriodoReservacion] PRIMARY KEY CLUSTERED 
(
	[idPeriReserv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Reservacion](
	[idReservacion] [int] NOT NULL,
	[idHabitacion] [int] NULL,
	[fechaEntrada] [date] NULL,
	[fechaSalida] [date] NULL,
	[estado] [varchar](50) NULL,
	[diasReservados] [int] NULL,
	[costoDiario] [int] NULL,
	[precio]  AS ([diasReservados]*[costoDiario]),
 CONSTRAINT [PK_Reservacion] PRIMARY KEY CLUSTERED 
(
	[idReservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Servicio](
	[idServicio] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[idServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServiciosVendidos]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiciosVendidos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServiciosVendidos](
	[idSerVen] [int] NOT NULL,
	[idVenta] [int] NULL,
	[idServicio] [int] NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_ServiciosVendidos] PRIMARY KEY CLUSTERED 
(
	[idSerVen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] NOT NULL,
	[idCliente] [int] NULL,
	[idEmpleado] [int] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VentaReservaciones]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VentaReservaciones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VentaReservaciones](
	[idVenReserv] [int] NOT NULL,
	[idVenta] [int] NULL,
	[idReservacion] [int] NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_VentaReservaciones] PRIMARY KEY CLUSTERED 
(
	[idVenReserv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[EmpleadoDepartamento]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[EmpleadoDepartamento]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[EmpleadoDepartamento] as(
select COUNT(e.idempleado) as ''numero de empleados'', d.nombre
FROM Empleado as e
inner join Departamento as d on d.idDepartamento = e.idDepartamento
group by d.nombre
)' 
GO
/****** Object:  View [dbo].[EmpleadoRecepcion]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[EmpleadoRecepcion]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[EmpleadoRecepcion] as(
select (e.Nombre + '' '' + e.ApPat+ '' '' +e.ApMat) as NombreCompleto,
	   d.nombre
 from Empleado as e
 left join Departamento as d on d.idDepartamento = e.idDepartamento
 where d.nombre = ''Recepcion''
)' 
GO
/****** Object:  View [dbo].[EstadoHabitacion]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[EstadoHabitacion]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[EstadoHabitacion] as(
select h.idHabitacion,
	   d.estado
 from Habitacion as h
 left join Disponibilidad as d
 on h.idHabitacion = d.idHabitacion
)' 
GO
/****** Object:  View [dbo].[HabitacionesPiso]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[HabitacionesPiso]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[HabitacionesPiso] as(
select COUNT(idHabitacion) as ''numero de habitaciones'', piso
FROM Habitacion
group by piso
)' 
GO
/****** Object:  View [dbo].[ReservacionesDelMes]    Script Date: 13/10/2018 02:30:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReservacionesDelMes]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[ReservacionesDelMes] as(
	select r.idReservacion, c.nomComp as ''Nombre del Cliente'', r.fechaEntrada as ''Fecha de entrada reservacion'', 
	r.fechaSalida as ''Fecha Salida Reservacion''
	from Cliente as c inner join Venta as v on c.idCliente = v.idCliente
		inner join VentaReservaciones as vr on vr.idVenta = v.idVenta
		inner join Reservacion as r on r.idReservacion = vr.idReservacion
	Where MONTH(r.fechaEntrada) = MONTH(GETDATE())
)' 
GO
INSERT [dbo].[Cliente] ([idCliente], [nombre], [apPat], [apMat], [fotografia]) VALUES (101, N'Mauro', N'Duque', N'Montemayor', NULL)
INSERT [dbo].[Cliente] ([idCliente], [nombre], [apPat], [apMat], [fotografia]) VALUES (102, N'Luis Gerardo', N'Juárez', N'Melchor', NULL)
INSERT [dbo].[Cliente] ([idCliente], [nombre], [apPat], [apMat], [fotografia]) VALUES (103, N'Félix', N'Delgadillo', N'Barrios', NULL)
INSERT [dbo].[Cliente] ([idCliente], [nombre], [apPat], [apMat], [fotografia]) VALUES (104, N'Pablo', N'Rodríguez', N'Rea', NULL)
INSERT [dbo].[Cliente] ([idCliente], [nombre], [apPat], [apMat], [fotografia]) VALUES (105, N'Manuel', N'González', N'Aguilar', NULL)
INSERT [dbo].[Cliente] ([idCliente], [nombre], [apPat], [apMat], [fotografia]) VALUES (106, N'Fátima', N'Rodríguez', N'Rodríguez', NULL)
INSERT [dbo].[Cliente] ([idCliente], [nombre], [apPat], [apMat], [fotografia]) VALUES (107, N'Jose', N'Antonio', N'Juárez', NULL)
INSERT [dbo].[Departamento] ([idDepartamento], [nombre]) VALUES (1, N'Recepcion')
INSERT [dbo].[Departamento] ([idDepartamento], [nombre]) VALUES (2, N'Ama de llaves')
INSERT [dbo].[Departamento] ([idDepartamento], [nombre]) VALUES (3, N'Contabilidad')
INSERT [dbo].[Departamento] ([idDepartamento], [nombre]) VALUES (4, N'Mantenimiento y decoración')
INSERT [dbo].[Departamento] ([idDepartamento], [nombre]) VALUES (5, N'Alimentos y bebidas')
INSERT [dbo].[Departamento] ([idDepartamento], [nombre]) VALUES (6, N'Seguridad')
INSERT [dbo].[Departamento] ([idDepartamento], [nombre]) VALUES (7, N'Recursos Humanos')
INSERT [dbo].[Disponibilidad] ([idDisponibilidad], [idHabitacion], [fecha], [estado]) VALUES (11, NULL, CAST(0x0000A96A00000000 AS DateTime), N'Disponible')
INSERT [dbo].[Disponibilidad] ([idDisponibilidad], [idHabitacion], [fecha], [estado]) VALUES (12, NULL, CAST(0x0000A84A00000000 AS DateTime), N'No disponible')
INSERT [dbo].[Disponibilidad] ([idDisponibilidad], [idHabitacion], [fecha], [estado]) VALUES (13, NULL, CAST(0x0000A82C00000000 AS DateTime), N'No disponible')
INSERT [dbo].[Disponibilidad] ([idDisponibilidad], [idHabitacion], [fecha], [estado]) VALUES (14, NULL, CAST(0x0000A7F000000000 AS DateTime), N'No disponible')
INSERT [dbo].[Disponibilidad] ([idDisponibilidad], [idHabitacion], [fecha], [estado]) VALUES (15, NULL, CAST(0x0000A7D100000000 AS DateTime), N'Disponible')
INSERT [dbo].[Disponibilidad] ([idDisponibilidad], [idHabitacion], [fecha], [estado]) VALUES (16, NULL, CAST(0x0000A7BA00000000 AS DateTime), N'Disponible')
INSERT [dbo].[Disponibilidad] ([idDisponibilidad], [idHabitacion], [fecha], [estado]) VALUES (17, NULL, CAST(0x0000A79300000000 AS DateTime), N'No disponible')
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPat], [apMat], [edad], [idDepartamento]) VALUES (1, N'Juan', N'Ignacio', N'Zurita', 18, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPat], [apMat], [edad], [idDepartamento]) VALUES (2, N'Jorge', N'Rodríguez', N'Hernández', 34, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPat], [apMat], [edad], [idDepartamento]) VALUES (3, N'Pedro', N'Delgadilllo', N'Ata', 67, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPat], [apMat], [edad], [idDepartamento]) VALUES (4, N'Pablo', N'Melchor', N'Zapata', 24, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPat], [apMat], [edad], [idDepartamento]) VALUES (5, N'Félix', N'Rea', N'Paredes', 21, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPat], [apMat], [edad], [idDepartamento]) VALUES (6, N'Gerardo', N'Montemayor', N'González', 20, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPat], [apMat], [edad], [idDepartamento]) VALUES (7, N'Luis', N'Duque', N'Guerrero', 31, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPat], [apMat], [edad], [idDepartamento]) VALUES (8, N'Manuel', N'Juarez', N'Melchor', 22, 1)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPat], [apMat], [edad], [idDepartamento]) VALUES (9, N'Alan', N'Melchor', N'Méndez', 31, 6)
INSERT [dbo].[Empleado] ([idEmpleado], [nombre], [apPat], [apMat], [edad], [idDepartamento]) VALUES (10, N'Sofia', N'Melchor', N'Méndez', 35, 3)
INSERT [dbo].[Habitacion] ([idHabitacion], [clase], [piso], [costoDiario]) VALUES (101, N'Suite', 2, 3100)
INSERT [dbo].[Habitacion] ([idHabitacion], [clase], [piso], [costoDiario]) VALUES (102, N'Doble', 3, 1600)
INSERT [dbo].[Habitacion] ([idHabitacion], [clase], [piso], [costoDiario]) VALUES (103, N'Individual', 1, 800)
INSERT [dbo].[Habitacion] ([idHabitacion], [clase], [piso], [costoDiario]) VALUES (104, N'Doble', 3, 1600)
INSERT [dbo].[Habitacion] ([idHabitacion], [clase], [piso], [costoDiario]) VALUES (105, N'Suite', 2, 3100)
INSERT [dbo].[Habitacion] ([idHabitacion], [clase], [piso], [costoDiario]) VALUES (106, N'Individual', 4, 500)
INSERT [dbo].[Habitacion] ([idHabitacion], [clase], [piso], [costoDiario]) VALUES (107, N'Triple', 2, 1200)
INSERT [dbo].[Nomina] ([idNomina], [idEmpleado], [idDepartamento], [sueldoPorHora], [horasTrabajadas], [sueldoTotal]) VALUES (101, NULL, NULL, 50, 8, 400)
INSERT [dbo].[Nomina] ([idNomina], [idEmpleado], [idDepartamento], [sueldoPorHora], [horasTrabajadas], [sueldoTotal]) VALUES (102, NULL, NULL, 50, 14, 700)
INSERT [dbo].[Nomina] ([idNomina], [idEmpleado], [idDepartamento], [sueldoPorHora], [horasTrabajadas], [sueldoTotal]) VALUES (103, NULL, NULL, 50, 4, 200)
INSERT [dbo].[Nomina] ([idNomina], [idEmpleado], [idDepartamento], [sueldoPorHora], [horasTrabajadas], [sueldoTotal]) VALUES (104, NULL, NULL, 50, 9, 450)
INSERT [dbo].[Nomina] ([idNomina], [idEmpleado], [idDepartamento], [sueldoPorHora], [horasTrabajadas], [sueldoTotal]) VALUES (105, NULL, NULL, 50, 10, 500)
INSERT [dbo].[Nomina] ([idNomina], [idEmpleado], [idDepartamento], [sueldoPorHora], [horasTrabajadas], [sueldoTotal]) VALUES (106, NULL, NULL, 50, 20, 1000)
INSERT [dbo].[Nomina] ([idNomina], [idEmpleado], [idDepartamento], [sueldoPorHora], [horasTrabajadas], [sueldoTotal]) VALUES (107, NULL, NULL, 50, 48, 2400)
INSERT [dbo].[PeriodoReservacion] ([idPeriReserv], [idDisponibilidad], [idReservacion]) VALUES (1, NULL, NULL)
INSERT [dbo].[PeriodoReservacion] ([idPeriReserv], [idDisponibilidad], [idReservacion]) VALUES (2, NULL, NULL)
INSERT [dbo].[PeriodoReservacion] ([idPeriReserv], [idDisponibilidad], [idReservacion]) VALUES (3, NULL, NULL)
INSERT [dbo].[PeriodoReservacion] ([idPeriReserv], [idDisponibilidad], [idReservacion]) VALUES (4, NULL, NULL)
INSERT [dbo].[PeriodoReservacion] ([idPeriReserv], [idDisponibilidad], [idReservacion]) VALUES (5, NULL, NULL)
INSERT [dbo].[PeriodoReservacion] ([idPeriReserv], [idDisponibilidad], [idReservacion]) VALUES (6, NULL, NULL)
INSERT [dbo].[PeriodoReservacion] ([idPeriReserv], [idDisponibilidad], [idReservacion]) VALUES (7, NULL, NULL)
INSERT [dbo].[Reservacion] ([idReservacion], [idHabitacion], [fechaEntrada], [fechaSalida], [estado], [diasReservados], [costoDiario]) VALUES (1, NULL, CAST(0x3D3D0B00 AS Date), CAST(0x3E3D0B00 AS Date), N'pagada', 1, 500)
INSERT [dbo].[Reservacion] ([idReservacion], [idHabitacion], [fechaEntrada], [fechaSalida], [estado], [diasReservados], [costoDiario]) VALUES (2, NULL, CAST(0xD73E0B00 AS Date), CAST(0xD33E0B00 AS Date), N'por pagar', 3, 1000)
INSERT [dbo].[Reservacion] ([idReservacion], [idHabitacion], [fechaEntrada], [fechaSalida], [estado], [diasReservados], [costoDiario]) VALUES (3, NULL, CAST(0x833D0B00 AS Date), CAST(0x873D0B00 AS Date), N'pagada', 4, 1500)
INSERT [dbo].[Reservacion] ([idReservacion], [idHabitacion], [fechaEntrada], [fechaSalida], [estado], [diasReservados], [costoDiario]) VALUES (4, NULL, CAST(0x563C0B00 AS Date), CAST(0x5B3C0B00 AS Date), N'por pagar', 5, 1100)
INSERT [dbo].[Reservacion] ([idReservacion], [idHabitacion], [fechaEntrada], [fechaSalida], [estado], [diasReservados], [costoDiario]) VALUES (5, NULL, CAST(0xDA3E0B00 AS Date), CAST(0xD53E0B00 AS Date), N'pagada', 3, 860)
INSERT [dbo].[Reservacion] ([idReservacion], [idHabitacion], [fechaEntrada], [fechaSalida], [estado], [diasReservados], [costoDiario]) VALUES (6, NULL, CAST(0x45380B00 AS Date), CAST(0x48380B00 AS Date), N'pagada', 3, 2500)
INSERT [dbo].[Reservacion] ([idReservacion], [idHabitacion], [fechaEntrada], [fechaSalida], [estado], [diasReservados], [costoDiario]) VALUES (7, NULL, CAST(0x82380B00 AS Date), CAST(0x87380B00 AS Date), N'pagada', 5, 1450)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (1, N'limpieza', 1000)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (2, N'SPA', 4000)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (3, N'Transporte', 400)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (4, N'Cena', 300)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (5, N'Piscina', 1600)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (6, N'Toallas', 50)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (7, N'TV por cable', 500)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (8, N'SPA', 500)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (9, N'Cena', 300)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (10, N'Cena', 300)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (11, N'limpieza', 1000)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (12, N'limpieza', 500)
INSERT [dbo].[Servicio] ([idServicio], [nombre], [precio]) VALUES (13, N'Cena', 250)
INSERT [dbo].[ServiciosVendidos] ([idSerVen], [idVenta], [idServicio], [fecha]) VALUES (1, NULL, NULL, CAST(0x0000A31F00000000 AS DateTime))
INSERT [dbo].[ServiciosVendidos] ([idSerVen], [idVenta], [idServicio], [fecha]) VALUES (2, NULL, NULL, CAST(0x0000A82C00000000 AS DateTime))
INSERT [dbo].[ServiciosVendidos] ([idSerVen], [idVenta], [idServicio], [fecha]) VALUES (3, NULL, NULL, CAST(0x0000A47900000000 AS DateTime))
INSERT [dbo].[ServiciosVendidos] ([idSerVen], [idVenta], [idServicio], [fecha]) VALUES (4, NULL, NULL, CAST(0x0000A8C400000000 AS DateTime))
INSERT [dbo].[ServiciosVendidos] ([idSerVen], [idVenta], [idServicio], [fecha]) VALUES (5, NULL, NULL, CAST(0x00009FD800000000 AS DateTime))
INSERT [dbo].[ServiciosVendidos] ([idSerVen], [idVenta], [idServicio], [fecha]) VALUES (6, NULL, NULL, CAST(0x0000A05600000000 AS DateTime))
INSERT [dbo].[ServiciosVendidos] ([idSerVen], [idVenta], [idServicio], [fecha]) VALUES (7, NULL, NULL, CAST(0x00009FF400000000 AS DateTime))
INSERT [dbo].[Venta] ([idVenta], [idCliente], [idEmpleado]) VALUES (1, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idCliente], [idEmpleado]) VALUES (2, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idCliente], [idEmpleado]) VALUES (3, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idCliente], [idEmpleado]) VALUES (4, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idCliente], [idEmpleado]) VALUES (5, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idCliente], [idEmpleado]) VALUES (6, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idCliente], [idEmpleado]) VALUES (7, NULL, NULL)
INSERT [dbo].[VentaReservaciones] ([idVenReserv], [idVenta], [idReservacion], [precio]) VALUES (1, NULL, NULL, 16000)
INSERT [dbo].[VentaReservaciones] ([idVenReserv], [idVenta], [idReservacion], [precio]) VALUES (2, NULL, NULL, 11000)
INSERT [dbo].[VentaReservaciones] ([idVenReserv], [idVenta], [idReservacion], [precio]) VALUES (3, NULL, NULL, 9000)
INSERT [dbo].[VentaReservaciones] ([idVenReserv], [idVenta], [idReservacion], [precio]) VALUES (4, NULL, NULL, 700)
INSERT [dbo].[VentaReservaciones] ([idVenReserv], [idVenta], [idReservacion], [precio]) VALUES (5, NULL, NULL, 1300)
INSERT [dbo].[VentaReservaciones] ([idVenReserv], [idVenta], [idReservacion], [precio]) VALUES (6, NULL, NULL, 7000)
INSERT [dbo].[VentaReservaciones] ([idVenReserv], [idVenta], [idReservacion], [precio]) VALUES (7, NULL, NULL, 19000)
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Disponibilidad_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Disponibilidad]'))
ALTER TABLE [dbo].[Disponibilidad]  WITH CHECK ADD  CONSTRAINT [FK_Disponibilidad_Habitacion] FOREIGN KEY([idHabitacion])
REFERENCES [dbo].[Habitacion] ([idHabitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Disponibilidad_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Disponibilidad]'))
ALTER TABLE [dbo].[Disponibilidad] CHECK CONSTRAINT [FK_Disponibilidad_Habitacion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Departamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado]  WITH NOCHECK ADD  CONSTRAINT [FK_Empleado_Departamento] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[Departamento] ([idDepartamento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Departamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] NOCHECK CONSTRAINT [FK_Empleado_Departamento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nomina_Departamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nomina]'))
ALTER TABLE [dbo].[Nomina]  WITH CHECK ADD  CONSTRAINT [FK_Nomina_Departamento] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[Departamento] ([idDepartamento])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nomina_Departamento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nomina]'))
ALTER TABLE [dbo].[Nomina] CHECK CONSTRAINT [FK_Nomina_Departamento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nomina_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nomina]'))
ALTER TABLE [dbo].[Nomina]  WITH CHECK ADD  CONSTRAINT [FK_Nomina_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Nomina_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Nomina]'))
ALTER TABLE [dbo].[Nomina] CHECK CONSTRAINT [FK_Nomina_Empleado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PeriodoReservacion_Disponibilidad]') AND parent_object_id = OBJECT_ID(N'[dbo].[PeriodoReservacion]'))
ALTER TABLE [dbo].[PeriodoReservacion]  WITH CHECK ADD  CONSTRAINT [FK_PeriodoReservacion_Disponibilidad] FOREIGN KEY([idDisponibilidad])
REFERENCES [dbo].[Disponibilidad] ([idDisponibilidad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PeriodoReservacion_Disponibilidad]') AND parent_object_id = OBJECT_ID(N'[dbo].[PeriodoReservacion]'))
ALTER TABLE [dbo].[PeriodoReservacion] CHECK CONSTRAINT [FK_PeriodoReservacion_Disponibilidad]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PeriodoReservacion_Reservacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[PeriodoReservacion]'))
ALTER TABLE [dbo].[PeriodoReservacion]  WITH CHECK ADD  CONSTRAINT [FK_PeriodoReservacion_Reservacion] FOREIGN KEY([idReservacion])
REFERENCES [dbo].[Reservacion] ([idReservacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PeriodoReservacion_Reservacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[PeriodoReservacion]'))
ALTER TABLE [dbo].[PeriodoReservacion] CHECK CONSTRAINT [FK_PeriodoReservacion_Reservacion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservacion_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservacion]'))
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_Reservacion_Habitacion] FOREIGN KEY([idHabitacion])
REFERENCES [dbo].[Habitacion] ([idHabitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Reservacion_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservacion]'))
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [FK_Reservacion_Habitacion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiciosVendidos_Servicio]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiciosVendidos]'))
ALTER TABLE [dbo].[ServiciosVendidos]  WITH CHECK ADD  CONSTRAINT [FK_ServiciosVendidos_Servicio] FOREIGN KEY([idServicio])
REFERENCES [dbo].[Servicio] ([idServicio])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiciosVendidos_Servicio]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiciosVendidos]'))
ALTER TABLE [dbo].[ServiciosVendidos] CHECK CONSTRAINT [FK_ServiciosVendidos_Servicio]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiciosVendidos_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiciosVendidos]'))
ALTER TABLE [dbo].[ServiciosVendidos]  WITH CHECK ADD  CONSTRAINT [FK_ServiciosVendidos_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ServiciosVendidos_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[ServiciosVendidos]'))
ALTER TABLE [dbo].[ServiciosVendidos] CHECK CONSTRAINT [FK_ServiciosVendidos_Venta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cliente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Empleado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VentaReservaciones_Reservacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[VentaReservaciones]'))
ALTER TABLE [dbo].[VentaReservaciones]  WITH CHECK ADD  CONSTRAINT [FK_VentaReservaciones_Reservacion] FOREIGN KEY([idReservacion])
REFERENCES [dbo].[Reservacion] ([idReservacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VentaReservaciones_Reservacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[VentaReservaciones]'))
ALTER TABLE [dbo].[VentaReservaciones] CHECK CONSTRAINT [FK_VentaReservaciones_Reservacion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VentaReservaciones_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[VentaReservaciones]'))
ALTER TABLE [dbo].[VentaReservaciones]  WITH CHECK ADD  CONSTRAINT [FK_VentaReservaciones_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VentaReservaciones_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[VentaReservaciones]'))
ALTER TABLE [dbo].[VentaReservaciones] CHECK CONSTRAINT [FK_VentaReservaciones_Venta]
GO
USE [master]
GO
ALTER DATABASE [BDHotel] SET  READ_WRITE 
GO
