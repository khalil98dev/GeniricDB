CREATE TRIGGER trgInserPeople_AuditLog on People 
After Insert 

as 
	BEGIN 
		declare @PersonID int ; 
		select @PersonID = i.PersonID from inserted i 
		insert into AuditLog  values
				('INSERT','People', @PersonID ,GETDATE());
	END

