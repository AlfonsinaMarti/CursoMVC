USE [master]
GO
/****** Object:  Database [cursomvc]    Script Date: 12/10/2019 12:19:32 p. m. ******/
CREATE DATABASE [cursomvc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cursomvc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\cursomvc.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cursomvc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\cursomvc_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cursomvc] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cursomvc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cursomvc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cursomvc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cursomvc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cursomvc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cursomvc] SET ARITHABORT OFF 
GO
ALTER DATABASE [cursomvc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cursomvc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cursomvc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cursomvc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cursomvc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cursomvc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cursomvc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cursomvc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cursomvc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cursomvc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cursomvc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cursomvc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cursomvc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cursomvc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cursomvc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cursomvc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cursomvc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cursomvc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cursomvc] SET  MULTI_USER 
GO
ALTER DATABASE [cursomvc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cursomvc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cursomvc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cursomvc] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [cursomvc] SET DELAYED_DURABILITY = DISABLED 
GO
USE [cursomvc]
GO
/****** Object:  Table [dbo].[animal]    Script Date: 12/10/2019 12:19:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[animal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[idAnimal_class] [int] NOT NULL,
 CONSTRAINT [PK_animal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[animal_class]    Script Date: 12/10/2019 12:19:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[animal_class](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cstate]    Script Date: 12/10/2019 12:19:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cstate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_cstate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 12/10/2019 12:19:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](100) NULL,
	[idState] [int] NULL,
	[edad] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[animal] ON 

INSERT [dbo].[animal] ([id], [name], [idAnimal_class]) VALUES (1, N'Perro', 1)
INSERT [dbo].[animal] ([id], [name], [idAnimal_class]) VALUES (2, N'Gato', 1)
INSERT [dbo].[animal] ([id], [name], [idAnimal_class]) VALUES (3, N'León', 1)
INSERT [dbo].[animal] ([id], [name], [idAnimal_class]) VALUES (4, N'Gallo', 2)
INSERT [dbo].[animal] ([id], [name], [idAnimal_class]) VALUES (5, N'Golondrina', 2)
INSERT [dbo].[animal] ([id], [name], [idAnimal_class]) VALUES (6, N'Payaso', 3)
INSERT [dbo].[animal] ([id], [name], [idAnimal_class]) VALUES (7, N'Sardina', 3)
INSERT [dbo].[animal] ([id], [name], [idAnimal_class]) VALUES (8, N'Globo', 3)
INSERT [dbo].[animal] ([id], [name], [idAnimal_class]) VALUES (9, N'Hormiga', 4)
INSERT [dbo].[animal] ([id], [name], [idAnimal_class]) VALUES (10, N'Mariposa', 4)
SET IDENTITY_INSERT [dbo].[animal] OFF
SET IDENTITY_INSERT [dbo].[animal_class] ON 

INSERT [dbo].[animal_class] ([id], [name]) VALUES (1, N'Mamifero')
INSERT [dbo].[animal_class] ([id], [name]) VALUES (2, N'Aves')
INSERT [dbo].[animal_class] ([id], [name]) VALUES (3, N'Pez')
INSERT [dbo].[animal_class] ([id], [name]) VALUES (4, N'Insecto')
SET IDENTITY_INSERT [dbo].[animal_class] OFF
SET IDENTITY_INSERT [dbo].[cstate] ON 

INSERT [dbo].[cstate] ([id], [name]) VALUES (1, N'Activo')
INSERT [dbo].[cstate] ([id], [name]) VALUES (2, N'Inactivo')
INSERT [dbo].[cstate] ([id], [name]) VALUES (3, N'Eliminado')
SET IDENTITY_INSERT [dbo].[cstate] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [email], [password], [idState], [edad]) VALUES (1, N'contacto@hdeleon.net', N'000000', 1, 31)
INSERT [dbo].[user] ([id], [email], [password], [idState], [edad]) VALUES (2, N'contacto2@hdeleon.net', N'a', 3, 23)
INSERT [dbo].[user] ([id], [email], [password], [idState], [edad]) VALUES (3, N'contacto3@hotmail.com', N'a', 1, 23)
INSERT [dbo].[user] ([id], [email], [password], [idState], [edad]) VALUES (4, N'contactoa@hotmail.com', N'000000', 1, 20)
INSERT [dbo].[user] ([id], [email], [password], [idState], [edad]) VALUES (5, N'pepeeltoro@hotmail.com', N'k', 1, 80)
SET IDENTITY_INSERT [dbo].[user] OFF
ALTER TABLE [dbo].[animal]  WITH CHECK ADD  CONSTRAINT [FK_animal_animal_class] FOREIGN KEY([idAnimal_class])
REFERENCES [dbo].[animal_class] ([id])
GO
ALTER TABLE [dbo].[animal] CHECK CONSTRAINT [FK_animal_animal_class]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_cstate] FOREIGN KEY([idState])
REFERENCES [dbo].[cstate] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_cstate]
GO
USE [master]
GO
ALTER DATABASE [cursomvc] SET  READ_WRITE 
GO
