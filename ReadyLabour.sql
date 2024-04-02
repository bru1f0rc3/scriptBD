USE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL16.SQLEXPRESS\MSSQL\DATA\LABOUR.MDF]
GO
/****** Object:  Table [dbo].[AcceptWork]    Script Date: 02.04.2024 9:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcceptWork](
	[Name] [varchar](50) NULL,
	[Worker] [varchar](50) NULL,
	[Status] [varchar](50) NOT NULL,
	[Comissionss] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_AcceptWork] PRIMARY KEY CLUSTERED 
(
	[Status] ASC,
	[Comissionss] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applicati]    Script Date: 02.04.2024 9:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicati](
	[Surname] [varchar](50) NULL,
	[Name] [varchar](50) NOT NULL,
	[Patronymic] [varchar](50) NULL,
	[Qualitic] [varchar](20) NULL,
	[TypeOfActivity] [varchar](20) NULL,
	[OtherData] [varchar](20) NULL,
	[Payment] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Applicati] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transfers]    Script Date: 02.04.2024 9:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transfers](
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
/****** Object:  Table [dbo].[Worker]    Script Date: 02.04.2024 9:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[Title] [varchar](50) NOT NULL,
	[TypeActivity] [varchar](50) NULL,
	[Address] [varchar](20) NULL,
	[Phone] [varchar](15) NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AcceptWork] ([Name], [Worker], [Status], [Comissionss]) VALUES (N'Иванов', N'ABC Company', N'IT-Консультант', CAST(75000.00 AS Decimal(10, 2)))
INSERT [dbo].[AcceptWork] ([Name], [Worker], [Status], [Comissionss]) VALUES (N'Козлов', N'XYZ Corporation', N'Инженер по производству автомобилей', CAST(65000.00 AS Decimal(10, 2)))
INSERT [dbo].[AcceptWork] ([Name], [Worker], [Status], [Comissionss]) VALUES (N'Смирнова', N'Global Solutions Ltd.', N'Консультант по консалтингу', CAST(45000.00 AS Decimal(10, 2)))
INSERT [dbo].[AcceptWork] ([Name], [Worker], [Status], [Comissionss]) VALUES (N'Соколова', N'Acme Inc.', N'Продавец в розничной торговле', CAST(150000.00 AS Decimal(10, 2)))
INSERT [dbo].[AcceptWork] ([Name], [Worker], [Status], [Comissionss]) VALUES (N'Анна', N'MegaCorp', N'Финансовый аналитик', CAST(500000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Applicati] ([Surname], [Name], [Patronymic], [Qualitic], [TypeOfActivity], [OtherData], [Payment]) VALUES (N'Петрова', N'Анна', N'Сергеевна', N'Маркеетинг', N'Реклама', N'Цифровой', CAST(700000.00 AS Decimal(10, 2)))
INSERT [dbo].[Applicati] ([Surname], [Name], [Patronymic], [Qualitic], [TypeOfActivity], [OtherData], [Payment]) VALUES (N'Иван', N'Иванов', N'Иванович', N'Старший программист', N'IT-разработка', N'Опыт работы 5 лет', CAST(800000.00 AS Decimal(10, 2)))
INSERT [dbo].[Applicati] ([Surname], [Name], [Patronymic], [Qualitic], [TypeOfActivity], [OtherData], [Payment]) VALUES (N'Дмитрий', N'Козлов', N'Викторович', N'Инженер', N'Проектирование', N'Знание автокада', CAST(750000.00 AS Decimal(10, 2)))
INSERT [dbo].[Applicati] ([Surname], [Name], [Patronymic], [Qualitic], [TypeOfActivity], [OtherData], [Payment]) VALUES (N'Екатерина', N'Смирнова', N'Александровна', N'Финанс.Аналитик', N'Инвестиции', N'Банков.сфера', CAST(600000.00 AS Decimal(10, 2)))
INSERT [dbo].[Applicati] ([Surname], [Name], [Patronymic], [Qualitic], [TypeOfActivity], [OtherData], [Payment]) VALUES (N'Мария', N'Соколова', N'Алексеевна', N'HR-менеджер', N'Упр.персоналом', N'Опыт работы есть', CAST(650000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Transfers] ([Worker], [Rank], [Comission]) VALUES (N'ABC Company', N'IT-Консультант', CAST(75000.00 AS Decimal(10, 2)))
INSERT [dbo].[Transfers] ([Worker], [Rank], [Comission]) VALUES (N'XYZ Corporation', N'Инженер по производству автомобилей', CAST(65000.00 AS Decimal(10, 2)))
INSERT [dbo].[Transfers] ([Worker], [Rank], [Comission]) VALUES (N'Global Solutions Ltd.', N'Консультант по консалтингу', CAST(45000.00 AS Decimal(10, 2)))
INSERT [dbo].[Transfers] ([Worker], [Rank], [Comission]) VALUES (N'Acme Inc.', N'Продавец в розничной торговле', CAST(150000.00 AS Decimal(10, 2)))
INSERT [dbo].[Transfers] ([Worker], [Rank], [Comission]) VALUES (N'MegaCorp', N'Финансовый аналитик', CAST(500000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Worker] ([Title], [TypeActivity], [Address], [Phone]) VALUES (N'ABC Company', N'IT-консалтинг', N'123 Main Street', N'123-456-7890')
INSERT [dbo].[Worker] ([Title], [TypeActivity], [Address], [Phone]) VALUES (N'Acme Inc.', N'Розничная торговля', N'789 Oak Road', N'555-123-4567')
INSERT [dbo].[Worker] ([Title], [TypeActivity], [Address], [Phone]) VALUES (N'Global Solutions Ltd.', N'Консалтинговые услуги', N'321 Pine Street', N'999-888-7777')
INSERT [dbo].[Worker] ([Title], [TypeActivity], [Address], [Phone]) VALUES (N'MegaCorp', N'Финансовые услуги', N'987 Maple Avenue', N'111-222-3333')
INSERT [dbo].[Worker] ([Title], [TypeActivity], [Address], [Phone]) VALUES (N'XYZ Corporation', N'Производство автомобилей', N'456 Elm Avenue', N'987-654-3210')
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
