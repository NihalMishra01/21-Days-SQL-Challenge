<div align="center">

<img src="https://svg-banners.vercel.app/api?type=glitch&text1=21%20DAYS%20SQL%20🚀&text2=Beginner%20→%20Advanced&width=800&height=250" />

<br><br>

![Challenge](https://custom-icon-badges.demolab.com/badge/Challenge-21%20Days-4169E1?style=for-the-badge&logo=calendar&logoColor=white)
![Status](https://custom-icon-badges.demolab.com/badge/Status-In%20Progress-success?style=for-the-badge&logo=rocket&logoColor=white)
![Day](https://custom-icon-badges.demolab.com/badge/Day-2%2F21-orange?style=for-the-badge&logo=flame&logoColor=white)
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



---
## 📅 Daily Progress Tracker

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


### 📊 Challenge Statistics

<div align="center">

| Metric | Count |
|--------|-------|
| 📝 Days Completed | 2 / 21 |
| ✅ Problems Solved | 16 |
| 📁 Files Uploaded | 2 |
| ⏱️ Total Hours | 4 |
| 🔥 Streak | 2 days |

**Progress Bar:**
[██░░░░░░░░░░░░░░░░░░] 9.52% Complete



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
| ... | Days 3-20 solutions |
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


</div>
