select gender, avg(age),max(age),min(age),count(age)
from employee_demographics
group by gender;


select *
from employee_demographics
order by gender,age;

-- select occupation,salary
-- from employee_salary
-- group by occupation,salary;



select gender,avg(age)
from employee_demographics
group by gender
having avg(age)>40;


select occupation, avg(salary)
from employee_salary
where occupation like "%manager%"
group by occupation
having avg(salary)>75000;















