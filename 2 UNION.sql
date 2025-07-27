-- UNION | SQLite

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
