CREATE TRIGGER trgAfterInsertDeparetment_AuditLog on Departements 
After INSERT 

as 
	BEGIN 
		declare @DepID int ; 
		select @DepID = i.DepartementID from inserted i 
		insert into AuditLog  values
				('INSERT','Departements', @DepID ,GETDATE());
	END





	


