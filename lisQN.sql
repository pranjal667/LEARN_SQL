Create database employee_records;

Create table employee_details(
	EmpId INT NOT NULL,
    FullName VARCHAR(255),
    ManagerId INT NOT NULL,
    DateOfJoining varchar(255),
    Primary key (EmpId)
);

Create table employee_salary(
	EmpId int NOT NULL,
    Project varchar(255),
    Salary Int NOT NULL,
    Foreign key (EmpId) REFERENCES employee_details(EmpId)
);

INSERT INTO employee_details(EmpId,FullName,ManagerId,DateOfJoining) Value (121,'Jon Snow',321,'01/31/2014');
INSERT INTO employee_details(EmpId,FullName,ManagerId,DateOfJoining) Value (321,'Walter White',986,'01/30/2015');
INSERT INTO employee_details(EmpId,FullName,ManagerId,DateOfJoining) Value (421,'John Doe',876,'27/11/2016');
INSERT INTO employee_details(EmpId,FullName,ManagerId,DateOfJoining) Value (521,'Vanderpol',421,'01/13/2016');

INSERT INTO employee_salary(EmpId,Project,Salary) Value (121,'P1',8000);
INSERT INTO employee_salary(EmpId,Project,Salary) Value (321,'P2',1000);
INSERT INTO employee_salary(EmpId,Project,Salary) Value (421,'P1',12000);

select * from employee_details;
select ed.empId, ed.FullName, ed.ManagerId, ed.DateOfJoining,es.Salary from employee_details as ed
left join employee_salary AS es ON  ed.ManagerId = es.EmpId;

select employee_details.FullName from employee_details 
where ManagerId IS NOT NULL;