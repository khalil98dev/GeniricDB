
--Update Procedure 
Create PROCEDURE SP_UpdatePerson
	@PersonID int ,
	@FisrtName nvarchar(50) =null,
	@LastName nvarchar (50) =null,
	@Adrress nvarchar(100)= null,
	@City nvarchar(100) =null,
	@AdressPostal int =null,
	@Email nvarchar(50) = 	null,
	@Bio nvarchar(1000) =null,
	@IsDeleted bit =null


	AS 
		Begin 
		 
		 	Declare @IsUpdated bit ;
			Declare @FullName nvarchar(101) = CONCAT(@FisrtName,' ',@LastName); 
			UPDATE People set  
				FisrtName = @FisrtName, 
				LastName = @LastName, 
				FullName = @FullName, 
				Adrress = @Adrress , 
				City = @City, 
				AdressPostal = @AdressPostal, 
				Email = @Email, 
				Bio = @Bio, 
				IsDeleted = @IsDeleted 
			Where PersonID = @PersonID;
			
			if(@@ROWCOUNT >0 ) 
					set @IsUpdated = 1; 
			else 
					set @IsUpdated = 0 ; 

					return @IsUpdated;
		End