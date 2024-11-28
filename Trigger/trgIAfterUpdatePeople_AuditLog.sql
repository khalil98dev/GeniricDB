CREATE TRIGGER trgAfterUpdatePeople_AuditLog on People 
After UPDATE 

as 
	BEGIN 
		declare @PersonID int ; 
		select @PersonID = i.PersonID from inserted i 
		insert into AuditLog  values
				('UPDATE','People', @PersonID ,GETDATE());
	END

