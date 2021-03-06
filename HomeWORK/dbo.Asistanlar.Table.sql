USE [PatikaDevDB]
GO
/****** Object:  Table [dbo].[Asistanlar]    Script Date: 30.01.2022 20:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistanlar](
	[AsistanID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AsistanAD] [varchar](20) NULL,
	[AsistanSoyad] [varchar](20) NULL,
 CONSTRAINT [PK_Asistanlar] PRIMARY KEY CLUSTERED 
(
	[AsistanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Asistanlar] ON 

INSERT [dbo].[Asistanlar] ([AsistanID], [AsistanAD], [AsistanSoyad]) VALUES (1, N'Ömer', N'BEDEN')
INSERT [dbo].[Asistanlar] ([AsistanID], [AsistanAD], [AsistanSoyad]) VALUES (2, N'Dilan ', N'ÇETİNKAYA')
INSERT [dbo].[Asistanlar] ([AsistanID], [AsistanAD], [AsistanSoyad]) VALUES (3, N'Kade', N'UZUNER')
SET IDENTITY_INSERT [dbo].[Asistanlar] OFF
GO
