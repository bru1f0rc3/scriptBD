USE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL16.SQLEXPRESS\MSSQL\DATA\LABOUR.MDF]
GO
/****** Object:  Table [dbo].[AcceptWork]    Script Date: 13.04.2024 17:43:09 ******/
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
 CONSTRAINT [PK_AcceptWork] PRIMARY KEY CLUSTERED 
(
	[Status] ASC,
	[Comissionss] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applicati]    Script Date: 13.04.2024 17:43:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicati](
	[IdApplicati] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Transfers]    Script Date: 13.04.2024 17:43:09 ******/
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
/****** Object:  Table [dbo].[Worker]    Script Date: 13.04.2024 17:43:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[IdWorker] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[TypeActivity] [varchar](50) NULL,
	[Address] [varchar](20) NULL,
	[Phone] [varchar](25) NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
