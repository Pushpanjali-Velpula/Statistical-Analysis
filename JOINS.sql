create database joins_in_sql;
use joins_in_sql;
CREATE TABLE customer_info (
    customername VARCHAR(100),
    customerid VARCHAR(100),
    address VARCHAR(100),
    postalcode VARCHAR(10),
    country VARCHAR(20),
    PRIMARY KEY (customerid)
);

insert into customer_info values('Prince',1,'Banglore','000000','hong kong');
insert into customer_info values('John',2,'Banglore','000000','Canada');
insert into customer_info values('Mary',3,'Banglore','000000','USA');
insert into customer_info values('Desi',6,'Hyderabad','000000','USA');
insert into customer_info values('David',4,'Banglore','000000','hong kong');
insert into customer_info values('Sara',5,'Banglore','000000','USA');
insert into customer_info values('Keeri',7,'Hyderabad','000000','Canada');
Select * from customer_info;


CREATE TABLE customers (
    customername VARCHAR(100),
    customerid VARCHAR(100),
    address VARCHAR(100),
    postalcode VARCHAR(10),
    country VARCHAR(20),
    PRIMARY KEY (customerid)
);
insert into customers values('Prince',1,'Banglore','000000','hong kong');
insert into customers values('John',2,'Banglore','000000','Canada');
insert into customers values('Mary',3,'Banglore','000000','USA');
insert into customers values('David',4,'Banglore','000000','hong kong');
insert into customers values('Sara',5,'Banglore','000000','USA');
insert into customers values('Saie',6,'Banglore','000000','Canada');
insert into customers values('Hani',7,'Banglore','000000','hong kong');
insert into customers values('Siti',8,'Banglore','000000','UK');
insert into customers values('Liki',9,'Banglore','000000','UK');
insert into customers values('Push',10,'Banglore','000000','hong kong');
Select * from customers;


CREATE TABLE order_info (
    orderid INT,
    customerid INT,
    employeeid INT,
    orderdate DATETIME,
    shipperid INT,
    PRIMARY KEY (orderid)
);
insert into order_info values(901,1,101,sysdate(),92801);
insert into order_info values(902,2,102,sysdate(),92802);
insert into order_info values(903,3,103,sysdate(),92803);
insert into order_info values(904,4,104,sysdate(),92804);
insert into order_info values(905,5,105,sysdate(),92805);
insert into order_info values(906,6,106,sysdate(),92806);
insert into order_info values(911,11,111,sysdate(),92811);
Select * from order_info;

Select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c LEFT JOIN order_info o
ON c.customerid = o.customerid;

Select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c RIGHT JOIN order_info o
ON c.customerid = o.customerid;

Select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c,order_info o WHERE 
c.customerid=o.customerid;

Select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c LEFT OUTER JOIN order_info o
ON c.customerid = o.customerid
UNION
Select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c RIGHT OUTER JOIN order_info o
ON c.customerid = o.customerid;

SELECT *FROM customer_info INTERSECT SELECT *FROM customers;