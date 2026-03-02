/* Project: Elite Academy Central Database
   Author: Shouq Alharthi
   Description: Schema and data initialization for academy management.
*/   

-- 1. Database Creation
CREATE DATABASE IF NOT EXISTS elite_academy;
USE elite_academy;

-- 2. Tables Creation
-- Creating Subjects Table
CREATE TABLE subjects(
subject_id INT PRIMARY KEY AUTO_INCREMENT,              
subject_name VARCHAR(100) NOT NULL                      
);

-- Creating Teachers Table
CREATE TABLE teachers(
teacher_id INT PRIMARY KEY AUTO_INCREMENT,
teacher_name VARCHAR(150) NOT NULL,
birth_date DATE,
gender ENUM('M','F') NOT NULL,                           -- Constraints: Only M or F
email VARCHAR(100) UNIQUE,                               
office_number VARCHAR(10)                             
);

-- Creating Students Table
create table students(
 student_id INT PRIMARY KEY AUTO_INCREMENT,
 student_name VARCHAR(150),
 birth_date DATE,
 gender ENUM('M','F') NOT NULL,                                           -- Constraints: Only M or F
 enrollment_date DATE,                           
 email VARCHAR(100) UNIQUE, 
 academic_level TINYINT CHECK (academic_level BETWEEN 1 AND 6),           -- Range 1-6
 track ENUM('Scientific','Humanitarian') NOT NULL, 
 gpa DECIMAL(5,2) CHECK (gpa <= 100)                                      -- Precision for grades
 );                                                                       

-- 3. Display Available Tables
SHOW TABLES;

-- 4. Inserting Data
-- Inserting at least 6 Subjects
INSERT INTO subjects (subject_name) 
VALUES ('Computer Science'), ('English Language'), 
('Mathematics'), ('Chemistry'), 
('Physics'), ('History');

-- Inserting at least 10 Teachers
INSERT INTO teachers (teacher_name, birth_date, gender, email, office_number) 
VALUES ('Haya Abdullah', '1990-11-20', 'F', 'haya.a@academy.edu', 'B-06'), 
('Zaid Nasser', '1988-12-18', 'M', 'zaid.n@academy.edu', 'A-05'),
('Noura Rakan', '1990-03-30', 'F', 'noura.r@academy.edu', 'B-03'), 
('Fahad Hassan', '1982-05-10', 'M', 'fahad.h@academy.edu', 'A-02'),
('Omar Saleh', '1984-07-12', 'M', 'omar.s@academy.edu', 'A-09'),
('Sara Mohammed', '1992-09-05', 'F', 'sara.m@academy.edu', 'C-02'), 
('Amal Maher', '1979-12-25', 'F', 'amal.m@academy.edu', 'B-09'),
('Faisal Fahad', '1987-06-18', 'M', 'faisal.f@academy.edu', 'C-01'),
('Mona Saud', '1981-02-28', 'F', 'mona.s@academy.edu', 'C-03'),
('Sultan Mohammed', '1986-10-10', 'M', 'sultan.m@academy.edu', 'A-01');

