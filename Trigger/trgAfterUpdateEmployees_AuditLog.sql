CREATE TRIGGER trgAfterUpdateEmployee_AuditLog on Employees 
After UPDATE 

as 
	BEGIN 
		declare @EmployeeID int ; 
		select @EmployeeID = i.EmployeeID from inserted i 
		insert into AuditLog  values
				('UPDATE','Employees', @EmployeeID ,GETDATE());
	END

