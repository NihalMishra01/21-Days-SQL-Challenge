CREATE database Healthcare;
\c Healthcare;
CREATE TABLE patients(patient_id int PRIMARY KEY,
name VARCHAR(30),
age	int,
arrival_date DATE,
departure_date DATE,
service	VARCHAR(30),
satisfaction int
);
-- Understanding the data
Select * from retail_sales
Limit 10
-- Count rows of data
Select Count(*) from retail_sales

Select * from retail_sales
Limit 10

-- Checking Null Values

Select * from retail_sales
Where 
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	gender IS NULL
	OR 
	category IS NULL
	OR
	quantiy IS NULL
	OR 
	cogs IS NULL
	OR
	total_sale IS NULL

-- Deleting Null Values 

DELETE FROM retail_sales
Where 
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	gender IS NULL
	OR 
	category IS NULL
	OR
	quantiy IS NULL
	OR 
	cogs IS NULL
	OR
	total_sale IS NULL


-- Data Exploration 
-- How many sales we have 

SELECT COUNT(*) as total_sales from retail_sales

-- How Many Customers we have?

SELECT COUNT(DISTINCT customer_id) as total_customers FROM retail_sales

-- Retriving all unique customer from the db 

SELECT DISTINCT customer_id  as total_customers FROM retail_sales

-- How much category is present in out dataset
SELECT COUNT(DISTINCT category) as total_category FROM retail_sales

-- Retriving all unique category from the db 
SELECT DISTINCT category as total_category FROM retail_sales


-- Data Anaysis

--Q1.Write a SQL query to retrieve all columns for sales made on '2022-11-05:

SELECT * FROM
retail_sales
WHERE sale_Date='2022-11-05'

-- Q2.Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:

SELECT * FROM retail_sales
WHERE 
	category='Clothing'
	AND
	TO_CHAR(sale_date, 'YYYY-MM')= '2022-11'
	AND 
	quantiy>=4

--Q3.Write a SQL query to calculate the total sales (total_sale) for each category.:

SELECT 
	category,
	SUM(total_sale) as net_sale,
	COUNT(*) as total_orders
from retail_sales
GROUP BY 1


--Q4.Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:

SELECT
	ROUND(AVG(age),2) as avg_age
FROM retail_Sales
WHERE category = 'Beauty'



--Q5.Write a SQL query to find all transactions where the total_sale is greater than 1000.:

SELECT * FROM retail_sales
WHERE total_sale > 1000

--Q6.Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:

SELECT 
	category,
	gender
FROM retail_sales
GROUP BY
	1,2
ORDER BY gender='Female'	

--Q7.Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:

SELECT 
       year,
       month,
    avg_sale
FROM 
(    
SELECT 
    EXTRACT(YEAR FROM sale_date) as year,
    EXTRACT(MONTH FROM sale_date) as month,
    AVG(total_sale) as avg_sale,
    RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) as rank
FROM retail_sales
GROUP BY 1, 2
) as t1
WHERE rank = 1

--Q8.Write a SQL query to find the top 5 customers based on the highest total sales 

SELECT 
	customer_id,
	SUM(total_sale) as total_Sales
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5

--Q9.Write a SQL query to find the number of unique customers who purchased items from each category.

SELECT 
    category,    
    COUNT(DISTINCT customer_id) as cnt_unique_cs
FROM retail_sales
GROUP BY category


--Q10.Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)

WITH hourly_sale
AS
(
SELECT *,
    CASE
        WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END as shift
FROM retail_sales
)
SELECT 
    shift,
    COUNT(*) as total_orders    
FROM hourly_sale
GROUP BY shift