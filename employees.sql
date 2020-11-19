USE [Musician]
GO

/****** Object:  Table [HR].[Employees]    Script Date: 11/19/2020 7:38:05 AM ******/
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

ALTER TABLE [HR].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [HR].[Departments] ([DepartmentId])
GO

ALTER TABLE [HR].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [HR].[Departments] ([DepartmentId])
GO

ALTER TABLE [HR].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [HR].[Departments] ([DepartmentId])
GO

