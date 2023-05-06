-- select sum(salary), department_id from hr.employees group by department_id order by 1 asc;

-- select first_name, salary, sum(salary) over (order by first_name) as "Running Sum" from hr.employees
-- o ana kadar olan salary değerlerini toplayar ve bu şekilde ilerler.
-- over içindeki first_name kolonu üzerinden işlemi sürdürür

-- select employee_id, department_id, first_name, salary, sum(salary) over (partition by department_id order by salary) as deptsal from hr.employees order by department_id
-- partition by department_id ile department_id değiştikçe kümülatif işlem sıfırlanır.
-- her bir department_id'deki salary değerlerini toplayarak ilerler.

-- select employee_id,department_id, first_name, salary, sum(salary) over (partition by department_id order by salary rows between unbounded preceding and current row) as cumul from hr.employees order by department_id
-- bir önceki sorguyla aynı çıktıyı verir.

-- select employee_id, department_id, first_name, salary, sum(salary) over (partition by department_id order by employee_id rows between 1 preceding and 1 following) as cumul from hr.employees order by employee_id
-- department_id bazında 1 önceki ve 1 sonraki salary değerlerini toplayarak ilerler
-- select employee_id, department_id, first_name, salary, sum(salary) over (partition by department_id order by employee_id rows between 2 preceding and 1 following) as cumul from hr.employees order by employee_id
-- department_id bazında 2 önceki ve 1 sonraki salary değerlerini toplayarak ilerler

-- SELECT first_name, department_id, salary, FIRST_VALUE (salary) OVER (PARTITION BY department_id ORDER BY employee_id)AS FIRST_VALUE FROM hr.employees
-- first_value ile, department_id bazında o departmana ait ilk salary değerini döndürür.

-- SELECT first_name, department_id, salary, LAST_VALUE (salary) OVER (PARTITION BY department_id ORDER BY department_id)AS LAST_VALUE FROM hr.employees
-- last_value ile, department_id bazında o departmana ait son salary değerini döndürür.





