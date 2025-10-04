Database Schema for Educational Management System

This database schema is designed to manage masters (subjects), mentors, groups, students, and lesson timetables in an educational context.

Tables Overview

masters: Stores unique subjects.

mentors: Stores mentor details linked to a subject (master_id).

groups: Stores group information linked to a mentor (mentor_id).

students: Stores student details linked to a group (group_id).

lessonstimetable: Stores lesson times and rooms for each group.

Schema Details
masters

id: Primary key, auto-increment.

subject: Unique subject name, not null.

mentors

id: Primary key, auto-increment.

firstname, lastname: Mentor names, not null.

master_id: Foreign key referencing masters(id), cascades on delete.

groups

id: Primary key, auto-increment.

title: Group title, not null.

mentor_id: Foreign key referencing mentors(id), cascades on delete.

students

id: Primary key, auto-increment.

firstname, lastname: Student names, not null.

group_id: Foreign key referencing groups(id) (note: fix typo from gruop).

lessonstimetable

id: Primary key, auto-increment.

group_id: Foreign key referencing groups(id).

time: Lesson time, not null.

room: Room number, not null.

Unique constraint on group_id.

Sample Data Inserted

Subjects: IT, English.

Mentors linked to subjects.

Groups linked to mentors.

Students linked to groups.

Lesson schedules linked to groups with unique group times.

Notes

Foreign key constraints use ON DELETE CASCADE to maintain referential integrity.

Ensure to fix the typo in the students table foreign key reference (gruop → groups).

The lessonstimetable enforces one unique schedule per group.

