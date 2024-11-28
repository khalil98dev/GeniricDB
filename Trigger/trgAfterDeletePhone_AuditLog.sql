CREATE TRIGGER trgAfterDeletePhone_AuditLog on Phones 
After DELETE 

as 
	BEGIN 
		declare @PhoneID int ; 
		select @PhoneID = i.PhoneID from inserted i 
		insert into AuditLog  values
				('Delete','Phone', @PhoneID ,GETDATE());
	END

