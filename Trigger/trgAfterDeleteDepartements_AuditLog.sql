CREATE TRIGGER trgAfterDeleteDeparetment_AuditLog on Departements 
After DELETE 

as 
	BEGIN 
		declare @DepID int ; 
		select @DepID = i.DepartementID from inserted i 
		insert into AuditLog  values
				('DELETE','Departements', @DepID ,GETDATE());
	END