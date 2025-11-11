<div align="center">

<img src="https://svg-banners.vercel.app/api?type=glitch&text1=21%20DAYS%20SQL%20🚀&text2=Beginner%20→%20Advanced&width=800&height=250" />

<br><br>

![Challenge](https://custom-icon-badges.demolab.com/badge/Challenge-21%20Days-4169E1?style=for-the-badge&logo=calendar&logoColor=white)
![Status](https://custom-icon-badges.demolab.com/badge/Status-In%20Progress-success?style=for-the-badge&logo=rocket&logoColor=white)
![Day](https://custom-icon-badges.demolab.com/badge/Day-9%2F21-orange?style=for-the-badge&logo=flame&logoColor=white)
![SQL](https://custom-icon-badges.demolab.com/badge/SQL-Database-blue?style=for-the-badge&logo=database&logoColor=white)

<br>

<img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=22&pause=1000&color=4169E1&center=true&vCenter=true&random=false&width=500&lines=Learning+SQL+Daily+💪;Building+Real+Projects+🎯;Mastering+Data+Analysis+📊" alt="Typing SVG" />

<br>

[**🔥 View Challenge**](http://indiandataclub.com/) • [**💼 LinkedIn**](https://www.linkedin.com/in/nihalmishra01) • [**🐛 Report Bug**](https://github.com/NihalMishra01/21-Days-SQL-Challenge/issues)

</div>


---

## 📖 About The Challenge

I'm undertaking the **21-Days SQL Challenge** organized by [**Indian Data Club**](http://indiandataclub.com/) to master SQL from ground zero to advanced level. This repository is a complete documentation of my daily progress, code solutions, and key learnings.

> **Mission:** Build production-ready SQL skills through consistent daily practice, real-world datasets, and problem-solving.

### 🎯 Challenge Structure

| Aspect | Details |
|--------|---------|
| **Duration** | 21 consecutive days |
| **Daily Commitment** | 1-2 hours of focused learning |
| **Topics Covered** | Queries, Joins, Subqueries, Window Functions, CTEs, Optimization, Data Modeling |
| **Practice Approach** | Real-world datasets with industry-standard problems |
| **Target Roles** | Data Analyst, Data Engineer, Data Scientist, Backend Developer |

---

## 💡 Why This Challenge?

> **SQL = Foundation of Data-Driven Careers**
> 
> ✓ SQL is the most in-demand technical skill for data jobs  
> ✓ Universal language across all major databases  
> ✓ Essential for AI/ML data preparation  
> ✓ Critical for business intelligence & analytics  
> ✓ Required by 90%+ of data analyst positions

**My Learning Goals:**
- ✅ Write optimized queries for large datasets
- ✅ Master complex joins and subqueries
- ✅ Understand database design principles
- ✅ Build real-world data analysis projects
- ✅ Prepare for technical interviews

---

## 📅 Daily Progress Tracker
### 🔥 Day 9: Date Functions & Time-Based Analytics
**📆 Date:** November 11, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day9 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day9%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ EXTRACT() function for date parts
✓ Date arithmetic operations
✓ COALESCE() for NULL handling
✓ CURRENT_DATE for dynamic dates
✓ Date difference calculations
✓ Time-based filtering
✓ Combining dates with aggregates


#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records (with date columns)

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Extract year from patient arrival dates | EXTRACT(YEAR) | ✅ |
| Q2 | Calculate length of stay per patient | Date arithmetic | ✅ |
| Q3 | Find patients who arrived in specific month | EXTRACT(MONTH) with WHERE | ✅ |
| Q4 | Avg length of stay per service (>7 days) | Date arithmetic with GROUP BY/HAVING | ✅ |

#### 💡 Key Takeaways

> **"Date functions transform timestamps into actionable time-based insights."**

- EXTRACT() pulls specific date parts (YEAR, MONTH, DAY, etc.)
- Date arithmetic: subtraction gives day difference as integer
- COALESCE() handles NULL dates by providing fallback values
- CURRENT_DATE returns today's date for dynamic calculations
- ::numeric casting ensures proper decimal handling
- Time-based analytics reveal seasonal patterns and trends
- Date functions are essential for business intelligence

#### 📸 Code Snippet

-- Daily Challenge Question
-- Average length of stay per service (>7 days only)
SELECT
service,
ROUND(AVG((COALESCE(departure_date, CURRENT_DATE) - arrival_date))::numeric, 2) AS avg_length_of_stay_days,
COUNT(*) AS patient_count
FROM patients
WHERE arrival_date IS NOT NULL
GROUP BY service
HAVING AVG((COALESCE(departure_date, CURRENT_DATE) - arrival_date)) > 7
ORDER BY avg_length_of_stay_days DESC;



---
### 🔥 Day 8: String Functions & Data Transformation
**📆 Date:** November 10, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day8 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day8%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ UPPER() function for uppercase conversion
✓ LOWER() function for lowercase conversion
✓ LENGTH() function for string length
✓ CONCAT() function for string concatenation
✓ CASE statement for conditional logic
✓ String manipulation techniques
✓ Combining multiple string functions

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records
2. **`staff`** - Hospital staff information

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Convert patient names to uppercase | UPPER() | ✅ |
| Q2 | Find length of staff member names | LENGTH() | ✅ |
| Q3 | Concatenate staff_id and staff_name | CONCAT() | ✅ |
| Q4 | Patient summary with transformations | Multiple functions + CASE | ✅ |

#### 💡 Key Takeaways

> **"String functions enable data standardization and transformation for consistent reporting."**

- UPPER() and LOWER() standardize text case for comparisons
- LENGTH() calculates character count (useful for validation)
- CONCAT() combines multiple columns or strings with separators
- CASE statement provides conditional logic within queries
- String functions can be combined in single SELECT statement
- WHERE clause can filter based on string function results
- These functions are essential for data cleaning and formatting

#### 📸 Code Snippet

-- Daily Challenge Question
-- Patient summary with multiple transformations
SELECT
patient_id,
UPPER(name) AS full_name,
LOWER(service) AS service_lower,
CASE
WHEN age >= 65 THEN 'Senior'
WHEN age >= 18 THEN 'Adult'
ELSE 'Minor'
END AS age_category,
LENGTH(name) AS name_length
FROM patients
WHERE LENGTH(name) > 10;


---
### 🔥 Day 7: Filtering Grouped Data with HAVING
**📆 Date:** November 9, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day7 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day7%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ HAVING clause fundamentals
✓ Filtering aggregated results
✓ HAVING vs WHERE differences
✓ Multiple conditions with AND/OR
✓ Combining SUM(), AVG(), COUNT() in HAVING
✓ Complex business logic filtering
✓ Post-aggregation filtering


#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`service_weekly`** - Weekly hospital service analytics
2. **`patients`** - Patient demographics and service records
3. **`staff_schedule`** - Weekly staff attendance tracking

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Services with >500 total admissions | HAVING with SUM() | ✅ |
| Q2 | Services with avg satisfaction <75 | HAVING with AVG() | ✅ |
| Q3 | Weeks with staff presence <50 | HAVING with SUM() | ✅ |
| Q4 | Services: >100 refused AND satisfaction <80 | HAVING with multiple conditions | ✅ |

#### 💡 Key Takeaways

> **"WHERE filters rows before grouping; HAVING filters groups after aggregation."**

- HAVING is used with GROUP BY to filter aggregated results
- WHERE cannot be used with aggregate functions
- Multiple conditions in HAVING use AND/OR logical operators
- HAVING executes after GROUP BY, WHERE executes before
- Both WHERE and HAVING can be used together in same query
- HAVING enables complex business logic on aggregated data

#### 📸 Code Snippet

-- Daily Challenge Question
-- Services with >100 refused AND avg satisfaction <80
SELECT
service,
SUM(patients_refused) AS total_refused,
AVG(patient_satisfaction) AS avg_satisfaction
FROM service_weekly
GROUP BY service
HAVING
SUM(patients_refused) > 100
AND AVG(patient_satisfaction) < 80;


---
### 🔥 Day 6: Advanced GROUP BY & Calculations
**📆 Date:** November 8, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day6 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day6%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ GROUP BY with aggregate functions
✓ COUNT() with grouping
✓ AVG() with categorization
✓ SUM() for total calculations
✓ Percentage calculations in SQL
✓ ROUND() for decimal precision
✓ Multi-column aggregation
✓ Business metrics calculation (admission rate)


#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records
2. **`service_weekly`** - Weekly hospital service analytics
3. **`staff`** - Hospital staff information

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Count patients by each service | COUNT() with GROUP BY | ✅ |
| Q2 | Calculate average age by service | AVG() with GROUP BY | ✅ |
| Q3 | Find total staff members per role | COUNT() with GROUP BY | ✅ |
| Q4 | Calculate admission rate per service | SUM(), percentage, ORDER BY | ✅ |

#### 💡 Key Takeaways

> **"GROUP BY transforms data into business intelligence by revealing patterns and trends."**

- GROUP BY creates categories for aggregate calculations
- Multiple aggregate functions (SUM, COUNT) can be combined in one query
- Percentage calculations require careful handling: (part / total) * 100
- ROUND() ensures readable decimal precision for business metrics
- ORDER BY with aggregates helps identify top/bottom performers
- 100.0 in calculations forces float division for accurate percentages

#### 📸 Code Snippet

-- Daily Challenge Question
-- Calculate admission rate per service
SELECT
service,
SUM(patients_admitted) AS total_admitted,
SUM(patients_refused) AS total_refused,
ROUND(
(SUM(patients_admitted) * 100.0) /
(SUM(patients_admitted) + SUM(patients_refused)), 2
) AS admission_rate
FROM service_weekly
GROUP BY service
ORDER BY admission_rate DESC;


---
### 🔥 Day 5: Aggregate Functions & Data Summarization
**📆 Date:** November 7, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day5 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day5%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ COUNT() function for counting records
✓ AVG() function for calculating averages
✓ MIN() and MAX() for finding extremes
✓ SUM() function for totals
✓ ROUND() function for decimal precision
✓ GROUP BY clause for categorization
✓ Combining aggregate functions

text

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patient`** - Patient demographics and service records
2. **`services_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (8/8)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Count total number of patients | COUNT() | ✅ |
| Q2 | Calculate average satisfaction score | AVG() | ✅ |
| Q3 | Find minimum and maximum age | MIN() & MAX() | ✅ |
| Q4 | Total admitted, refused, avg satisfaction | Multiple aggregates | ✅ |
| Q5 | Count patients under age 18 | COUNT() with WHERE | ✅ |
| Q6 | Average satisfaction per service | AVG() with GROUP BY | ✅ |
| Q7 | Age of oldest and youngest patient | MIN() & MAX() | ✅ |
| Q8 | Average satisfaction for surgery service | AVG() with WHERE | ✅ |

#### 💡 Key Takeaways

> **"Aggregate functions transform raw data into meaningful business insights."**

- COUNT() counts non-NULL values in a column
- AVG() calculates the mean of numeric values
- MIN() and MAX() work with numbers, dates, and text
- ROUND() controls decimal precision for cleaner results
- GROUP BY categorizes data before aggregation
- Multiple aggregate functions can be used in a single query
- WHERE filters before aggregation, HAVING filters after



-- Daily Challenge Question
-- Average satisfaction score for each service
SELECT service, AVG(satisfaction) as avg_satisfaction
FROM patient
GROUP BY service;



---
### 🔥 Day 4: Pagination with LIMIT & OFFSET
**📆 Date:** November 6, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day4 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day4%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ LIMIT clause for result pagination
✓ OFFSET clause for skipping rows
✓ Combining LIMIT with ORDER BY
✓ Pagination techniques for large datasets
✓ Top N queries with LIMIT
✓ MIN() aggregate function
✓ Result set navigation

text

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records

#### ✅ Problems Solved (13/13)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Display first 5 patients | LIMIT | ✅ |
| Q2 | Show patients 11-20 using OFFSET | LIMIT with OFFSET | ✅ |
| Q3 | 10 most recent patient admissions | ORDER BY with LIMIT | ✅ |
| Q4 | 3rd to 7th highest satisfaction scores | LIMIT with OFFSET | ✅ |
| Q5 | Display first 8 records | LIMIT | ✅ |
| Q6 | Last 5 patients (most recent) | ORDER BY DESC with LIMIT | ✅ |
| Q7 | Top 10 highest satisfaction scores | ORDER BY with LIMIT | ✅ |
| Q8 | Skip first 15 and show next 5 | LIMIT with OFFSET | ✅ |
| Q9 | Retrieve all except first 5 rows | OFFSET only | ✅ |
| Q10 | Records 6-12 sorted by age (youngest) | ORDER BY with LIMIT OFFSET | ✅ |
| Q11 | 3rd, 4th, 5th most recent admissions | ORDER BY with LIMIT OFFSET | ✅ |
| Q12 | 5 lowest satisfaction patients | ORDER BY ASC with LIMIT | ✅ |
| Q13 | Minimum satisfaction score | MIN() function | ✅ |

#### 💡 Key Takeaways

> **"LIMIT and OFFSET are essential for building efficient, user-friendly paginated applications."**

- LIMIT controls the number of rows returned
- OFFSET skips a specified number of rows before returning results
- Combining ORDER BY + LIMIT + OFFSET enables powerful pagination
- LIMIT without OFFSET starts from the first row
- Performance: OFFSET can be slow on large datasets (use cursor-based pagination for better performance)
- MIN() function returns the smallest value in a column

### 🔥 Day 3: Sorting Data with ORDER BY
**📆 Date:** November 5, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day3 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day3%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ ORDER BY clause fundamentals
✓ ASC (Ascending) sorting
✓ DESC (Descending) sorting
✓ Multiple column sorting
✓ Combining ORDER BY with LIMIT
✓ Sorting numeric and text data
✓ Query result organization


#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records
2. **`service_weekly`** - Weekly hospital service analytics
3. **`staff`** - Hospital staff information

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | List all patients sorted by age descending | ORDER BY DESC | ✅ |
| Q2 | Service data by week ASC & requests DESC | Multiple column sorting | ✅ |
| Q3 | Display staff sorted alphabetically by name | ORDER BY ASC (text) | ✅ |
| Q4 | Top 5 weeks with highest patient refusals | ORDER BY with LIMIT | ✅ |

#### 💡 Key Takeaways

> **"ORDER BY transforms raw data into meaningful insights by organizing results logically."**

- ORDER BY defaults to ASC if not specified
- Multiple column sorting applies in left-to-right priority
- Combining ORDER BY with LIMIT extracts top/bottom records efficiently
- Sorting text data uses alphabetical order (case-sensitive in some databases)
- Performance impact increases with larger datasets - indexing helps



-- Daily Challenge Question
-- Top 5 weeks with highest patient refusals
SELECT week, service, patients_refused, patients_request
FROM service_weekly
ORDER BY patients_refused DESC
LIMIT 5;



---

### 🔥 Day 2: Advanced Filtering & Logical Operators
**📆 Date:** November 4, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day2 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day2%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ Advanced WHERE clause conditions
✓ Logical operators (AND, OR, NOT)
✓ Comparison operators (>, <, >=, <=, !=)
✓ IN operator for multiple values
✓ BETWEEN operator for range queries
✓ LIKE operator with wildcards (%)
✓ ORDER BY for sorting results



#### 🏥 Practice Dataset: Hospital Management System

**Tables Created:**
1. **`patients`** - Patient demographics and service records
   - Columns: patient_id, name, age, arrival_date, departure_date, service, satisfaction
2. **`service_weekly`** - Weekly hospital service analytics
   - Columns: week, month, service, available_beds, patients_request, patients_admitted, patients_refused, patient_satisfaction, staff_morale, event
3. **`staff`** - Hospital staff information
   - Columns: staff_id, staff_name, role, service
4. **`staff_schedule`** - Weekly staff attendance tracking
   - Columns: week, staff_id, staff_name, role, service, present

#### ✅ Problems Solved (9/9)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | List all patients who belong to ICU service | Simple filtering | ✅ |
| Q2 | Find patients whose age is greater than 60 | WHERE with comparison | ✅ |
| Q3 | Show staff members whose role is Doctor | Role-based filtering | ✅ |
| Q4 | Get records where available beds < 20 | Numerical comparison | ✅ |
| Q5 | Patients arrived after date in Emergency | WHERE with AND | ✅ |
| Q6 | Staff in surgery or general_medicine | IN operator | ✅ |
| Q7 | Patients with satisfaction between 70-90 | BETWEEN operator | ✅ |
| Q8 | Weeks with refused > 50 OR morale < 60 | OR operator | ✅ |
| Q9 | Patients name starts with A, not emergency | LIKE with AND | ✅ |

#### 💡 Key Takeaways

> **"Mastering logical operators is the key to writing powerful and efficient SQL queries."**

- AND operator requires all conditions to be true
- OR operator requires at least one condition to be true
- IN operator is cleaner than multiple OR conditions
- BETWEEN is inclusive of both boundary values
- LIKE with '%' is powerful but can impact performance on large datasets

#### 📸 Code Snippet

-- Daily Challenge Question
-- Find patients with name starting with 'A' and service not 'emergency'
SELECT * FROM patients
WHERE name LIKE 'A%' AND service != 'emergency';


---

### 🔥 Day 1: SQL Fundamentals & Data Retrieval
**📆 Date:** November 3, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day1 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day1%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ CREATE TABLE with constraints
✓ Data types selection (VARCHAR, INT, DATE)
✓ PRIMARY KEY implementation
✓ SELECT statements (all columns, specific columns)
✓ WHERE clause for filtering
✓ DISTINCT for unique values
✓ LIMIT for pagination



#### 🏥 Practice Dataset: Hospital Management System

**Tables Created:**
1. **`patients`** - Patient demographics and service records
   - Columns: patient_id, name, age, arrival_date, departure_date, service, satisfaction
2. **`service_weekly`** - Weekly hospital service analytics
   - Columns: week, month, service, available_beds, patients_request, patients_admitted, patients_refused, patient_satisfaction, staff_morale, event

#### ✅ Problems Solved (7/7)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Retrieve all patient records | SELECT * | ✅ |
| Q2 | Select specific columns | Column selection | ✅ |
| Q3 | Display first 10 service records | LIMIT | ✅ |
| Q4 | List unique hospital services | DISTINCT | ✅ |
| Q5 | Filter patients above 40 years | WHERE with comparison | ✅ |
| Q6 | Query emergency service patients | WHERE with equality | ✅ |
| Q7 | Retrieve patients after date | WHERE with dates | ✅ |

#### 💡 Key Takeaways

> **"The foundation of great queries starts with understanding your data structure."**

- Proper table design prevents future headaches
- Always specify columns instead of SELECT * in production
- Date filtering is crucial for time-series analysis
- DISTINCT can be performance-intensive on large datasets

#### 📸 Code Snippet

-- Daily Challenge Question
-- List all unique hospital services available in the hospital.
SELECT DISTINCT(service) FROM service_weekly;



---

### 📊 Challenge Statistics

<div align="center">

| Metric | Count |
|--------|-------|
| 📝 Days Completed | 9 / 21 |
| ✅ Problems Solved | 57 |
| 📁 Files Uploaded | 9 |
| ⏱️ Total Hours | 18 |
| 🔥 Streak | 9 days |

**Progress Bar:**
[█████████░░░░░░░░░░░] 42.86% Complete


</div>
---

## 🛠️ Tech Stack & Tools

<div align="center">

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)
![VSCode](https://img.shields.io/badge/VSCode-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)

</div>

## 📂 Repository Structure

| File/Folder | Description |
|-------------|-------------|
| 📄 README.md | Complete project documentation |
| 📜 Day1 SQL Challenge.sql | Day 1 solutions and code |
| 📜 Day2 SQL Challenge.sql | Day 2 solutions and code |
| 📜 Day3 SQL Challenge.sql | Day 3 solutions and code |
| 📜 Day4 SQL Challenge.sql | Day 4 solutions and code |
| 📜 Day5 SQL Challenge.sql | Day 5 solutions and code |
| 📜 Day6 SQL Challenge.sql | Day 6 solutions and code |
| 📜 Day7 SQL Challenge.sql | Day 7 solutions and code |
| 📜 Day8 SQL Challenge.sql | Day 8 solutions and code |
| 📜 Day9 SQL Challenge.sql | Day 9 solutions and code |
| ... | Days 10-21 solutions |
| 📜 Day21 SQL Challenge.sql | Final day challenge |
| 📊 datasets/ | Practice datasets (CSV files) |

## 🌟 Daily LinkedIn Updates

I'm documenting this journey publicly on LinkedIn! Follow along for:
- 📝 Daily code snippets and solutions
- 💡 SQL tips and best practices
- 🤔 Problem-solving approaches
- 🎯 Key learnings and insights
- 🔗 Networking with fellow data enthusiasts

**Connect with me:** [LinkedIn Profile](https://www.linkedin.com/in/nihalmishra01)  
**Hashtags:** `#21DaysSQLChallenge` `#SQL` `#DataAnalytics` `#LearningInPublic`

---

## 🤝 Connect & Collaborate

<div align="center">

### Let's Connect!

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nihalmishra01)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/NihalMishra01)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:nihalmishraaofficial@gmail.com)

</div>

**Open to:**
- 💬 SQL discussions and doubt clearing
- 🤝 Collaboration on data projects
- 📢 Feedback on my solutions
- 🌐 Networking with data professionals

---

## 💪 Motivation

> *"The expert in anything was once a beginner. The key is to start and stay consistent."*

**Why I'm doing this publicly:**
- 📢 Accountability through transparency
- 🌱 Learning through teaching (Feynman Technique)
- 🤝 Building a learning community
- 💼 Showcasing commitment to employers

---

<div align="center">

### ⭐ If you find this helpful, consider giving it a star!

**Let's master SQL together, one query at a time!** 

![Visitor Count](https://visitor-badge.laobi.icu/badge?page_id=NihalMishra01.21-Days-SQL-Challenge)

**Day 9 Complete ✅ | 12 More to Go! 🚀**

</div>
