create database school_system;
use school_system;
create table students(
student_id int primary key,
name varchar(100),
class varchar(50),
marks int);
insert into students(student_id,name,class,marks)values
(1,'Piyush','10A',90),
(2,'Aryan','12A',89),
(3,'Chetan','10A',88),
(4,'Saksham','12A',91),
(5,'Tushar','10A',92);
SELECT*FROM STUDENTS;
SELECT NAME ,CLASS,MARKS,
ROW_NUMBER() OVER(partition by CLASS ORDER BY MARKS DESC)AS ROW_NUM 
FROM STUDENTS;
SELECT NAME ,CLASS,MARKS,
RANK() OVER(partition by class order by marks desc)as rank_num
from students;
select name,class,marks,
dense_rank() over(partition by class  order by marks desc)as dense_num
from students;
drop database school_system;
