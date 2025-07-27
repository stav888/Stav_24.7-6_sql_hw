-- AUTOINCREMENT | SQLite

CREATE TABLE members (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL
);

INSERT INTO members (full_name) VALUES
('Shira Levi'),
('Nadav Cohen'),
('Yael Azulay');
