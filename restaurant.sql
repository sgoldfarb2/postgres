-- CREATE TABLE restaurant(
-- id SERIAL NOT NULL PRIMARY KEY,
-- name varchar(20),
-- distance integer,
-- stars integer,
-- category varchar(20),
-- favorite_dish varchar(20),
-- does_takeout boolean,
-- last_time_you_ate_there date
-- );

-- INSERT INTO restaurant VALUES (DEFAULT, 'restaurant1', 20, 3, 'american', 'fries', FALSE, '2019-01-01');
-- INSERT INTO restaurant VALUES (DEFAULT, 'restaurant2', 20, 1, 'chinese', 'broccoli', FALSE, '2019-02-01');
-- INSERT INTO restaurant VALUES (DEFAULT, 'restaurant3', 20, 5, 'thai', 'pad-kee-mao', FALSE, '2019-03-01');
-- INSERT INTO restaurant VALUES (DEFAULT, 'restaurant4', 20, 2, 'vietnamese', 'bahn mi', TRUE, '2019-04-01');
-- INSERT INTO restaurant VALUES (DEFAULT, 'restaurant5', 20, 5, 'indian', 'chana masala', TRUE, '2019-01-02');
-- INSERT INTO restaurant VALUES (DEFAULT, 'restaurant6', 20, 5, 'ethiopian', 'shiro wett', TRUE, '2019-01-03');
-- INSERT INTO restaurant VALUES (DEFAULT, 'restaurant8', 20, 4, 'deli', 'matzoh ball soup', FALSE, '2019-01-05');
-- INSERT INTO restaurant VALUES (DEFAULT, 'restaurant7', 20, 5, 'diner', 'french toast', TRUE, '2019-01-04');

-- SELECT name FROM restaurant where stars = 5;
-- SELECT favorite_dish FROM restaurant where stars = 5;
-- SELECT id FROM restaurant WHERE name like '%1%';
-- SELECT * FROM restaurant WHERE category = 'indian';
-- SELECT * FROM restaurant WHERE does_takeout = TRUE;
-- SELECT * FROM restaurant WHERE does_takeout = TRUE AND category = 'indian';
-- SELECT * FROM restaurant WHERE distance < 21;
-- SELECT * FROM restaurant WHERE last_time_you_ate_there < '2019-04-02' AND last_time_you_ate_there > '2019-03-29';
-- SELECT * FROM restaurant WHERE last_time_you_ate_there < '2019-04-02' AND last_time_you_ate_there > '2019-03-29' AND stars = 2;

