
CREATE DATABASE [Musician]

USE [Musician]
go

-- To create SCHEMAS ON DataBase [Musician]

CREATE SCHEMA [HR]

CREATE SCHEMA [TECH]

-- To create Table on Schema HR on Database [Musician]

CREATE TABLE [HR].[Departments] (
	DepartmentId INT IDENTITY(1,1) PRIMARY KEY,
	DptName VARCHAR(20)
)

-- Inserting rows to the table  [HR].[Departments]
INSERT INTO [HR].[Departments] 
	(DptName) VALUES ('Accounting'),
					 ( 'Service'),
					 ('Technical'),
					 ('Maintnance'),
					 ('HH-RR')

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
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [HR].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [HR].[Departments] ([DepartmentId])
GO



--Inserting rows in [HR].[Employees]


INSERT INTO [HR].[Employees]
           ([FirstName]
		   ,[MidleName]
           ,[LastName]
           ,[DepartmentId]
           ,[PhoneNumber]
           ,[Email]
           ,[AddressLine]
           ,[City]
           ,[State]
           ,[PostalCode]
           ,[Country]
		  )
	  SELECT 
      cast([FirstName] as varchar)
      ,cast([MiddleName] as varchar)
      ,cast([LastName] as varchar)
	  ,cast (5 as Integer)
      ,cast ([PhoneNumber] as varchar)
      , cast([EmailAddress] as varchar)
      , cast([AddressLine1]  as varchar)
      ,cast([City] as varchar)
      ,cast([StateProvinceName] as varchar)
      ,cast([PostalCode]  as varchar)
      ,cast([CountryRegionName] as varchar)
	  FROM [AdventureWorks2017].[HumanResources].[vEmployee]
	  where [StateProvinceName] = 'Oregon'
	 
	 
	


-- To create Tables on Schema TECH on Database [Musician]

--The Name of all Group and Band in the Company
CREATE TABLE [TECH].[Groupsbands] (
	GroupbandId INT IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(50)
)

--Inseting rows into [TECH].[Groupsbands]

INSERT INTO [TECH].[Groupsbands]
		( [Name])
		SELECT 
			  cast([FirstName] as varchar) + cast([LastName] as varchar)
			   FROM [AdventureWorks2017].[HumanResources].[vEmployee]
			  where [PostalCode] = '98004'




--The structure of each Group

-- Position in Groups or Bands
CREATE TABLE [TECH].[Positions](
	PositionId INT IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(30) 
)

INSERT INTO [TECH].[Positions]
		([Name]) values ('Director'),('Singer'),('Guitarrist'),('Droom'),('Bass'),('Trumphetist'),('Diskjake'),('Assistant')



--   To store the quantity Director, singers, Guitarist, Dancers, ..., have each Group or Band
CREATE TABLE [TECH].[Groupstructure](
	GroupStructureId INT IDENTITY(1,1) PRIMARY KEY,
	GroupBandId INT FOREIGN KEY REFERENCES [TECH].[Groupsbands](GroupBandId),
	Quantity INTEGER, --How many person has this position
	[PositionId] INT FOREIGN KEY REFERENCES [TECH].[Positions](PositionId)
)
 --ToInsert Rows into the Table [TECH].[Groupstructure]
INSERT INTO [TECH].[Groupstructure] 
	   ( GroupBandId, Quantity, PositionId ) Values
	   ( 1, 1, 2),( 2, 1, 2),( 3, 1, 2),( 4, 1, 2),( 5, 1, 2),( 6, 1, 2),( 7, 1, 2),( 8, 1, 2),( 9, 1, 2),( 10, 1, 2),
	   ( 11, 2, 2),( 12, 2, 2),( 13, 2, 2),( 14, 2, 2),( 15, 2, 2), ( 16, 2, 2),( 17, 2, 2),( 18, 2, 2),( 19, 2, 2),( 20, 2, 2),
	   ( 21, 1, 2),( 21, 1, 3), ( 21, 1, 1), ( 21, 1, 4),( 21, 1, 7),
	   ( 22, 1, 2),( 22, 1, 3), ( 22, 1, 1), ( 22, 1, 8),( 22, 1, 7),
	   ( 23, 1, 2),( 23, 1, 3), ( 23, 1, 1), ( 23, 1, 2),( 23, 1, 7)


