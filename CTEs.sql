/*CTEs
*/

With CTE_Employee as 
(Select FirstName, LastName, Gender, Salary,
Count(gender) Over (Partition By Gender) as TotalGender,
Avg(Salary) Over (Partition By Gender) as AvgSalary
from employeedemographics emp join employeesalary sal
On emp.employeeID= sal.EMPID
Where Salary >'45000'
)
Select * from CTE_Employee 
Select FirstName, AvgSalary From CTE_Employee
