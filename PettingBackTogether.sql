USE [master]
GO
/****** Object:  Database [PettingBackTogether]    Script Date: 30.11.2022 02:58:18 ******/
CREATE DATABASE [PettingBackTogether]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PettingBackTogether', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PettingBackTogether.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PettingBackTogether_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PettingBackTogether_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PettingBackTogether] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PettingBackTogether].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PettingBackTogether] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PettingBackTogether] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PettingBackTogether] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PettingBackTogether] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PettingBackTogether] SET ARITHABORT OFF 
GO
ALTER DATABASE [PettingBackTogether] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PettingBackTogether] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PettingBackTogether] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PettingBackTogether] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PettingBackTogether] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PettingBackTogether] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PettingBackTogether] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PettingBackTogether] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PettingBackTogether] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PettingBackTogether] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PettingBackTogether] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PettingBackTogether] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PettingBackTogether] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PettingBackTogether] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PettingBackTogether] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PettingBackTogether] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PettingBackTogether] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PettingBackTogether] SET RECOVERY FULL 
GO
ALTER DATABASE [PettingBackTogether] SET  MULTI_USER 
GO
ALTER DATABASE [PettingBackTogether] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PettingBackTogether] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PettingBackTogether] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PettingBackTogether] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PettingBackTogether] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PettingBackTogether] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PettingBackTogether', N'ON'
GO
ALTER DATABASE [PettingBackTogether] SET QUERY_STORE = OFF
GO
USE [PettingBackTogether]
GO
/****** Object:  Table [dbo].[Animals]    Script Date: 30.11.2022 02:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[TypeId] [int] NOT NULL,
	[SubSpeciesId] [int] NOT NULL,
	[CoordinationId] [int] NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[ImagePath] [varchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Animals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Badges]    Script Date: 30.11.2022 02:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Badges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [varchar](500) NOT NULL,
	[Name] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Badges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coordinations]    Script Date: 30.11.2022 02:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coordinations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lat] [float] NOT NULL,
	[Lng] [float] NOT NULL,
 CONSTRAINT [PK_Coordinations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Species]    Script Date: 30.11.2022 02:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Species](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Icon] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Species] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubSpecies]    Script Date: 30.11.2022 02:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubSpecies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SpeciesId] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SubSpecies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 30.11.2022 02:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserBadges]    Script Date: 30.11.2022 02:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBadges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BadgeId] [int] NOT NULL,
 CONSTRAINT [PK_UserBadges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 30.11.2022 02:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[PasswordHash] [varbinary](500) NOT NULL,
	[PasswordSalt] [varbinary](500) NOT NULL,
	[FoundAnimalCount] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD  CONSTRAINT [FK_Animals_Coordinations] FOREIGN KEY([CoordinationId])
REFERENCES [dbo].[Coordinations] ([Id])
GO
ALTER TABLE [dbo].[Animals] CHECK CONSTRAINT [FK_Animals_Coordinations]
GO
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD  CONSTRAINT [FK_Animals_SubSpecies] FOREIGN KEY([SubSpeciesId])
REFERENCES [dbo].[SubSpecies] ([Id])
GO
ALTER TABLE [dbo].[Animals] CHECK CONSTRAINT [FK_Animals_SubSpecies]
GO
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD  CONSTRAINT [FK_Animals_Types] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Types] ([Id])
GO
ALTER TABLE [dbo].[Animals] CHECK CONSTRAINT [FK_Animals_Types]
GO
ALTER TABLE [dbo].[Animals]  WITH CHECK ADD  CONSTRAINT [FK_Animals_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Animals] CHECK CONSTRAINT [FK_Animals_Users]
GO
ALTER TABLE [dbo].[SubSpecies]  WITH CHECK ADD  CONSTRAINT [FK_SubSpecies_Species] FOREIGN KEY([SpeciesId])
REFERENCES [dbo].[Species] ([Id])
GO
ALTER TABLE [dbo].[SubSpecies] CHECK CONSTRAINT [FK_SubSpecies_Species]
GO
ALTER TABLE [dbo].[UserBadges]  WITH CHECK ADD  CONSTRAINT [FK_UserBadges_Badges] FOREIGN KEY([BadgeId])
REFERENCES [dbo].[Badges] ([Id])
GO
ALTER TABLE [dbo].[UserBadges] CHECK CONSTRAINT [FK_UserBadges_Badges]
GO
ALTER TABLE [dbo].[UserBadges]  WITH CHECK ADD  CONSTRAINT [FK_UserBadges_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserBadges] CHECK CONSTRAINT [FK_UserBadges_Users]
GO
USE [master]
GO
ALTER DATABASE [PettingBackTogether] SET  READ_WRITE 
GO
