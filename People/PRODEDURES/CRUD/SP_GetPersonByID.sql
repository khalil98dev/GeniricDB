--Create Procedure to return result set for Person 

	CREATE PROCEDURE SP_GetPersonByID
	@PersonID int 
	as 
	Begin 
		select * from People 
		where PersonID = @PersonID ; 
	End 