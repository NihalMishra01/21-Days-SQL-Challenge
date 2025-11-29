
-- IDC_Pizza Analysis

-- Phase 1: Foundation & Inspection

-- 1. Load the database (run separately if not imported)
-- CREATE DATABASE IDC_Pizza;
-- \c IDC_Pizza
-- \i 'path_to/IDC_Pizza.dump';

-- 2. List all unique pizza categories
SELECT DISTINCT category
FROM pizza_types;

-- 3. Display pizza_type_id, name, ingredients (replace NULL)
SELECT pizza_type_id,
       name,
       COALESCE(ingredients, 'Missing Data') AS ingredients
FROM pizza_types
LIMIT 5;

-- 4. Check for pizzas missing a price
SELECT *
FROM pizzas
WHERE price IS NULL;


-- Phase 2: Filtering & Exploration

-- 1. Orders placed on '2015-01-01'
SELECT *
FROM orders
WHERE date = '2015-01-01';

-- 2. List pizzas with price descending
SELECT pizza_id, price
FROM pizzas
ORDER BY price DESC;

-- 3. Pizzas sold in sizes 'L' or 'XL'
SELECT *
FROM pizzas
WHERE size IN ('L', 'XL');

-- 4. Pizzas priced between $15 and $17
SELECT *
FROM pizzas
WHERE price BETWEEN 15.00 AND 17.00;

-- 5. Pizzas with 'Chicken' in the name
SELECT *
FROM pizza_types
WHERE name ILIKE '%chicken%';  -- Use LIKE for MySQL

-- 6. Orders on '2015-02-15' or placed after 8 PM
SELECT *
FROM orders
WHERE date = '2015-02-15'
   OR EXTRACT(HOUR FROM time) >= 20;


-- Phase 3: Sales Performance


-- 1. Total quantity of pizzas sold
SELECT SUM(quantity) AS total_pizzas_sold
FROM order_details;

-- 2. Average pizza price
SELECT AVG(price) AS avg_pizza_price
FROM pizzas;

-- 3. Total order value per order
SELECT o.order_id,
       SUM(p.price * od.quantity) AS total_order_value
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY o.order_id
ORDER BY o.order_id;

-- 4. Total quantity sold per pizza category
SELECT pt.category,
       SUM(od.quantity) AS total_sold
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY total_sold DESC;

-- 5. Categories with more than 5,000 pizzas sold
SELECT pt.category,
       SUM(od.quantity) AS total_sold
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
HAVING SUM(od.quantity) > 5000
ORDER BY total_sold DESC;

-- 6. Pizzas never ordered
SELECT p.pizza_id,
       p.pizza_type_id,
       p.size,
       p.price
FROM pizzas p
LEFT JOIN order_details od ON p.pizza_id = od.pizza_id
WHERE od.pizza_id IS NULL
ORDER BY p.pizza_id;

-- 7. Price differences between different sizes of the same pizza
SELECT p1.pizza_type_id,
       p1.size AS size_1,
       p1.price AS price_1,
       p2.size AS size_2,
       p2.price AS price_2,
       (p2.price - p1.price) AS price_difference
FROM pizzas p1
JOIN pizzas p2
  ON p1.pizza_type_id = p2.pizza_type_id
 AND p1.size < p2.size
ORDER BY p1.pizza_type_id;


