-- Bileşik İndeks
CREATE INDEX idx_orders_customer_date ON orders (customer_id, order_date);

-- Unique İndeks
CREATE UNIQUE INDEX idx_users_email ON users (email);

-- Index Silme
DROP INDEX idx_products_name ON products;

-- Full-Text İndeks
CREATE FULLTEXT INDEX idx_products_desc ON products (description);

-- Unik İndeks
CREATE UNIQUE INDEX idx_orders_customer_product ON orders (customer_id, product_id);

-- Sorguda explain kullanımı
EXPLAIN SELECT * FROM orders WHERE customer_id = 123;

-- use index ipucu

SELECT * FROM products USE INDEX (idx_products_name) WHERE name LIKE 'A%';


-- where ile çoklu şart

SELECT order_date FROM orders WHERE customer_id = 456 AND product_id = 789;

-- postgrede concurrently

CREATE INDEX CONCURRENTLY idx_users_lastname ON users (last_name);








