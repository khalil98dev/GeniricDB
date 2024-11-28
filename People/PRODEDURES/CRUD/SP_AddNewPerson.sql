

--Create CRUD Procedure 

Create PROCEDURE SP_AddNewPerson
	
	@FisrtName nvarchar(50) ,
	@LastName nvarchar (50) ,
	@Adrress nvarchar(100), 
	@City nvarchar(100) , 
	@AdressPostal int , 
	@Email nvarchar(50) , 
	@Bio nvarchar(1000) =null,
	@IsDeleted bit =null

as
	BEGIN 
	Declare @FullName nvarchar(50) = Concat(@FisrtName,' ',@LastName);
		INSERT INTO People values
		(@FisrtName,@LastName,@FullName,@Adrress,@City,@AdressPostal,@Email,@Bio,@IsDeleted);
		
		return SCOPE_Identity(); 
	END



	--Rename Stored procedure 
	exec sp_rename 'SP_AddNewPeson','SP_AddNewPerson'