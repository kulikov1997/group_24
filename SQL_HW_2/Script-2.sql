--1. Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name varchar(50) not null
)


--2. Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Nicole Cook'),
('Edna Miller'),
('George Byrd'),
('Edwin Moore'),
('Joshua Sanders'),
('Frank Carter'),
('Karen Rhodes'),
('Carl Osborne'),
('Helen Garrett'),
('Judith Harris'),
('Sarah Thomas'),
('William Russell'),
('Dave Hernandez'),
('Frank Brown'),
('Douglas Young'),
('Chad Thomas'),
('Tom Coleman'),
('Ashley Bryant'),
('Wesley Flowers'),
('Terry Ramirez'),
('Margie Morgan'),
('Jose Mills'),
('Clara Sandoval'),
('Margaret Hoffman'),
('Juan Robertson'),
('Brenda Evans'),
('Barbara Howell'),
('Nathan Nelson'),
('Daniel Alexander'),
('Joseph Nelson'),
('Timothy King'),
('Jason Shaw'),
('Hilda Howard'),
('Katherine Brown'),
('Robert Schultz'),
('Ashley Fox'),
('Melinda Williams'),
('Dennis Scott'),
('Jesus Parsons'),
('Allen Armstrong'),
('Dale Bell'),
('Bryan Burke'),
('Amy Robertson'),
('Michael Johnson'),
('Christine Howard'),
('Harvey Butler'),
('James Kelley'),
('Scott West'),
('Arthur Richards'),
('Adam Martinez'),
('Margaret Foster'),
('Joseph Davis'),
('Adam Haynes'),
('Mark Lawrence'),
('Jesus Wilson'),
('Timothy Anderson'),
('Arthur Hicks'),
('Clara Long'),
('Tony Martin'),
('Lauren Russell'),
('Kathryn Johnson'),
('Edna Daniels'),
('Eric Fisher'),
('Marie Williams'),
('Ernest Wright'),
('Charles Smith'),
('Robert Wilson'),
('Lillian Knight'),
('Frances Fleming'),
('Glenn Harris');

--3.Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
create table salary (
id serial primary key,
monthly_salary int not null
)

--4.Наполнить таблицу salary 16 строками
insert into salary (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

-- 5.Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

-- 6.Наполнить таблицу employee_salary 40 строками:
insert into employee_salary(employee_id,salary_id)
values (3,7),
(1,4),
(29,9),
(40, 13),
(23, 4),
(54, 2),
(52, 10),
(28, 13),
(26, 4),
(16, 1),
(33, 7),
(19, 5),
(18, 4),
(17, 3),
(25, 2),
(15, 1),
(14, 15),
(13, 14),
(12, 13),
(11, 12),
(10, 11),
(9, 10),
(8, 9),
(7, 8),
(6, 7),
(5, 6),
(4, 5),
(59, 4),
(2, 3),
(45, 2),
(71, 1),
(72, 2),
(73, 3),
(74, 4),
(75, 5),
(76, 6),
(77, 7),
(78, 8),
(79, 9),
(80, 10);

-- 7.Создать таблицу roles
--id. Serial  primary key,
--role_name. int, not null, unique
create table roles(
id serial primary key,
role_name int not null unique
);

-- 8.Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30);

-- 9.Наполнить таблицу roles 20 строками:
insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

-- 10. Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
        references employees (id),
foreign key (role_id)        
        references roles (id)
);

-- 11.Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id,role_id)
values (40, 20),
(39, 19),
(38, 18),
(37, 17),
(36, 16),
(35, 15),
(34, 14),
(33, 13),
(32, 12),
(31, 11),
(30, 10),
(29, 9),
(28, 8),
(27, 7),
(26, 6),
(25, 5),
(24, 4),
(23, 3),
(22, 2),
(21, 1),
(20, 1),
(19, 2),
(18, 3),
(17, 4),
(16, 5),
(15, 6),
(14, 7),
(13, 8),
(12, 9),
(11, 10),
(10, 11),
(9, 12),
(8, 13),
(7, 14),
(6, 15),
(5, 16),
(4, 17),
(3, 18),
(2, 19),
(1, 20);








