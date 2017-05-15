USE [master]
GO
/****** Object:  Database [IronArmadaSystem]    Script Date: 5/14/2017 9:25:37 PM ******/
CREATE DATABASE [IronArmadaSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IronArmadaSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\IronArmadaSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'IronArmadaSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\IronArmadaSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [IronArmadaSystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IronArmadaSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IronArmadaSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IronArmadaSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IronArmadaSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IronArmadaSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IronArmadaSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IronArmadaSystem] SET  MULTI_USER 
GO
ALTER DATABASE [IronArmadaSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IronArmadaSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IronArmadaSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IronArmadaSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [IronArmadaSystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [IronArmadaSystem]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/14/2017 9:25:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[TypeID] [int] NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Armory]    Script Date: 5/14/2017 9:25:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Armory](
	[ArmoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Color] [varchar](50) NULL,
	[Photo] [nvarchar](500) NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
 CONSTRAINT [PK_Armory] PRIMARY KEY CLUSTERED 
(
	[ArmoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/14/2017 9:25:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Occasions]    Script Date: 5/14/2017 9:25:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Occasions](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Occasions] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 5/14/2017 9:25:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/14/2017 9:25:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/14/2017 9:25:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Types]    Script Date: 5/14/2017 9:25:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Types](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Types] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Types] ([TypeID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Types]
GO
ALTER TABLE [dbo].[Armory]  WITH CHECK ADD  CONSTRAINT [FK_Armory_Accessories] FOREIGN KEY([AccID])
REFERENCES [dbo].[Accessories] ([AccID])
GO
ALTER TABLE [dbo].[Armory] CHECK CONSTRAINT [FK_Armory_Accessories]
GO
ALTER TABLE [dbo].[Armory]  WITH CHECK ADD  CONSTRAINT [FK_Armory_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Armory] CHECK CONSTRAINT [FK_Armory_Bottoms]
GO
ALTER TABLE [dbo].[Armory]  WITH CHECK ADD  CONSTRAINT [FK_Armory_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Armory] CHECK CONSTRAINT [FK_Armory_Occasions]
GO
ALTER TABLE [dbo].[Armory]  WITH CHECK ADD  CONSTRAINT [FK_Armory_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Armory] CHECK CONSTRAINT [FK_Armory_Seasons]
GO
ALTER TABLE [dbo].[Armory]  WITH CHECK ADD  CONSTRAINT [FK_Armory_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Armory] CHECK CONSTRAINT [FK_Armory_Shoes]
GO
ALTER TABLE [dbo].[Armory]  WITH CHECK ADD  CONSTRAINT [FK_Armory_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Armory] CHECK CONSTRAINT [FK_Armory_Tops]
GO
USE [master]
GO
ALTER DATABASE [IronArmadaSystem] SET  READ_WRITE 
GO
