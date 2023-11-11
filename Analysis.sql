-- Show all customer records
SELECT * FROM customers;

-- Show total number of customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Show transactions for Chennai market (market code for Chennai is Mark001)
SELECT * FROM transactions
WHERE market_code = 'Mark001';

-- Show distinct product codes that were sold in Chennai.
SELECT DISTINCT product_code
FROM transactions
WHERE market_code = 'Mark001';

-- Show transactions where currency is US dollars.
SELECT * FROM transactions
WHERE currency = 'USD';

-- Show transactions in 2020 join by date table.
SELECT transactions.*, date.*
FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020;

-- Show total revenue in the year 2020.
SELECT SUM(transactions.sales_amount) AS total_revenue_2020
FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020
AND (transactions.currency = 'INR' OR transactions.currency = 'USD');

-- Show total revenue in the year 2020, January Month.
SELECT SUM(transactions.sales_amount) AS total_revenue_jan_2020
FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020
AND date.month_name = 'January'
AND (transactions.currency = 'INR' OR transactions.currency = 'USD');
