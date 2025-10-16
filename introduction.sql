show databases;
use sql_joins;
show tables;
show databases;
use parks_and_creation;
show tables;
select * from employee_demographics;

select *
from employee_salary
where salary>50000;

select count(employee_id)
from employee_salary
where salary>50000;


-- AND OR NOT --LOGICAL OPERATORS

select *
from employee_demographics
where birth_date>'1985-01-01';  -- This is a standard sql date format

select * from employee_demographics where birth_date>'1985-01-01' and gender='male';

-- PEMDAS rule is used(parenthesis, exponential, multiplication,division,addition, subtraction

select * from employee_demographics
where (first_name='Leslie' And age=44) or age >55;    

-- LIKE STATEMENT
-- %(anything) and __(specific)
select *
from employee_demographics
where first_name like 'a%'; -- This query shows the first names that are started with letter a. a% means after a, anything.

select *
from employee_demographics
where first_name like '%a';  -- This shows the first name ending with a. %a means anything before a.

select *
from employee_demographics
where first_name like '%a%';  -- This shows whether the first name contains a or not. If a is there it displays.

select *
from employee_demographics
where first_name like 'a__'; -- This shows the name starting with a and contains three letters overall. One underscore means one character

select *
from employee_demographics
where first_name like 'a____';

select *
from employee_demographics
where first_name like 'a_%';


select *
from employee_demographics
where birth_date like '1989%';

-- GROUP BY CLAUSE
select gender
from employee_demographics
group by gender;

select gender,avg(age)
from employee_demographics
group by gender;

select gender,avg(age),min(age),max(age),count(age)
from employee_demographics
group by gender;

-- order by 
select *
from employee_demographics
order by first_name desc;


select *
from employee_demographics
order by gender,age desc;

select *
from employee_demographics
order by 5,4 desc;  -- Here we are using column numbers


-- HAving vs where

select occupation,avg(salary)
FROM employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary)>75000;


-- limit & aliasing
select * from employee_demographics










