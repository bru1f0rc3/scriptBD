USE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL16.SQLEXPRESS\MSSQL\DATA\FINDJOB.MDF]
GO
/****** Object:  Table [dbo].[Deals]    Script Date: 02.05.2024 21:37:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deals](
	[DealId] [int] IDENTITY(1,1) NOT NULL,
	[EmployerId] [int] NULL,
	[JobSeekerId] [int] NULL,
	[Commission] [decimal](18, 2) NULL,
	[DateJob] [date] NULL,
 CONSTRAINT [PK__Deals__E5B281665875A30F] PRIMARY KEY CLUSTERED 
(
	[DealId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employers]    Script Date: 02.05.2024 21:37:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employers](
	[EmployerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[ActivityType] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[Phone] [varchar](255) NULL,
 CONSTRAINT [PK__Employer__CA445261A5BC8149] PRIMARY KEY CLUSTERED 
(
	[EmployerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobSeekers]    Script Date: 02.05.2024 21:37:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSeekers](
	[JobSeekerId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](255) NULL,
	[FirstName] [varchar](255) NULL,
	[MiddleName] [varchar](255) NULL,
	[Qualification] [varchar](255) NULL,
	[ActivityType] [varchar](255) NULL,
	[OtherData] [varchar](255) NULL,
	[ExpectedSalary] [decimal](18, 2) NULL,
 CONSTRAINT [PK__JobSeeke__89113AACC82FBB40] PRIMARY KEY CLUSTERED 
(
	[JobSeekerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deals] ON 

INSERT [dbo].[Deals] ([DealId], [EmployerId], [JobSeekerId], [Commission], [DateJob]) VALUES (4, 4, 4, CAST(25555.00 AS Decimal(18, 2)), CAST(N'2024-05-18' AS Date))
INSERT [dbo].[Deals] ([DealId], [EmployerId], [JobSeekerId], [Commission], [DateJob]) VALUES (5, 5, 6, CAST(600000.00 AS Decimal(18, 2)), CAST(N'2024-05-17' AS Date))
INSERT [dbo].[Deals] ([DealId], [EmployerId], [JobSeekerId], [Commission], [DateJob]) VALUES (9, 3, 5, CAST(150000.00 AS Decimal(18, 2)), CAST(N'2024-05-25' AS Date))
SET IDENTITY_INSERT [dbo].[Deals] OFF
GO
SET IDENTITY_INSERT [dbo].[Employers] ON 

INSERT [dbo].[Employers] ([EmployerId], [Name], [ActivityType], [Address], [Phone]) VALUES (3, N'ABC Company', N'IT Консалтинг', N'123 Main Street', N'123 456 7890')
INSERT [dbo].[Employers] ([EmployerId], [Name], [ActivityType], [Address], [Phone]) VALUES (4, N'Acme Inc', N'Розничная торговля', N'789 Oak Road', N'555 123 4567')
INSERT [dbo].[Employers] ([EmployerId], [Name], [ActivityType], [Address], [Phone]) VALUES (5, N'MegaCorp', N'Финансовые услуги', N'987 Maple Avenue', N'111 222 3333')
SET IDENTITY_INSERT [dbo].[Employers] OFF
GO
SET IDENTITY_INSERT [dbo].[JobSeekers] ON 

INSERT [dbo].[JobSeekers] ([JobSeekerId], [LastName], [FirstName], [MiddleName], [Qualification], [ActivityType], [OtherData], [ExpectedSalary]) VALUES (4, N'Козлов', N'Дмитрий', N'Викторович', N'Финансовый Аналитик', N'Банковская сфера', N'Опыт работы 5 лет', CAST(60000.00 AS Decimal(18, 2)))
INSERT [dbo].[JobSeekers] ([JobSeekerId], [LastName], [FirstName], [MiddleName], [Qualification], [ActivityType], [OtherData], [ExpectedSalary]) VALUES (5, N'Иванов', N'Иван', N'Иванович', N'HR менеджер', N'Управление персоналом', N'Опыт работы есть', CAST(65000.00 AS Decimal(18, 2)))
INSERT [dbo].[JobSeekers] ([JobSeekerId], [LastName], [FirstName], [MiddleName], [Qualification], [ActivityType], [OtherData], [ExpectedSalary]) VALUES (6, N'Петрова', N'Анна', N'Сергеевна', N'Маркеетинг', N'Сетевая реклама', N'Опыт работы 10 лет', CAST(35000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[JobSeekers] OFF
GO
ALTER TABLE [dbo].[Deals]  WITH CHECK ADD  CONSTRAINT [FK__Deals__EmployerI__3B75D760] FOREIGN KEY([EmployerId])
REFERENCES [dbo].[Employers] ([EmployerId])
GO
ALTER TABLE [dbo].[Deals] CHECK CONSTRAINT [FK__Deals__EmployerI__3B75D760]
GO
ALTER TABLE [dbo].[Deals]  WITH CHECK ADD  CONSTRAINT [FK__Deals__JobSeeker__3C69FB99] FOREIGN KEY([JobSeekerId])
REFERENCES [dbo].[JobSeekers] ([JobSeekerId])
GO
ALTER TABLE [dbo].[Deals] CHECK CONSTRAINT [FK__Deals__JobSeeker__3C69FB99]
GO
