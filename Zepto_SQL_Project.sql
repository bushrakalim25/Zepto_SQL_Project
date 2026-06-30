
create table zepto_2 (
id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,	
quantity INTEGER
);

-- data exploration

-- count of rows
SELECT COUNT(*) FROM zepto_2;

-- sample data
SELECT*FROM zepto_2
LIMIT 10;

-- null values
SELECT*FROM zepto_2
WHERE name IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;

-- different mrp
SELECT DISTINCT mrp
FROM zepto_2
ORDER BY mrp;

-- products in stock vs out of stock
SELECT outOfStock, COUNT(name)
FROM zepto_2
GROUP BY outOfStock;

-- product names present multiple times
SELECT name, COUNT(name) AS "Number of names"
FROM zepto_2
GROUP BY name
HAVING count(name) > 1
ORDER BY count(name) DESC;

-- data cleaning

-- products with price = 0
SELECT * FROM zepto_2
WHERE mrp = 0 OR discountedSellingPrice = 0;

 SET SQL_SAFE_UPDATES=0;
 
 DELETE FROM zepto_2
 WHERE mrp=0;

-- add new column
ALTER TABLE zepto_2 ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- convert paise to rupees
UPDATE zepto_2
SET mrp = mrp / 100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;

SELECT mrp, discountedSellingPrice FROM zepto_2;

-- data analysis

-- Q1. Find the top 10 best-value products based on the discount percentage.

SELECT DISTINCT name, mrp, discountPercent
FROM zepto_2
ORDER BY discountPercent DESC
LIMIT 10;

-- Q2.What are the Products with High MRP but Out of Stock

SELECT DISTINCT name,mrp
FROM zepto_2
WHERE outOfStock = TRUE and mrp > 200
ORDER BY mrp DESC;

-- Q3.Calculate Estimated Revenue for each category

SELECT name,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto_2
GROUP BY name
ORDER  BY total_revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.

SELECT DISTINCT name, mrp, discountPercent
FROM zepto_2
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

-- Q5. Find the price per gram for products above 100g and sort by best value.

SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
FROM zepto_2
WHERE weightInGms >= 100
ORDER BY price_per_gram;







