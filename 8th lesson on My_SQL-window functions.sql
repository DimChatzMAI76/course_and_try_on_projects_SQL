select gender, avg(salary) as avg_salary
from employee_demographics dem
join employee_salary 	sal
	on dem.employee_id=sal.employee_id
    
group by gender;    




select gender, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary 	sal
	on dem.employee_id=sal.employee_id;
    



SELECT dem.employee_id, dem.first_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary desc) row_num,
Rank() OVER(PARTITION BY gender ORDER BY salary desc) rank_1,
dense_rank() OVER(PARTITION BY gender ORDER BY salary desc) dense_rank_2 -- this is numerically ordered instead of positional like rank
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;


