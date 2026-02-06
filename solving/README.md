# University Database Management System

This project is a **University Database Management System** designed using **MySQL**.  
It manages departments, students, teachers, courses, and enrollments using relational database concepts and foreign key constraints.

---

## 📌 Features

- Department management
- Student records with department mapping
- Teacher records linked to departments
- Course management handled by teachers
- Student enrollment in courses
- Referential integrity using foreign keys
- Cascading updates and deletes

---

## 🛠️ Tech Stack

- **Database:** MySQL
- **Language:** SQL

---

## 🗂️ Database Structure

### 1. `dept` Table
Stores department details.

| Column | Type | Description |
|------|------|-------------|
| id | INT (PK) | Department ID |
| name | VARCHAR(50) | Department name |

---

### 2. `students` Table
Stores student information.

| Column | Type | Description |
|------|------|-------------|
| name | VARCHAR(20) | Student name |
| gender | VARCHAR(1) | Gender |
| phone_no | INT | Phone number |
| address | VARCHAR(255) | Address |
| dob | DATE | Date of birth |
| dept_id | INT (FK) | Linked department |

**Foreign Key:**  
`dept_id → dept(id)`  
- ON DELETE CASCADE  
- ON UPDATE CASCADE  

---

### 3. `teacher` Table
Stores teacher details.

| Column | Type | Description |
|------|------|-------------|
| teacher_id | INT (PK) | Teacher ID |
| name | VARCHAR(50) | Teacher name |
| phone_no | INT | Phone number |
| dept_id | INT (FK) | Department ID |

**Foreign Key:**  
`dept_id → dept(id)`

---

### 4. `courses` Table
Stores course details.

| Column | Type | Description |
|------|------|-------------|
| course_id | INT | Course ID |
| courses_name | VARCHAR(50) | Course name |
| credits | VARCHAR(1) | Course credits |
| course | INT (FK) | Department ID |
| course_id | INT (FK) | Teacher ID |

**Foreign Keys:**  
- `course → dept(id)`  
- `course_id → teacher(teacher_id)`

---

### 5. `enrollment` Table
Tracks student enrollments in courses.

| Column | Type | Description |
|------|------|-------------|
| en_id | INT (FK) | Student department ID |
| enrollment | INT (FK) | Course ID |
| grade | VARCHAR(2) | Grade |
| engrollment_date | DATE | Enrollment date |

**Foreign Keys:**  
- `en_id → students(dept_id)`  
- `enrollment → courses(course_id)`

---

## 🚀 How to Run

1. Open **MySQL Workbench** or MySQL CLI
2. Create a new SQL file
3. Paste the contents of `mini.sql`
4. Run the script
5. Database `university` will be created automatically

---

## 📚 Concepts Used

- Relational Model
- Primary Key & Foreign Key
- One-to-Many relationships
- Cascading operations
- Database normalization

---

## 📌 Future Improvements

- Add primary keys where missing
- Improve enrollment table relations
- Add indexes for performance
- Build backend using Node.js / Python
- Create frontend dashboard for admin & students

---

## 👨‍💻 Author

**Tanushk**

---

