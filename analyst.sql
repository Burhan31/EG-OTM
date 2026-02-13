show databases;
select * from OperationsDb.products;
use OperationsDb;

SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS 
  WHERE table_name = 'products';


ALTER TABLE products
ADD COLUMN created_at_dt DATETIME;

UPDATE products
SET created_at_dt = STR_TO_DATE(created_at, '%d/%m/%Y %H:%i');
SET SQL_SAFE_UPDATES = 0;
SELECT created_at, created_at_dt
FROM products;

SELECT *
FROM products
WHERE created_at_dt IS NULL
AND created_at IS NOT NULL;

ALTER TABLE products DROP COLUMN created_at;

ALTER TABLE products
CHANGE created_at_dt created_at DATETIME;
DESCRIBE products;
select * from orders;




