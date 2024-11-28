CREATE TRIGGER trgAfterUpdateDeparetment_AuditLog on Departements 
After UPDATE 

as 
	BEGIN 
		declare @DepID int ; 
		select @DepID = i.DepartementID from inserted i 
		insert into AuditLog  values
				('UPDATE','Departements', @DepID ,GETDATE());
	END