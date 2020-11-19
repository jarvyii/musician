USE [master]
GO
/****** Object:  Database [Musician]    Script Date: 11/19/2020 7:51:42 AM ******/
CREATE DATABASE [Musician]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Musician', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Musician.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Musician_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Musician_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Musician] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Musician].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Musician] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Musician] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Musician] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Musician] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Musician] SET ARITHABORT OFF 
GO
ALTER DATABASE [Musician] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Musician] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Musician] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Musician] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Musician] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Musician] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Musician] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Musician] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Musician] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Musician] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Musician] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Musician] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Musician] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Musician] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Musician] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Musician] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Musician] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Musician] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Musician] SET  MULTI_USER 
GO
ALTER DATABASE [Musician] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Musician] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Musician] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Musician] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Musician] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Musician] SET QUERY_STORE = OFF
GO
USE [Musician]
GO
/****** Object:  Schema [HR]    Script Date: 11/19/2020 7:51:43 AM ******/
CREATE SCHEMA [HR]
GO
/****** Object:  Schema [TECH]    Script Date: 11/19/2020 7:51:43 AM ******/
CREATE SCHEMA [TECH]
GO
/****** Object:  Table [HR].[Departments]    Script Date: 11/19/2020 7:51:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HR].[Departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DptName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HR].[Employees]    Script Date: 11/19/2020 7:51:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HR].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[MidleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[AddressLine] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[PostalCode] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[DOB] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[viewEmployeeByDepartment]    Script Date: 11/19/2020 7:51:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewEmployeeByDepartment] 
AS
	SELECT [LastName] AS [Last Name] ,[FirstName] AS [First Name], [MidleName] AS [Midle Name],  
		   [PhoneNumber] AS [Phone Number], [Email], d.DptName AS [Department] 
	FROM [HR].[Employees] e
	JOIN  [HR].[Departments] d
	ON  d.DepartmentId = e.DepartmentId
GO
/****** Object:  Table [TECH].[Groupbandmembers]    Script Date: 11/19/2020 7:51:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TECH].[Groupbandmembers](
	[GroupBandMemberId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[GroupBandId] [int] NULL,
	[PositionId] [int] NULL,
	[PorcentageIncome] [int] NULL,
	[StartDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupBandMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TECH].[Groupsbands]    Script Date: 11/19/2020 7:51:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TECH].[Groupsbands](
	[GroupbandId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupbandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TECH].[Groupstructure]    Script Date: 11/19/2020 7:51:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TECH].[Groupstructure](
	[GroupStructureId] [int] IDENTITY(1,1) NOT NULL,
	[GroupBandId] [int] NULL,
	[Quantity] [int] NULL,
	[PositionId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupStructureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TECH].[Positions]    Script Date: 11/19/2020 7:51:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TECH].[Positions](
	[PositionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LastName_Firstname]    Script Date: 11/19/2020 7:51:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_LastName_Firstname] ON [HR].[Employees]
(
	[LastName] ASC,
	[FirstName] ASC
)
INCLUDE([PhoneNumber],[Email]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex]    Script Date: 11/19/2020 7:51:43 AM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex] ON [HR].[Employees]
(
	[FirstName] ASC,
	[LastName] ASC,
	[DOB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StartDate]    Script Date: 11/19/2020 7:51:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_StartDate] ON [TECH].[Groupbandmembers]
(
	[StartDate] ASC
)
INCLUDE([PorcentageIncome]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Name]    Script Date: 11/19/2020 7:51:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Name] ON [TECH].[Groupsbands]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [HR].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [HR].[Departments] ([DepartmentId])
GO
ALTER TABLE [HR].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [HR].[Departments] ([DepartmentId])
GO
ALTER TABLE [HR].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [HR].[Departments] ([DepartmentId])
GO
ALTER TABLE [TECH].[Groupbandmembers]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [HR].[Employees] ([EmployeeId])
GO
ALTER TABLE [TECH].[Groupbandmembers]  WITH CHECK ADD FOREIGN KEY([GroupBandId])
REFERENCES [TECH].[Groupsbands] ([GroupbandId])
GO
ALTER TABLE [TECH].[Groupbandmembers]  WITH CHECK ADD FOREIGN KEY([PositionId])
REFERENCES [TECH].[Positions] ([PositionId])
GO
ALTER TABLE [TECH].[Groupstructure]  WITH CHECK ADD FOREIGN KEY([GroupBandId])
REFERENCES [TECH].[Groupsbands] ([GroupbandId])
GO
ALTER TABLE [TECH].[Groupstructure]  WITH CHECK ADD FOREIGN KEY([PositionId])
REFERENCES [TECH].[Positions] ([PositionId])
GO
USE [master]
GO
ALTER DATABASE [Musician] SET  READ_WRITE 
GO
