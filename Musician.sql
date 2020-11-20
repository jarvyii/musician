USE MASTER
GO
CREATE DATABASE [Musician]
USE [Musician]
GO
-- To create SCHEMAS HR  and TECH ON DataBase [Musician]
--  Object:  Schema [HR]
CREATE SCHEMA [HR]
GO
--Object:  Schema [TECH] */
CREATE SCHEMA [TECH]
GO
-- To create Table on Schema HR on Database [Musician]
--  Object:  Table [HR].[Departments] 
CREATE TABLE [HR].[Departments] (
	[DepartmentId] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[DptName] VARCHAR(20) NULL
)
GO
-- Table [HR].[Employees]
CREATE TABLE [HR].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
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
	[DOB] [datetime] NULL
	)
GO
--Table [TECH].[Groupsbands]
--The Name of all Group and Band in the Company
CREATE TABLE [TECH].[Groupsbands](
	[GroupbandId] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Name] [varchar](50) NULL
	)
GO
--Table [TECH].[Positions]
CREATE TABLE [TECH].[Positions](
	[PositionId] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Name] VARCHAR(30) NOT NULL
	)
GO

-- Table [TECH].[Groupbandmembers]
CREATE TABLE [TECH].[Groupbandmembers] (
	GroupBandMemberId INT IDENTITY(1,1) PRIMARY KEY,
	GroupBandId INT FOREIGN KEY REFERENCES [TECH].[GroupsBands](GroupBandId),
	EmployeeId INT FOREIGN KEY REFERENCES [HR].[Employees](EmployeeId),
	PositionId INT FOREIGN KEY REFERENCES [TECH].[Positions](PositionId),
	PorcentageIncome INT, 
	StartDate DATETIME
)
GO

-- Table [TECH].[Groupstructure]
CREATE TABLE [TECH].[Groupstructure](
	[GroupStructureId] INT IDENTITY(1,1) PRIMARY KEY,
	[GroupBandId] INT FOREIGN KEY REFERENCES [TECH].[Groupsbands](GroupBandId),
	[Quantity] INTEGER, --How many person has this position
	[PositionId] INT FOREIGN KEY REFERENCES [TECH].[Positions](PositionId)
)
GO

-- Inserting rows to the table  [HR].[Departments]
INSERT INTO [HR].[Departments] 
	(DptName) VALUES ( 'Accounting' ),
					 ( 'Service' ),
					 ( 'Technical' ),
					 ( 'Maintnance' ),
					 ( 'HH-RR' )
GO
INSERT [HR].[Employees] 
 ([FirstName], [MidleName], [LastName], [DepartmentId], [PhoneNumber], [Email], [AddressLine], [City], [State], [PostalCode], [Country], [DOB]) 
