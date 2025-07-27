-- JSONB במקום קשר M:N | PostgreSQL

CREATE TABLE enrollments (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    courses JSONB
);

INSERT INTO enrollments (name, courses) VALUES
('Roni', '{"math": "2024-11-01", "history": "2024-11-15"}'),
('Alon', '{"math": "2024-11-01"}');

SELECT * FROM enrollments;
