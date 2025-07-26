-- ON DELETE CASCADE

CREATE TABLE directors (
    director_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY,
    title TEXT,
    director_id INTEGER,
    FOREIGN KEY(director_id) REFERENCES directors(director_id)
);

INSERT INTO directors (name) VALUES ('Spielberg');
INSERT INTO movies (title, director_id) VALUES ('Jaws', 1);

-------------
-------------

DELETE FROM directors WHERE name = 'Spielberg';
-- מתקבלת שגיאה כי יש סרט שמקושר אליו


DROP TABLE movies;

CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY,
    title TEXT,
    director_id INTEGER,
    FOREIGN KEY(director_id) REFERENCES directors(director_id) ON DELETE CASCADE
);


INSERT INTO movies (title, director_id) VALUES ('Jaws', 1);


DELETE FROM directors WHERE name = 'Spielberg';


SELECT * FROM directors;
SELECT * FROM movies;

