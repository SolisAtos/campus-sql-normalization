USE [master]
GO
/****** Object:  Database [PerformanceReviewNormalizacion]    Script Date: 7/22/2022 12:50:20 PM ******/
CREATE DATABASE [PerformanceReviewNormalizacion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PerformanceReviewNormalizacion', FILENAME = N'/var/opt/mssql/data/PerformanceReviewNormalizacion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PerformanceReviewNormalizacion_log', FILENAME = N'/var/opt/mssql/data/PerformanceReviewNormalizacion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PerformanceReviewNormalizacion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET ARITHABORT OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET RECOVERY FULL 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET  MULTI_USER 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PerformanceReviewNormalizacion', N'ON'
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET QUERY_STORE = OFF
GO
USE [PerformanceReviewNormalizacion]
GO
/****** Object:  Table [dbo].[Aeropuerto]    Script Date: 7/22/2022 12:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aeropuerto](
	[ID] [int] NOT NULL,
	[NombreAeropuerto] [varchar](25) NULL,
	[CodigoAeropuerto] [varchar](5) NULL,
	[Distancia_km] [real] NULL,
 CONSTRAINT [PK_Aeropuerto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Aeropuerto] UNIQUE NONCLUSTERED 
(
	[CodigoAeropuerto] ASC,
	[NombreAeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 7/22/2022 12:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[Id_art] [int] NOT NULL,
	[Nom_art] [varchar](50) NULL,
	[Precio_unidad] [real] NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[Id_art] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 7/22/2022 12:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[HabCiudad_M] [real] NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Ciudad] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 7/22/2022 12:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_cliente] [int] NOT NULL,
	[Nom_cliente] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 7/22/2022 12:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[Id_estado] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[Id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Normalizada]    Script Date: 7/22/2022 12:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Normalizada](
	[CiudadID] [int] NOT NULL,
	[PaisID] [int] NULL,
	[AeropuertoID] [int] NULL,
 CONSTRAINT [PK_Normalizada] PRIMARY KEY CLUSTERED 
(
	[CiudadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Normalizado_Ordenes]    Script Date: 7/22/2022 12:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Normalizado_Ordenes](
	[Id_orden] [int] NOT NULL,
	[Fecha] [date] NULL,
	[Id_cliente] [int] NULL,
	[Id_estado] [int] NULL,
	[Id_articulo] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio] [real] NULL,
 CONSTRAINT [PK_Normalizado_Ordenes] PRIMARY KEY CLUSTERED 
(
	[Id_orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Original]    Script Date: 7/22/2022 12:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Original](
	[Ciudad] [varchar](50) NOT NULL,
	[HabCiudad_M] [real] NULL,
	[Pais] [varchar](50) NULL,
	[HabPais_M] [real] NULL,
	[PerteneceUE] [bit] NULL,
	[CodigoAeropuerto] [varchar](5) NULL,
	[NombreAeropuerto] [varchar](25) NULL,
	[Distancia_km] [real] NULL,
 CONSTRAINT [PK_Original] PRIMARY KEY CLUSTERED 
(
	[Ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Original_Ordenes]    Script Date: 7/22/2022 12:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Original_Ordenes](
	[Id_orden] [int] NOT NULL,
	[Fecha] [date] NULL,
	[Id_cliente] [int] NOT NULL,
	[Nom_cliente] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
	[Num_art] [int] NULL,
	[Nom_art] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[Precio] [real] NULL,
 CONSTRAINT [PK_Original_Ordenes] PRIMARY KEY CLUSTERED 
(
	[Id_orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 7/22/2022 12:50:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[HabPais_M] [real] NULL,
	[PerteneceUE] [bit] NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Normalizada]    Script Date: 7/22/2022 12:50:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_Normalizada] ON [dbo].[Normalizada]
(
	[CiudadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Normalizada]  WITH CHECK ADD  CONSTRAINT [FK_Normalizada_Aeropuerto] FOREIGN KEY([AeropuertoID])
REFERENCES [dbo].[Aeropuerto] ([ID])
GO
ALTER TABLE [dbo].[Normalizada] CHECK CONSTRAINT [FK_Normalizada_Aeropuerto]
GO
ALTER TABLE [dbo].[Normalizada]  WITH CHECK ADD  CONSTRAINT [FK_Normalizada_Ciudad] FOREIGN KEY([CiudadID])
REFERENCES [dbo].[Ciudad] ([ID])
GO
ALTER TABLE [dbo].[Normalizada] CHECK CONSTRAINT [FK_Normalizada_Ciudad]
GO
ALTER TABLE [dbo].[Normalizada]  WITH CHECK ADD  CONSTRAINT [FK_Normalizada_Pais] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Pais] ([ID])
GO
ALTER TABLE [dbo].[Normalizada] CHECK CONSTRAINT [FK_Normalizada_Pais]
GO
ALTER TABLE [dbo].[Normalizado_Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Normalizado_Ordenes_Articulo] FOREIGN KEY([Id_articulo])
REFERENCES [dbo].[Articulo] ([Id_art])
GO
ALTER TABLE [dbo].[Normalizado_Ordenes] CHECK CONSTRAINT [FK_Normalizado_Ordenes_Articulo]
GO
ALTER TABLE [dbo].[Normalizado_Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Normalizado_Ordenes_Cliente] FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[Cliente] ([Id_cliente])
GO
ALTER TABLE [dbo].[Normalizado_Ordenes] CHECK CONSTRAINT [FK_Normalizado_Ordenes_Cliente]
GO
ALTER TABLE [dbo].[Normalizado_Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Normalizado_Ordenes_Estado] FOREIGN KEY([Id_estado])
REFERENCES [dbo].[Estado] ([Id_estado])
GO
ALTER TABLE [dbo].[Normalizado_Ordenes] CHECK CONSTRAINT [FK_Normalizado_Ordenes_Estado]
GO
USE [master]
GO
ALTER DATABASE [PerformanceReviewNormalizacion] SET  READ_WRITE 
GO