--To store each Group or Band with their own Musician
CREATE TABLE [TECH].[Groupbandmembers] (
	GroupBandMemberId INT IDENTITY(1,1) PRIMARY KEY,
	GroupBandId INT FOREIGN KEY REFERENCES [TECH].[GroupsBands](GroupBandId),
	EmployeeId INT FOREIGN KEY REFERENCES [HR].[Employees](EmployeeId),
	PositionId INT FOREIGN KEY REFERENCES [TECH].[Positions](PositionId),
	PorcentageIncome INT 
)

-- To Insert the members of each bank with the porcentage of income by each member.

INSERT INTO [TECH].[Groupbandmembers] 
		( GroupBandId,EmployeeId, PositionId, PorcentageIncome) VALUES 
		( 1, 1,2, 100), ( 1, 1, 2, 100), ( 3, 3, 2, 100), ( 4, 4, 2, 100), ( 5, 5, 2, 100),
		( 6, 6, 2, 100), ( 7, 7, 2, 100),( 8, 8, 2, 100), ( 9, 9, 2, 100), ( 10, 10, 2, 100),
		( 11, 11, 2, 50), ( 11, 12, 2, 50), ( 12, 13, 2, 50), ( 12, 14, 2, 50), ( 13, 15, 2, 50), ( 13, 16, 2, 50),
		( 14, 17, 2, 50), ( 14, 18, 2, 50), ( 15, 19, 2, 50),( 15, 20, 2, 50), ( 16, 21, 2, 50), ( 16, 22, 2, 50),
		( 17, 23, 2, 50), ( 17, 24, 2, 50), ( 18, 25, 2, 50), ( 18, 26, 2, 50), ( 19, 27, 2, 50), ( 19, 28, 2, 50),
		( 20, 29, 2, 50), ( 20, 30, 2, 50),
		( 21, 31, 2, 30), ( 21, 32, 3, 20), ( 21, 33, 1, 20),( 21, 34, 4, 20), ( 11, 35, 7, 10),
		( 22, 36, 2, 20), ( 22, 37, 3, 20), ( 22, 38, 1, 20), ( 22, 39, 8, 20), ( 22, 40, 7, 20),
		( 23, 41, 2, 25), ( 23, 42, 3, 20), ( 23, 43, 1, 15), ( 22, 44, 2, 15), ( 22, 45, 7, 15)


-- To show all Employees of the Company order by Last Name and First Name

SELECT [LastName] AS [Last Name] ,[FirstName] AS [First Name], [MidleName] AS [Midle Name],  
	   [PhoneNumber] AS [Phone Number], [Email], [AddressLine] AS [Address],[City],[State], [Country],[PostalCode] AS [ZIP Code]
FROM [HR].[Employees]
ORDER BY [LastName],[FirstName]
GO

--Create a View to show every Employee with their Department
CREATE VIEW viewEmployeeByDepartment 
AS
	SELECT [LastName] AS [Last Name] ,[FirstName] AS [First Name], [MidleName] AS [Midle Name],  
		   [PhoneNumber] AS [Phone Number], [Email], d.DptName AS [Department] 
	FROM [HR].[Employees] e
	JOIN  [HR].[Departments] d
	ON  d.DepartmentId = e.DepartmentId
GO

--Show all Employee organized by Department Name, Last Name and First NAme.
SELECT * 
FROM viewEmployeeByDepartment
ORDER BY [Department], [Last Name], [First Name]
GO

SELECT [Department], Count(*) AS [Qty of Employees]
FROM viewEmployeeByDepartment 
GROUP BY [Department]
ORDER BY [Department]


SELECT b.[Name] AS [Band's Oor Groups's Name], p.[Name] AS [Position Name], s.Quantity AS [Number of Positions]
FROM [TECH].[Groupsbands] b
JOIN [TECH].[Groupstructure] s
ON b.GroupbandId = s.GroupBandId
JOIN [TECH].[Positions] P
ON s.PositionId = p.PositionId
ORDER BY b.[Name]
GO
-- Show all Bands with their members and Porcentage of payments.
SELECT  g.[Name] AS [g.Groups or Bands Name], p.[Name] AS [Position Name] ,
		e.LastName AS [Last Name], e.FirstName AS [First Name], m.PorcentageIncome AS [Porcentage]
FROM [TECH].[Groupbandmembers] m
JOIN [TECH].[Groupsbands] g
ON m.GroupBandId = g.GroupbandId
JOIN [HR].[Employees] e
ON m.EmployeeId = e.EmployeeId
JOIN  [TECH].[Positions] p
ON m.[PositionId] = p.[PositionId]
ORDER BY g.[Name]

