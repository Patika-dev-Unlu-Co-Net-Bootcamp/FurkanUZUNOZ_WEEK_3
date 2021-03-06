USE [PatikaDevDB]
GO
/****** Object:  Table [dbo].[Ogrenciler]    Script Date: 30.01.2022 20:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenciler](
	[OgrenciID] [tinyint] IDENTITY(1,1) NOT NULL,
	[OgrenciAd] [varchar](20) NULL,
	[OgrenciSoyad] [varchar](20) NULL,
 CONSTRAINT [PK_Ogrenciler] PRIMARY KEY CLUSTERED 
(
	[OgrenciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ogrenciler] ON 

INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrenciAd], [OgrenciSoyad]) VALUES (1, N'Furkan', N'UZUNÖZ')
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrenciAd], [OgrenciSoyad]) VALUES (2, N'Emre', N'AKTAŞ')
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrenciAd], [OgrenciSoyad]) VALUES (3, N'Osman', N'bilinmiyor')
INSERT [dbo].[Ogrenciler] ([OgrenciID], [OgrenciAd], [OgrenciSoyad]) VALUES (4, N'Barış', N'TUTAÇ')
SET IDENTITY_INSERT [dbo].[Ogrenciler] OFF
GO
