-- Comments in SQL Start with dash-dash --

-- Query 1 --
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 4
4.00, False);

-- Query 2 --
INSERT INTO products (name, price, can_be_returned) VALUES ('stool
', 25.99, True);

-- Query 3 --
INSERT INTO products (name, price, can_be_returned) VALUES ('table
', 124.00, False);

-- Query 4 --
SELECT * FROM products;

-- Query 5 --
SELECT name FROM products;

-- Query 6 --
SELECT name, price FROM products;

-- Query 7 --
INSERT INTO products (name, price, can_be_returned) VALUES ('ottoman', 69.98, True);

-- QUERY 8 --
SELECT id, name, price, can_be_returned FROM products
WHERE can_be_returned = True;

-- Query 9 --
SELECT id, name, price, can_be_returned FROM products
WHERE price < 44;

-- Query 10 --
SELECT id, name, price, can_be_returned FROM products
products_db-# WHERE price BETWEEN 22.5 AND 99.99;

-- Query 11 --
UPDATE products
SET price = price - 20;

-- Query 12 --
DELETE FROM products
WHERE price < 25;

-- Query 13 --
UPDATE products
SET price = price + 20;

-- Query 14 --
UPDATE products
SET can_be_returned = True;