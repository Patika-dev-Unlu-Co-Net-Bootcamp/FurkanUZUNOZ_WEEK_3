USE [PatikaDevDB]
GO
/****** Object:  Table [dbo].[Egitim_Asistan]    Script Date: 30.01.2022 20:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitim_Asistan](
	[EğitimdekiAsistan] [tinyint] IDENTITY(1,1) NOT NULL,
	[EgitimID] [tinyint] NULL,
	[AsistanID] [tinyint] NULL,
 CONSTRAINT [PK_Egitim_Asistan] PRIMARY KEY CLUSTERED 
(
	[EğitimdekiAsistan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Egitim_Asistan] ON 

INSERT [dbo].[Egitim_Asistan] ([EğitimdekiAsistan], [EgitimID], [AsistanID]) VALUES (1, 1, 1)
INSERT [dbo].[Egitim_Asistan] ([EğitimdekiAsistan], [EgitimID], [AsistanID]) VALUES (2, 1, 2)
INSERT [dbo].[Egitim_Asistan] ([EğitimdekiAsistan], [EgitimID], [AsistanID]) VALUES (3, 2, 1)
INSERT [dbo].[Egitim_Asistan] ([EğitimdekiAsistan], [EgitimID], [AsistanID]) VALUES (4, 2, 3)
SET IDENTITY_INSERT [dbo].[Egitim_Asistan] OFF
GO
ALTER TABLE [dbo].[Egitim_Asistan]  WITH CHECK ADD  CONSTRAINT [FK_Egitim_Asistan_Asistanlar] FOREIGN KEY([AsistanID])
REFERENCES [dbo].[Asistanlar] ([AsistanID])
GO
ALTER TABLE [dbo].[Egitim_Asistan] CHECK CONSTRAINT [FK_Egitim_Asistan_Asistanlar]
GO
ALTER TABLE [dbo].[Egitim_Asistan]  WITH CHECK ADD  CONSTRAINT [FK_Egitim_Asistan_Egitimm] FOREIGN KEY([EgitimID])
REFERENCES [dbo].[Egitimm] ([EgitimID])
GO
ALTER TABLE [dbo].[Egitim_Asistan] CHECK CONSTRAINT [FK_Egitim_Asistan_Egitimm]
GO
