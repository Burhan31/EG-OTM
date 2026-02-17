USE OperationsDb;

-- Fix date format in products table
-- products.created_at uses DD/MM/YYYY, other tables use YYYY-MM-DD
SET SQL_SAFE_UPDATES = 0;
alter table products add column created_at_dt DATETIME;
UPDATE products SET created_at_dt = STR_TO_DATE(created_at, '%d/%m/%Y %H:%i');
alter table products DROP COLUMN created_at;
alter table products CHANGE created_at_dt created_at DATETIME;


-- Quick look at all tables
select * from orders limit 100;
select * from website_sessions limit 100;
select * from order_items limit 100;
select * from products;
select * from order_item_refunds limit 100;


-- Total sessions and total orders
SELECT COUNT(*) FROM website_sessions;
SELECT COUNT(*) FROM orders;


-- Total revenue and profit
SELECT 
   SUM(price_usd) as Revenue, 
    SUM(cogs_usd) as COGS, 
    SUM(price_usd) - SUM(cogs_usd) as Profit
FROM orders;


-- Conversion rate (orders / sessions)
SELECT 
    COUNT(DISTINCT o.order_id) / COUNT(DISTINCT ws.website_session_id) * 100 as Conversion
FROM website_sessions ws
LEFT JOIN orders o ON ws.website_session_id = o.website_session_id;


-- Average order value over time
SELECT 
    YEAR(created_at), 
    MONTH(created_at), 
    AVG(price_usd)
FROM orders
GROUP BY YEAR(created_at), MONTH(created_at)
ORDER BY YEAR(created_at), MONTH(created_at);


-- Desktop vs mobile
SELECT 
    ws.device_type,
    COUNT(DISTINCT ws.website_session_id),
    COUNT(DISTINCT o.order_id)
FROM website_sessions ws
LEFT JOIN orders o ON ws.website_session_id = o.website_session_id
GROUP BY ws.device_type;
