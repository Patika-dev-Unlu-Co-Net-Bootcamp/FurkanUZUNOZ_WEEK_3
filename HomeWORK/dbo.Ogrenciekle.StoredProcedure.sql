USE [PatikaDevDB]
GO
/****** Object:  StoredProcedure [dbo].[Ogrenciekle]    Script Date: 30.01.2022 20:10:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Ogrenciekle] (
	@OgrenciID int ,
	@EgitimID int 
)
as
begin 
	begin try
		declare @bas int ,@bitis int 
		select @bas=EgitimBaslangic,@bitis=EgitimBitis from Egitimm where Egitimm.EgitimID=@EgitimID
		
		declare @currentBitis int 
		select @currentBitis=EgitimBitis from Egitimm as eg
		inner join Egitim_Ogrenciler as egog 
		on eg.EgitimID=egog.EgitimID where egog.OgrenciID=@OgrenciID
		if(@currentBitis is Null)
		begin 
			print('Ogrencinin kayitli oldugu bir egitim yoktur o yüzden kayıt ediliyor.')
			insert into Egitim_Ogrenciler values (@EgitimID,@OgrenciID,0)
			print('Kayıt edildi.')
		end
		else 
		begin 
			if(@currentBitis<@bas)
			begin 
				insert into Egitim_Ogrenciler values (@EgitimID,@OgrenciID,0)
				print('Ogrencinin mevcut egitimi bulunmaktadir lakin çakışma olmadığından kayıt edilmiştir.')
			end 
			else
				print('Ogrencinin katılmak istedigi egitim sirasinde baska egitimi oldugundan kayit edilemiyor.')
		end 
	end try
	begin catch
	select ERROR_NUMBER() ErrorNumber ,ERROR_MESSAGE() ErrorMessage
	end catch
end
GO
