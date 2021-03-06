USE [master]
GO
/****** Object:  Database [IronArmadaSystem]    Script Date: 5/16/2017 9:32:46 AM ******/
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
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/16/2017 9:32:46 AM ******/
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
/****** Object:  Table [dbo].[Armory]    Script Date: 5/16/2017 9:32:46 AM ******/
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
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/16/2017 9:32:46 AM ******/
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
/****** Object:  Table [dbo].[Occasions]    Script Date: 5/16/2017 9:32:46 AM ******/
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
/****** Object:  Table [dbo].[Seasons]    Script Date: 5/16/2017 9:32:46 AM ******/
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
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/16/2017 9:32:46 AM ******/
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
/****** Object:  Table [dbo].[Tops]    Script Date: 5/16/2017 9:32:46 AM ******/
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
/****** Object:  Table [dbo].[Types]    Script Date: 5/16/2017 9:32:46 AM ******/
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
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccID], [Name], [TypeID]) VALUES (1, N'Repulsors', 1)
INSERT [dbo].[Accessories] ([AccID], [Name], [TypeID]) VALUES (2, N'Pulse Bolts', 1)
INSERT [dbo].[Accessories] ([AccID], [Name], [TypeID]) VALUES (3, N'Uni-Beam', 1)
INSERT [dbo].[Accessories] ([AccID], [Name], [TypeID]) VALUES (4, N'Radar', 2)
INSERT [dbo].[Accessories] ([AccID], [Name], [TypeID]) VALUES (5, N'Sonar', 2)
INSERT [dbo].[Accessories] ([AccID], [Name], [TypeID]) VALUES (6, N'Force Shield', 2)
INSERT [dbo].[Accessories] ([AccID], [Name], [TypeID]) VALUES (7, N'Suitcase', 3)
INSERT [dbo].[Accessories] ([AccID], [Name], [TypeID]) VALUES (8, N'Sports Car', 3)
INSERT [dbo].[Accessories] ([AccID], [Name], [TypeID]) VALUES (9, N'Wrist Watch', 3)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Armory] ON 

INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (1, N'Model 1', N'Silver', N'~/Content/M1.png', 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (2, N'Mark VIII - Silver Centurion', N'Red/SIlver', N'~/Content/SilverCenturion.jpg', 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (3, N'JRXL-1000: War Machine', N'Black/Silver', N'~/Content/JRXL1000.jpg', 1, 1, 1, 1, 3, 3)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (4, N'Model XII: Telepresence ', N'Red/Gold', N'~/Content/m12.jpg', 1, 1, 1, 1, 2, 3)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (5, N'Arctic Armor', N'Blue/Silver', N'~/Content/Arctic.jpg', 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (6, N'Iron Lantern', N'Green/Gold', N'~/Content/ironlantern.png', 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (7, N'Safe Armor', N'Red/Gold', N'~/Content/safe.jpg', 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (8, N'Thorbuster', N'Red/Gold', N'~/Content/Thorbuster.jpg', 1, 1, 1, 1, 3, 7)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (9, N'Extremis', N'Red/Gold', N'~/Content/Extremis.jpg', 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (10, N'Mark XLVI', N'Red/Gold', N'~/Content/XLVI.png', 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (11, N'Model 52', N'Red/Gold', N'~/Content/M52.jpg', 1, 1, 1, 1, 3, 7)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (12, N'Model 51', N'Red/Gold', N'~/Content/M51.jpg', 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (13, N'Model 50 “Endo Sym Armor”', N'Silver/Black', N'~/Content/M50EndoSym.jpg', 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (14, N'Iron Patriot, Rhodey', N'Red/White/Blue', N'~/Content/IronPatriotRhodey.jpg', 1, 1, 1, 1, 3, 3)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (15, N'Space Armor Model IV', N'Red/Gold', N'~/Content/SpaceMIV.jpg', 1, 1, 1, 1, 2, 6)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (16, N'Heavy Duty', N'Black/Gold', N'~/Content/HeavyDuty.jpg', 1, 1, 1, 1, 3, 7)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (17, N'Stealth Model IV', N'Black', N'~/Content/StealthMIV.jpg', 1, 1, 1, 1, 1, 4)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (18, N'Model 42', N'Black/Gold', N'~/Content/M42.jpg', 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (19, N'Model 39', N'Black/White', N'~/Content/m39.png', 1, 1, 1, 1, 2, 1)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (20, N'Phoenix Killer', N'Red/Gold', N'~/Content/pk.jpg', 1, 1, 1, 1, 3, 7)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (21, N'RESCUE', N'Red/Gold', N'~/Content/RESCUE.jpg', 1, 1, 1, 1, 1, 2)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (22, N'Satellite', N'Red/Gold', N'~/Content/Satellite Armor.jpg', 1, 1, 1, 1, 3, 7)
INSERT [dbo].[Armory] ([ArmoryID], [Name], [Color], [Photo], [TopID], [BottomID], [ShoeID], [AccID], [SeasonID], [OccasionID]) VALUES (23, N'Undersea Armor Model II', N'Red/Gold', N'~/Content/UnderseaMKII.jpg', 1, 1, 1, 1, 3, 5)
SET IDENTITY_INSERT [dbo].[Armory] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name]) VALUES (1, N'P.E.P.P.E.R. Automated Optimal Selection')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Occasions] ON 

INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (1, N'All-Purpose')
INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (2, N'Emergency')
INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (3, N'Fully-Loaded')
INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (4, N'Stealth')
INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (5, N'Subterranean')
INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (6, N'Space Travel')
INSERT [dbo].[Occasions] ([OccasionID], [Name]) VALUES (7, N'Buster Series')
SET IDENTITY_INSERT [dbo].[Occasions] OFF
SET IDENTITY_INSERT [dbo].[Seasons] ON 

INSERT [dbo].[Seasons] ([SeasonID], [Name]) VALUES (1, N'Light Armor')
INSERT [dbo].[Seasons] ([SeasonID], [Name]) VALUES (2, N'Standard Armor')
INSERT [dbo].[Seasons] ([SeasonID], [Name]) VALUES (3, N'Heavy Armor')
SET IDENTITY_INSERT [dbo].[Seasons] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [Name]) VALUES (1, N'P.E.P.P.E.R. Automated Optimal Selection')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name]) VALUES (1, N'P.E.P.P.E.R. Automated Optimal Selection')
SET IDENTITY_INSERT [dbo].[Tops] OFF
SET IDENTITY_INSERT [dbo].[Types] ON 

INSERT [dbo].[Types] ([TypeID], [Name]) VALUES (1, N'Weapon System')
INSERT [dbo].[Types] ([TypeID], [Name]) VALUES (2, N'Defense System')
INSERT [dbo].[Types] ([TypeID], [Name]) VALUES (3, N'Deployment Device')
SET IDENTITY_INSERT [dbo].[Types] OFF
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
