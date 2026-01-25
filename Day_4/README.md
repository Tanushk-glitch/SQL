# Student & Department Management System

This  demonstrates the implementation of **Relational Database Management System (RDBMS)** concepts using SQL. It specifically focuses on maintaining data integrity through Foreign Key constraints and cascading actions.

---

## 🚀 Features
* **Relational Mapping**: Establishes a link between Teachers and Departments.
* **Referential Integrity**: Uses `ON UPDATE CASCADE` and `ON DELETE CASCADE` to ensure data consistency across related tables.
* **Data Aggregation**: Performs analytical queries using `GROUP BY` and `AVG()` to calculate student performance metrics by city.

---

## 📊 Database Schema

### 1. `dept` Table
Stores department information.
- `id` (INT, Primary Key): Unique identifier for the department.
- `name` (VARCHAR): Name of the department (e.g., IT, English).

### 2. `teacher` Table
Stores teacher information with a relationship to departments.
- `id` (INT, Primary Key): Unique identifier for the teacher.
- `name` (VARCHAR): Name of the teacher.
- `dept_id` (INT, Foreign Key): References `dept(id)`.

### 3. `student` Table
Stores student records and academic performance.
- `id` (INT, Primary Key): Unique identifier for the student.
- `name` (VARCHAR): Student name.
- `grade` (CHAR): Academic grade/score.
- `city` (VARCHAR): Residential city.

---

## 🛠️ Key SQL Concepts

### Cascading Actions
The `teacher` table is defined with cascading properties to automate data maintenance:
- **Update Cascade**: If a Department ID is changed in the `dept` table, the `dept_id` for all associated teachers in the `teacher` table will update automatically.
- **Delete Cascade**: If a Department is removed, all teachers belonging to that department are also removed to prevent "orphan" records.



### Data Analytics
The script includes a query to calculate the average grade of students grouped by their city, sorted from lowest to highest average:
```sql
SELECT city, AVG(grade)
FROM student
GROUP BY city
ORDER BY AVG(grade);