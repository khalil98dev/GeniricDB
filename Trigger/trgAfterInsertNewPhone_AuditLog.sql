CREATE TRIGGER trgAfterAddNewPhone_AuditLog on Phones 
After Insert 

as 
	BEGIN 
		declare @PhoneID int ; 
		select @PhoneID = i.PhoneID from inserted i 
		insert into AuditLog  values
				('INSERT','Phone', @PhoneID ,GETDATE());
	END

