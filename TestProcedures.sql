--Test Procedures 


--Add New Person 
declare @Returned int ; 
exec  @Returned = SP_AddNewPerson 'khaled','koko','Hammam Sokhna','magra',19600,'koko@g.com';

select 'Returned'=@Returned

--Update Person 
Declare @IsUpdated bit; 
exec @IsUpdated = SP_UpdatePerson 1,'koko','ibrahum,','hs','setif',19000,'khalil98dev@gmail.com'
select
	case @IsUpdated
	when  1 then 'true'
	when 0 then 'false' 
	end as IsUpdated ; 


		
		sp_rename 'People.FisrtName','FirstName'




exec SP_AddNewPhone '771278844','07','+213',10 
