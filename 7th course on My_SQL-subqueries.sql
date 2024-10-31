select * 
from employee_demographics
where employee_id in (
						select employee_id
                        from employee_salary	
                        where dept_id=1)
;



SELECT gender, AVG(Min_age)
FROM (SELECT gender, MIN(age) Min_age, MAX(age) Max_age, COUNT(age) Count_age ,AVG(age) Avg_age
FROM employee_demographics
GROUP BY gender) AS Agg_Table
GROUP BY gender
;