-- Inserting at least 30 Students
INSERT INTO students (student_name, birth_date, gender, enrollment_date, email, academic_level, track, gpa) 
VALUES ('Faisal Ayman', '2008-01-10', 'M', '2023-08-20', 'faisal.a@mail.com', 1, 'Scientific', 95.50),
('Reem Khalid', '2007-05-15', 'F', '2022-08-15', 'reem.k@mail.com', 3, 'Humanitarian', 98.00),
('Saud Mohammed', '2006-11-20', 'M', '2021-08-10', 'saud.m@mail.com', 5, 'Scientific', 88.40),
('Layan Fahad', '2008-09-12', 'F', '2023-08-20', 'layan.f@mail.com', 1, 'Scientific', 99.10),
('Omar Jaber', '2007-04-22', 'M', '2022-08-15', 'omar.j@mail.com', 3, 'Scientific', 87.30),
('Jawahir Anas', '2006-03-14', 'F', '2021-08-10', 'jawahir.a@mail.com', 5, 'Humanitarian', 92.00),
('Nawaf Fahad', '2008-02-05', 'M', '2023-08-20', 'nawaf.f@mail.com', 1, 'Scientific', 94.20),
('Dalal Mohammed', '2007-07-07', 'F', '2022-08-15', 'dalal.m@mail.com', 3, 'Scientific', 91.15),
('Yasser Mohammed', '2006-10-25', 'M', '2021-08-10', 'yasser.m@mail.com', 5, 'Humanitarian', 89.90),
('Ali Sami', '2008-12-30', 'M', '2023-08-20', 'Ali.s@mail.com', 1, 'Scientific', 85.60),
('Sultan Fahad', '2007-06-18', 'M', '2022-08-15', 'sultan.f@mail.com', 3, 'Scientific', 93.40),
('Huda Mansour', '2006-08-22', 'F', '2021-08-10', 'huda.m@mail.com', 5, 'Humanitarian', 96.75),
('Abdullah Raed', '2008-04-04', 'M', '2023-08-20', 'abdullah.r@mail.com', 1, 'Scientific', 82.00),
('Sara Yousef', '2007-11-11', 'F', '2022-08-15', 'sara.y@mail.com', 3, 'Humanitarian', 90.50),
('Khalid Waleed', '2006-02-28', 'M', '2021-08-10', 'khalid.w@mail.com', 5, 'Scientific', 79.90),
('Areej Ali', '2008-05-19', 'F', '2023-08-20', 'areej.a@mail.com', 1, 'Scientific', 97.30),
('Majed Nasser', '2007-03-03', 'M', '2022-08-15', 'majed.n@mail.com', 3, 'Scientific', 86.15),
('Ghadah Saleh', '2006-09-29', 'F', '2021-08-10', 'ghadah.s@mail.com', 5, 'Humanitarian', 94.80),
('Rakan Sami', '2008-07-14', 'M', '2023-08-20', 'rakan.s@mail.com', 1, 'Scientific', 91.00),
('Mona Ibrahim', '2007-12-25', 'F', '2022-08-15', 'mona.i@mail.com', 3, 'Humanitarian', 88.20),
('Turki Hassan', '2006-01-01', 'M', '2021-08-10', 'turki.h@mail.com', 5, 'Scientific', 92.60),
('Deema Sultan', '2008-10-10', 'F', '2023-08-20', 'deema.s@mail.com', 1, 'Scientific', 99.80),
('Hamad Issa', '2007-04-05', 'M', '2022-08-15', 'hamad.i@mail.com', 3, 'Scientific', 84.45),
('Raghad Fawaz', '2006-06-06', 'F', '2021-08-10', 'raghad.f@mail.com', 5, 'Humanitarian', 95.10),
('Bader Zaid', '2008-08-08', 'M', '2023-08-20', 'bader.z@mail.com', 1, 'Scientific', 80.20),
('Latifa Anas', '2007-02-20', 'F', '2022-08-15', 'latifa.a@mail.com', 3, 'Humanitarian', 93.90),
('Meshal Turki', '2006-11-15', 'M', '2021-08-10', 'meshal.t@mail.com', 5, 'Scientific', 87.75),
('Alanoud Rayan', '2008-03-25', 'F', '2023-08-20', 'alanoud.r@mail.com', 1, 'Scientific', 96.40),
('Waleed Jaber', '2007-05-30', 'M', '2022-08-15', 'waleed.j@mail.com', 3, 'Scientific', 89.10),
('Norah Khalid', '2006-09-09', 'F', '2021-08-10', 'norah.k@mail.com', 5, 'Humanitarian', 98.25);

-- 5. Data Retrieval Queries
-- Display all contents
SELECT * FROM subjects;
SELECT * FROM teachers;
SELECT * FROM students;

-- Students sorted by name ascending
SELECT * 
FROM students 
ORDER BY student_name ASC;

-- Display student name with Alias 
SELECT student_name AS "Student Full Name", track, gpa 
FROM students;

-- 6. Data Modification (Updates)
-- Updating a student's email 
UPDATE students 
SET email = 'faisal.ayman@mail.com' 
WHERE student_id = 1;

-- Updating a teacher's office number
UPDATE teachers 
SET office_number = 'C-05'
WHERE teacher_id = 2;

-- 7. Table Modification (Rename)
RENAME TABLE subjects TO academy_subjects;
