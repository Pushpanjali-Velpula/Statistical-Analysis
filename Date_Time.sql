use intro_sql;
select * from product_sales_dataset_final;

select sysdate();

SELECT DATEDIFF('2026-06-12', '2026-06-01') AS days_diff;

SELECT DATEDIFF(sysdate(), Order_date),Order_date from product_sales_dataset_final;

SELECT DATE_FORMAT(order_date, '%Y'),order_date FROM product_sales_dataset_final;
SELECT DATE_FORMAT(order_date, '%m'),order_date FROM product_sales_dataset_final;
SELECT DATE_FORMAT(order_date, '%D'),order_date FROM product_sales_dataset_final;
SELECT DATE_FORMAT(order_date, '%d-%m-%Y'),order_date FROM product_sales_dataset_final;

SELECT DAY(order_date) AS order_day,order_date FROM product_sales_dataset_final;
SELECT MONTH(order_date) AS order_month,order_date FROM product_sales_dataset_final;
SELECT year(order_date) AS order_year,order_date FROM product_sales_dataset_final;

select quarter(sysdate());

SELECT DATE_ADD('2026-06-12', INTERVAL 10 DAY);
SELECT DATE_ADD('2026-06-12', INTERVAL 10 MONTH);
SELECT DATE_ADD('2026-06-12', INTERVAL 10 YEAR);
SELECT DATE_ADD('2026-06-12', INTERVAL 2 QUARTER);
SELECT DATE_ADD('2026-06-12', INTERVAL 10 QUARTER);
