USE [Hotel]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Venta__mCosto__412EB0B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [CK__Venta__mCosto__412EB0B6]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Reservaci__dtFec__3E52440B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservacion]'))
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [CK__Reservaci__dtFec__3E52440B]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Reservaci__dtFec__3D5E1FD2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservacion]'))
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT [CK__Reservaci__dtFec__3D5E1FD2]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Huesped__iEdad__440B1D61]') AND parent_object_id = OBJECT_ID(N'[dbo].[Huesped]'))
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT [CK__Huesped__iEdad__440B1D61]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Habitacio__tNum___37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT [CK__Habitacio__tNum___37A5467C]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Habitacio__tCapa__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT [CK__Habitacio__tCapa__36B12243]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Empleado__iEdad__3A81B327]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [CK__Empleado__iEdad__3A81B327]
GO
/****** Object:  Index [Precio]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND name = N'Precio')
DROP INDEX [Precio] ON [dbo].[Venta]
GO
/****** Object:  Index [Costo]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND name = N'Costo')
DROP INDEX [Costo] ON [dbo].[Reservacion]
GO
/****** Object:  Index [Nombre_Huesped]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Huesped]') AND name = N'Nombre_Huesped')
DROP INDEX [Nombre_Huesped] ON [dbo].[Huesped]
GO
/****** Object:  Index [Capacidad]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND name = N'Capacidad')
DROP INDEX [Capacidad] ON [dbo].[Habitacion]
GO
/****** Object:  Index [Calificaciones]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND name = N'Calificaciones')
DROP INDEX [Calificaciones] ON [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND type in (N'U'))
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND type in (N'U'))
DROP TABLE [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Huesped]') AND type in (N'U'))
DROP TABLE [dbo].[Huesped]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND type in (N'U'))
DROP TABLE [dbo].[Habitacion]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
DROP TABLE [dbo].[Empleado]
GO
USE [master]
GO
/****** Object:  Database [Hotel]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'Hotel')
DROP DATABASE [Hotel]
GO
/****** Object:  Database [Hotel]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Hotel')
BEGIN
CREATE DATABASE [Hotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hotel', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Hotel.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hotel_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Hotel_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [Hotel] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hotel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hotel] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Hotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hotel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hotel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hotel] SET  MULTI_USER 
GO
ALTER DATABASE [Hotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hotel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Hotel]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 06/09/2018 11:17:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empleado](
	[iIdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[imgFoto] [image] NULL,
	[iEdad] [int] NULL,
	[vNombre] [varchar](20) NULL,
	[vAp_Pat] [varchar](30) NULL,
	[vAp_Mat] [varchar](30) NULL,
	[iTelefono] [int] NULL,
	[Nombre_Completo]  AS (([vNombre]+[vAp_Pat])+[vAp_Mat]),
	[mSalario] [money] NULL,
	[dCalificacion] [decimal](3, 1) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 06/09/2018 11:17:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Habitacion](
	[iIdHabitacion] [int] IDENTITY(1,1) NOT NULL,
	[tCapacidad] [tinyint] NULL,
	[tNum_Camas] [tinyint] NULL,
	[tNum_piso] [tinyint] NULL,
	[mCosto] [money] NULL,
	[imgFoto] [image] NULL,
	[Capacidad_Camas]  AS ((('Capacidad: '+[tCapacidad])+'Costo: ')+[mCosto]),
PRIMARY KEY CLUSTERED 
(
	[iIdHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 06/09/2018 11:17:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Huesped]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Huesped](
	[iId_Huesped] [int] IDENTITY(1,1) NOT NULL,
	[iEdad] [bit] NULL,
	[vNombre] [varchar](20) NULL,
	[vAp_Pat] [varchar](20) NULL,
	[vAp_Mat] [varchar](20) NULL,
	[cSexo] [char](1) NULL,
	[iTelefono] [int] NULL,
	[vCiudad] [varchar](20) NULL,
	[vPais] [varchar](20) NULL,
	[iNum_Integrantes] [int] NULL,
	[nombre_Completo]  AS (([vNombre]+[vAp_Pat])+[vAp_Mat]),
PRIMARY KEY CLUSTERED 
(
	[iId_Huesped] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 06/09/2018 11:17:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Reservacion](
	[iId_Reservacion] [int] IDENTITY(1,1) NOT NULL,
	[dtFecha_Entrada] [datetime] NULL,
	[dtFecha_Salida] [datetime] NULL,
	[fCosto] [float] NULL,
	[Fecha_Reservacion]  AS ((('Desde: '+[dtFecha_Entrada])+'hasta: ')+[dtFecha_Salida]),
PRIMARY KEY CLUSTERED 
(
	[iId_Reservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 06/09/2018 11:17:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Venta](
	[iId_Venta] [int] IDENTITY(1,1) NOT NULL,
	[dtFecha] [datetime] NULL,
	[mCosto] [money] NULL,
	[Descripcion_Venta]  AS ((('Fecha: '+[dtFecha])+'Costo: ')+[mCosto]),
PRIMARY KEY CLUSTERED 
(
	[iId_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Index [Calificaciones]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND name = N'Calificaciones')
CREATE NONCLUSTERED INDEX [Calificaciones] ON [dbo].[Empleado]
(
	[dCalificacion] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Capacidad]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND name = N'Capacidad')
CREATE NONCLUSTERED INDEX [Capacidad] ON [dbo].[Habitacion]
(
	[tCapacidad] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [Nombre_Huesped]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Huesped]') AND name = N'Nombre_Huesped')
CREATE NONCLUSTERED INDEX [Nombre_Huesped] ON [dbo].[Huesped]
(
	[nombre_Completo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Costo]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND name = N'Costo')
CREATE NONCLUSTERED INDEX [Costo] ON [dbo].[Reservacion]
(
	[fCosto] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Precio]    Script Date: 06/09/2018 11:17:08 p.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND name = N'Precio')
CREATE NONCLUSTERED INDEX [Precio] ON [dbo].[Venta]
(
	[mCosto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Empleado__iEdad__3A81B327]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD CHECK  (([iEdad]>=(18) AND [iEdad]<=(120)))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Habitacio__tCapa__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD CHECK  (([tCapacidad]>(0) AND [tCapacidad]<=(10)))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Habitacio__tNum___37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[Habitacion]'))
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD CHECK  (([tNum_Camas]>(0) AND [tNum_Camas]<=(5)))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Huesped__iEdad__440B1D61]') AND parent_object_id = OBJECT_ID(N'[dbo].[Huesped]'))
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD CHECK  (([iEdad]>=(18) AND [iEdad]<=(120)))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Reservaci__dtFec__3D5E1FD2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservacion]'))
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD CHECK  (([dtFecha_Entrada]>((1996)/(1))/(1) AND [dtFecha_Entrada]<=((2100)/(12))/(1)))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Reservaci__dtFec__3E52440B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Reservacion]'))
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD CHECK  (([dtFecha_Salida]>((1996)/(1))/(2) AND [dtFecha_Salida]<=((2100)/(12))/(2)))
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK__Venta__mCosto__412EB0B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD CHECK  (([mCosto]>(0)))
GO
USE [master]
GO
ALTER DATABASE [Hotel] SET  READ_WRITE 
GO
