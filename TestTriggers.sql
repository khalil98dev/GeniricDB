
	CREATE TRIGGER trgAfterUpdateEmployeeSalary_SalaryUpdatesLog On Employees 

	after update 

	AS 
		begin 
			if(Update(ESalary)) 
			BEGIN 
					Insert into SalaryUpdatesLog 
					select i.EmployeeID, d.ESalary,i.ESalary,  GETDATE()      
					from inserted i inner join deleted d on i.EmployeeID = d.EmployeeID
			END

		End 




-- Test 
Update Employees 
set ESalary = 25000 
where EmployeeID = 3

Insert into Departements values('IT',null,null,null)
insert into Employees values (1500,1,DateFromPArts(Year(GetDate())-3,MOnth(GetDate()),Day(GetDate())),null,null,1,null,2)

select * from Employees

select * from SalaryUpdatesLog 
order by UpdateDateTime desc

