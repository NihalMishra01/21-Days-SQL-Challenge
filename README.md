<div align="center">

<img src="https://svg-banners.vercel.app/api?type=glitch&text1=21%20DAYS%20SQL%20🚀&text2=Beginner%20→%20Advanced&width=800&height=250" />

<br><br>

![Challenge](https://custom-icon-badges.demolab.com/badge/Challenge-21%20Days-4169E1?style=for-the-badge&logo=calendar&logoColor=white)
![Status](https://custom-icon-badges.demolab.com/badge/Status-Completed-success?style=for-the-badge&logo=trophy&logoColor=white)
![Day](https://custom-icon-badges.demolab.com/badge/Day-21%2F21-orange?style=for-the-badge&logo=flame&logoColor=white)
![SQL](https://custom-icon-badges.demolab.com/badge/SQL-Database-blue?style=for-the-badge&logo=database&logoColor=white)

<br>

<img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=22&pause=1000&color=4169E1&center=true&vCenter=true&random=false&width=500&lines=21+Days+Challenge+Complete!+🎉;Building+Real+Projects+🎯;Mastering+Data+Analysis+📊" alt="Typing SVG" />

<br>

[**🔥 View Challenge**](http://indiandataclub.com/) • [**💼 LinkedIn**](https://www.linkedin.com/in/nihalmishra01) • [**🐛 Report Bug**](https://github.com/NihalMishra01/21-Days-SQL-Challenge/issues)

</div>

---

## 📖 About The Challenge

I successfully completed the **21-Days SQL Challenge** organized by [**Indian Data Club**](http://indiandataclub.com/), mastering SQL from ground zero to advanced level. This repository is a complete documentation of my daily progress, code solutions, and key learnings.

> **Mission Accomplished:** Built production-ready SQL skills through consistent daily practice, real-world datasets, and problem-solving.

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

**Learning Goals Achieved:**
- ✅ Write optimized queries for large datasets
- ✅ Master complex joins and subqueries
- ✅ Understand database design principles
- ✅ Build real-world data analysis projects
- ✅ Prepare for technical interviews

---

## 📅 Daily Progress Tracker

### 🔥 Day 21: Comprehensive Analytics Dashboard with CTEs
**📆 Date:** November 27, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day21 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day21%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ Multiple CTEs for complex dashboards
✓ Service-level performance metrics
✓ Staff utilization analytics
✓ Patient demographics aggregation
✓ Weighted performance scoring
✓ Multi-table CTE joins
✓ Production-ready reporting queries

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`services_weekly`** - Weekly hospital service analytics
2. **`patient`** - Patient demographics and service records
3. **`staff`** - Hospital staff information

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Service statistics CTE | Single CTE with aggregates | ✅ |
| Q2 | Multiple CTEs for complex analysis | Multiple CTEs with joins | ✅ |
| Q3 | Staff utilization with patient data | CTE joins across tables | ✅ |
| Q4 | Comprehensive hospital dashboard | 3 CTEs with performance scoring | ✅ |

#### 💡 Key Takeaways

> **"CTEs enable building production-grade dashboards by structuring complex logic into readable, maintainable components."**

- Multiple CTEs allow breaking complex queries into logical steps
- Each CTE can be referenced multiple times in final query
- CTEs improve code maintainability and debugging
- Weighted scoring combines multiple metrics into single KPI
- LEFT JOINs ensure all services appear even without matches
- Real-world dashboards often use 3-5 CTEs for different metrics

#### 📸 Code Snippet

-- Daily Challenge Question
-- Comprehensive hospital performance dashboard
WITH
service_metrics AS (
SELECT
service,
SUM(patients_admitted) AS total_admissions,
SUM(patients_refused) AS total_refusals,
ROUND(AVG(patient_satisfaction), 2) AS avg_satisfaction
FROM services_weekly
GROUP BY service
),
staff_metrics AS (
SELECT
service,
COUNT(staff_id) AS total_staff
FROM staff
GROUP BY service
),
patient_demo AS (
SELECT
service,
ROUND(AVG(age), 1) AS avg_patient_age,
COUNT(patient_id) AS total_patients
FROM patient
GROUP BY service
)
SELECT
sm.service,
sm.total_admissions,
sm.total_refusals,
sm.avg_satisfaction,
st.total_staff,
pd.avg_patient_age,
pd.total_patients,
ROUND(
((sm.total_admissions * 0.6) + (sm.avg_satisfaction * 0.4)) / 10,
2
) AS performance_score
FROM service_metrics sm
LEFT JOIN staff_metrics st ON sm.service = st.service
LEFT JOIN patient_demo pd ON sm.service = pd.service
ORDER BY performance_score DESC;



---

### 🔥 Day 20: Window Functions - Running Totals & Moving Averages
**📆 Date:** November 27, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day20 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day20%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ Running totals with SUM() OVER
✓ Moving averages with ROWS PRECEDING
✓ Cumulative calculations
✓ Window frames (ROWS BETWEEN)
✓ PARTITION BY for grouped windows
✓ Time-series trend analysis
✓ Comparing current vs average values

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`services_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Running total of patients by week per service | SUM() OVER with PARTITION | ✅ |
| Q2 | 4-week moving average of satisfaction | AVG() with ROWS PRECEDING | ✅ |
| Q3 | Cumulative patient refusals across all services | SUM(SUM()) OVER | ✅ |
| Q4 | Trend analysis with multiple window functions | Complex window query | ✅ |

#### 💡 Key Takeaways

> **"Window functions enable trend analysis and running calculations without losing row-level detail."**

- SUM() OVER creates running totals while preserving all rows
- ROWS N PRECEDING defines moving window size
- PARTITION BY creates separate windows per group
- Window functions don't reduce rows like GROUP BY does
- Essential for time-series analysis and trends
- Combining multiple window functions reveals complex patterns

#### 📸 Code Snippet

-- Daily Challenge Question
-- Comprehensive trend analysis (weeks 10-20)
SELECT
service,
week,
patients_admitted,
SUM(patients_admitted) OVER (PARTITION BY service ORDER BY week) AS running_total,
ROUND(AVG(patient_satisfaction) OVER (PARTITION BY service ORDER BY week ROWS 2 PRECEDING), 2) AS moving_avg_3week,
patients_admitted - AVG(patients_admitted) OVER (PARTITION BY service) AS diff_from_service_avg
FROM services_weekly
WHERE week BETWEEN 10 AND 20
ORDER BY service, week;


---

### 🔥 Day 19: RANK & Window Functions
**📆 Date:** November 27, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day19 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day19%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ RANK() window function
✓ ROW_NUMBER() for sequential numbering
✓ PARTITION BY for grouped ranking
✓ ORDER BY within window functions
✓ Top N per group with CTEs
✓ Ranking vs row numbering differences
✓ Window functions with aggregates

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patient`** - Patient demographics and service records
2. **`staff`** - Hospital staff information
3. **`services_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Rank patients by satisfaction within service | RANK() with PARTITION BY | ✅ |
| Q2 | Assign row numbers to staff by name | ROW_NUMBER() | ✅ |
| Q3 | Rank services by total patients | RANK() with aggregates | ✅ |
| Q4 | Top 3 weeks per service by satisfaction | CTE with RANK() filtering | ✅ |

#### 💡 Key Takeaways

> **"Window functions enable ranking and analysis without grouping, preserving row-level detail."**

- RANK() assigns same rank to ties, skips next rank
- ROW_NUMBER() always assigns unique sequential numbers
- PARTITION BY creates separate rankings per group
- Combining CTEs with window functions enables top-N-per-group queries
- Window functions essential for leaderboards and rankings
- ORDER BY in window function is separate from query ORDER BY

#### 📸 Code Snippet

-- Daily Challenge Question
-- Top 3 weeks per service by satisfaction
WITH ranked_weeks AS (
SELECT
service,
week,
patient_satisfaction,
patients_admitted,
RANK() OVER (
PARTITION BY service
ORDER BY patient_satisfaction DESC
) AS satisfaction_rank
FROM services_weekly
)
SELECT
service,
week,
patient_satisfaction,
patients_admitted,
satisfaction_rank
FROM ranked_weeks
WHERE satisfaction_rank <= 3
ORDER BY service, satisfaction_rank;


---

### 🔥 Day 18: UNION & UNION ALL - Merging Result Sets
**📆 Date:** November 27, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day18 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day18%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ UNION vs UNION ALL differences
✓ Combining rows from multiple tables
✓ Column alignment requirements
✓ Creating unified views
✓ Categorizing data with type flags
✓ Ordering combined result sets
✓ Performance: UNION vs UNION ALL

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patient`** - Patient demographics and service records
2. **`staff`** - Hospital staff information
3. **`services_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Combine patient and staff names | UNION ALL with type flag | ✅ |
| Q2 | Union of high/low satisfaction patients | UNION with categories | ✅ |
| Q3 | Unique names across patients and staff | UNION removing duplicates | ✅ |
| Q4 | Unified personnel list for critical services | UNION ALL with joins | ✅ |

#### 💡 Key Takeaways

> **"UNION merges result sets; choosing UNION vs UNION ALL controls whether duplicates are removed."**

- UNION removes duplicates; UNION ALL keeps all rows (faster)
- All SELECTs must have same number of columns in same order
- Adding type columns helps distinguish data sources
- UNION is great for stacking similar entities
- ORDER BY applies to final combined result
- UNION ALL preferred when duplicates acceptable (better performance)

#### 📸 Code Snippet

-- Daily Challenge Question
-- Unified personnel list for surgery/emergency
SELECT
p.patient_id AS identifier,
p.name AS full_name,
'Patient' AS type,
s.service
FROM patient p
JOIN services_weekly s ON p.service = s.service
WHERE LOWER(s.service) IN ('surgery', 'emergency')

UNION ALL

SELECT
st.staff_id AS identifier,
st.staff_name AS full_name,
'Staff' AS type,
s.service
FROM staff st
JOIN services_weekly s ON st.service = s.service
WHERE LOWER(s.service) IN ('surgery', 'emergency')
ORDER BY type, service, full_name;


---

### 🔥 Day 17: CTEs & Derived Tables - Clean SQL
**📆 Date:** November 27, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day17 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day17%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ Common Table Expressions (CTEs)
✓ WITH clause syntax
✓ Derived tables in FROM clause
✓ Multiple CTEs in single query
✓ Temporary result sets
✓ Query organization and readability
✓ Complex calculations with CTEs

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patient`** - Patient demographics and service records
2. **`services_weekly`** - Weekly hospital service analytics
3. **`staff`** - Hospital staff information

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Patient with service average satisfaction | Derived table with JOIN | ✅ |
| Q2 | Service statistics derived table | FROM clause subquery | ✅ |
| Q3 | Staff with service patient counts | Derived table with aggregates | ✅ |
| Q4 | Service performance vs average with ranking | Multiple CTEs with CASE | ✅ |

#### 💡 Key Takeaways

> **"CTEs make complex queries readable by breaking logic into named, reusable steps."**

- CTEs defined with WITH clause before main query
- Act as temporary named result sets
- Can reference CTEs multiple times in same query
- Derived tables achieve similar results inline
- CTEs significantly improve maintainability
- Multiple CTEs separated by commas
- CTEs exist only for query duration

#### 📸 Code Snippet

-- Daily Challenge Question
-- Service performance vs hospital average
WITH service_summary AS (
SELECT
service,
SUM(patients_admitted) AS total_patients
FROM service_weekly
GROUP BY service
),
overall_avg AS (
SELECT AVG(patients_admitted) AS avg_patients
FROM service_weekly
)
SELECT
ss.service,
ss.total_patients,
ss.total_patients - oa.avg_patients AS difference_from_avg,
CASE
WHEN ss.total_patients > oa.avg_patients THEN 'Above Average'
WHEN ss.total_patients = oa.avg_patients THEN 'Average'
ELSE 'Below Average'
END AS rank_indicator
FROM service_summary ss, overall_avg oa
ORDER BY ss.total_patients DESC;


---

### 🔥 Day 16: Subqueries - Queries Within Queries
**📆 Date:** November 22, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day16 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day16%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ Subqueries in WHERE clause
✓ Subqueries in FROM clause
✓ Subqueries with IN operator
✓ Comparing against aggregate results
✓ Nested subqueries (multi-level)
✓ Scalar subqueries (single value)
✓ Overall vs group-level comparisons

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records
2. **`staff`** - Hospital staff information
3. **`service_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Patients in services with above-average staff | Subquery with COUNT | ✅ |
| Q2 | Staff in services with low satisfaction weeks | Subquery with EXISTS | ✅ |
| Q3 | Patients from high-volume services (>1000 admits) | Subquery with SUM | ✅ |
| Q4 | Patients in underperforming services | Nested subqueries with HAVING | ✅ |

#### 💡 Key Takeaways

> **"Subqueries enable multi-step logic: calculate something, then use that result to filter or compare."**

- Subqueries are queries nested inside another query
- Can appear in WHERE, FROM, HAVING, or SELECT clauses
- IN operator commonly used with subquery results
- Scalar subqueries return single value for comparisons
- Nested subqueries allow complex multi-level logic
- HAVING with subqueries compares groups to overall metrics
- Essential for comparing records against calculated benchmarks

#### 📸 Code Snippet

-- Daily Challenge Question
-- Patients in underperforming services
SELECT
p.patient_id,
p.name,
p.service,
p.satisfaction
FROM patients p
WHERE p.service IN (
SELECT sw.service
FROM service_weekly sw
WHERE sw.patients_refused > 0
GROUP BY sw.service
HAVING AVG(sw.patient_satisfaction) < (
SELECT AVG(patient_satisfaction)
FROM service_weekly
)
);


---

### 🔥 Day 15: Multi-Table JOINs - Complex Queries
**📆 Date:** November 19, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day15 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day15%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ Joining 3+ tables in single query
✓ Multiple JOIN conditions
✓ Combining INNER and LEFT JOINs
✓ Table relationship chains
✓ Complex aggregate calculations
✓ DISTINCT with COUNT in multi-table joins
✓ Comprehensive business reporting

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records
2. **`staff`** - Hospital staff information
3. **`staff_schedule`** - Weekly staff attendance tracking
4. **`service_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Patient-staff-schedule comprehensive view | 3-table JOIN | ✅ |
| Q2 | Service analysis with staff and schedules | 3-table JOIN with aggregates | ✅ |
| Q3 | Patient admissions with staff information | Multi-table reporting | ✅ |
| Q4 | Week 20 comprehensive service analysis | Complex multi-table query | ✅ |

#### 💡 Key Takeaways

> **"Multi-table JOINs mirror real-world complexity - one query can tell a complete business story."**

- JOIN multiple tables by chaining
- Each JOIN needs its own ON condition
- Can mix INNER JOIN and LEFT JOIN in same query
- Table order matters for performance and logic
- COUNT(DISTINCT column) prevents duplicate counting
- Additional WHERE conditions filter after all joins
- Real enterprise queries often join 5-10+ tables

#### 📸 Code Snippet

-- Daily Challenge Question
-- Comprehensive service analysis for Week 20
SELECT
sw.service,
SUM(sw.patients_admitted) AS total_admitted,
SUM(sw.patients_refused) AS total_refused,
AVG(sw.patient_satisfaction) AS avg_satisfaction,
COUNT(DISTINCT s.staff_id) AS staff_assigned,
COUNT(ss.present) AS staff_present_count
FROM service_weekly sw
LEFT JOIN staff s ON sw.service = s.service
LEFT JOIN staff_schedule ss
ON s.staff_id = ss.staff_id AND ss.week = 20
WHERE sw.week = 20
GROUP BY sw.service
ORDER BY total_admitted DESC;


---

### 🔥 Day 14: LEFT JOIN - Including All Records
**📆 Date:** November 18, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day14 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day14%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ LEFT JOIN (LEFT OUTER JOIN) syntax
✓ Including all rows from left table
✓ NULL values in joined results
✓ Finding unmatched records
✓ LEFT JOIN with aggregates
✓ Difference between INNER and LEFT JOIN
✓ Utilization and gap analysis

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`staff`** - Hospital staff information
2. **`staff_schedule`** - Weekly staff attendance tracking
3. **`patients`** - Patient demographics and service records
4. **`service_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | All staff with schedule info (include no schedule) | LEFT JOIN basics | ✅ |
| Q2 | All services with staff (show unassigned) | LEFT JOIN reversed | ✅ |
| Q3 | All patients with service statistics | LEFT JOIN with NULLs | ✅ |
| Q4 | Staff utilization report with attendance count | LEFT JOIN with GROUP BY | ✅ |

#### 💡 Key Takeaways

> **"LEFT JOIN returns ALL rows from the left table, plus matching rows from the right - revealing what's missing."**

- LEFT JOIN includes all rows from left table, even without matches
- Unmatched rows show NULL for right table columns
- Essential for finding gaps, missing data, or unused resources
- LEFT OUTER JOIN and LEFT JOIN are identical
- Helps identify: inactive users, unassigned tasks, missing relationships
- Combines with GROUP BY to count occurrences (including zeros)

#### 📸 Code Snippet

-- Daily Challenge Question
-- Staff utilization report (include staff with no schedules)
SELECT
s.staff_id,
s.staff_name,
s.role,
s.service,
COUNT(ss.week) AS weeks_present
FROM staff s
LEFT JOIN staff_schedule ss
ON s.staff_id = ss.staff_id
GROUP BY s.staff_id, s.staff_name, s.role, s.service
ORDER BY weeks_present DESC;

---

### 🔥 Day 13: INNER JOIN - Combining Tables
**📆 Date:** November 17, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day13 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day13%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ INNER JOIN syntax and fundamentals
✓ Joining two tables on related columns
✓ Understanding table relationships
✓ ON clause for join conditions
✓ Table aliases for cleaner queries
✓ Combining INNER JOIN with WHERE
✓ Multi-table data retrieval

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records
2. **`staff`** - Hospital staff information
3. **`service_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Join patients with their service details | Basic INNER JOIN | ✅ |
| Q2 | Get patient names with assigned staff | JOIN with multiple columns | ✅ |
| Q3 | Combine patient and service performance data | JOIN with aggregates | ✅ |
| Q4 | Staff roster with patient counts per service | INNER JOIN with GROUP BY | ✅ |

#### 💡 Key Takeaways

> **"INNER JOIN connects related data across tables, returning only matching rows from both sides."**

- INNER JOIN combines rows based on related column
- Only returns rows that have matches in BOTH tables
- ON clause specifies the join condition
- Table aliases make queries more readable
- Non-matching rows are automatically excluded
- Can combine with WHERE, GROUP BY, ORDER BY
- Foundation for understanding all other JOIN types

#### 📸 Code Snippet

-- Daily Challenge Question
-- Get patient names with assigned staff members
SELECT
p.patient_id,
p.name AS patient_name,
p.service,
s.staff_name,
s.role
FROM patients p
INNER JOIN staff s
ON p.service = s.service
WHERE p.age > 40
ORDER BY p.service;


---

### 🔥 Day 12: NULL Values and Data Integrity
**📆 Date:** November 15, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day12 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day12%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ IS NULL operator for detecting missing values
✓ IS NOT NULL for filtering complete records
✓ COALESCE() function for default values
✓ NULL handling in WHERE clauses
✓ Counting NULL vs non-NULL values
✓ NULL in aggregate functions
✓ Data quality validation

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records (with potential NULL values)
2. **`staff`** - Hospital staff information
3. **`service_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Find patients with missing departure dates | IS NULL | ✅ |
| Q2 | Count patients with complete records | IS NOT NULL with COUNT() | ✅ |
| Q3 | Handle missing dates with defaults | COALESCE() | ✅ |
| Q4 | Patient status report with NULL handling | IS NULL with CASE | ✅ |

#### 💡 Key Takeaways

> **"NULL represents missing or unknown data - handling it properly is essential for data integrity."**

- NULL is not equal to zero, empty string, or false
- Always use IS NULL/IS NOT NULL, never = NULL
- COALESCE() returns first non-NULL value from a list
- NULL in calculations makes entire result NULL
- COUNT(*) counts NULLs, COUNT(column) doesn't
- Proper NULL handling prevents data quality issues

#### 📸 Code Snippet

-- Daily Challenge Question
-- Handle missing departure dates with COALESCE
SELECT
patient_id,
name,
arrival_date,
COALESCE(departure_date, CURRENT_DATE) AS effective_departure,
CASE
WHEN departure_date IS NULL THEN 'Currently Admitted'
ELSE 'Discharged'
END AS status
FROM patients
WHERE arrival_date IS NOT NULL;


---

### 🔥 Day 11: DISTINCT - Finding Unique Values
**📆 Date:** November 13, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day11 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day11%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ DISTINCT keyword for unique values
✓ Single column uniqueness
✓ Multi-column unique combinations
✓ DISTINCT with aggregate functions
✓ NULL value filtering
✓ Combining DISTINCT with WHERE
✓ GROUP BY for counting occurrences

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records
2. **`staff`** - Hospital staff information
3. **`service_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | List all unique services in patients table | DISTINCT single column | ✅ |
| Q2 | Find all unique staff roles | DISTINCT single column | ✅ |
| Q3 | Get distinct months from service_weekly | DISTINCT with dates | ✅ |
| Q4 | Unique service-event combinations with counts | GROUP BY with NULL filtering | ✅ |

#### 💡 Key Takeaways

> **"DISTINCT eliminates duplicates, revealing the unique dimensions of your data."**

- DISTINCT removes duplicate rows from result set
- Can be applied to single or multiple columns
- DISTINCT evaluates entire row when used with multiple columns
- NULL values are treated as distinct values
- GROUP BY provides more flexibility than DISTINCT for counting
- Essential for data quality analysis and deduplication

#### 📸 Code Snippet

-- Daily Challenge Question
-- Unique service-event combinations with counts
SELECT
service,
event,
COUNT(*) AS occurrence_count
FROM service_weekly
WHERE event IS NOT NULL
AND event != 'None'
GROUP BY service, event
ORDER BY occurrence_count DESC;


---

### 🔥 Day 10: Conditional Logic with CASE Statements
**📆 Date:** November 12, 2025  
**⏱️ Time Invested:** 2 hours  
**📂 File:** [Day10 SQL Challenge.sql](https://github.com/NihalMishra01/21-Days-SQL-Challenge/blob/main/Day10%20SQL%20Challenge.sql)

#### 📚 Topics Learned
✓ CASE WHEN THEN ELSE statements
✓ Multi-condition categorization
✓ Creating custom labels
✓ CASE with aggregate functions
✓ IN operator with CASE
✓ BETWEEN with CASE
✓ Business logic implementation

#### 🏥 Practice Dataset: Hospital Management System

**Tables Used:**
1. **`patients`** - Patient demographics and service records
2. **`staff`** - Hospital staff information
3. **`service_weekly`** - Weekly hospital service analytics

#### ✅ Problems Solved (4/4)

| # | Problem | Concept | Status |
|---|---------|---------|--------|
| Q1 | Categorize patient satisfaction levels | CASE with ranges | ✅ |
| Q2 | Label staff roles as Medical/Support | CASE with IN | ✅ |
| Q3 | Create age groups for patients | CASE with BETWEEN | ✅ |
| Q4 | Service performance report with categories | CASE with GROUP BY & aggregates | ✅ |

#### 💡 Key Takeaways

> **"CASE statements transform raw data into business intelligence by applying conditional logic."**

- CASE evaluates conditions sequentially, returns first match
- ELSE clause provides default value when no conditions match
- CASE can be used with aggregate functions
- Multiple CASE statements can appear in single SELECT
- BETWEEN simplifies range-based categorization
- CASE is essential for creating business reports

#### 📸 Code Snippet

-- Daily Challenge Question
-- Service performance report with dynamic categories
SELECT
service AS service_name,
SUM(patients_admitted) AS total_patients_admitted,
AVG(patient_satisfaction) AS avg_satisfaction,
CASE
WHEN AVG(patient_satisfaction) >= 85 THEN 'Excellent'
WHEN AVG(patient_satisfaction) >= 75 THEN 'Good'
WHEN AVG(patient_satisfaction) >= 65 THEN 'Fair'
ELSE 'Needs Improvement'
END AS performance_category
FROM service_weekly
GROUP BY service
ORDER BY avg_satisfaction DESC;


---

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

- EXTRACT() pulls specific date parts (YEAR, MONTH, DAY)
- Date arithmetic: subtraction gives day difference as integer
- COALESCE() handles NULL dates by providing fallback values
- CURRENT_DATE returns today's date for dynamic calculations
- Time-based analytics reveal seasonal patterns and trends

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
- CONCAT() combines multiple columns or strings
- String functions can be combined in single SELECT
- Essential for data cleaning and formatting

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
- Multiple conditions in HAVING use AND/OR operators
- HAVING executes after GROUP BY, WHERE executes before
- Both WHERE and HAVING can be used together

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
✓ Business metrics calculation

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
- Multiple aggregate functions can be combined
- Percentage calculations require careful handling
- ROUND() ensures readable decimal precision
- ORDER BY with aggregates identifies top/bottom performers

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
- Multiple aggregate functions can be used in one query

#### 📸 Code Snippet

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
- OFFSET skips a specified number of rows
- Combining ORDER BY + LIMIT + OFFSET enables powerful pagination
- LIMIT without OFFSET starts from the first row
- Performance: OFFSET can be slow on large datasets

#### 📸 Code Snippet

-- Daily Challenge Question
-- Get 3rd to 7th highest patient satisfaction scores
SELECT patient_id, name, service, satisfaction
FROM patients
ORDER BY satisfaction DESC
LIMIT 5 OFFSET 2;


---

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
- Sorting text data uses alphabetical order
- Performance impact increases with larger datasets

#### 📸 Code Snippet

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
2. **`service_weekly`** - Weekly hospital service analytics
3. **`staff`** - Hospital staff information
4. **`staff_schedule`** - Weekly staff attendance tracking

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
- LIKE with '%' is powerful but can impact performance

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
2. **`service_weekly`** - Weekly hospital service analytics

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

| Metric | Final Count |
|--------|-------------|
| 📝 Days Completed | 21 / 21 |
| ✅ Problems Solved | 100+ |
| 📁 Files Uploaded | 21 |
| ⏱️ Total Hours | 42 |
| 🔥 Final Streak | 21 days |

**Progress Bar:**
[████████████████████] 100% Complete

**🎉 CHALLENGE COMPLETED! 🎉**

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
| 📜 Day1-21 SQL Challenge.sql | All 21 days of solutions |
| 📊 datasets/ | Practice datasets (CSV files) |

## 🏆 Skills Acquired

**Foundation (Days 1-7):**
- ✅ SELECT, WHERE, ORDER BY, LIMIT/OFFSET
- ✅ DISTINCT, aggregate functions (COUNT, SUM, AVG, MIN, MAX)
- ✅ GROUP BY, HAVING
- ✅ Logical operators (AND, OR, NOT, IN, BETWEEN, LIKE)

**Intermediate (Days 8-14):**
- ✅ String functions (UPPER, LOWER, CONCAT, LENGTH)
- ✅ Date functions (EXTRACT, date arithmetic, COALESCE)
- ✅ CASE statements for conditional logic
- ✅ NULL handling (IS NULL, IS NOT NULL, COALESCE)
- ✅ JOINs (INNER, LEFT, multi-table)

**Advanced (Days 15-21):**
- ✅ Multi-table JOINs (3+ tables)
- ✅ Subqueries (WHERE, FROM, nested)
- ✅ Common Table Expressions (CTEs)
- ✅ UNION and UNION ALL
- ✅ Window functions (RANK, ROW_NUMBER, running totals, moving averages)
- ✅ Complex dashboard queries

## 🌟 Daily LinkedIn Updates

I documented this entire journey publicly on LinkedIn with:
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
- 💬 SQL discussions and knowledge sharing
- 🤝 Collaboration on data projects
- 💼 Data Analyst / Data Engineer opportunities
- 🌐 Networking with data professionals

---

## 💪 Final Thoughts

> *"21 days of consistent practice transforms a beginner into a confident SQL developer."*

**What I Learned:**
- 📢 Consistency compounds: Daily practice builds muscle memory
- 🌱 Learning in public creates accountability
- 🤝 Community support accelerates growth
- 💼 Portfolio projects open doors to opportunities

**From Day 1 to Day 21:**
- Started with basic SELECT statements
- Ended with production-grade dashboard queries
- Built skills employers actually need
- Created a portfolio showcasing real work

---

<div align="center">

### ⭐ If you found this helpful, please give it a star!

**21 Days. 100+ Problems. 1 Complete SQL Journey.** 

![Visitor Count](https://visitor-badge.laobi.icu/badge?page_id=NihalMishra01.21-Days-SQL-Challenge)

**🎉 Challenge Complete! From Beginner to Advanced SQL! 🎉**


</div>
