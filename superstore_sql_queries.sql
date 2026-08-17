
LOAD DATA LOCAL INFILE 'C:/path/to/your/Sample - Superstore.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

set global _infile =1;

select count(*) from `sample - superstore`;
alter table `sample - superstore` rename to orders;

SELECT 
    COUNT(DISTINCT `order id`) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct
FROM orders;

SELECT region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM orders
GROUP BY region
ORDER BY total_sales DESC;

alter table orders change column `Sub-Category`  sub_category varchar(255);

SELECT category, sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM orders
GROUP BY category, sub_category
ORDER BY total_sales DESC;

alter table orders change column `Product Name` product_name varchar(255);
SELECT 
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT 
    product_name,
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM orders
GROUP BY product_name, category
HAVING total_profit < 0
ORDER BY total_profit ASC
LIMIT 10;

alter table orders change column `Order Date` order_date varchar(255);
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    ROUND(SUM(sales), 2) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;

SELECT 
    segment,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct
FROM orders
GROUP BY segment
ORDER BY total_sales DESC;

