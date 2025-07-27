-- JSONB במקום קשר M:N | PostgreSQL

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    course_date DATE NOT NULL
);

CREATE TABLE student_courses (
    student_id INTEGER REFERENCES students(id),
    course_id INTEGER REFERENCES courses(id),
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO students (name) VALUES
('Roni'),
('Alon');

INSERT INTO courses (title, course_date) VALUES
('math', '2024-11-01'),
('history', '2024-11-15');

INSERT INTO student_courses (student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 1);


DROP TABLE IF EXISTS student_courses;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;

CREATE TABLE enrollments (
    student_id SERIAL PRIMARY KEY,
    student_name TEXT NOT NULL,
    courses JSONB
);

INSERT INTO enrollments (student_name, courses) VALUES
('Roni', '{"math": "2024-11-01", "history": "2024-11-15"}'::JSONB),
('Alon', '{"math": "2024-11-01"}'::JSONB);

SELECT * FROM enrollments;
