create database intro_sql;
use intro_sql;
show tables;
select * from telco_customer_churn;

select gender,count(*) from telco_customer_churn group by gender;

select sum(totalcharges) from telco_customer_churn;

select round(sum(totalcharges),2) from telco_customer_churn;

select round(avg(totalcharges),2) from telco_customer_churn;

select min(totalcharges) from telco_customer_churn;

select max(totalcharges) from telco_customer_churn;

use abc;
select *from student;
select count(*) from student;
select sum(age) from student;
select min(age) from student;
select max(age) from student;
select avg(age) from student;
select round(avg(age)) from student;