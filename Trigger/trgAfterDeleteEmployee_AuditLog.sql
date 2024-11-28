CREATE TRIGGER trgAfterDeleteEmployees_AuditLog on Employees 
After DELETE 

as 
	BEGIN 
		declare @EmployeeID int ; 
		select @EmployeeID = i.EmployeeID from inserted i 
		insert into AuditLog  values
				('Delete','Employees', @EmployeeID ,GETDATE());
	END

