USE [PatikaDevDB]
GO
/****** Object:  View [dbo].[ShowAllInformation]    Script Date: 30.01.2022 20:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create VIEW [dbo].[ShowAllInformation]
as
select ogr.OgrenciAd,ogr.OgrenciSoyad,egogr.EgitimID,egt.EgitimAD,egt.EgitimAyrıntı,egt.EgitimUzunluk,egogr.BasariDurumu from Ogrenciler as ogr 
inner join Egitim_Ogrenciler as egogr 
on ogr.OgrenciID=egogr.OgrenciID 
inner join Egitimm as egt 
on egogr.EgitimID=egt.EgitimID 
GROUP BY ogr.OgrenciAd,ogr.OgrenciSoyad,egogr.EgitimID,egt.EgitimAD,egt.EgitimAyrıntı,egt.EgitimUzunluk,egogr.BasariDurumu
GO
