Create TRIGGER trgAfterAddNewEmployee_AuditLog on Employees 
After Insert 

as 
	BEGIN 
		declare @EmployeeID int ; 
		select @EmployeeID = i.EmployeeID from inserted i 
		insert into AuditLog  values
				('INSERT','Employees', @EmployeeID ,GETDATE());
	END

