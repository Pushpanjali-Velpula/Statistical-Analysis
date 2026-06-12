use abc;
create table salary(c_name varchar(20),salary int);
insert into salary(c_name,salary) values('A',45000);
insert into salary(c_name,salary) values('B',40000),('C',25000),('D',55000),('E',30000);
SELECT * FROM salary;
SELECT avg(SALARY) FROM SALARY;
SELECT * FROM salary WHERE SALARY > (SELECT avg(SALARY) FROM SALARY);
SELECT *FROM SALARY WHERE SALARY > (SELECT SALARY FROM SALARY WHERE C_NAME='B');
SELECT * FROM salary WHERE SALARY = (SELECT MAX(SALARY) FROM SALARY);
SELECT MAX(SALARY) FROM salary WHERE SALARY < (SELECT MAX(SALARY) FROM SALARY);

USE INTRO_SQL;
SELECT * FROM telco_customer;
SELECT AVG(TOTALCHARGES) FROM telco_customer;
SELECT * FROM telco_customer WHERE TotalCharges > (SELECT avg(TotalCharges) FROM telco_customer);
SELECT * FROM telco_customer WHERE customerID='6234-RAAPL';
SELECT * FROM telco_customer WHERE TotalCharges > (SELECT TotalCharges FROM telco_customer WHERE customerID='6234-RAAPL');
SELECT * FROM telco_customer WHERE TotalCharges = (SELECT MAX(TotalCharges) FROM telco_customer);
SELECT MAX(TOTALCHARGES) AS SECONDHIGHEST FROM telco_customer WHERE TotalCharges < (SELECT MAX(TotalCharges) FROM telco_customer);
