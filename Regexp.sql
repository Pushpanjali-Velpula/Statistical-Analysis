use intro_sql;
select * from telco_customer;

select * from telco_customer where PaymentMethod like 'e%';

select count(*) from telco_customer where PaymentMethod like 'e%';

select count(*) from telco_customer where PaymentMethod REGEXP '^e';

select * from telco_customer where customerID like '%v%' OR customerID like '%G%' OR customerID like '%H%';
select COUNT(*) from telco_customer where customerID like '%V%' OR customerID like '%G%' OR customerID like '%H%';

select count(*) from telco_customer where PaymentMethod REGEXP '[BCE]';

select * from telco_customer where customerID REGEXP '[VGH]';
select COUNT(*) from telco_customer where customerID REGEXP '[VGH]'; 
