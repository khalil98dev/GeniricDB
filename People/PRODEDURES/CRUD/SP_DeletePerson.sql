

CREATE PROCEDURE SP_DeletePerson
@PersonID int 
as
Begin
	delete from People 
	where PersonID = @PersonID 

	if(@@ROWCOUNT >0 ) 
		return 1; 
	else 
		return 0; 
	
End
 