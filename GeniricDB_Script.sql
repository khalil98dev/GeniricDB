
-- Create Generic Database the consist from Employees 
Create DataBase GeniricDB 
Go

use GeniricDB 
Go 

--Create People Table to store Person Information data 
Create Table People 
(
PersonID int not null primary key identity(1,1) , 
FirstName nvarchar(50) not null, 
LastName nvarchar(50) not null, 
FullName nvarchar (101) not null,
Adrress nvarchar(100) not null, 
City nvarchar(100) not null, 
AdressPostal int null, 
Email nvarchar(50) null, 
Bio nvarchar(1000) null,
IsDeleted bit null
)
--Create Phhones Table to store multi-Phones per person 

Create Table Phones
(
PhoneID int identity(1,1) primary key, 
Number int not null, 
CompanySymbole nvarchar(10) not null, 
CountrySymbol nvarchar(10) not null, 
PersonID int references People(PersonID), 
IsDeleted bit null
) 

--

Create Table Deparetments 
(
DepartementID int primary key identity(1,1), 
DepartementName nvarchar(100) not null, 
DepDescription nvarchar(500) null,
Ranke int null, 
IsDeleted bit null
)

Create Table Employees  
(
EmployeeID int primary key identity(1,1), 
ESalary decimal (10,2) null, 
EDepartementID int references Deparetments(DepartementID), 
HireDate DateTime not null, 
EmployeeRate int null, 
EmployeesNotes nvarchar(250) null, 
IsActive bit not null, 
IsDeleted bit null 
)

--Create AuditLog Table 
Create Table AuditLog
(
ActionID int primary key Identity(1,1) , 
OperationType nvarchar(50) not null, 
TableName nvarchar(250) not null, 
RecordID int not null, 
ActionDateTime DateTime not null 
)