VALUES 
  ( 'Jea ',  'E',  'Trenary', 3,  '685-555-0120',  'jean0@adventure-works.com',  '2383 Pepper Drive',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Reube ',  'H',  'D''sa', 3,  '191-555-0112',  'reuben0@adventure-works.com',  '1064 Slow Creek Road',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Deborah',  'E',  'Poe', 3,  '602-555-0194',  'deborah0@adventure-works.com',  '7640 First Ave.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Matthias',  'T',  'Berndt', 3,  '139-555-0120',  'matthias0@adventure-works.com',  '4312 Cambridge Drive',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Mindy',  'C',  'Marti ', 3,  '522-555-0147',  'mindy0@adventure-works.com',  '9687 Shakespeare Drive',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Joh ',  'A',  'Che ', 3,  '201-555-0163',  'john2@adventure-works.com',  '3977 Central Avenue',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Cristia ',  'K',  'Petculescu', 3,  '434-555-0133',  'cristian0@adventure-works.com',  '7166 Brock Lane',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Benjami ',  'R',  'Marti ', 3,  '533-555-0111',  'benjamin0@adventure-works.com',  '4231 Spar Court',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Hazem',  'E',  'Abolrous', 3,  '869-555-0125',  'hazem0@adventure-works.com',  '5050 Mt. Wilson Way',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Angela',  'W',  'Barbariol', 3,  '150-555-0194',  'angela0@adventure-works.com',  '2687 Ridge Road',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'David',  'J',  'Liu', 3,  '646-555-0185',  'david6@adventure-works.com',  '9605 Pheasant Circle',  'Gold Bar',  'Washington',  '98251',  'United States', NULL)
 ,( 'Dyla ',  'A',  'Miller', 3,  '181-555-0156',  'dylan0@adventure-works.com',  '7048 Laurel',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'A. Scott', NULL,  'Wright', 3,  '992-555-0194',  'ascott0@adventure-works.com',  '9297 Kenston Dr.',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Pat',  'H',  'Colema ', 3,  '720-555-0158',  'pat0@adventure-works.com',  '2425 Notre Dame Ave',  'Gold Bar',  'Washington',  '98251',  'United States', NULL)
 ,( 'Amy',  'E',  'Alberts', 3,  '775-555-0164',  'amy0@adventure-works.com',  '5009 Orange Street',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Jeffrey',  'L',  'Ford', 3,  '984-555-0185',  'jeffrey0@adventure-works.com',  '5734 Ashford Court',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Ke ',  'J',  'Sánchez', 3,  '697-555-0142',  'ken0@adventure-works.com',  '4350 Minute Dr.',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Rajesh',  'M',  'Patel', 3,  '373-555-0137',  'rajesh0@adventure-works.com',  '5423 Champion Rd.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Peter',  'I',  'Connelly', 3,  '310-555-0133',  'peter1@adventure-works.com',  '9530 Vine Lane',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Annik',  'O',  'Stahl', 3,  '499-555-0125',  'annik0@adventure-works.com',  '7842 Ygnacio Valley Road',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Linda',  'K',  'Moschell', 3,  '612-555-0171',  'linda0@adventure-works.com',  '3284 S. Blank Avenue',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Diane',  'H',  'Tibbott', 3,  '361-555-0180',  'diane2@adventure-works.com',  '8192 Seagull Court',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Jossef',  'H',  'Goldberg', 3,  '122-555-0189',  'jossef0@adventure-works.com',  '5670 Bel Air Dr.',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Michiko',  'F',  'Osada', 3,  '984-555-0148',  'michiko0@adventure-works.com',  '1962 Ferndale Lane',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Jo',  'A',  'Brow ', 3,  '632-555-0129',  'jo0@adventure-works.com',  '9693 Mellowood Street',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Michael',  'T',  'Hines', 3,  '218-555-0126',  'michael0@adventure-works.com',  '1792 Belmont Rd.',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Marc',  'J',  'Ingle', 3,  '234-555-0169',  'marc0@adventure-works.com',  '2473 Orchard Way',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Terrence',  'W',  'Earls', 3,  '110-555-0115',  'terrence0@adventure-works.com',  '6968 Wren Ave.',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Annette',  'L',  'Hill', 3,  '125-555-0196',  'annette0@adventure-works.com',  '6369 Ellis Street',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Elizabeth',  'I',  'Keyser', 3,  '318-555-0137',  'elizabeth0@adventure-works.com',  '350 Pastel Drive',  'Kent',  'Washington',  '98031',  'United States', NULL)
 ,( 'Betsy',  'A',  'Stadick', 3,  '405-555-0171',  'betsy0@adventure-works.com',  '5672 Hale Dr.',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Cynthia',  'S',  'Randall', 3,  '352-555-0138',  'cynthia0@adventure-works.com',  '463 H Stagecoach Rd.',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Andrew',  'M',  'Cencini', 3,  '207-555-0192',  'andrew1@adventure-works.com',  '4444 Pepper Way',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Barry',  'K',  'Johnso ', 3,  '206-555-0180',  'barry0@adventure-works.com',  '3114 Notre Dame Ave.',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Eugene',  'O',  'Koga ', 3,  '173-555-0179',  'eugene1@adventure-works.com',  '991 Vista Verde',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Stephe ',  'Y',  'Jiang', 3,  '238-555-0197',  'stephen0@adventure-works.com',  '2427 Notre Dame Ave.',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Michael',  'T',  'Enti ', 3,  '817-555-0186',  'michael4@adventure-works.com',  '2482 Buckingham Dr.',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Doris',  'M',  'Hartwig', 3,  '328-555-0150',  'doris0@adventure-works.com',  '5553 Cash Avenue',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Suroor',  'R',  'Fatima', 3,  '932-555-0161',  'suroor0@adventure-works.com',  '3281 Hillview Dr.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Joh ',  'A',  'Kane', 3,  '254-555-0114',  'john4@adventure-works.com',  '8209 Green View Court',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Andy',  'M',  'Ruth', 3,  '118-555-0110',  'andy0@adventure-works.com',  '4777 Rockne Drive',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Katie',  'L',  'McAskill-White', 3,  '809-555-0133',  'katie0@adventure-works.com',  '4948 West 4th St',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Taylor',  'R',  'Maxwell', 3,  '508-555-0165',  'taylor0@adventure-works.com',  '504 O St.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Lionel',  'C',  'Penuchot', 3,  '450-555-0152',  'lionel0@adventure-works.com',  '7765 Sunsine Drive',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Carole',  'M',  'Poland', 3,  '688-555-0192',  'carole0@adventure-works.com',  '8411 Mt. Orange Place',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Mihail',  'U',  'Frintu', 3,  '733-555-0128',  'mihail0@adventure-works.com',  '2466 Clearland Circle',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Belinda',  'M',  'Newma ', 3,  '319-555-0126',  'belinda0@adventure-works.com',  '1399 Firestone Drive',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'William',  'S',  'Vong', 3,  '148-555-0145',  'william0@adventure-works.com',  '6774 Bonanza',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Anibal',  'T',  'Sousa', 3,  '106-555-0120',  'anibal0@adventure-works.com',  '6891 Ham Drive',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Gary',  'E.',  'Altma ', 3,  '110-555-0112',  'gary1@adventure-works.com',  '2598 Breck Court',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Kirk',  'J',  'Koenigsbauer', 3,  '669-555-0150',  'kirk0@adventure-works.com',  '1220 Bradford Way',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Russell',  'M',  'King', 3,  '517-555-0122',  'russell1@adventure-works.com',  '3919 Pinto Road',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sheela',  'H',  'Word', 3,  '210-555-0193',  'sheela0@adventure-works.com',  '535 Greendell Pl',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Ke ',  'L',  'Myer', 3,  '949-555-0174',  'ken1@adventure-works.com',  '1362 Somerset Place',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Jimmy',  'T',  'Bischoff', 3,  '927-555-0168',  'jimmy0@adventure-works.com',  '2176 Brown Street',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Samantha',  'H',  'Smith', 3,  '587-555-0114',  'samantha0@adventure-works.com',  '1648 Eastgate Lane',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sea ',  ' ',  'Chai', 3,  '205-555-0132',  'sean1@adventure-works.com',  '9314 Icicle Way',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Denise',  'H',  'Smith', 3,  '869-555-0119',  'denise0@adventure-works.com',  '5669 Ironwood Way',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Mindaugas',  'J',  'Krapauskas', 3,  '637-555-0120',  'mindaugas0@adventure-works.com',  '9825 Coralie Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Chris',  'K',  'Norred', 3,  '575-555-0126',  'chris1@adventure-works.com',  '989 Crown Ct',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Russell', NULL,  'Hunter', 3,  '786-555-0144',  'russell0@adventure-works.com',  '7616 Honey Court',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'James',  'R',  'Hamilto ', 3,  '870-555-0122',  'james1@adventure-works.com',  '9652 Los Angeles',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Michael',  'L',  'Rothkugel', 3,  '454-555-0119',  'michael1@adventure-works.com',  '207 Berry Court',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Thierry',  'B',  'D''Hers', 3,  '168-555-0183',  'thierry0@adventure-works.com',  '1970 Napa Ct.',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Paul',  'B',  'Komosinski', 3,  '147-555-0160',  'paul0@adventure-works.com',  '7270 Pepper Way',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Ala ',  'J',  'Brewer', 3,  '438-555-0172',  'alan0@adventure-works.com',  '25 95th Ave NE',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Mark',  'K',  'McArthur', 3,  '417-555-0154',  'mark1@adventure-works.com',  '9863 Ridge Place',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Houma ',  ' ',  'Pournasseh', 3,  '180-555-0136',  'houman0@adventure-works.com',  '9882 Clay Rde',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Pete',  'C',  'Male', 3,  '768-555-0123',  'pete0@adventure-works.com',  '5375 Clearland Circle',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Stuart',  'V',  'Munso ', 3,  '413-555-0136',  'stuart0@adventure-works.com',  '6448 Castle Court',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Frank',  'R',  'Martinez', 3,  '203-555-0196',  'frank3@adventure-works.com',  '5724 Victory Lane',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Patrick',  'C',  'Wedge', 3,  '413-555-0124',  'patrick0@adventure-works.com',  '3067 Maya',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Kitti',  'H',  'Lertpiriyasuwat', 3,  '785-555-0132',  'kitti0@adventure-works.com',  '5376 Catanzaro Way',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Gigi',  ' ',  'Matthew', 3,  '185-555-0186',  'gigi0@adventure-works.com',  '7808 Brown St.',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'David',  'M',  'Barber', 3,  '477-555-0132',  'david5@adventure-works.com',  '8967 Hamilton Ave.',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Lori',  'A',  'Kane', 3,  '289-555-0196',  'lori0@adventure-works.com',  '3066 Wallace Dr.',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Michael',  'Sea ',  'Ray', 3,  '156-555-0199',  'michael3@adventure-works.com',  '6498 Mining Rd.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'David',  ' ',  'Johnso ', 3,  '166-555-0162',  'david1@adventure-works.com',  '6697 Ridge Park Drive',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Zainal',  'T',  'Arifi ', 3,  '204-555-0115',  'zainal0@adventure-works.com',  '342 San Simeo ',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Niti ',  'S',  'Mirchandani', 3,  '143-555-0173',  'nitin0@adventure-works.com',  '4096 San Remo',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Nancy',  'A',  'Anderso ', 3,  '970-555-0118',  'nancy0@adventure-works.com',  '7820 Bird Drive',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Wendy',  'Beth',  'Kah ', 3,  '248-555-0134',  'wendy0@adventure-works.com',  '4525 Benedict Ct.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Baris',  'F',  'Cetinok', 3,  '164-555-0114',  'baris0@adventure-works.com',  '426 San Rafael',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Bonnie',  ' ',  'Kearney', 3,  '264-555-0150',  'bonnie0@adventure-works.com',  '4852 Chaparral Court',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Randy',  'T',  'Reeves', 3,  '961-555-0122',  'randy0@adventure-works.com',  '3632 Bank Way',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Mandar',  'H',  'Samant', 3,  '140-555-0132',  'mandar0@adventure-works.com',  '2598 La Vista Circle',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Eric',  'S',  'Kurja ', 3,  '265-555-0195',  'eric2@adventure-works.com',  '1378 String Dr',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Douglas',  'B',  'Hite', 3,  '808-555-0172',  'douglas0@adventure-works.com',  '390 Ridgewood Ct.',  'Carnatio ',  'Washington',  '98014',  'United States', NULL)
 ,( 'Nicole',  'B',  'Holliday', 3,  '508-555-0129',  'nicole0@adventure-works.com',  '3243 Buckingham Dr.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Charles',  'B',  'Fitzgerald', 3,  '931-555-0118',  'charles0@adventure-works.com',  '5263 Etcheverry Dr',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Michael',  'W',  'Patte ', 3,  '441-555-0195',  'michael2@adventure-works.com',  '2038 Encino Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Greg',  'F',  'Alderso ', 3,  '332-555-0150',  'greg0@adventure-works.com',  '8684 Military East',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Peter',  'J',  'Krebs', 3,  '913-555-0196',  'peter0@adventure-works.com',  '3670 All Ways Drive',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Joh ',  'A',  'Wood', 3,  '486-555-0150',  'john5@adventure-works.com',  '9906 Oak Grove Road',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Paula',  'R',  'Nartker', 3,  '476-555-0119',  'paula1@adventure-works.com',  '2144 San Rafael',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Paul',  'R',  'Singh', 3,  '727-555-0112',  'paul1@adventure-works.com',  '1343 Prospect St',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Bria ',  'T',  'Lloyd', 3,  '110-555-0182',  'brian0@adventure-works.com',  '7230 Vine Maple Street',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Tengiz',  ' ',  'Kharatishvili', 3,  '910-555-0116',  'tengiz0@adventure-works.com',  '3333 Madhatter Circle',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Kathie',  'E',  'Flood', 3,  '446-555-0118',  'kathie0@adventure-works.com',  '9241 St George Dr.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Rob',  'T',  'Caro ', 3,  '238-555-0116',  'rob1@adventure-works.com',  '5030 Blue Ridge Dr.',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Mike',  'K',  'Seamans', 3,  '927-555-0150',  'mike0@adventure-works.com',  '1245 Clay Road',  'Index',  'Washington',  '98256',  'United States', NULL)
 ,( 'Britta',  'L',  'Simo ', 3,  '955-555-0169',  'britta0@adventure-works.com',  '2046 Las Palmas',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Kevi ',  'H',  'Liu', 3,  '714-555-0138',  'kevin1@adventure-works.com',  '7594 Alexander Pl.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Eri ',  'M',  'Hagens', 3,  '842-555-0158',  'erin0@adventure-works.com',  '2947 Vine Lane',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Rya ',  'L',  'Cornelse ', 3,  '208-555-0114',  'ryan0@adventure-works.com',  '177 11th Ave',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Vidur',  'X',  'Luthra', 3,  '153-555-0186',  'vidur0@adventure-works.com',  '3030 Blackburn Ct.',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Andrew',  'R',  'Hill', 3,  '908-555-0159',  'andrew0@adventure-works.com',  '6629 Polson Circle',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Sandeep',  'P',  'Kaliyath', 3,  '166-555-0156',  'sandeep0@adventure-works.com',  '4310 Kenston Dr.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Barbara',  'S',  'Decker', 3,  '119-555-0192',  'barbara0@adventure-works.com',  '7145 Matchstick Drive',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Susa ',  'W',  'Eato ', 3,  '943-555-0196',  'susan0@adventure-works.com',  '2736 Scramble Rd',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Gail',  'A',  'Erickso ', 3,  '849-555-0139',  'gail0@adventure-works.com',  '9435 Breck Court',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Peng',  'J',  'Wu', 3,  '164-555-0164',  'peng0@adventure-works.com',  '250 Race Court',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Yuhong',  'L',  'Li', 3,  '965-555-0155',  'yuhong0@adventure-works.com',  '502 Alexander Pl.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Da ',  'B',  'Wilso ', 3,  '653-555-0144',  'dan1@adventure-works.com',  '5863 Sierra',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Reinout',  ' ',  'Hillman ', 3,  '370-555-0163',  'reinout0@adventure-works.com',  '620 Woodside Ct.',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Janice',  'M',  'Galvi ', 3,  '473-555-0117',  'janice0@adventure-works.com',  '3397 Rancho View Drive',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Kevi ',  'M',  'Homer', 3,  '555-555-0113',  'kevin2@adventure-works.com',  '6058 Hill Street',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Eugene',  'R',  'Zabokritski', 3,  '241-555-0191',  'eugene0@adventure-works.com',  '7939 Bayview Court',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Ashvini',  'R',  'Sharma', 3,  '656-555-0119',  'ashvini0@adventure-works.com',  '6580 Poor Ridge Court',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Bob',  ' ',  'Hohma ', 3,  '611-555-0116',  'bob0@adventure-works.com',  '6387 Scenic Avenue',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Lane',  'M',  'Sacksteder', 3,  '200-555-0117',  'lane0@adventure-works.com',  '3029 Pastime Dr',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Jo',  'L',  'Berry', 3,  '228-555-0159',  'jo1@adventure-works.com',  '1748 Bird Drive',  'Index',  'Washington',  '98256',  'United States', NULL)
 ,( 'Olinda',  'C',  'Turner', 3,  '306-555-0186',  'olinda0@adventure-works.com',  '7221 Peachwillow Street',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Hao',  'O',  'Che ', 3,  '806-555-0136',  'hao0@adventure-works.com',  '7691 Benedict Ct.',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Laura',  'C',  'Steele', 3,  '777-555-0141',  'laura0@adventure-works.com',  '1825 Corte Del Prado',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Tom',  'M',  'Vande Velde', 3,  '295-555-0161',  'tom0@adventure-works.com',  '5242 Marvelle Ln.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Lola ',  'B',  'Song', 3,  '582-555-0178',  'lolan0@adventure-works.com',  '8152 Claudia Dr.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Draga ',  'K',  'Tomic', 3,  '117-555-0185',  'dragan0@adventure-works.com',  '3884 Beauty Street',  'Gold Bar',  'Washington',  '98251',  'United States', NULL)
 ,( 'David',  'R',  'Campbell', 3,  '740-555-0182',  'david8@adventure-works.com',  '2284 Azalea Avenue',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Zheng',  'W',  'Mu', 3,  '113-555-0173',  'zheng0@adventure-works.com',  '6578 Woodhaven Ln.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Mary',  'R',  'Baker', 3,  '283-555-0185',  'mary1@adventure-works.com',  '2354 Frame Ln.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Ramesh',  'V',  'Meyyappa ', 3,  '182-555-0134',  'ramesh0@adventure-works.com',  '3848 East 39th Street',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Susa ',  'A',  'Metters', 3,  '639-555-0164',  'susan1@adventure-works.com',  '9104 Mt. Sequoia Ct.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Kimberly',  'B',  'Zimmerma ', 3,  '123-555-0167',  'kimberly0@adventure-works.com',  '8656 Lakespring Place',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Ivo',  'William',  'Salmre', 3,  '115-555-0179',  'ivo0@adventure-works.com',  '3841 Silver Oaks Place',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Mary',  'E',  'Gibso ', 3,  '531-555-0183',  'mary0@adventure-works.com',  '3928 San Francisco',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Syed',  'E',  'Abbas', 3,  '926-555-0182',  'syed0@adventure-works.com',  '7484 Roundtree Drive',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Brando ',  'G',  'Heidepriem', 3,  '429-555-0137',  'brandon0@adventure-works.com',  '8000 Crane Court',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Stuart',  'J',  'Macrae', 3,  '539-555-0149',  'stuart1@adventure-works.com',  '2266 Greenwood Circle',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Laura',  'F',  'Norma ', 3,  '615-555-0110',  'laura1@adventure-works.com',  '6937 E. 42nd Street',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Eric', NULL,  'Gubbels', 3,  '260-555-0119',  'eric0@adventure-works.com',  '371 Apple Dr.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Rebecca',  'A',  'Laszlo', 3,  '314-555-0113',  'rebecca0@adventure-works.com',  '3197 Thornhill Place',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Barbara',  'C',  'Moreland', 3,  '822-555-0145',  'barbara1@adventure-works.com',  '137 Mazatla ',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Michael',  'I',  'Sulliva ', 3,  '465-555-0156',  'michael8@adventure-works.com',  '6510 Hacienda Drive',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Frank',  'S',  'Pellow', 3,  '163-555-0147',  'frank2@adventure-works.com',  '5980 Icicle Circle',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Janeth',  'M',  'Esteves', 3,  '540-555-0191',  'janeth0@adventure-works.com',  '4566 La Jolla',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'JoLyn ',  'M',  'Dobney', 3,  '903-555-0145',  'jolynn0@adventure-works.com',  '7126 Ending Ct.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Wanida',  'M',  'Benshoof', 3,  '708-555-0141',  'wanida0@adventure-works.com',  '6951 Harmony Way',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Scott',  'R',  'Gode', 3,  '391-555-0138',  'scott0@adventure-works.com',  '7403 N. Broadway',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Arvind',  'B',  'Rao', 3,  '848-555-0163',  'arvind0@adventure-works.com',  '9495 Limewood Place',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Kok-Ho',  'T',  'Loh', 3,  '999-555-0155',  'kok-ho0@adventure-works.com',  '3708 Montana',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Rostislav',  'E',  'Shabali ', 3,  '751-555-0134',  'rostislav0@adventure-works.com',  '3711 Rollingwood Dr',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Magnus',  'E',  'Hedlund', 3,  '583-555-0182',  'magnus0@adventure-works.com',  '9533 Working Drive',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Christopher',  'E',  'Hill', 3,  '153-555-0166',  'christopher0@adventure-works.c',  '1902 Santa Cruz',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Janet',  'L',  'Sheperdigia ', 3,  '393-555-0186',  'janet0@adventure-works.com',  '6871 Thornwood Dr.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Alice',  'O',  'Ciccu', 3,  '333-555-0173',  'alice0@adventure-works.com',  '3280 Pheasant Circle',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Suchitra',  'O',  'Moha ', 3,  '753-555-0129',  'suchitra0@adventure-works.com',  '5678 Clear Court',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'David',  'J',  'Ortiz', 3,  '712-555-0119',  'david2@adventure-works.com',  '931 Corte De Luna',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Alejandro',  'E',  'McGuel', 3,  '668-555-0130',  'alejandro0@adventure-works.com',  '7127 Los Gatos Court',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Prasanna',  'E',  'Samarawickrama', 3,  '129-555-0199',  'prasanna0@adventure-works.com',  '9322 Driving Drive',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Bria ',  'P',  'LaMee', 3,  '313-555-0196',  'brian1@adventure-works.com',  '2294 West 39th St.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Chad',  'W',  'Niswonger', 3,  '559-555-0175',  'chad0@adventure-works.com',  '5747 Shirley Drive',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Joh ',  'A',  'Frum', 3,  '663-555-0172',  'john3@adventure-works.com',  '3665 Oak Creek Ct.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Kara ',  'R',  'Khanna', 3,  '447-555-0186',  'karan0@adventure-works.com',  '1102 Ravenwood',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Guy',  'R',  'Gilbert', 3,  '320-555-0195',  'guy1@adventure-works.com',  '7726 Driftwood Drive',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Kim',  'T',  'Ralls', 3,  '309-555-0129',  'kim0@adventure-works.com',  '1226 Shoe St.',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Christia ',  'E',  'Kleinerma ', 3,  '846-555-0157',  'christian0@adventure-works.com',  '8036 Summit View Dr.',  'Gold Bar',  'Washington',  '98251',  'United States', NULL)
 ,( 'David',  'Oliver',  'Lawrence', 3,  '118-555-0177',  'david7@adventure-works.com',  '158 Walnut Ave',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Bjor ',  'M',  'Rettig', 3,  '199-555-0117',  'bjorn0@adventure-works.com',  '5802 Ampersand Drive',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Kare ',  'R',  'Berge', 3,  '746-555-0164',  'karen0@adventure-works.com',  '3127 El Camino Drive',  'Index',  'Washington',  '98256',  'United States', NULL)
 ,( 'Jill',  'A',  'Williams', 3,  '510-555-0121',  'jill0@adventure-works.com',  '3238 Laguna Circle',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Ruth',  'An ',  'Ellerbrock', 3,  '145-555-0130',  'ruth0@adventure-works.com',  '2176 Apollo Way',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Sharo ',  'B',  'Salavaria', 3,  '970-555-0138',  'sharon0@adventure-works.com',  '7165 Brock Lane',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Stefe ',  'A',  'Hesse', 3,  '165-555-0113',  'stefen0@adventure-works.com',  '8463 Vista Avenue',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Terry',  'J',  'Eminhizer', 3,  '138-555-0118',  'terry0@adventure-works.com',  '8668 Via Neruda',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Paula',  'M',  'Barreto de Mattos', 3,  '523-555-0175',  'paula0@adventure-works.com',  '4311 Clay Rd',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sea ',  'P',  'Alexander', 3,  '420-555-0173',  'sean0@adventure-works.com',  '7985 Center Street',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Steve',  'F',  'Masters', 3,  '712-555-0170',  'steve0@adventure-works.com',  '1398 Yorba Linda',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Do ',  'L',  'Hall', 3,  '100-555-0174',  'don0@adventure-works.com',  '1411 Ranch Drive',  'Carnatio ',  'Washington',  '98014',  'United States', NULL)
 ,( 'Danielle',  'C',  'Tiedt', 3,  '500-555-0172',  'danielle0@adventure-works.com',  '5203 Virginia Lane',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Thomas',  'R',  'Michaels', 3,  '278-555-0118',  'thomas0@adventure-works.com',  '7338 Green St.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Grant',  ' ',  'Culbertso ', 3,  '955-555-0131',  'grant0@adventure-works.com',  '213 Stonewood Drive',  'Gold Bar',  'Washington',  '98251',  'United States', NULL)
 ,( 'Stephanie',  'A',  'Conroy', 3,  '594-555-0110',  'stephanie0@adventure-works.com',  '7435 Ricardo',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Simo ',  'D',  'Rapier', 3,  '963-555-0134',  'simon0@adventure-works.com',  '3421 Bouncing Road',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Diane',  'L',  'Margheim', 3,  '815-555-0138',  'diane1@adventure-works.com',  '475 Santa Maria',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Joh ',  'A',  'Campbell', 3,  '435-555-0113',  'john0@adventure-works.com',  '2639 Anchor Court',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Lorraine',  'O',  'Nay', 3,  '845-555-0184',  'lorraine0@adventure-works.com',  '2059 Clay Rd',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Janaina',  'Barreiro Gambaro',  'Bueno', 3,  '623-555-0155',  'janaina0@adventure-works.com',  '5979 El Pueblo',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Maciej',  'W',  'Dusza', 3,  '237-555-0128',  'maciej0@adventure-works.com',  '3026 Anchor Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Kare ',  'A',  'Berg', 3,  '654-555-0177',  'karen1@adventure-works.com',  '5256 Chickpea Ct.',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Raymond',  'K',  'Sam', 3,  '226-555-0197',  'raymond0@adventure-works.com',  '9784 Mt Etna Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Mikael',  'Q',  'Sandberg', 3,  '309-555-0170',  'mikael0@adventure-works.com',  '9539 Glenside Dr',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Ovidiu',  'V',  'Cracium', 3,  '719-555-0181',  'ovidiu0@adventure-works.com',  '5458 Gladstone Drive',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Shelley',  ' ',  'Dyck', 3,  '991-555-0184',  'shelley0@adventure-works.com',  '3747 W. Landing Avenue',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Garrett',  'R',  'Young', 3,  '609-555-0179',  'garrett0@adventure-works.com',  '2115 Passing',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Sidney',  'M',  'Higa', 3,  '424-555-0189',  'sidney0@adventure-works.com',  '9277 Country View Lane',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Reed',  'T',  'Koch', 3,  '678-555-0110',  'reed0@adventure-works.com',  '1275 West Street',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'David',  'A',  'Yalovsky', 3,  '373-555-0142',  'david3@adventure-works.com',  '5025 Holiday Hills',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Kendall',  'C',  'Keil', 3,  '138-555-0128',  'kendall0@adventure-works.com',  '7439 Laguna Niguel',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Steve ',  'T',  'Selikoff', 3,  '925-555-0114',  'steven0@adventure-works.com',  '181 Gaining Drive',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'George',  'Z',  'Li', 3,  '518-555-0199',  'george0@adventure-works.com',  '3074 Arbor Drive',  'Carnatio ',  'Washington',  '98014',  'United States', NULL)
 ,( 'Gary',  'W',  'Yukish', 3,  '901-555-0125',  'gary0@adventure-works.com',  '6057 Hill Street',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Shane',  'S',  'Kim', 3,  '810-555-0178',  'shane0@adventure-works.com',  '9745 Bonita Ct.',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sariya',  'E',  'Harnpadoungsataya', 3,  '399-555-0176',  'sariya0@adventure-works.com',  '1185 Dallas Drive',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Hanying',  'P',  'Feng', 3,  '319-555-0139',  'hanying0@adventure-works.com',  '7297 RisingView',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Frank',  'T',  'Lee', 3,  '158-555-0191',  'frank0@adventure-works.com',  '8290 Margaret Ct.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Krishna', NULL,  'Sunkammurali', 3,  '491-555-0183',  'krishna0@adventure-works.com',  '6870 D Bel Air Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Bria ',  'Richard',  'Goldstei ', 3,  '730-555-0117',  'brian2@adventure-works.com',  '8157 W. Book',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Michael',  'T',  'Vanderhyde', 3,  '296-555-0121',  'michael5@adventure-works.com',  '2812 Mazatla ',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Be ',  'T',  'Miller', 3,  '151-555-0113',  'ben0@adventure-works.com',  '101 Candy Rd.',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Da ',  'K',  'Baco ', 3,  '166-555-0159',  'dan0@adventure-works.com',  '1921 Ranch Road',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Brya ', NULL,  'Baker', 3,  '712-555-0113',  'bryan0@adventure-works.com',  '2275 Valley Blvd.',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Jack',  'S',  'Richins', 3,  '552-555-0111',  'jack0@adventure-works.com',  '1356 Grove Way',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'James',  'D',  'Kramer', 3,  '119-555-0117',  'james0@adventure-works.com',  '4734 Sycamore Court',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Patrick',  'M',  'Cook', 3,  '425-555-0117',  'patrick1@adventure-works.com',  '9537 Ridgewood Drive',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Brenda',  'M',  'Diaz', 3,  '142-555-0139',  'brenda0@adventure-works.com',  '1349 Steven Way',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Alex',  'M',  'Nayberg', 3,  '819-555-0198',  'alex0@adventure-works.com',  '1400 Gate Drive',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Carol',  'M',  'Philips', 3,  '609-555-0153',  'carol0@adventure-works.com',  '6872 Thornwood Dr.',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Jose',  'R',  'Lugo', 3,  '587-555-0115',  'jose0@adventure-works.com',  '5125 Cotton Ct.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Fukiko',  'J',  'Ogisu', 3,  '520-555-0177',  'fukiko0@adventure-works.com',  '8751 Norse Drive',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Fadi',  'K',  'Fakhouri', 3,  '935-555-0116',  'fadi0@adventure-works.com',  '1285 Greenbrier Street',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Michael',  'J',  'Zwilling', 3,  '582-555-0148',  'michael7@adventure-works.com',  '7511 Cooper Dr.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Shammi',  'G',  'Mohamed', 3,  '793-555-0179',  'shammi0@adventure-works.com',  '332 Laguna Niguel',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sootha',  'T',  'Charncherngkha', 3,  '325-555-0137',  'sootha0@adventure-works.com',  '4155 Working Drive',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Mi ',  'G',  'Su', 3,  '590-555-0152',  'min0@adventure-works.com',  '7396 Stratton Circle',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Brya ',  'A',  'Walto ', 3,  '935-555-0199',  'bryan1@adventure-works.com',  '1397 Paradise Ct.',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Pilar',  'G',  'Ackerma ', 3,  '577-555-0185',  'pilar0@adventure-works.com',  '5407 Cougar Way',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Jay',  'G',  'Adams', 3,  '407-555-0165',  'jay0@adventure-works.com',  '896 Southdale',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Ed',  'R',  'Dudenhoefer', 3,  '919-555-0140',  'ed0@adventure-works.com',  '4598 Manila Avenue',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Andreas',  'T',  'Berglund', 3,  '181-555-0124',  'andreas0@adventure-works.com',  '1803 Olive Hill',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Sameer',  'A',  'Tejani', 3,  '990-555-0172',  'sameer0@adventure-works.com',  '5379 Treasure Island Way',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Mary',  'A',  'Dempsey', 3,  '124-555-0114',  'mary2@adventure-works.com',  '6307 Greenbelt Way',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Vamsi',  ' ',  'Kuppa', 3,  '937-555-0137',  'vamsi0@adventure-works.com',  '9833 Mt. Dias Blv.',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Robert',  'J',  'Rounthwaite', 3,  '589-555-0147',  'robert0@adventure-works.com',  '6843 San Simeon Dr.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'David',  'M',  'Bradley', 3,  '913-555-0172',  'david0@adventure-works.com',  '3768 Door Way',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Nua ', NULL,  'Yu', 3,  '913-555-0184',  'nuan0@adventure-works.com',  '3454 Bel Air Drive',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Chris',  'T',  'Presto ', 3,  '200-555-0112',  'chris0@adventure-works.com',  '6657 Sand Pointe Lane',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Frank',  'T',  'Miller', 3,  '167-555-0139',  'frank1@adventure-works.com',  '591 Merriewood Drive',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Kim',  'B',  'Abercrombie', 3,  '208-555-0114',  'kim1@adventure-works.com',  '9752 Jeanne Circle',  'Carnatio ',  'Washington',  '98014',  'United States', NULL)
 ,( 'Fred',  'T',  'Northup', 3,  '818-555-0192',  'fred0@adventure-works.com',  '2601 Cambridge Drive',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Sairaj',  'L',  'Uddi ', 3,  '500-555-0159',  'sairaj0@adventure-works.com',  '8040 Hill Ct',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Candy',  'L',  'Spoo ', 3,  '920-555-0177',  'candy0@adventure-works.com',  '310 Winter Lane',  'Index',  'Washington',  '98256',  'United States', NULL)
 ,( 'Jeff',  'V',  'Hay', 3,  '350-555-0167',  'jeff0@adventure-works.com',  '3385 Crestview Drive',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Jinghao',  'K',  'Liu', 3,  '794-555-0159',  'jinghao0@adventure-works.com',  '9666 Northridge Ct.',  'Carnatio ',  'Washington',  '98014',  'United States', NULL)
 ,( 'Gabe',  'B',  'Mares', 3,  '310-555-0117',  'gabe0@adventure-works.com',  '1061 Buskrik Avenue',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Bria ',  'S',  'Welcker', 3,  '716-555-0127',  'brian3@adventure-works.com',  '7772 Golden Meadow',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Linda',  'P',  'Meisner', 3,  '916-555-0165',  'linda2@adventure-works.com',  '6118 Grasswood Circle',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Eric',  'L',  'Brow ', 3,  '680-555-0118',  'eric1@adventure-works.com',  '5086 Nottingham Place',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Merav',  'A',  'Netz', 3,  '224-555-0187',  'merav0@adventure-works.com',  '5666 Hazelnut Lane',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Tawana',  'G',  'Nusbaum', 3,  '368-555-0113',  'tawana0@adventure-works.com',  '9964 North Ridge Drive',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Hung-Fu',  'T',  'Ting', 3,  '497-555-0181',  'hung-fu0@adventure-works.com',  '7086 O St.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'David',  'P',  'Hamilto ', 3,  '986-555-0177',  'david4@adventure-works.com',  '4095 Cooper Dr.',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Ja ',  'S',  'Miksovsky', 3,  '139-555-0131',  'jan0@adventure-works.com',  '8624 Pepper Way',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Kevi ',  'F',  'Brow ', 3,  '150-555-0189',  'kevin0@adventure-works.com',  '7883 Missing Canyon Court',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Yvonne',  'S',  'McKay', 3,  '286-555-0189',  'yvonne0@adventure-works.com',  '1962 Cotton Ct.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Jaso ',  'M',  'Watters', 3,  '571-555-0179',  'jason0@adventure-works.com',  '9320 Teakwood Dr.',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Margie',  'W',  'Shoop', 3,  '818-555-0128',  'margie0@adventure-works.com',  '2080 Sycamore Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'François',  'P',  'Ajenstat', 3,  '785-555-0110',  'françois0@adventure-works.com',  '1144 Paradise Ct.',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Diane',  'R',  'Glimp', 3,  '202-555-0151',  'diane0@adventure-works.com',  '9006 Woodside Way',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Willis',  'T',  'Johnso ', 3,  '778-555-0141',  'willis0@adventure-works.com',  '5452 Corte Gilberto',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Chris',  'O',  'Okelberry', 3,  '315-555-0144',  'chris2@adventure-works.com',  '8467 Clifford Court',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Sylvester',  'A',  'Valdez', 3,  '492-555-0174',  'sylvester0@adventure-works.com',  '7902 Grammercy Lane',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sandra', NULL,  'Reátegui Alayo', 3,  '896-555-0168',  'sandra0@adventure-works.com',  '1619 Stillman Court',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Ebru',  ' ',  'Ersa ', 3,  '202-555-0187',  'ebru0@adventure-works.com',  '8316 La Salle St.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Ju ',  'T',  'Cao', 3,  '299-555-0113',  'jun0@adventure-works.com',  '4909 Poco Lane',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Terri',  'Lee',  'Duffy', 3,  '819-555-0175',  'terri0@adventure-works.com',  '7559 Worth Ct.',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Lori',  'K',  'Penor', 3,  '295-555-0161',  'lori1@adventure-works.com',  '3514 Sunshine',  'Index',  'Washington',  '98256',  'United States', NULL)
 ,( 'Roberto', NULL,  'Tamburello', 3,  '212-555-0187',  'roberto0@adventure-works.com',  '2137 Birchwood Dr',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Gordo ',  'L',  'Hee', 3,  '230-555-0144',  'gordon0@adventure-works.com',  '108 Lakeside Court',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Jian Shuo', NULL,  'Wang', 3,  '952-555-0178',  'jianshuo0@adventure-works.com',  '8310 Ridge Circle',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Jack',  'T',  'Creasey', 3,  '521-555-0113',  'jack1@adventure-works.com',  '874 Olivera Road',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Linda',  'A',  'Randall', 3,  '696-555-0157',  'linda1@adventure-works.com',  '77 Birchwood',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Jim',  'H',  'Scardelis', 3,  '679-555-0113',  'jim0@adventure-works.com',  '172 Turning Dr.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Mark',  'L',  'Harringto ', 3,  '147-555-0179',  'mark0@adventure-works.com',  '8585 Los Gatos Ct.',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Joh ',  'A',  'Evans', 3,  '172-555-0130',  'john1@adventure-works.com',  '136 Balboa Court',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Tete',  'A',  'Mensa-Anna ', 3,  '615-555-0153',  'tete0@adventure-works.com',  '3997 Via De Luna',  'Cambridge',  'Massachusetts',  '02139',  'United States', NULL)
 ,( 'Michael', NULL,  'Raheem', 3,  '330-555-2568',  'michael6@adventure-works.com',  '1234 Seaside Way',  'San Francisco',  'California',  '94109',  'United States', NULL)
 ,( 'Shu',  'K',  'Ito', 3,  '330-555-0120',  'shu0@adventure-works.com',  '5725 Glaze Drive',  'San Francisco',  'California',  '94109',  'United States', NULL)
 ,( 'Jillia ', NULL,  'Carso ', 1,  '517-555-0117',  'jillian0@adventure-works.com',  '80 Sunview Terrace',  'Duluth',  'Minnesota',  '55802',  'United States', NULL)
 ,( 'Rob', NULL,  'Walters', 1,  '612-555-0100',  'rob0@adventure-works.com',  '5678 Lakeview Blvd.',  'Minneapolis',  'Minnesota',  '55402',  'United States', NULL)
 ,( 'Michael', NULL,  'Raheem', 2,  '330-555-2568',  'michael6@adventure-works.com',  '1234 Seaside Way',  'San Francisco',  'California',  '94109',  'United States', NULL)
 ,( 'Shu',  'K',  'Ito', 2,  '330-555-0120',  'shu0@adventure-works.com',  '5725 Glaze Drive',  'San Francisco',  'California',  '94109',  'United States', NULL)
 ,( 'Michael',  'G',  'Blythe', 4,  '257-555-0154',  'michael9@adventure-works.com',  '8154 Via Mexico',  'Detroit',  'Michiga ',  '48226',  'United States', NULL)
 ,( 'Pamela',  'O',  'Ansman-Wolfe', 5,  '340-555-0193',  'pamela0@adventure-works.com',  '636 Vine Hill Way',  'Portland',  'Orego ',  '97205',  'United States', NULL)
 ,( 'Jea ', NULL,  'Trenary', 3,  '685-555-0120',  'jean0@adventure-works.com',  '2383 Pepper Drive',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Reube ', NULL,  'D''sa', 3,  '191-555-0112',  'reuben0@adventure-works.com',  '1064 Slow Creek Road',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Deborah', NULL,  'Poe', 3,  '602-555-0194',  'deborah0@adventure-works.com',  '7640 First Ave.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Matthias', NULL,  'Berndt', 3,  '139-555-0120',  'matthias0@adventure-works.com',  '4312 Cambridge Drive',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Mindy', NULL,  'Marti ', 3,  '522-555-0147',  'mindy0@adventure-works.com',  '9687 Shakespeare Drive',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Joh ',  'A',  'Che ', 3,  '201-555-0163',  'john2@adventure-works.com',  '3977 Central Avenue',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Cristia ', NULL,  'Petculescu', 3,  '434-555-0133',  'cristian0@adventure-works.com',  '7166 Brock Lane',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Benjami ', NULL,  'Marti ', 3,  '533-555-0111',  'benjamin0@adventure-works.com',  '4231 Spar Court',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Hazem', NULL,  'Abolrous', 3,  '869-555-0125',  'hazem0@adventure-works.com',  '5050 Mt. Wilson Way',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Angela', NULL,  'Barbariol', 3,  '150-555-0194',  'angela0@adventure-works.com',  '2687 Ridge Road',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'David', NULL,  'Liu', 3,  '646-555-0185',  'david6@adventure-works.com',  '9605 Pheasant Circle',  'Gold Bar',  'Washington',  '98251',  'United States', NULL)
 ,( 'Dyla ', NULL,  'Miller', 3,  '181-555-0156',  'dylan0@adventure-works.com',  '7048 Laurel',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,(NULL,  'A. Scott',  'Wright', 3,  '992-555-0194',  'ascott0@adventure-works.com',  '9297 Kenston Dr.',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Pat', NULL,  'Colema ', 3,  '720-555-0158',  'pat0@adventure-works.com',  '2425 Notre Dame Ave',  'Gold Bar',  'Washington',  '98251',  'United States', NULL)
 ,( 'Amy', NULL,  'Alberts', 3,  '775-555-0164',  'amy0@adventure-works.com',  '5009 Orange Street',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Jeffrey', NULL,  'Ford', 3,  '984-555-0185',  'jeffrey0@adventure-works.com',  '5734 Ashford Court',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Ke ', NULL,  'Sánchez', 3,  '697-555-0142',  'ken0@adventure-works.com',  '4350 Minute Dr.',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Rajesh', NULL,  'Patel', 3,  '373-555-0137',  'rajesh0@adventure-works.com',  '5423 Champion Rd.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Peter', NULL,  'Connelly', 3,  '310-555-0133',  'peter1@adventure-works.com',  '9530 Vine Lane',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Annik', NULL,  'Stahl', 3,  '499-555-0125',  'annik0@adventure-works.com',  '7842 Ygnacio Valley Road',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Linda', NULL,  'Moschell', 3,  '612-555-0171',  'linda0@adventure-works.com',  '3284 S. Blank Avenue',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Diane', NULL,  'Tibbott', 3,  '361-555-0180',  'diane2@adventure-works.com',  '8192 Seagull Court',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Jossef', NULL,  'Goldberg', 3,  '122-555-0189',  'jossef0@adventure-works.com',  '5670 Bel Air Dr.',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Michiko', NULL,  'Osada', 3,  '984-555-0148',  'michiko0@adventure-works.com',  '1962 Ferndale Lane',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Jo', NULL,  'Brow ', 3,  '632-555-0129',  'jo0@adventure-works.com',  '9693 Mellowood Street',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Michael', NULL,  'Hines', 3,  '218-555-0126',  'michael0@adventure-works.com',  '1792 Belmont Rd.',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Marc', NULL,  'Ingle', 3,  '234-555-0169',  'marc0@adventure-works.com',  '2473 Orchard Way',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Terrence', NULL,  'Earls', 3,  '110-555-0115',  'terrence0@adventure-works.com',  '6968 Wren Ave.',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Annette', NULL,  'Hill', 3,  '125-555-0196',  'annette0@adventure-works.com',  '6369 Ellis Street',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Elizabeth', NULL,  'Keyser', 3,  '318-555-0137',  'elizabeth0@adventure-works.com',  '350 Pastel Drive',  'Kent',  'Washington',  '98031',  'United States', NULL)
 ,( 'Betsy', NULL,  'Stadick', 3,  '405-555-0171',  'betsy0@adventure-works.com',  '5672 Hale Dr.',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Cynthia', NULL,  'Randall', 3,  '352-555-0138',  'cynthia0@adventure-works.com',  '463 H Stagecoach Rd.',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Andrew', NULL,  'Cencini', 3,  '207-555-0192',  'andrew1@adventure-works.com',  '4444 Pepper Way',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Barry', NULL,  'Johnso ', 3,  '206-555-0180',  'barry0@adventure-works.com',  '3114 Notre Dame Ave.',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Eugene', NULL,  'Koga ', 3,  '173-555-0179',  'eugene1@adventure-works.com',  '991 Vista Verde',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Stephe ', NULL,  'Jiang', 3,  '238-555-0197',  'stephen0@adventure-works.com',  '2427 Notre Dame Ave.',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Michael', NULL,  'Enti ', 3,  '817-555-0186',  'michael4@adventure-works.com',  '2482 Buckingham Dr.',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Doris', NULL,  'Hartwig', 3,  '328-555-0150',  'doris0@adventure-works.com',  '5553 Cash Avenue',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Suroor', NULL,  'Fatima', 3,  '932-555-0161',  'suroor0@adventure-works.com',  '3281 Hillview Dr.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Joh ',  'A',  'Kane', 3,  '254-555-0114',  'john4@adventure-works.com',  '8209 Green View Court',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Andy', NULL,  'Ruth', 3,  '118-555-0110',  'andy0@adventure-works.com',  '4777 Rockne Drive',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Katie', NULL,  'McAskill-White', 3,  '809-555-0133',  'katie0@adventure-works.com',  '4948 West 4th St',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Taylor', NULL,  'Maxwell', 3,  '508-555-0165',  'taylor0@adventure-works.com',  '504 O St.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Lionel', NULL,  'Penuchot', 3,  '450-555-0152',  'lionel0@adventure-works.com',  '7765 Sunsine Drive',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Carole', NULL,  'Poland', 3,  '688-555-0192',  'carole0@adventure-works.com',  '8411 Mt. Orange Place',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Mihail', NULL,  'Frintu', 3,  '733-555-0128',  'mihail0@adventure-works.com',  '2466 Clearland Circle',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Belinda', NULL,  'Newma ', 3,  '319-555-0126',  'belinda0@adventure-works.com',  '1399 Firestone Drive',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'William', NULL,  'Vong', 3,  '148-555-0145',  'william0@adventure-works.com',  '6774 Bonanza',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Anibal', NULL,  'Sousa', 3,  '106-555-0120',  'anibal0@adventure-works.com',  '6891 Ham Drive',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'E.',  'Gary',  'Altma ', 3,  '110-555-0112',  'gary1@adventure-works.com',  '2598 Breck Court',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Kirk', NULL,  'Koenigsbauer', 3,  '669-555-0150',  'kirk0@adventure-works.com',  '1220 Bradford Way',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Russell', NULL,  'King', 3,  '517-555-0122',  'russell1@adventure-works.com',  '3919 Pinto Road',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sheela', NULL,  'Word', 3,  '210-555-0193',  'sheela0@adventure-works.com',  '535 Greendell Pl',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Ke ', NULL,  'Myer', 3,  '949-555-0174',  'ken1@adventure-works.com',  '1362 Somerset Place',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Jimmy', NULL,  'Bischoff', 3,  '927-555-0168',  'jimmy0@adventure-works.com',  '2176 Brown Street',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Samantha', NULL,  'Smith', 3,  '587-555-0114',  'samantha0@adventure-works.com',  '1648 Eastgate Lane',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sea ', NULL,  'Chai', 3,  '205-555-0132',  'sean1@adventure-works.com',  '9314 Icicle Way',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Denise', NULL,  'Smith', 3,  '869-555-0119',  'denise0@adventure-works.com',  '5669 Ironwood Way',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Mindaugas', NULL,  'Krapauskas', 3,  '637-555-0120',  'mindaugas0@adventure-works.com',  '9825 Coralie Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Chris', NULL,  'Norred', 3,  '575-555-0126',  'chris1@adventure-works.com',  '989 Crown Ct',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,(NULL,  'Russell',  'Hunter', 3,  '786-555-0144',  'russell0@adventure-works.com',  '7616 Honey Court',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'James', NULL,  'Hamilto ', 3,  '870-555-0122',  'james1@adventure-works.com',  '9652 Los Angeles',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Michael', NULL,  'Rothkugel', 3,  '454-555-0119',  'michael1@adventure-works.com',  '207 Berry Court',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Thierry', NULL,  'D''Hers', 3,  '168-555-0183',  'thierry0@adventure-works.com',  '1970 Napa Ct.',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Paul', NULL,  'Komosinski', 3,  '147-555-0160',  'paul0@adventure-works.com',  '7270 Pepper Way',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Ala ', NULL,  'Brewer', 3,  '438-555-0172',  'alan0@adventure-works.com',  '25 95th Ave NE',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Mark', NULL,  'McArthur', 3,  '417-555-0154',  'mark1@adventure-works.com',  '9863 Ridge Place',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Houma ', NULL,  'Pournasseh', 3,  '180-555-0136',  'houman0@adventure-works.com',  '9882 Clay Rde',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Pete', NULL,  'Male', 3,  '768-555-0123',  'pete0@adventure-works.com',  '5375 Clearland Circle',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Stuart', NULL,  'Munso ', 3,  '413-555-0136',  'stuart0@adventure-works.com',  '6448 Castle Court',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Frank', NULL,  'Martinez', 3,  '203-555-0196',  'frank3@adventure-works.com',  '5724 Victory Lane',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Patrick', NULL,  'Wedge', 3,  '413-555-0124',  'patrick0@adventure-works.com',  '3067 Maya',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Kitti', NULL,  'Lertpiriyasuwat', 3,  '785-555-0132',  'kitti0@adventure-works.com',  '5376 Catanzaro Way',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Gigi', NULL,  'Matthew', 3,  '185-555-0186',  'gigi0@adventure-works.com',  '7808 Brown St.',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'David', NULL,  'Barber', 3,  '477-555-0132',  'david5@adventure-works.com',  '8967 Hamilton Ave.',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Lori', NULL,  'Kane', 3,  '289-555-0196',  'lori0@adventure-works.com',  '3066 Wallace Dr.',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Sea ',  'Michael',  'Ray', 3,  '156-555-0199',  'michael3@adventure-works.com',  '6498 Mining Rd.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'David', NULL,  'Johnso ', 3,  '166-555-0162',  'david1@adventure-works.com',  '6697 Ridge Park Drive',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Zainal', NULL,  'Arifi ', 3,  '204-555-0115',  'zainal0@adventure-works.com',  '342 San Simeo ',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Niti ', NULL,  'Mirchandani', 3,  '143-555-0173',  'nitin0@adventure-works.com',  '4096 San Remo',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Nancy', NULL,  'Anderso ', 3,  '970-555-0118',  'nancy0@adventure-works.com',  '7820 Bird Drive',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Beth',  'Wendy',  'Kah ', 3,  '248-555-0134',  'wendy0@adventure-works.com',  '4525 Benedict Ct.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Baris', NULL,  'Cetinok', 3,  '164-555-0114',  'baris0@adventure-works.com',  '426 San Rafael',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Bonnie', NULL,  'Kearney', 3,  '264-555-0150',  'bonnie0@adventure-works.com',  '4852 Chaparral Court',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Randy', NULL,  'Reeves', 3,  '961-555-0122',  'randy0@adventure-works.com',  '3632 Bank Way',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Mandar', NULL,  'Samant', 3,  '140-555-0132',  'mandar0@adventure-works.com',  '2598 La Vista Circle',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Eric', NULL,  'Kurja ', 3,  '265-555-0195',  'eric2@adventure-works.com',  '1378 String Dr',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Douglas', NULL,  'Hite', 3,  '808-555-0172',  'douglas0@adventure-works.com',  '390 Ridgewood Ct.',  'Carnatio ',  'Washington',  '98014',  'United States', NULL)
 ,( 'Nicole', NULL,  'Holliday', 3,  '508-555-0129',  'nicole0@adventure-works.com',  '3243 Buckingham Dr.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Charles', NULL,  'Fitzgerald', 3,  '931-555-0118',  'charles0@adventure-works.com',  '5263 Etcheverry Dr',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Michael', NULL,  'Patte ', 3,  '441-555-0195',  'michael2@adventure-works.com',  '2038 Encino Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Greg', NULL,  'Alderso ', 3,  '332-555-0150',  'greg0@adventure-works.com',  '8684 Military East',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Peter', NULL,  'Krebs', 3,  '913-555-0196',  'peter0@adventure-works.com',  '3670 All Ways Drive',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Joh ',  'A',  'Wood', 3,  '486-555-0150',  'john5@adventure-works.com',  '9906 Oak Grove Road',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Paula', NULL,  'Nartker', 3,  '476-555-0119',  'paula1@adventure-works.com',  '2144 San Rafael',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Paul', NULL,  'Singh', 3,  '727-555-0112',  'paul1@adventure-works.com',  '1343 Prospect St',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Bria ', NULL,  'Lloyd', 3,  '110-555-0182',  'brian0@adventure-works.com',  '7230 Vine Maple Street',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Tengiz', NULL,  'Kharatishvili', 3,  '910-555-0116',  'tengiz0@adventure-works.com',  '3333 Madhatter Circle',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Kathie', NULL,  'Flood', 3,  '446-555-0118',  'kathie0@adventure-works.com',  '9241 St George Dr.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Rob', NULL,  'Caro ', 3,  '238-555-0116',  'rob1@adventure-works.com',  '5030 Blue Ridge Dr.',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Mike', NULL,  'Seamans', 3,  '927-555-0150',  'mike0@adventure-works.com',  '1245 Clay Road',  'Index',  'Washington',  '98256',  'United States', NULL)
 ,( 'Britta', NULL,  'Simo ', 3,  '955-555-0169',  'britta0@adventure-works.com',  '2046 Las Palmas',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Kevi ', NULL,  'Liu', 3,  '714-555-0138',  'kevin1@adventure-works.com',  '7594 Alexander Pl.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Eri ', NULL,  'Hagens', 3,  '842-555-0158',  'erin0@adventure-works.com',  '2947 Vine Lane',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Rya ', NULL,  'Cornelse ', 3,  '208-555-0114',  'ryan0@adventure-works.com',  '177 11th Ave',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Vidur', NULL,  'Luthra', 3,  '153-555-0186',  'vidur0@adventure-works.com',  '3030 Blackburn Ct.',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Andrew', NULL,  'Hill', 3,  '908-555-0159',  'andrew0@adventure-works.com',  '6629 Polson Circle',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Sandeep', NULL,  'Kaliyath', 3,  '166-555-0156',  'sandeep0@adventure-works.com',  '4310 Kenston Dr.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Barbara', NULL,  'Decker', 3,  '119-555-0192',  'barbara0@adventure-works.com',  '7145 Matchstick Drive',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Susa ', NULL,  'Eato ', 3,  '943-555-0196',  'susan0@adventure-works.com',  '2736 Scramble Rd',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Gail', NULL,  'Erickso ', 3,  '849-555-0139',  'gail0@adventure-works.com',  '9435 Breck Court',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Peng', NULL,  'Wu', 3,  '164-555-0164',  'peng0@adventure-works.com',  '250 Race Court',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Yuhong', NULL,  'Li', 3,  '965-555-0155',  'yuhong0@adventure-works.com',  '502 Alexander Pl.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Da ', NULL,  'Wilso ', 3,  '653-555-0144',  'dan1@adventure-works.com',  '5863 Sierra',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Reinout', NULL,  'Hillman ', 3,  '370-555-0163',  'reinout0@adventure-works.com',  '620 Woodside Ct.',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Janice', NULL,  'Galvi ', 3,  '473-555-0117',  'janice0@adventure-works.com',  '3397 Rancho View Drive',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Kevi ', NULL,  'Homer', 3,  '555-555-0113',  'kevin2@adventure-works.com',  '6058 Hill Street',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Eugene', NULL,  'Zabokritski', 3,  '241-555-0191',  'eugene0@adventure-works.com',  '7939 Bayview Court',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Ashvini', NULL,  'Sharma', 3,  '656-555-0119',  'ashvini0@adventure-works.com',  '6580 Poor Ridge Court',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Bob', NULL,  'Hohma ', 3,  '611-555-0116',  'bob0@adventure-works.com',  '6387 Scenic Avenue',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Lane', NULL,  'Sacksteder', 3,  '200-555-0117',  'lane0@adventure-works.com',  '3029 Pastime Dr',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Jo', NULL,  'Berry', 3,  '228-555-0159',  'jo1@adventure-works.com',  '1748 Bird Drive',  'Index',  'Washington',  '98256',  'United States', NULL)
 ,( 'Olinda', NULL,  'Turner', 3,  '306-555-0186',  'olinda0@adventure-works.com',  '7221 Peachwillow Street',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Hao', NULL,  'Che ', 3,  '806-555-0136',  'hao0@adventure-works.com',  '7691 Benedict Ct.',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Laura', NULL,  'Steele', 3,  '777-555-0141',  'laura0@adventure-works.com',  '1825 Corte Del Prado',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Tom', NULL,  'Vande Velde', 3,  '295-555-0161',  'tom0@adventure-works.com',  '5242 Marvelle Ln.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Lola ', NULL,  'Song', 3,  '582-555-0178',  'lolan0@adventure-works.com',  '8152 Claudia Dr.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Draga ', NULL,  'Tomic', 3,  '117-555-0185',  'dragan0@adventure-works.com',  '3884 Beauty Street',  'Gold Bar',  'Washington',  '98251',  'United States', NULL)
 ,( 'David', NULL,  'Campbell', 3,  '740-555-0182',  'david8@adventure-works.com',  '2284 Azalea Avenue',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Zheng', NULL,  'Mu', 3,  '113-555-0173',  'zheng0@adventure-works.com',  '6578 Woodhaven Ln.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Mary', NULL,  'Baker', 3,  '283-555-0185',  'mary1@adventure-works.com',  '2354 Frame Ln.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Ramesh', NULL,  'Meyyappa ', 3,  '182-555-0134',  'ramesh0@adventure-works.com',  '3848 East 39th Street',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Susa ', NULL,  'Metters', 3,  '639-555-0164',  'susan1@adventure-works.com',  '9104 Mt. Sequoia Ct.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Kimberly', NULL,  'Zimmerma ', 3,  '123-555-0167',  'kimberly0@adventure-works.com',  '8656 Lakespring Place',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'William',  'Ivo',  'Salmre', 3,  '115-555-0179',  'ivo0@adventure-works.com',  '3841 Silver Oaks Place',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Mary', NULL,  'Gibso ', 3,  '531-555-0183',  'mary0@adventure-works.com',  '3928 San Francisco',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Syed', NULL,  'Abbas', 3,  '926-555-0182',  'syed0@adventure-works.com',  '7484 Roundtree Drive',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Brando ', NULL,  'Heidepriem', 3,  '429-555-0137',  'brandon0@adventure-works.com',  '8000 Crane Court',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Stuart', NULL,  'Macrae', 3,  '539-555-0149',  'stuart1@adventure-works.com',  '2266 Greenwood Circle',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Laura', NULL,  'Norma ', 3,  '615-555-0110',  'laura1@adventure-works.com',  '6937 E. 42nd Street',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,(NULL,  'Eric',  'Gubbels', 3,  '260-555-0119',  'eric0@adventure-works.com',  '371 Apple Dr.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Rebecca', NULL,  'Laszlo', 3,  '314-555-0113',  'rebecca0@adventure-works.com',  '3197 Thornhill Place',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Barbara', NULL,  'Moreland', 3,  '822-555-0145',  'barbara1@adventure-works.com',  '137 Mazatla ',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Michael', NULL,  'Sulliva ', 3,  '465-555-0156',  'michael8@adventure-works.com',  '6510 Hacienda Drive',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Frank', NULL,  'Pellow', 3,  '163-555-0147',  'frank2@adventure-works.com',  '5980 Icicle Circle',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Janeth', NULL,  'Esteves', 3,  '540-555-0191',  'janeth0@adventure-works.com',  '4566 La Jolla',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'JoLyn ', NULL,  'Dobney', 3,  '903-555-0145',  'jolynn0@adventure-works.com',  '7126 Ending Ct.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Wanida', NULL,  'Benshoof', 3,  '708-555-0141',  'wanida0@adventure-works.com',  '6951 Harmony Way',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Scott', NULL,  'Gode', 3,  '391-555-0138',  'scott0@adventure-works.com',  '7403 N. Broadway',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Arvind', NULL,  'Rao', 3,  '848-555-0163',  'arvind0@adventure-works.com',  '9495 Limewood Place',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Kok-Ho', NULL,  'Loh', 3,  '999-555-0155',  'kok-ho0@adventure-works.com',  '3708 Montana',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Rostislav', NULL,  'Shabali ', 3,  '751-555-0134',  'rostislav0@adventure-works.com',  '3711 Rollingwood Dr',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Magnus', NULL,  'Hedlund', 3,  '583-555-0182',  'magnus0@adventure-works.com',  '9533 Working Drive',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Christopher', NULL,  'Hill', 3,  '153-555-0166',  'christopher0@adventure-works.c',  '1902 Santa Cruz',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Janet', NULL,  'Sheperdigia ', 3,  '393-555-0186',  'janet0@adventure-works.com',  '6871 Thornwood Dr.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Alice', NULL,  'Ciccu', 3,  '333-555-0173',  'alice0@adventure-works.com',  '3280 Pheasant Circle',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Suchitra', NULL,  'Moha ', 3,  '753-555-0129',  'suchitra0@adventure-works.com',  '5678 Clear Court',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'David', NULL,  'Ortiz', 3,  '712-555-0119',  'david2@adventure-works.com',  '931 Corte De Luna',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Alejandro', NULL,  'McGuel', 3,  '668-555-0130',  'alejandro0@adventure-works.com',  '7127 Los Gatos Court',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Prasanna', NULL,  'Samarawickrama', 3,  '129-555-0199',  'prasanna0@adventure-works.com',  '9322 Driving Drive',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Bria ', NULL,  'LaMee', 3,  '313-555-0196',  'brian1@adventure-works.com',  '2294 West 39th St.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Chad', NULL,  'Niswonger', 3,  '559-555-0175',  'chad0@adventure-works.com',  '5747 Shirley Drive',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Joh ',  'A',  'Frum', 3,  '663-555-0172',  'john3@adventure-works.com',  '3665 Oak Creek Ct.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Kara ', NULL,  'Khanna', 3,  '447-555-0186',  'karan0@adventure-works.com',  '1102 Ravenwood',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Guy', NULL,  'Gilbert', 3,  '320-555-0195',  'guy1@adventure-works.com',  '7726 Driftwood Drive',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Kim', NULL,  'Ralls', 3,  '309-555-0129',  'kim0@adventure-works.com',  '1226 Shoe St.',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Christia ', NULL,  'Kleinerma ', 3,  '846-555-0157',  'christian0@adventure-works.com',  '8036 Summit View Dr.',  'Gold Bar',  'Washington',  '98251',  'United States', NULL)
 ,( 'Oliver',  'David',  'Lawrence', 3,  '118-555-0177',  'david7@adventure-works.com',  '158 Walnut Ave',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Bjor ', NULL,  'Rettig', 3,  '199-555-0117',  'bjorn0@adventure-works.com',  '5802 Ampersand Drive',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Kare ', NULL,  'Berge', 3,  '746-555-0164',  'karen0@adventure-works.com',  '3127 El Camino Drive',  'Index',  'Washington',  '98256',  'United States', NULL)
 ,( 'Jill', NULL,  'Williams', 3,  '510-555-0121',  'jill0@adventure-works.com',  '3238 Laguna Circle',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'An ',  'Ruth',  'Ellerbrock', 3,  '145-555-0130',  'ruth0@adventure-works.com',  '2176 Apollo Way',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Sharo ', NULL,  'Salavaria', 3,  '970-555-0138',  'sharon0@adventure-works.com',  '7165 Brock Lane',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Stefe ', NULL,  'Hesse', 3,  '165-555-0113',  'stefen0@adventure-works.com',  '8463 Vista Avenue',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Terry', NULL,  'Eminhizer', 3,  '138-555-0118',  'terry0@adventure-works.com',  '8668 Via Neruda',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Paula', NULL,  'Barreto de Mattos', 3,  '523-555-0175',  'paula0@adventure-works.com',  '4311 Clay Rd',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sea ', NULL,  'Alexander', 3,  '420-555-0173',  'sean0@adventure-works.com',  '7985 Center Street',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Steve', NULL,  'Masters', 3,  '712-555-0170',  'steve0@adventure-works.com',  '1398 Yorba Linda',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Do ', NULL,  'Hall', 3,  '100-555-0174',  'don0@adventure-works.com',  '1411 Ranch Drive',  'Carnatio ',  'Washington',  '98014',  'United States', NULL)
 ,( 'Danielle', NULL,  'Tiedt', 3,  '500-555-0172',  'danielle0@adventure-works.com',  '5203 Virginia Lane',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Thomas', NULL,  'Michaels', 3,  '278-555-0118',  'thomas0@adventure-works.com',  '7338 Green St.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Grant', NULL,  'Culbertso ', 3,  '955-555-0131',  'grant0@adventure-works.com',  '213 Stonewood Drive',  'Gold Bar',  'Washington',  '98251',  'United States', NULL)
 ,( 'Stephanie', NULL,  'Conroy', 3,  '594-555-0110',  'stephanie0@adventure-works.com',  '7435 Ricardo',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Simo ', NULL,  'Rapier', 3,  '963-555-0134',  'simon0@adventure-works.com',  '3421 Bouncing Road',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Diane', NULL,  'Margheim', 3,  '815-555-0138',  'diane1@adventure-works.com',  '475 Santa Maria',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Joh ',  'A',  'Campbell', 3,  '435-555-0113',  'john0@adventure-works.com',  '2639 Anchor Court',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Lorraine', NULL,  'Nay', 3,  '845-555-0184',  'lorraine0@adventure-works.com',  '2059 Clay Rd',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Barreiro Gambaro',  'Janaina',  'Bueno', 3,  '623-555-0155',  'janaina0@adventure-works.com',  '5979 El Pueblo',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Maciej', NULL,  'Dusza', 3,  '237-555-0128',  'maciej0@adventure-works.com',  '3026 Anchor Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Kare ', NULL,  'Berg', 3,  '654-555-0177',  'karen1@adventure-works.com',  '5256 Chickpea Ct.',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Raymond', NULL,  'Sam', 3,  '226-555-0197',  'raymond0@adventure-works.com',  '9784 Mt Etna Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Mikael', NULL,  'Sandberg', 3,  '309-555-0170',  'mikael0@adventure-works.com',  '9539 Glenside Dr',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Ovidiu', NULL,  'Cracium', 3,  '719-555-0181',  'ovidiu0@adventure-works.com',  '5458 Gladstone Drive',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Shelley', NULL,  'Dyck', 3,  '991-555-0184',  'shelley0@adventure-works.com',  '3747 W. Landing Avenue',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Garrett', NULL,  'Young', 3,  '609-555-0179',  'garrett0@adventure-works.com',  '2115 Passing',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Sidney', NULL,  'Higa', 3,  '424-555-0189',  'sidney0@adventure-works.com',  '9277 Country View Lane',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Reed', NULL,  'Koch', 3,  '678-555-0110',  'reed0@adventure-works.com',  '1275 West Street',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'David', NULL,  'Yalovsky', 3,  '373-555-0142',  'david3@adventure-works.com',  '5025 Holiday Hills',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Kendall', NULL,  'Keil', 3,  '138-555-0128',  'kendall0@adventure-works.com',  '7439 Laguna Niguel',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Steve ', NULL,  'Selikoff', 3,  '925-555-0114',  'steven0@adventure-works.com',  '181 Gaining Drive',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'George', NULL,  'Li', 3,  '518-555-0199',  'george0@adventure-works.com',  '3074 Arbor Drive',  'Carnatio ',  'Washington',  '98014',  'United States', NULL)
 ,( 'Gary', NULL,  'Yukish', 3,  '901-555-0125',  'gary0@adventure-works.com',  '6057 Hill Street',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Shane', NULL,  'Kim', 3,  '810-555-0178',  'shane0@adventure-works.com',  '9745 Bonita Ct.',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sariya', NULL,  'Harnpadoungsataya', 3,  '399-555-0176',  'sariya0@adventure-works.com',  '1185 Dallas Drive',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Hanying', NULL,  'Feng', 3,  '319-555-0139',  'hanying0@adventure-works.com',  '7297 RisingView',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Frank', NULL,  'Lee', 3,  '158-555-0191',  'frank0@adventure-works.com',  '8290 Margaret Ct.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,(NULL,  'Krishna',  'Sunkammurali', 3,  '491-555-0183',  'krishna0@adventure-works.com',  '6870 D Bel Air Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Richard',  'Bria ',  'Goldstei ', 3,  '730-555-0117',  'brian2@adventure-works.com',  '8157 W. Book',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Michael', NULL,  'Vanderhyde', 3,  '296-555-0121',  'michael5@adventure-works.com',  '2812 Mazatla ',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Be ', NULL,  'Miller', 3,  '151-555-0113',  'ben0@adventure-works.com',  '101 Candy Rd.',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Da ', NULL,  'Baco ', 3,  '166-555-0159',  'dan0@adventure-works.com',  '1921 Ranch Road',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,(NULL,  'Brya ',  'Baker', 3,  '712-555-0113',  'bryan0@adventure-works.com',  '2275 Valley Blvd.',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Jack', NULL,  'Richins', 3,  '552-555-0111',  'jack0@adventure-works.com',  '1356 Grove Way',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'James', NULL,  'Kramer', 3,  '119-555-0117',  'james0@adventure-works.com',  '4734 Sycamore Court',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Patrick', NULL,  'Cook', 3,  '425-555-0117',  'patrick1@adventure-works.com',  '9537 Ridgewood Drive',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Brenda', NULL,  'Diaz', 3,  '142-555-0139',  'brenda0@adventure-works.com',  '1349 Steven Way',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Alex', NULL,  'Nayberg', 3,  '819-555-0198',  'alex0@adventure-works.com',  '1400 Gate Drive',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Carol', NULL,  'Philips', 3,  '609-555-0153',  'carol0@adventure-works.com',  '6872 Thornwood Dr.',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Jose', NULL,  'Lugo', 3,  '587-555-0115',  'jose0@adventure-works.com',  '5125 Cotton Ct.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Fukiko', NULL,  'Ogisu', 3,  '520-555-0177',  'fukiko0@adventure-works.com',  '8751 Norse Drive',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Fadi', NULL,  'Fakhouri', 3,  '935-555-0116',  'fadi0@adventure-works.com',  '1285 Greenbrier Street',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Michael', NULL,  'Zwilling', 3,  '582-555-0148',  'michael7@adventure-works.com',  '7511 Cooper Dr.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Shammi', NULL,  'Mohamed', 3,  '793-555-0179',  'shammi0@adventure-works.com',  '332 Laguna Niguel',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Sootha', NULL,  'Charncherngkha', 3,  '325-555-0137',  'sootha0@adventure-works.com',  '4155 Working Drive',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Mi ', NULL,  'Su', 3,  '590-555-0152',  'min0@adventure-works.com',  '7396 Stratton Circle',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Brya ', NULL,  'Walto ', 3,  '935-555-0199',  'bryan1@adventure-works.com',  '1397 Paradise Ct.',  'Newport Hills',  'Washington',  '98006',  'United States', NULL)
 ,( 'Pilar', NULL,  'Ackerma ', 3,  '577-555-0185',  'pilar0@adventure-works.com',  '5407 Cougar Way',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Jay', NULL,  'Adams', 3,  '407-555-0165',  'jay0@adventure-works.com',  '896 Southdale',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Ed', NULL,  'Dudenhoefer', 3,  '919-555-0140',  'ed0@adventure-works.com',  '4598 Manila Avenue',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Andreas', NULL,  'Berglund', 3,  '181-555-0124',  'andreas0@adventure-works.com',  '1803 Olive Hill',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Sameer', NULL,  'Tejani', 3,  '990-555-0172',  'sameer0@adventure-works.com',  '5379 Treasure Island Way',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Mary', NULL,  'Dempsey', 3,  '124-555-0114',  'mary2@adventure-works.com',  '6307 Greenbelt Way',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Vamsi', NULL,  'Kuppa', 3,  '937-555-0137',  'vamsi0@adventure-works.com',  '9833 Mt. Dias Blv.',  'Bothell',  'Washington',  '98011',  'United States', NULL)
 ,( 'Robert', NULL,  'Rounthwaite', 3,  '589-555-0147',  'robert0@adventure-works.com',  '6843 San Simeon Dr.',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'David', NULL,  'Bradley', 3,  '913-555-0172',  'david0@adventure-works.com',  '3768 Door Way',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,(NULL,  'Nua ',  'Yu', 3,  '913-555-0184',  'nuan0@adventure-works.com',  '3454 Bel Air Drive',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Chris', NULL,  'Presto ', 3,  '200-555-0112',  'chris0@adventure-works.com',  '6657 Sand Pointe Lane',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Frank', NULL,  'Miller', 3,  '167-555-0139',  'frank1@adventure-works.com',  '591 Merriewood Drive',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Kim', NULL,  'Abercrombie', 3,  '208-555-0114',  'kim1@adventure-works.com',  '9752 Jeanne Circle',  'Carnatio ',  'Washington',  '98014',  'United States', NULL)
 ,( 'Fred', NULL,  'Northup', 3,  '818-555-0192',  'fred0@adventure-works.com',  '2601 Cambridge Drive',  'Snohomish',  'Washington',  '98296',  'United States', NULL)
 ,( 'Sairaj', NULL,  'Uddi ', 3,  '500-555-0159',  'sairaj0@adventure-works.com',  '8040 Hill Ct',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Candy', NULL,  'Spoo ', 3,  '920-555-0177',  'candy0@adventure-works.com',  '310 Winter Lane',  'Index',  'Washington',  '98256',  'United States', NULL)
 ,( 'Jeff', NULL,  'Hay', 3,  '350-555-0167',  'jeff0@adventure-works.com',  '3385 Crestview Drive',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Jinghao', NULL,  'Liu', 3,  '794-555-0159',  'jinghao0@adventure-works.com',  '9666 Northridge Ct.',  'Carnatio ',  'Washington',  '98014',  'United States', NULL)
 ,( 'Gabe', NULL,  'Mares', 3,  '310-555-0117',  'gabe0@adventure-works.com',  '1061 Buskrik Avenue',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Bria ', NULL,  'Welcker', 3,  '716-555-0127',  'brian3@adventure-works.com',  '7772 Golden Meadow',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Linda', NULL,  'Meisner', 3,  '916-555-0165',  'linda2@adventure-works.com',  '6118 Grasswood Circle',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Eric', NULL,  'Brow ', 3,  '680-555-0118',  'eric1@adventure-works.com',  '5086 Nottingham Place',  'Duvall',  'Washington',  '98019',  'United States', NULL)
 ,( 'Merav', NULL,  'Netz', 3,  '224-555-0187',  'merav0@adventure-works.com',  '5666 Hazelnut Lane',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Tawana', NULL,  'Nusbaum', 3,  '368-555-0113',  'tawana0@adventure-works.com',  '9964 North Ridge Drive',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Hung-Fu', NULL,  'Ting', 3,  '497-555-0181',  'hung-fu0@adventure-works.com',  '7086 O St.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'David', NULL,  'Hamilto ', 3,  '986-555-0177',  'david4@adventure-works.com',  '4095 Cooper Dr.',  'Kenmore',  'Washington',  '98028',  'United States', NULL)
 ,( 'Ja ', NULL,  'Miksovsky', 3,  '139-555-0131',  'jan0@adventure-works.com',  '8624 Pepper Way',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Kevi ', NULL,  'Brow ', 3,  '150-555-0189',  'kevin0@adventure-works.com',  '7883 Missing Canyon Court',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Yvonne', NULL,  'McKay', 3,  '286-555-0189',  'yvonne0@adventure-works.com',  '1962 Cotton Ct.',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Jaso ', NULL,  'Watters', 3,  '571-555-0179',  'jason0@adventure-works.com',  '9320 Teakwood Dr.',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,( 'Margie', NULL,  'Shoop', 3,  '818-555-0128',  'margie0@adventure-works.com',  '2080 Sycamore Drive',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'François', NULL,  'Ajenstat', 3,  '785-555-0110',  'françois0@adventure-works.com',  '1144 Paradise Ct.',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Diane', NULL,  'Glimp', 3,  '202-555-0151',  'diane0@adventure-works.com',  '9006 Woodside Way',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Willis', NULL,  'Johnso ', 3,  '778-555-0141',  'willis0@adventure-works.com',  '5452 Corte Gilberto',  'Everett',  'Washington',  '98201',  'United States', NULL)
 ,( 'Chris', NULL,  'Okelberry', 3,  '315-555-0144',  'chris2@adventure-works.com',  '8467 Clifford Court',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Sylvester', NULL,  'Valdez', 3,  '492-555-0174',  'sylvester0@adventure-works.com',  '7902 Grammercy Lane',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,(NULL,  'Sandra',  'Reátegui Alayo', 3,  '896-555-0168',  'sandra0@adventure-works.com',  '1619 Stillman Court',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Ebru', NULL,  'Ersa ', 3,  '202-555-0187',  'ebru0@adventure-works.com',  '8316 La Salle St.',  'Sammamish',  'Washington',  '98074',  'United States', NULL)
 ,( 'Ju ', NULL,  'Cao', 3,  '299-555-0113',  'jun0@adventure-works.com',  '4909 Poco Lane',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Lee',  'Terri',  'Duffy', 3,  '819-555-0175',  'terri0@adventure-works.com',  '7559 Worth Ct.',  'Rento ',  'Washington',  '98055',  'United States', NULL)
 ,( 'Lori', NULL,  'Penor', 3,  '295-555-0161',  'lori1@adventure-works.com',  '3514 Sunshine',  'Index',  'Washington',  '98256',  'United States', NULL)
 ,(NULL,  'Roberto',  'Tamburello', 3,  '212-555-0187',  'roberto0@adventure-works.com',  '2137 Birchwood Dr',  'Redmond',  'Washington',  '98052',  'United States', NULL)
 ,( 'Gordo ', NULL,  'Hee', 3,  '230-555-0144',  'gordon0@adventure-works.com',  '108 Lakeside Court',  'Bellevue',  'Washington',  '98004',  'United States', NULL)
 ,(NULL,  'Jian Shuo',  'Wang', 3,  '952-555-0178',  'jianshuo0@adventure-works.com',  '8310 Ridge Circle',  'Monroe',  'Washington',  '98272',  'United States', NULL)
 ,( 'Jack', NULL,  'Creasey', 3,  '521-555-0113',  'jack1@adventure-works.com',  '874 Olivera Road',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Linda', NULL,  'Randall', 3,  '696-555-0157',  'linda1@adventure-works.com',  '77 Birchwood',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Jim', NULL,  'Scardelis', 3,  '679-555-0113',  'jim0@adventure-works.com',  '172 Turning Dr.',  'Edmonds',  'Washington',  '98020',  'United States', NULL)
 ,( 'Mark', NULL,  'Harringto ', 3,  '147-555-0179',  'mark0@adventure-works.com',  '8585 Los Gatos Ct.',  'Issaquah',  'Washington',  '98027',  'United States', NULL)
 ,( 'Joh ',  'A',  'Evans', 3,  '172-555-0130',  'john1@adventure-works.com',  '136 Balboa Court',  'Seattle',  'Washington',  '98104',  'United States', NULL)
 ,( 'Pamela',  'O',  'Ansman-Wolfe', 5,  '340-555-0193',  'pamela0@adventure-works.com',  '636 Vine Hill Way',  'Portland',  'Orego ',  '97205',  'United States', NULL)
 ,( 'Pamela',  'O',  'Ansman-Wolfe', 5,  '340-555-0193',  'pamela0@adventure-works.com',  '636 Vine Hill Way',  'Portland',  'Orego ',  '97205',  'United States', NULL)
GO
--Inseting rows into [TECH].[Groupsbands]
INSERT [TECH].[Groupsbands] ( [Name]) VALUES 
  ( 'AndyRuth'),( 'DanWilso '),( 'DavidCampbell'),( 'ErinHagens'),( 'FukikoOgisu'),( 'GailErickso '),( 'GigiMatthew')
 ,( 'GordonHee'),( 'GregAlderso '),( 'JasonWatters'),( 'KevinHomer'),( 'Kok-HoLoh'),( 'LindaMeisner'),( 'LindaMoschell')
 ,( 'MaryDempsey'),( 'MinSu'),( 'NuanYu'),( 'OlindaTurner') ,( 'PatrickWedge'),( 'PaulaBarreto de Mattos'),( 'PaulKomosinski')
 ,( 'PaulSingh'),( 'PeterKrebs'),( 'RebeccaLaszlo'),( 'ReinoutHillman '),( 'RostislavShabali '),( 'RussellKing')
 ,( 'SamanthaSmith'),( 'ShammiMohamed') ,( 'ShaneKim'),( 'StuartMunso '),( 'SuchitraMoha '),( 'SylvesterValdez')
 ,( 'TerrenceEarls'),( 'TerryEminhizer'),( 'WilliamVong')
GO
-- TO INSERT [TECH].[Positions]
INSERT INTO [TECH].[Positions]
		([Name]) values ('Director'),('Singer'),('Guitarrist'),('Droom'),('Bass'),('Trumphetist'),('Diskjake'),('Assistant')
GO
 --ToInsert Rows into the Table [TECH].[Groupstructure]
INSERT INTO [TECH].[Groupstructure] 
	   ( GroupBandId, Quantity, PositionId ) Values
	   ( 1, 1, 2),( 2, 1, 2),( 3, 1, 2),( 4, 1, 2),( 5, 1, 2),( 6, 1, 2),( 7, 1, 2),( 8, 1, 2),( 9, 1, 2),( 10, 1, 2),
	   ( 11, 2, 2),( 12, 2, 2),( 13, 2, 2),( 14, 2, 2),( 15, 2, 2), ( 16, 2, 2),( 17, 2, 2),( 18, 2, 2),( 19, 2, 2),( 20, 2, 2),
	   ( 21, 1, 2),( 21, 1, 3), ( 21, 1, 1), ( 21, 1, 4),( 21, 1, 7),
	   ( 22, 1, 2),( 22, 1, 3), ( 22, 1, 1), ( 22, 1, 8),( 22, 1, 7),
	   ( 23, 1, 2),( 23, 1, 3), ( 23, 1, 1), ( 23, 1, 2),( 23, 1, 7)
GO
-- To Insert IN [TECH].[Groupbandmembers], the members of each bank with the porcentage of income by each member.
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
GO
/* START ALL REQUIREMENTS FOR CODE LOUISVILLE PROJECT */
-- Design a NONCLUSTERED INDEX with ONE KEY COLUMN that improves the performance of one of the above queries
CREATE NONCLUSTERED 
INDEX IX_Name 
ON [TECH].Groupsbands ( [Name])
GO
-- Design a NONCLUSTERED INDEX with TWO KEY COLUMNS that improves the performance of one of the above queries
CREATE NONCLUSTERED 
INDEX IX_LastName_Firstname
ON [HR].[Employees] 
([LastName], [FirstName])
INCLUDE
(PhoneNumber, Email)
GO
-- Design a NONCLUSTERED INDEX with AT LEAST ONE KEY COLUMN and AT LEAST ONE INCLUDED COLUMN 
-- that improves the performance of one of the above queries
CREATE NONCLUSTERED
INDEX IX_StartDate
ON [TECH].Groupbandmembers
(StartDate)
INCLUDE
(PorcentageIncome)
GO
--Write a SELECT query that uses a WHERE clause
SELECT [LastName] AS [Last Name] ,[FirstName] AS [First Name], [MidleName] AS [Midle Name],  DepartmentId AS [Department],
	   [PhoneNumber] AS [Phone Number], [Email], [AddressLine] AS [Address],[City],[State], [Country],[PostalCode] AS [ZIP Code]
FROM [HR].[Employees]
WHERE DepartmentId = 2
ORDER BY [LastName],[FirstName]
GO
--Write a  SELECT query that uses an OR and an AND operator
SELECT [LastName] AS [Last Name] ,[FirstName] AS [First Name], [MidleName] AS [Midle Name],  
	   [PhoneNumber] AS [Phone Number], [Email], d.DptName AS [Department], e.[State] 
FROM [HR].[Employees] e
JOIN  [HR].[Departments] d
ON  d.DepartmentId = e.DepartmentId
WHERE (e.DepartmentId = 3) AND (e.[State] = 'Washingtonn' OR e.[State] = 'California')
ORDER BY e.DepartmentId, e.[State]
GO
--Write a  SELECT query that filters NULL rows using IS NOT NULL
SELECT [LastName] AS [Last Name] ,[FirstName] AS [First Name], [MidleName] AS [Midle Name],  
	   [PhoneNumber] AS [Phone Number], [Email]
FROM [HR].[Employees]
WHERE  [MidleName] IS  NOT NULL
ORDER BY [Last Name], [First Name]
GO
--Write a DML statement that UPDATEs a set of rows with a WHERE clause. 
--The values used in the WHERE clause should be a variable
DECLARE @MName VARCHAR(30)
SET @MName = 'A'

UPDATE [HR].[Employees] 
SET [MidleName] = 'Andrew'
WHERE [MidleName] = @MName
GO
--Write a DML statement that DELETEs a set of rows with a WHERE clause. 
--The values used in the WHERE clause should be a variable
DECLARE @Position  INT
SET @Position = 5

DELETE FROM [TECH].[Positions]
WHERE  PositionId = @Position
GO
--Write a DML statement that DELETEs rows from a table that another table references. 
--This script will have to also DELETE any records that reference these rows. 
--Both of the DELETE statements need to be wrapped in a single TRANSACTION.
BEGIN TRANSACTION

DELETE FROM [TECH].Groupstructure
WHERE PositionId = 8

DELETE FROM [TECH].Groupbandmembers
WHERE PositionId = 8

DELETE FROM [TECH].[Positions]
where PositionId = 8

commit
GO
--Write a  SELECT query that utilizes a JOIN
SELECT [LastName] AS [Last Name] ,[FirstName] AS [First Name], d.[DptName] AS [Department]
FROM [HR].[Departments] d
JOIN [HR].[Employees] e
ON d.DepartmentId = e.DepartmentId
GO
--Write a  SELECT query that utilizes a JOIN with 3 or more tables
SELECT b.[Name] AS [Band's Oor Groups's Name], p.[Name] AS [Position Name], s.Quantity AS [Number of Positions]
FROM [TECH].[Groupsbands] b
JOIN [TECH].[Groupstructure] s
ON b.GroupbandId = s.GroupBandId
JOIN [TECH].[Positions] P
ON s.PositionId = p.PositionId
ORDER BY b.[Name]
GO
--Write a  SELECT query that utilizes a LEFT JOIN
SELECT [LastName] AS [Last Name] ,[FirstName] AS [First Name], d.[DptName] AS [Department]
FROM [HR].[Employees] e
LEFT JOIN [HR].[Departments] d
ON e.DepartmentId = d.DepartmentId
GO
-- Write a  SELECT query that utilizes a variable in the WHERE clause
DECLARE @Band INT
SET @Band = 20

SELECT [Name], GroupbandId
FROM [TECH].Groupsbands
WHERE GroupbandId > @Band
GO
-- Write a  SELECT query that utilizes a ORDER BY clause
SELECT [LastName] AS [Last Name] ,[FirstName] AS [First Name], [MidleName] AS [Midle Name],  
	   [PhoneNumber] AS [Phone Number], [Email]
FROM [HR].[Employees]
ORDER BY [Last Name], [First Name]
GO
-- Write a  SELECT query that utilizes a GROUP BY clause along with an aggregate function
SELECT d.[DptName] AS [Department], Count(*)
FROM [HR].[Departments] d
JOIN [HR].[Employees] e
ON d.DepartmentId = e.DepartmentId
GROUP BY d.[DptName]
ORDER BY d.[DptName]
GO
-- Write a SELECT query that utilizes a CALCULATED FIELD
SELECT [LastName]+ '  '+ [FirstName] AS [Personal Name], Year([DOB]) AS [Year of Birth]  
FROM [HR].[Employees]
WHERE [FirstName] IS NOT NULL
GO
-- Write a SELECT query that utilizes a SUBQUERY
SELECT GroupBandId ,EmployeeId, PositionId, PorcentageIncome
FROM [TECH].[Groupbandmembers]
WHERE PositionId = (
	 SELECT PositionId
	 FROM [TECH].Positions
	 WHERE [Name] = 'Singer'
)
GO
-- Write a SELECT query that utilizes a JOIN, at least 2 OPERATORS (AND, OR, =, IN, BETWEEN, ETC) AND 
-- A GROUP BY clause with an aggregate function
SELECT d.[DptName] AS [Department], Count(*)
FROM [HR].[Departments] d
JOIN [HR].[Employees] e
ON d.DepartmentId = e.DepartmentId
WHERE (e.FirstName = 'Joh') and (e.[State] = 'Washington')
GROUP BY d.[DptName]
ORDER BY d.[DptName]
GO
-- Write a SELECT query that utilizes a JOIN with 3 or more tables, at 2 OPERATORS (AND, OR, =, IN, BETWEEN, ETC), 
-- a GROUP BY clause with an aggregate function, and a HAVING clause
SELECT b.[Name] AS [Band's or Groups's Name],  SUM(s.Quantity) AS [Number of Positions]
FROM [TECH].[Groupsbands] b
JOIN [TECH].[Groupstructure] s
ON b.GroupbandId = s.GroupBandId
JOIN [TECH].[Positions] p
ON s.PositionId = p.PositionId
GROUP BY b.[Name]
HAVING SUM(s.Quantity) > 1 and b.[Name] <>'Beatles'
GO
