# Student Database – SQL Query Practice

## 📌 Project Overview
This project demonstrates basic SQL operations using a `student` table.
It focuses on practicing data insertion, filtering records, and selecting
specific columns using SQL queries in MySQL Workbench.

The database represents student academic details such as roll number,
name, marks, grade, and city.

---

## 🗂️ Table Structure

| Column Name | Data Type | Description |
|------------|----------|-------------|
| rollno | INT | Unique roll number of the student |
| name | VARCHAR | Student name |
| marks | INT | Marks obtained by the student |
| grade | CHAR | Grade assigned |
| city | VARCHAR | City of the student |

---

## 🧱 Create Table Query

```sql
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grade CHAR(1),
    city VARCHAR(50)
);

---
## 🛠️ Tools & Technologies Used

- MySQL  
- MySQL Workbench  
- SQL (DQL & DML)

---

## 🎯 Learning Outcomes

- Understanding table creation  
- Inserting records into tables  
- Using `SELECT` and `WHERE` clauses  
- Filtering data based on conditions  
- Selecting specific columns  
