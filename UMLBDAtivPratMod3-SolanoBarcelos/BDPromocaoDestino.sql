USE [master]
GO
/****** Object:  Database [AtvPratMod3SolanoBarcelos]    Script Date: 20/12/2021 20:23:08 ******/
CREATE DATABASE [AtvPratMod3SolanoBarcelos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AtvPratMod3SolanoBarcelos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AtvPratMod3SolanoBarcelos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AtvPratMod3SolanoBarcelos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AtvPratMod3SolanoBarcelos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AtvPratMod3SolanoBarcelos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET ARITHABORT OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET RECOVERY FULL 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET  MULTI_USER 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AtvPratMod3SolanoBarcelos', N'ON'
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET QUERY_STORE = OFF
GO
USE [AtvPratMod3SolanoBarcelos]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/12/2021 20:23:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destino]    Script Date: 20/12/2021 20:23:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destino](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cidade] [nvarchar](max) NULL,
	[estado] [nvarchar](max) NULL,
	[nome] [nvarchar](max) NULL,
 CONSTRAINT [PK_destino] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promocao]    Script Date: 20/12/2021 20:23:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promocao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](max) NULL,
	[destinoid] [int] NOT NULL,
 CONSTRAINT [PK_promocao] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220001841_mig1', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220004951_mig2', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220010519_mig3', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220013221_mig4', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[destino] ON 

INSERT [dbo].[destino] ([id], [cidade], [estado], [nome]) VALUES (5, N'BH', N'MG', N'Inhotim')
INSERT [dbo].[destino] ([id], [cidade], [estado], [nome]) VALUES (6, N'BH', N'MG', N'Serra do Cipó')
SET IDENTITY_INSERT [dbo].[destino] OFF
GO
SET IDENTITY_INSERT [dbo].[promocao] ON 

INSERT [dbo].[promocao] ([id], [nome], [destinoid]) VALUES (3, N'BH10', 5)
SET IDENTITY_INSERT [dbo].[promocao] OFF
GO
/****** Object:  Index [IX_promocao_destinoid]    Script Date: 20/12/2021 20:23:08 ******/
CREATE NONCLUSTERED INDEX [IX_promocao_destinoid] ON [dbo].[promocao]
(
	[destinoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[promocao]  WITH CHECK ADD  CONSTRAINT [FK_promocao_destino_destinoid] FOREIGN KEY([destinoid])
REFERENCES [dbo].[destino] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[promocao] CHECK CONSTRAINT [FK_promocao_destino_destinoid]
GO
USE [master]
GO
ALTER DATABASE [AtvPratMod3SolanoBarcelos] SET  READ_WRITE 
GO
