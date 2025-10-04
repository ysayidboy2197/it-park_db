CREATE TABLE IF NOT EXISTS masters (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	subject TEXT UNIQUE NOT NULL
);


CREATE TABLE IF NOT EXISTS mentors (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	firstname TEXT NOT NULL,
	lastname TEXT NOT NULL,
	master_id INTEGER NOT NULL,
	FOREIGN KEY (master_id) REFERENCES masters (id) ON DELETE CASCADE
);

 
CREATE TABLE IF NOT EXISTS groups(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT NOT NULL,
	mentor_id INTEGER NOT NULL,
	FOREIGN KEY (mentor_id) REFERENCES mentors (id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS students (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	firstname TEXT NOT NULL,
	lastname TEXT NOT NULL,
	group_id INTEGER NOT NULL,
	FOREIGN KEY (group_id) REFERENCES gruop (id)
);


CREATE TABLE IF NOT EXISTS lessonstimetable (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	group_id INTEGER NOT NULL,
	time TEXT NOT NULL,
	room INTEGER NOT NULL,
	FOREIGN KEY (group_id) REFERENCES groups (id),
	UNIQUE(group_id)
);


INSERT INTO lessonstimetable (group_id, time, room)
VALUES
(2, '15:00', 2),
(1, '15:00',4);



INSERT INTO masters
(subject)
VALUES
('IT'),
('English');


INSERT INTO mentors
(firstname, lastname, master_id)
VALUES
('Azamat', 'Tojiyev', 1),
('Nodir', 'Odilov', 1),
('Mahliyo', 'Qalandarova', 2),
('Zuhra', 'Yaqubova', 1),
('Odilbek', 'Matyokubov', 2);


INSERT INTO groups
(title, mentor_id)
VALUES
('TQ-IT-0901', 1),
('TQ-EN-0901', 3),
('TQ-IT-0902', 1),
('TQ-IT-1102', 1),
('TQ-IT-1003', 2),
('TQ-EN-0903', 5),
('TQ-IT-0804', 1);



INSERT INTO students
(firstname, lastname, group_id)
VALUES
('Bobur', 'Abdullayev', 4),
('Zamir', 'Shokirov', 2),
('Ozoda', 'Rustamova', 5),
('Mavluda', 'Bobojanova', 2),
('Jamol', 'Otajonov', 3),
('Indira', 'Xasanova', 1),
('Maftuna', 'Durumboyeva', 3);

