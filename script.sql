USE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL16.SQLEXPRESS\MSSQL\DATA\LABORPROJECTWPF.MDF]
GO
/****** Object:  Table [dbo].[AcceptWork]    Script Date: 30.04.2024 18:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcceptWork](
	[IdAccept] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Worker] [varchar](50) NULL,
	[Status] [varchar](50) NOT NULL,
	[Comissionss] [decimal](10, 2) NOT NULL,
	[Dates] [datetime] NULL,
 CONSTRAINT [PK_AcceptWork] PRIMARY KEY CLUSTERED 
(
	[Status] ASC,
	[Comissionss] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applicati]    Script Date: 30.04.2024 18:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicati](
	[IdApplicati] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [varchar](50) NULL,
	[Name] [varchar](50) NOT NULL,
	[Patronymic] [varchar](50) NULL,
	[Qualitic] [varchar](50) NULL,
	[TypeOfActivity] [varchar](50) NULL,
	[OtherData] [varchar](50) NULL,
	[Payment] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Applicati] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transfers]    Script Date: 30.04.2024 18:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transfers](
	[IdTransfer] [int] IDENTITY(1,1) NOT NULL,
	[Worker] [varchar](50) NULL,
	[Rank] [varchar](50) NOT NULL,
	[Comission] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Transfers] PRIMARY KEY CLUSTERED 
(
	[Rank] ASC,
	[Comission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 30.04.2024 18:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[IdWorker] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[TypeActivity] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AcceptWork] ON 

INSERT [dbo].[AcceptWork] ([IdAccept], [Name], [Worker], [Status], [Comissionss], [Dates]) VALUES (1, N'Екатерина', N'ABC Company', N'IT Консультант', CAST(75000.00 AS Decimal(10, 2)), CAST(N'2024-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[AcceptWork] ([IdAccept], [Name], [Worker], [Status], [Comissionss], [Dates]) VALUES (2, N'Иван', N'XYZ Corporation', N'Инженер по производству автомобилей', CAST(65000.00 AS Decimal(10, 2)), CAST(N'2024-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[AcceptWork] ([IdAccept], [Name], [Worker], [Status], [Comissionss], [Dates]) VALUES (3, N'Мария', N'Global Solutions Ltd', N'Консультант по консалтингу', CAST(45000.00 AS Decimal(10, 2)), CAST(N'2024-04-23T00:00:00.000' AS DateTime))
INSERT [dbo].[AcceptWork] ([IdAccept], [Name], [Worker], [Status], [Comissionss], [Dates]) VALUES (4, N'Дмитрий', N'Acme Inc', N'Продавец в розничной торговле', CAST(150000.00 AS Decimal(10, 2)), CAST(N'2024-04-29T00:00:00.000' AS DateTime))
INSERT [dbo].[AcceptWork] ([IdAccept], [Name], [Worker], [Status], [Comissionss], [Dates]) VALUES (5, N'Петрова', N'MegaCorp', N'Финансовый аналитик', CAST(500000.00 AS Decimal(10, 2)), CAST(N'2024-04-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[AcceptWork] OFF
GO
SET IDENTITY_INSERT [dbo].[Applicati] ON 

INSERT [dbo].[Applicati] ([IdApplicati], [Surname], [Name], [Patronymic], [Qualitic], [TypeOfActivity], [OtherData], [Payment]) VALUES (1, N'Козлов', N'Дмитрий', N'Викторович', N'Инженер', N'Проектирование', N'Знание автокада', CAST(750000.00 AS Decimal(10, 2)))
INSERT [dbo].[Applicati] ([IdApplicati], [Surname], [Name], [Patronymic], [Qualitic], [TypeOfActivity], [OtherData], [Payment]) VALUES (2, N'Смирнова', N'Екатерина', N'Александровна', N'Финанс Аналитик', N'Инвестиции', N'Банков сфера', CAST(600000.00 AS Decimal(10, 2)))
INSERT [dbo].[Applicati] ([IdApplicati], [Surname], [Name], [Patronymic], [Qualitic], [TypeOfActivity], [OtherData], [Payment]) VALUES (3, N'Иванов', N'Иван', N'Иванович', N'Старший программист', N'IT разработка', N'Опыт работы 5 лет', CAST(800000.00 AS Decimal(10, 2)))
INSERT [dbo].[Applicati] ([IdApplicati], [Surname], [Name], [Patronymic], [Qualitic], [TypeOfActivity], [OtherData], [Payment]) VALUES (4, N'Соколова', N'Мария', N'Алексеевна', N'HR менеджер', N'Упр персоналом', N'Опыт работы есть', CAST(650000.00 AS Decimal(10, 2)))
INSERT [dbo].[Applicati] ([IdApplicati], [Surname], [Name], [Patronymic], [Qualitic], [TypeOfActivity], [OtherData], [Payment]) VALUES (5, N'Анна', N'Петрова', N'Сергеевна', N'Маркеетинг', N'Реклама', N'Цифровой', CAST(700000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Applicati] OFF
GO
SET IDENTITY_INSERT [dbo].[Transfers] ON 

INSERT [dbo].[Transfers] ([IdTransfer], [Worker], [Rank], [Comission]) VALUES (1, N'ABC Company', N'IT Консультант', CAST(75000.00 AS Decimal(10, 2)))
INSERT [dbo].[Transfers] ([IdTransfer], [Worker], [Rank], [Comission]) VALUES (2, N'XYZ Corporation', N'Инженер по производству автомобилей', CAST(65000.00 AS Decimal(10, 2)))
INSERT [dbo].[Transfers] ([IdTransfer], [Worker], [Rank], [Comission]) VALUES (3, N'Global Solutions Ltd', N'Консультант по консалтингу', CAST(45000.00 AS Decimal(10, 2)))
INSERT [dbo].[Transfers] ([IdTransfer], [Worker], [Rank], [Comission]) VALUES (4, N'Acme Inc', N'Продавец в розничной торговле', CAST(150000.00 AS Decimal(10, 2)))
INSERT [dbo].[Transfers] ([IdTransfer], [Worker], [Rank], [Comission]) VALUES (5, N'MegaCorp', N'Финансовый аналитик', CAST(500000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Transfers] OFF
GO
SET IDENTITY_INSERT [dbo].[Worker] ON 

INSERT [dbo].[Worker] ([IdWorker], [Title], [TypeActivity], [Address], [Phone]) VALUES (1, N'ABC Company', N'IT консалтинг', N'123 Main Street', N'123 456 7890')
INSERT [dbo].[Worker] ([IdWorker], [Title], [TypeActivity], [Address], [Phone]) VALUES (2, N'Acme Inc', N'Розничная торговля', N'789 Oak Road', N'555 123 4567')
INSERT [dbo].[Worker] ([IdWorker], [Title], [TypeActivity], [Address], [Phone]) VALUES (3, N'Global Solutions Ltd', N'Консалтинговые услуги', N'321 Pine Street', N'999 888 7777')
INSERT [dbo].[Worker] ([IdWorker], [Title], [TypeActivity], [Address], [Phone]) VALUES (4, N'MegaCorp', N'Финансовые услуги', N'987 Maple Avenue', N'111 222 3333')
INSERT [dbo].[Worker] ([IdWorker], [Title], [TypeActivity], [Address], [Phone]) VALUES (5, N'XYZ Corporation', N'Производство автомобилей', N'456 Elm Avenue', N'987 654 3210')
SET IDENTITY_INSERT [dbo].[Worker] OFF
GO
ALTER TABLE [dbo].[AcceptWork]  WITH CHECK ADD  CONSTRAINT [FK_AcceptWork_Applicati] FOREIGN KEY([Name])
REFERENCES [dbo].[Applicati] ([Name])
GO
ALTER TABLE [dbo].[AcceptWork] CHECK CONSTRAINT [FK_AcceptWork_Applicati]
GO
ALTER TABLE [dbo].[AcceptWork]  WITH CHECK ADD  CONSTRAINT [FK_AcceptWork_Transfers] FOREIGN KEY([Status], [Comissionss])
REFERENCES [dbo].[Transfers] ([Rank], [Comission])
GO
ALTER TABLE [dbo].[AcceptWork] CHECK CONSTRAINT [FK_AcceptWork_Transfers]
GO
ALTER TABLE [dbo].[AcceptWork]  WITH CHECK ADD  CONSTRAINT [FK_AcceptWork_Worker] FOREIGN KEY([Worker])
REFERENCES [dbo].[Worker] ([Title])
GO
ALTER TABLE [dbo].[AcceptWork] CHECK CONSTRAINT [FK_AcceptWork_Worker]
GO
