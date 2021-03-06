USE [PatikaDevDB]
GO
/****** Object:  Table [dbo].[Egitim_Egitmenler]    Script Date: 30.01.2022 20:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitim_Egitmenler](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[EgitmenID] [smallint] NOT NULL,
	[EgitimID] [tinyint] NOT NULL,
 CONSTRAINT [PK_Egitim_Egitmenler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Egitim_Egitmenler] ON 

INSERT [dbo].[Egitim_Egitmenler] ([ID], [EgitmenID], [EgitimID]) VALUES (1, 1, 2)
INSERT [dbo].[Egitim_Egitmenler] ([ID], [EgitmenID], [EgitimID]) VALUES (2, 2, 1)
INSERT [dbo].[Egitim_Egitmenler] ([ID], [EgitmenID], [EgitimID]) VALUES (3, 1, 1)
INSERT [dbo].[Egitim_Egitmenler] ([ID], [EgitmenID], [EgitimID]) VALUES (4, 3, 3)
INSERT [dbo].[Egitim_Egitmenler] ([ID], [EgitmenID], [EgitimID]) VALUES (5, 3, 2)
SET IDENTITY_INSERT [dbo].[Egitim_Egitmenler] OFF
GO
ALTER TABLE [dbo].[Egitim_Egitmenler]  WITH CHECK ADD  CONSTRAINT [FK_Egitim_Egitmenler_Egitimm] FOREIGN KEY([EgitimID])
REFERENCES [dbo].[Egitimm] ([EgitimID])
GO
ALTER TABLE [dbo].[Egitim_Egitmenler] CHECK CONSTRAINT [FK_Egitim_Egitmenler_Egitimm]
GO
ALTER TABLE [dbo].[Egitim_Egitmenler]  WITH CHECK ADD  CONSTRAINT [FK_Egitim_Egitmenler_Egitmenler] FOREIGN KEY([EgitmenID])
REFERENCES [dbo].[Egitmenler] ([EgitmenID])
GO
ALTER TABLE [dbo].[Egitim_Egitmenler] CHECK CONSTRAINT [FK_Egitim_Egitmenler_Egitmenler]
GO
