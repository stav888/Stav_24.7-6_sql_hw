CREATE TABLE measurements (
    id SERIAL PRIMARY KEY,
    value NUMERIC(5,2)
);

INSERT INTO measurements (value)
SELECT (5 + (15 - 5) * RANDOM())::NUMERIC(5,2)
FROM generate_series(1, 3);

SELECT * FROM measurements
