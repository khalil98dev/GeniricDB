--Update FirstName And Last Name 

	create procedure SP_UpdatePerson_FirstNameAndLastName 
	@PersonID int , 
	@FirstName nvarchar(50), @LastName nvarchar(50) ,
	@IsUpdated bit OUTPUT  
	as 
	BEGIN 
		
		Update People set 
		FirstName = @FirstName, 
		LastName = @LastName ,
		FullName = CONCAT(@FirstName,@LastName) 

		if(@@ROWCOUNT >0) 
		set @IsUpdated = 1; 
		else 
		set @IsUpdated = 0; 


	END 



