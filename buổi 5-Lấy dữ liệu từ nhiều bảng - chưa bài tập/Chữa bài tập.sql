
1. https://leetcode.com/problems/find-customer-referee/description/
select name from Customer
where  referee_id is null or referee_id != 2;
--------------------------------------------------------------------
2. https://leetcode.com/problems/recyclable-and-low-fat-products/description/
select product_id from Products 
where low_fats = 'Y' and recyclable ='Y';
--------------------------------------------------------------------
3. https://leetcode.com/problems/invalid-tweets/description/
select tweet_id from Tweets
where length(content) > 15;
--------------------------------------------------------------------
4. https://leetcode.com/problems/employee-bonus/description/
select Employee.name, Bonus.bonus from Employee
left join Bonus on Employee.empId = Bonus.empId
limit 3;
--------------------------------------------------------------------
5. https://leetcode.com/problems/employees-with-missing-information/description/
select Employees.employee_id from Employees 
left join Salaries on Employees.employee_id = Salaries.employee_id
where Employees.name is null or Salaries.salary is null
union
select Salaries.employee_id from Employees 
right join Salaries  on Employees.employee_id = Salaries.employee_id
where Employees.name is null or Salaries.salary is null
order by  employee_id;
