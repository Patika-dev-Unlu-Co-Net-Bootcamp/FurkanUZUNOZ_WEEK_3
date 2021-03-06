USE [PatikaDevDB]
GO
/****** Object:  Table [dbo].[Egitmenler]    Script Date: 30.01.2022 20:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitmenler](
	[EgitmenID] [smallint] IDENTITY(1,1) NOT NULL,
	[EgitmenAd] [varchar](20) NULL,
	[EgitmenSoyad] [varchar](20) NULL,
 CONSTRAINT [PK_Egitmenler] PRIMARY KEY CLUSTERED 
(
	[EgitmenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Egitmenler] ON 

INSERT [dbo].[Egitmenler] ([EgitmenID], [EgitmenAd], [EgitmenSoyad]) VALUES (1, N'Murat', N'Hoca')
INSERT [dbo].[Egitmenler] ([EgitmenID], [EgitmenAd], [EgitmenSoyad]) VALUES (2, N'Meral', N'MESKEN')
INSERT [dbo].[Egitmenler] ([EgitmenID], [EgitmenAd], [EgitmenSoyad]) VALUES (3, N'ALP', N'ERTÜRK')
INSERT [dbo].[Egitmenler] ([EgitmenID], [EgitmenAd], [EgitmenSoyad]) VALUES (4, N'NAZLI', N'ŞAHİN')
SET IDENTITY_INSERT [dbo].[Egitmenler] OFF
GO
