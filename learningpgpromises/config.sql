-- CREATE TABLE categories(
--   id SERIAL PRIMARY KEY,
--   name varchar(50)
-- );


-- CREATE TABLE restaurants(
-- id SERIAL PRIMARY KEY,
-- name varchar(100),
-- category integer REFERENCES categories (id)
-- );

-- -- these are our "seeds" which is inital data for our table
-- INSERT INTO categories VALUES(DEFAULT, 'Thai');
-- INSERT INTO categories VALUES(DEFAULT, 'BBQ');
-- INSERT INTO categories VALUES(DEFAULT, 'Ethiopian');
-- INSERT INTO categories VALUES(DEFAULT, 'Greek');
-- INSERT INTO categories VALUES(DEFAULT, 'Italian');
-- INSERT INTO categories VALUES(DEFAULT, 'German');
-- INSERT INTO categories VALUES(DEFAULT, 'American');
-- INSERT INTO categories VALUES(DEFAULT, 'Chinese');
-- INSERT INTO categories VALUES(DEFAULT, 'Syrian');
-- INSERT INTO categories VALUES(DEFAULT, 'Mexican');


-- INSERT INTO restaurants VALUES
-- (DEFAULT, 'Fajitas', 10),
-- (DEFAULT, 'Pad Kee Mao', 1),
-- (DEFAULT, 'Pulled Pork', 2),
-- (DEFAULT, 'Shiro Wett', 3),
-- (DEFAULT, 'Gyro', 4),
-- (DEFAULT, 'Pizza', 5),
-- (DEFAULT, 'Brat Worst', 6),
-- (DEFAULT, 'Hamburger', 7),
-- (DEFAULT, 'Orange Chicken', 8),
-- (DEFAULT, 'Kebab', 9),
-- (DEFAULT, 'Tabuleh', 10);
