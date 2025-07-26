-- AUTOINCREMENT
CREATE TABLE members (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL
);

INSERT INTO members (full_name) VALUES
('Shira Levi'),
('Nadav Cohen'),
('Yael Azulay');


-- UNION
CREATE TABLE patients (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE nurses (
    id INTEGER PRIMARY KEY,
    name TEXT
);

INSERT INTO patients (name) VALUES ('Yoni'), ('Dana'), ('Avi');
INSERT INTO nurses (name) VALUES ('Avi'), ('Tamar'), ('Lior');

SELECT name FROM patients
UNION
SELECT name FROM nurses;
