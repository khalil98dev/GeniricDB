CREATE TRIGGER trgAfterUpdatePhone_AuditLog on Phones 
After UPDATE 

as 
	BEGIN 
		declare @PhoneID int ; 
		select @PhoneID = i.PhoneID from inserted i 
		insert into AuditLog  values
				('UPDATE','Phone', @PhoneID ,GETDATE());
	END

