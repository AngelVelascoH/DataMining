USE [master]
GO
/****** Object:  Database [PPH_10-19]    Script Date: 02/11/2021 05:05:09 p. m. ******/
CREATE DATABASE [PPH_10-19]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PPH_10-19', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PPH_10-19.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PPH_10-19_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PPH_10-19_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PPH_10-19] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PPH_10-19].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PPH_10-19] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PPH_10-19] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PPH_10-19] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PPH_10-19] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PPH_10-19] SET ARITHABORT OFF 
GO
ALTER DATABASE [PPH_10-19] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PPH_10-19] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PPH_10-19] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PPH_10-19] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PPH_10-19] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PPH_10-19] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PPH_10-19] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PPH_10-19] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PPH_10-19] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PPH_10-19] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PPH_10-19] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PPH_10-19] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PPH_10-19] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PPH_10-19] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PPH_10-19] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PPH_10-19] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PPH_10-19] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PPH_10-19] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PPH_10-19] SET  MULTI_USER 
GO
ALTER DATABASE [PPH_10-19] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PPH_10-19] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PPH_10-19] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PPH_10-19] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PPH_10-19] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PPH_10-19] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PPH_10-19] SET QUERY_STORE = OFF
GO
USE [PPH_10-19]
GO
/****** Object:  Table [dbo].[Catalogo_elementos]    Script Date: 02/11/2021 05:05:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogo_elementos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Elemento_medicion] [varchar](100) NULL,
	[Abreviatura] [varchar](50) NULL,
	[Concentracion] [varchar](500) NULL,
 CONSTRAINT [PK_Catalogo_elementos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogo_Estaciones]    Script Date: 02/11/2021 05:05:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogo_Estaciones](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Estacion] [varchar](50) NULL,
	[Nombre] [varchar](200) NULL,
	[Ubicacion] [varchar](200) NULL,
 CONSTRAINT [PK_Catalogo_Estaciones] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registros_Principal]    Script Date: 02/11/2021 05:05:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registros_Principal](
	[ID_Registro] [int] IDENTITY(1,1) NOT NULL,
	[ID_Elemento] [int] NULL,
	[Año_Registro] [int] NULL,
	[Mes_Registro] [int] NULL,
	[Dia] [int] NULL,
	[Semana_Registro] [int] NULL,
	[ID_Estacion] [varchar](200) NULL,
	[Valor_Medicion] [float] NULL,
 CONSTRAINT [PK_Registros_Principal] PRIMARY KEY CLUSTERED 
(
	[ID_Registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PPH_10-19] SET  READ_WRITE 
GO
