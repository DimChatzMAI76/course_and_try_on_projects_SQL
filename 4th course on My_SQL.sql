select first_name,last_name,'old man' as Label
from employee_demographics
where gender='male' and age>40
union
select first_name,last_name,'old lady' as Label
from employee_demographics
where gender='female' and age>40
union
select first_name,last_name,'highly paid' as Label
from employee_salary
where salary>70000
order by first_name,last_name;