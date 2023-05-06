-- select sum(salary), department_id from hr.employees group by department_id order by 1 asc;

-- OVER
-- select first_name, salary, sum(salary) over (order by first_name) as "Running Sum" from hr.employees
-- o ana kadar olan salary değerlerini toplayar ve bu şekilde ilerler.
-- over içindeki first_name kolonu üzerinden işlemi sürdürür

-- PARTITION BY
-- select employee_id, department_id, first_name, salary, sum(salary) over (partition by department_id order by salary) as deptsal from hr.employees order by department_id
-- partition by department_id ile department_id değiştikçe kümülatif işlem sıfırlanır.
-- her bir department_id'deki salary değerlerini toplayarak ilerler.

-- ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW 
-- select employee_id,department_id, first_name, salary, sum(salary) over (partition by department_id order by salary rows between unbounded preceding and current row) as cumul from hr.employees order by department_id
-- bir önceki sorguyla aynı çıktıyı verir.

-- ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING 
-- select employee_id, department_id, first_name, salary, sum(salary) over (partition by department_id order by employee_id rows between 1 preceding and 1 following) as cumul from hr.employees order by employee_id
-- department_id bazında 1 önceki ve 1 sonraki salary değerlerini toplayarak ilerler
-- select employee_id, department_id, first_name, salary, sum(salary) over (partition by department_id order by employee_id rows between 2 preceding and 1 following) as cumul from hr.employees order by employee_id
-- department_id bazında 2 önceki ve 1 sonraki salary değerlerini toplayarak ilerler

-- FIRST_VALUE, LAST_VALUE
-- SELECT first_name, department_id, salary, FIRST_VALUE (salary) OVER (PARTITION BY department_id ORDER BY employee_id)AS FIRST_VALUE FROM hr.employees
-- first_value ile, department_id bazında o departmana ait ilk salary değerini döndürür.
-- SELECT first_name, department_id, salary, LAST_VALUE (salary) OVER (PARTITION BY department_id ORDER BY department_id)AS LAST_VALUE FROM hr.employees
-- last_value ile, department_id bazında o departmana ait son salary değerini döndürür.

-- LAG, LEAD
-- select employee_id, first_name, salary, lag(salary,1) over (order by salary) as LAG1 from hr.employees
-- bir önceki kaydın salary değerini verir
-- select employee_id, first_name, salary, lead(salary,1) over (order by salary) as LEAD1 from hr.employees
-- bir sonraki kaydın salary değerini verir

-- LISTAGG ... WITHIN_GROUP
-- select department_id, listagg(first_name,',') within group (order by department_id) as newlisst from hr.employees group by department_id
-- department_id'ye göre gruplama yapıp o gruptaki kayıtların first_name'lerini yan yana yazdırır.

-- RANK, DENSE_RANK
-- select department_id, last_name, salary, rank() over(partition by department_id order by salary desc) "Rank", dense_rank() over (partition by department_id order by salary desc) "Dense Rank" from hr.employees where department_id = 60 ORDER BY "Rank";
-- rank ve dense_rank, yukarıdaki gibi gruplama bazında salary kolonuna göre sıralama yapıp 1,2,3 gibi sıra numaralı verir
-- iki kayıt aynı salary değerine sahipse; rank ikisine de aynı sıralamayı verir, dense_rank ise ikisi arasında lfabetik sıralama yapıp ayrı ayrı sıralama yapar.


