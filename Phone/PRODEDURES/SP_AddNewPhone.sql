ALTER PROCEDURE SP_AddNewPhone
	@PersonID int ,
	@Number nvarchar(20), 
	@CountrySymbole nvarchar(10) = '+213'

	As 
	Begin 
	DECLARE @IsFound bit 



	--In this we spec=sify for algeria country : 
	Declare @CompanySymbole nvarchar(20) =
		case SUBSTRING( @Number,1,2) 
		when '07' THEN 'Djezzy'
		when '06' THEN 'Mobilis'
		when '05' THEN 'Ooredoo' 
		end 
		

	Declare @CompanyName nvarchar(20) =
		case @CompanySymbole
		when '07' THEN 'Djezzy'
		when '06' THEN 'Mobilis'
		when '05' THEN 'Ooredoo' 
		end 

	set @Number = CONCAT(@CountrySymbole,SUBSTRING(@Number,2,10))

		select @IsFound =  Count(PersonID) from People where PersonID = @PersonID;
			if(@IsFound <>0) 
				insert Into Phones 
				(PersonID,Number,CountrySymbole,CompanySymbole,CompanyName,IsDeleted)
				values (@PersonID,@Number,@CountrySymbole,@CompanySymbole,@CompanyName,null)
			else
				Throw 50001,'You must speceify an already exist person ',1 ; 

	End 

