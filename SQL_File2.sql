USE OperationsDb;


-- Sessions by marketing source
SELECT utm_source, COUNT(*)
FROM website_sessions
GROUP BY utm_source
ORDER BY COUNT(*) DESC;
-- Assuming NULL = organic/direct traffic


-- Orders by marketing source
SELECT ws.utm_source, COUNT(o.order_id)
FROM website_sessions ws
INNER JOIN orders o ON ws.website_session_id = o.website_session_id
GROUP BY ws.utm_source
ORDER BY COUNT(o.order_id) DESC;


-- Product sales summary
SELECT 
    p.product_name,
    COUNT(*),
    SUM(oi.price_usd),
    SUM(oi.cogs_usd)
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY SUM(oi.price_usd) DESC;


-- Refunds by product
SELECT 
    p.product_name,
    COUNT(oir.order_item_refund_id),
    SUM(oir.refund_amount_usd) as Refund_Amt
FROM order_item_refunds oir
JOIN order_items oi ON oir.order_item_id = oi.order_item_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name;



