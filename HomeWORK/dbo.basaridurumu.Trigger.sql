USE [PatikaDevDB]
GO

/****** Object:  Trigger [dbo].[basaridurumu]    Script Date: 30.01.2022 19:53:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Trigger [dbo].[basaridurumu] on [dbo].[Yoklama]
instead of insert 
as
begin
	declare @egitimsuresi int 
	declare @egitim_ogrenci_id int 
	select @egitim_ogrenci_id=Egitim_Ogrenci_ID from inserted  
	select @egitimsuresi=EgitimUzunluk from Egitim_Ogrenciler as egog
		inner join Egitimm as eg 
		on egog.EgitimID=eg.EgitimID where egog.ID=@egitim_ogrenci_id
	declare @katilim int 
	select @katilim=100/@egitimsuresi
	declare @basari int 
	select @basari=BasariDurumu from Egitim_Ogrenciler where Egitim_Ogrenciler.ID=@egitim_ogrenci_id
	declare @YoklamaDurumu int , @KaçıncıHafta int ,@Egitim_Ogrenci_ID int 
	select @YoklamaDurumu=YoklamaDurumu,@KaçıncıHafta=KaçıncıHafta,@Egitim_Ogrenci_ID=Egitim_Ogrenci_ID from inserted
	if(@YoklamaDurumu=1)
	begin
		if(@basari+@katilim<100)
		begin
		
			insert into Yoklama values (@YoklamaDurumu,@KaçıncıHafta,@Egitim_Ogrenci_ID)
			update Egitim_Ogrenciler 
			Set BasariDurumu=@basari+@katilim where Egitim_Ogrenciler.ID=@Egitim_Ogrenci_ID
		end
		else
		begin
			raiserror('Hatalı kayıt yapmaya çalışmaktasınız',1,1)
		end
	end
	else
	print('Öğrenci gelmemiştir.')

end
GO

ALTER TABLE [dbo].[Yoklama] ENABLE TRIGGER [basaridurumu]
GO

