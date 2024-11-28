CREATE TRIGGER trgInserPeople_AuditLog on People 
After DELETE 

as 
	BEGIN 
		declare @PersonID int ; 
		select @PersonID = i.PersonID from inserted i 
		insert into AuditLog  values
				('DELETE','People', @PersonID ,GETDATE());
	END

