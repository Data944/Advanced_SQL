--Select * From employee;
--Select First_Name, Last_Name From employee
--Select First_Name, Last_Name From employee
--Select First_Name as Foreman, Last_Name as Surname From employee
--Select distinct Sex from employee
--Select distinct branch_id from employee

/*Functions
*/

--Select Count(emp_id) as CountEmployee from employee 
--Select Count(super_id) as CountEmployee from employee
--Select Count(emp_id) as CountEmployee from employee where sex = 'F' And birth_date > '1971-01-01'
--Select Avg(salary) as AvgSalary from employee
--Select Sum(Salary) as SumSalary from employee
--Select Count(Sex) as CountSex, sex as Sex from employee
--Group By Sex
--Select Sum(Total_sales) as SumTotal_Sales, emp_id from works_with group by emp_id
--Select Sum(Total_Sales) as SumTotal_Sales, client_id from works_with group by client_id

--/* Wildcards
--*/
--Select * from Client where client_name like '%LLC%'
--Select * from branch_supplier where supplier_name like '%Label%'
----Select * from employee where birth_date like '____-10'
--Select * from Client where client_name like'%school%'

/* Unions, need same # of columns
*/

--Select First_Name from employee Union
--Select branch_name from branch Union
--Select Client_Name from client

--Select client_name, client.branch_id from client
--Union
--Select supplier_name, branch_supplier.branch_id from branch_supplier

--Select Total_Sales from works_with Union
--Select Salary from employee

/* Joins
*/

--Select employee.emp_id, employee.first_name, branch.branch_name from employee
--join
--Branch on Employee.emp_id = branch.mgr_id

--Select employee.emp_id, employee.first_name, branch.branch_name from employee
--inner join
--Branch on Employee.emp_id = branch.mgr_id

--Select employee.emp_id, employee.first_name, branch.branch_name from employee
--left join
--Branch on Employee.emp_id = branch.mgr_id

--Select employee.emp_id, employee.first_name, branch.branch_name from employee
--right join
--Branch on Employee.emp_id = branch.mgr_id

--Select employee.emp_id, employee.first_name, branch.branch_name from employee
--full outer join
--Branch on Employee.emp_id = branch.mgr_id

/* Nested Queries
*/

--Select employee.first_name, employee.last_name from employee where employee.emp_id IN 
--(Select works_with.emp_id from works_with where works_with.total_sales > 30000)

--Select client.client_name
--from client
--where client.branch_id = (
--Select branch.branch_id
--from branch
--where branch.mgr_id = 102
--)

/* On Delete
*/ 



