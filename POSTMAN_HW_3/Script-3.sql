--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary
from salary inner join employees
on salary.id = employees.id;
--2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name,monthly_salary
from salary inner join employees 
on salary.id = employees.id 
where monthly_salary < 2000;
-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary
from salary right join employees
on salary.id=employees.id
where employee_name is null
--4.������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name,monthly_salary
from salary right join employees 
on salary.id=employees.id 
where employee_name is null and monthly_salary < 2000;
-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name,monthly_salary
from salary left join employees 
on salary.id=employees.id 
where monthly_salary is null;
--6. ������� ���� ���������� � ���������� �� ���������.
select employee_name,role_name
from roles inner join employees 
on roles.id=employees.id
--7. ������� ����� � ��������� ������ Java �������������.

select employee_name,role_name 
from roles inner join employees 
on roles.id=employees.id 
where role_name like '%Java%';
-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name,role_name 
from roles inner join employees 
on roles.id=employees.id 
where role_name like '%Python%';
--9. ������� ����� � ��������� ���� QA ���������.
select employee_name,role_name 
from roles inner join employees 
on roles.id=employees.id 
where role_name like '%QA%';
--10. ������� ����� � ��������� ������ QA ���������.
select employee_name,role_name 
from roles inner join employees 
on roles.id=employees.id 
where role_name like '%Manual QA%';
--11. ������� ����� � ��������� ��������������� QA
select employee_name,role_name 
from roles inner join employees 
on roles.id=employees.id 
where role_name like '%Automation%';
--12. ������� ����� � �������� Junior ������������
select employee_name,monthly_salary,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%Junior%';
--13. ������� ����� � �������� Middle ������������
select employee_name,monthly_salary,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%Middle%';
--14. ������� ����� � �������� Senior ������������
select employee_name,monthly_salary,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%Senior%';
-- 15. ������� �������� Java �������������
select monthly_salary,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%Java%';
--16. ������� �������� Python �������������
select monthly_salary,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%Python%';
--17. ������� ����� � �������� Junior Python �������������
select monthly_salary,employee_name,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like 'Junior Python%';
-- 18. ������� ����� � �������� Middle JS �������������
select monthly_salary,employee_name,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like 'Middle JavaScript%';
--19. ������� ����� � �������� Senior Java �������������
select monthly_salary,employee_name,role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where role_name like 'Senior Java %';
--20. ������� �������� Junior QA ���������
select monthly_salary, role_name
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like 'Junior %QA%';
-- 21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary) as avg_salary_junior
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like 'Junior%';
--22. ������� ����� ������� JS �������������
select sum(monthly_salary) as sum_salary_js
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%JavaScript%';
-- 23. ������� ����������� �� QA ���������
select min(monthly_salary) as min_salary_qa
from roles_employee 
inner join roles on roles.id=roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%QA%';
-- 24. ������� ������������ �� QA ���������
select max(monthly_salary) as max_salary_qa
from roles_employee 
inner join roles on roles.id=roles_employee.role_id 
inner join salary on salary.id = roles_employee.id 
where role_name like '%QA%'
-- 25. ������� ���������� QA ���������
select count(role_name) as cnt_qa
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
where role_name like '%QA%';
-- 26. ������� ���������� Middle ������������.
select count(role_name) as cnt_middle
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
where role_name like '%Middle%';
-- 27. ������� ���������� �������������
select count(role_name) as cnt_developer
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
where role_name like '%developer%';
-- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) as sum_salary_developer
from roles_employee 
inner join roles on roles.id=roles_employee.role_id 
inner join salary on salary.id=roles_employee.id 
where role_name like '%developer%';
-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
order by employee_name, role_name,monthly_salary;
-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where monthly_salary >=1000 and monthly_salary <=2300
order by monthly_salary;
-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where monthly_salary <2300
order by monthly_salary;
-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from roles_employee 
inner join roles on roles.id = roles_employee.role_id 
inner join employees on employees.id = roles_employee.employee_id 
inner join salary on salary.id = roles_employee.id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;