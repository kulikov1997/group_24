--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary
from salary inner join employees
on salary.id = employees.id;
--2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name,monthly_salary
from salary inner join employees 
on salary.id = employees.id 
where monthly_salary < 2000;
-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name, monthly_salary
from salary right join employees
on salary.id=employees.id
where employee_name is null
--4.Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name,monthly_salary
from salary right join employees 
on salary.id=employees.id 
where employee_name is null and monthly_salary < 2000;
-- 5. Найти всех работников кому не начислена ЗП.
select employee_name,monthly_salary
from salary left join employees 
on salary.id=employees.id 
where monthly_salary is null;
--6. Вывести всех работников с названиями их должности.
select employee_name,role_name
from roles inner join employees 
on roles.id=employees.id
--7. Вывести имена и должность только Java разработчиков.

select employee_name,role_name 
from roles inner join employees 
on roles.id=employees.id 
where role_name like '%Java%';
-- 8. Вывести имена и должность только Python разработчиков.
select employee_name,role_name 
from roles inner join employees 
on roles.id=employees.id 
where role_name like '%Python%';
--9. Вывести имена и должность всех QA инженеров.
select employee_name,role_name 
from roles inner join employees 
on roles.id=employees.id 
where role_name like '%QA%';
--10. Вывести имена и должность ручных QA инженеров.
select employee_name,role_name 
from roles inner join employees 
on roles.id=employees.id 
where role_name like '%Manual QA%';
--11. Вывести имена и должность автоматизаторов QA
select employee_name,role_name 
from roles inner join employees 
on roles.id=employees.id 
where role_name like '%Automation%';
--12. Вывести имена и зарплаты Junior специалистов
select employee_name,monthly_salary,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%Junior%';
--13. Вывести имена и зарплаты Middle специалистов
select employee_name,monthly_salary,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%Middle%';
--14. Вывести имена и зарплаты Senior специалистов
select employee_name,monthly_salary,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%Senior%';
-- 15. Вывести зарплаты Java разработчиков
select monthly_salary,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%Java%';
--16. Вывести зарплаты Python разработчиков
select monthly_salary,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%Python%';
--17. Вывести имена и зарплаты Junior Python разработчиков
select monthly_salary,employee_name,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like 'Junior Python%';
-- 18. Вывести имена и зарплаты Middle JS разработчиков
select monthly_salary,employee_name,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like 'Middle JavaScript%';
--19. Вывести имена и зарплаты Senior Java разработчиков
select monthly_salary,employee_name,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like 'Senior Java %';
--20. Вывести зарплаты Junior QA инженеров
select monthly_salary, role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like 'Junior %QA%';
-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) as avg_salary_junior
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like 'Junior%';
--22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) as sum_salary_js
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%JavaScript%';
-- 23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) as min_salary_qa
from roles_employee 
inner join roles on roles.id=roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%QA%';
-- 24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) as max_salary_qa
from roles_employee 
inner join roles on roles.id=roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%QA%'
-- 25. Вывести количество QA инженеров
select count(role_name) as cnt_qa
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
where role_name like '%QA%';
-- 26. Вывести количество Middle специалистов.
select count(role_name) as cnt_middle
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
where role_name like '%Middle%';
-- 27. Вывести количество разработчиков
select count(role_name) as cnt_developer
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
where role_name like '%developer%';
-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) as sum_salary_developer
from roles_employee 
inner join roles on roles.id=roles_employee.role_id 
inner join salary on salary.id=roles_employee.id 
where role_name like '%developer%';
-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
order by employee_name, role_name,monthly_salary;
-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where monthly_salary >=1000 and monthly_salary <=2300
order by monthly_salary;
-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where monthly_salary <2300
order by monthly_salary;
-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;