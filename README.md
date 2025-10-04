# 🎓 Educational Management System Database Schema

This repository contains the SQL schema and sample data for managing **masters (subjects)**, **mentors**, **groups**, **students**, and **lesson timetables** in an educational setting.

---

## 🗂️ Tables Overview

| Table           | Description                                   |
|-----------------|-----------------------------------------------|
| `masters`       | Stores unique subjects                        |
| `mentors`       | Stores mentor details linked to subjects     |
| `groups`        | Stores group information linked to mentors   |
| `students`      | Stores student details linked to groups      |
| `lessonstimetable` | Stores lesson times and rooms for each group |

---

## 📋 Schema Details

### 🧑‍🏫 `masters`
- `id`: Primary key, auto-increment  
- `subject`: Unique subject name, **NOT NULL**

### 👨‍🏫 `mentors`
- `id`: Primary key, auto-increment  
- `firstname`, `lastname`: Mentor names, **NOT NULL**  
- `master_id`: Foreign key referencing `masters(id)`, cascades on delete  

### 👥 `groups`
- `id`: Primary key, auto-increment  
- `title`: Group title, **NOT NULL**  
- `mentor_id`: Foreign key referencing `mentors(id)`, cascades on delete  

### 🧑‍🎓 `students`
- `id`: Primary key, auto-increment  
- `firstname`, `lastname`: Student names, **NOT NULL**  
- `group_id`: Foreign key referencing `groups(id)` (note: fix typo from `gruop`)  

### 📅 `lessonstimetable`
- `id`: Primary key, auto-increment  
- `group_id`: Foreign key referencing `groups(id)`  
- `time`: Lesson time, **NOT NULL**  
- `room`: Room number, **NOT NULL**  
- Unique constraint on `group_id`  

---

## 🔢 Sample Data Included

- **Subjects**: IT, English  
- **Mentors** linked to subjects  
- **Groups** linked to mentors  
- **Students** linked to groups  
- **Lesson schedules** linked to groups with unique lesson times  

---

## ⚠️ Important Notes

- Foreign keys use `ON DELETE CASCADE` to maintain referential integrity  
- Fix the typo in the `students` table foreign key reference (`gruop` → `groups`)  
- Each group has a unique lesson schedule in `lessonstimetable`  

---

## 🚀 Usage

You can create the tables and insert sample data by running the provided SQL scripts in your preferred SQL environment.

---

*Feel free to contribute or open issues if you find bugs or want enhancements!*

---

© 2025 Educational Management System  
