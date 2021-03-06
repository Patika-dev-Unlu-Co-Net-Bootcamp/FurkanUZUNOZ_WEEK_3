USE [PatikaDevDB]
GO
/****** Object:  Table [dbo].[Egitim_Ogrenciler]    Script Date: 30.01.2022 20:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitim_Ogrenciler](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[EgitimID] [tinyint] NULL,
	[OgrenciID] [tinyint] NULL,
	[BasariDurumu] [smallint] NULL,
 CONSTRAINT [PK_Egitim_Ogrenciler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Egitim_Ogrenciler] ON 

INSERT [dbo].[Egitim_Ogrenciler] ([ID], [EgitimID], [OgrenciID], [BasariDurumu]) VALUES (1, 1, 1, 28)
INSERT [dbo].[Egitim_Ogrenciler] ([ID], [EgitimID], [OgrenciID], [BasariDurumu]) VALUES (2, 1, 2, 14)
INSERT [dbo].[Egitim_Ogrenciler] ([ID], [EgitimID], [OgrenciID], [BasariDurumu]) VALUES (3, 1, 3, 14)
INSERT [dbo].[Egitim_Ogrenciler] ([ID], [EgitimID], [OgrenciID], [BasariDurumu]) VALUES (4, 2, 2, 0)
INSERT [dbo].[Egitim_Ogrenciler] ([ID], [EgitimID], [OgrenciID], [BasariDurumu]) VALUES (5, 2, 3, 0)
INSERT [dbo].[Egitim_Ogrenciler] ([ID], [EgitimID], [OgrenciID], [BasariDurumu]) VALUES (6, 3, 1, 0)
SET IDENTITY_INSERT [dbo].[Egitim_Ogrenciler] OFF
GO
ALTER TABLE [dbo].[Egitim_Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Egitim_Ogrenciler_Egitimm] FOREIGN KEY([EgitimID])
REFERENCES [dbo].[Egitimm] ([EgitimID])
GO
ALTER TABLE [dbo].[Egitim_Ogrenciler] CHECK CONSTRAINT [FK_Egitim_Ogrenciler_Egitimm]
GO
ALTER TABLE [dbo].[Egitim_Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Egitim_Ogrenciler_Ogrenciler] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenciler] ([OgrenciID])
GO
ALTER TABLE [dbo].[Egitim_Ogrenciler] CHECK CONSTRAINT [FK_Egitim_Ogrenciler_Ogrenciler]
GO
