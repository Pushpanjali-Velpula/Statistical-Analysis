use abc;
show tables;
select * from customers;

select concat(address,country) from customers;

select trim(concat(address,country)) from customers;

select substr("SQL TUTORIAL",5,8)AS extractstring;
select substr("stored procedures",5,12)AS extractstring;

select customername,UPPER(customername) from customers;

select customername,LOWER(customername) from customers;

select char_length("Hello world") as charlen;
select length("Hello world") as chlen;
select character_length("Hello world") as ch;
select customername,char_length(customername) from customers;

select mid("hello world",2,4);
select customername,mid(customername,2,2) from customers; 