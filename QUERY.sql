create database abc;
USE abc;
Create table student(s_id int primary key,s_name varchar(10),age int,gender varchar(1));
desc student;
INSERT into student values(1,'Prince',20,'M');
INSERT INTO student (s_id, s_name, age, gender)
VALUES
(2, 'John', 21, 'M'),
(3, 'Mary', 19, 'F'),
(4, 'David', 22, 'M'),
(5, 'Sara', 20, 'F');
select * from student;
create table dept (dept_id int,dept_name varchar(10),s_id int,primary key(dept_id),foreign key(s_id) references student(s_id));
INSERT INTO dept (dept_id, dept_name, s_id)
VALUES (101, 'CSE', 1);
INSERT into dept values(102,'CSD',2);
INSERT into dept values(103,'AI',3);
INSERT into dept values(104,'CSD',4);
INSERT into dept values(105,'CSE',5);
select * from dept;
