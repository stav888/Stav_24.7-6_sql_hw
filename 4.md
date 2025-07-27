-- SERIAL

CREATE TABLE trainers (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO trainers (id, name) VALUES
(201, 'Erez Barak'),
(202, 'Liat Ben-Haim'),
(203, 'Gil Oren');


DROP TABLE IF EXISTS trainers;

CREATE TABLE trainers (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);


INSERT INTO trainers (name) VALUES
('Erez Barak'),
('Liat Ben-Haim'),
('Gil Oren');
