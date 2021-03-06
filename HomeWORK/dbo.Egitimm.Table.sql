USE [PatikaDevDB]
GO
/****** Object:  Table [dbo].[Egitimm]    Script Date: 30.01.2022 20:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitimm](
	[EgitimID] [tinyint] IDENTITY(1,1) NOT NULL,
	[EgitimAD] [varchar](20) NULL,
	[EgitimAyrıntı] [varchar](20) NULL,
	[EgitimUzunluk] [smallint] NULL,
	[EgitimBaslangic] [smallint] NULL,
	[EgitimBitis] [smallint] NULL,
 CONSTRAINT [PK_Egitimm] PRIMARY KEY CLUSTERED 
(
	[EgitimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Egitimm] ON 

INSERT [dbo].[Egitimm] ([EgitimID], [EgitimAD], [EgitimAyrıntı], [EgitimUzunluk], [EgitimBaslangic], [EgitimBitis]) VALUES (1, N'UNLU.CO', N'.NET', 7, 1, 8)
INSERT [dbo].[Egitimm] ([EgitimID], [EgitimAD], [EgitimAyrıntı], [EgitimUzunluk], [EgitimBaslangic], [EgitimBitis]) VALUES (2, N'YEMEKSEPETİ', N'.NET', 8, 8, 16)
INSERT [dbo].[Egitimm] ([EgitimID], [EgitimAD], [EgitimAyrıntı], [EgitimUzunluk], [EgitimBaslangic], [EgitimBitis]) VALUES (3, N'ÇİÇEKSEPETİ', N'PYTHON WEB', 10, 17, 27)
SET IDENTITY_INSERT [dbo].[Egitimm] OFF
GO
