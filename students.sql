-- we can create our database in here with line 2 (instead of using our terminal with createdb)
-- CREATE DATABASE students1_db
-- we are going to need to mostly create our database in our commandline using createdb, and it doesn't matter where you are in your directory because databases aren't dependent on that
-- dropdb is to "drop" a database

-- varchar is a string
-- student is our table name in this case
-- for the table name you would use snakecase if it was multiple words
-- if you don't specifiy the length of your strings, your database will automatically save it the max space for that, you can instead create a limited amount of space so you aren't spending as much $$ on empty space, and that's what the (20) (100) are below
-- CREATE TABLE student2(
--   id SERIAL NOT NULL PRIMARY KEY,
-- name varchar(20),
-- website varchar(100),
-- github_username varchar(20) UNIQUE NOT NULL,
-- points integer DEFAULT 0 CHECK (points >= 0),
-- gender char(1),
-- cohort_start_date date NOT NULL,
-- graduated boolean DEFAULT FALSE

-- )
-- number types are integer, numeric: precise decimal (good for currency), and real: floating point
-- more data types date, time, boolean
-- syntax: strings - use single quotes, booleans - use TRUE or FALSE, null - use NULL


-- CRUD create, read, update, delete
-- when you create a table, you want something unique to identify them to pull specific records (like if two students had the same name)
-- that's why we have a primary key
-- when records have a primary key, even if you delete a record, a new record wont get that same key (so if you delete number 3, the next person will be number 4, not number 3)

-- INSERT INTO student2 VALUES (DEFAULT, 'Sabrina', 'sabrinagoldfarb.com', 'sgoldfarb2', 0, 'F', '2019-04-15', FALSE)

-- if you only want to put in specific fields, you can do so like this:
-- INSERT INTO student (name, github_username) VALUES ('Michael', 'mjackson')

-- UPDATE student SET points = 8 WHERE id = 1

-- SELECT name, website from student;

-- DELETE FROM student WHERE id = 2
-- to delete ALL your records you would DELETE FROM student
-- now that we deleted id of 2, the next time we make a new student, they'll get number three instead of number two

-- constraints: (see slideshow)

-- Primary Keys
-- PRIMARY KEY keyword is like putting NOT NULL and UNIQUE

-- SELECT statement:

-- CREATE TABLE articles(
--   id SERIAL PRIMARY KEY,
--   name varchar(100)

-- );

-- INSERT INTO articles VALUES
-- (DEFAULT, 'Alfie'),
-- (DEFAULT, 'Michael'),
-- (DEFAULT, 'Chris'),
-- (DEFAULT, 'Garrett'),
-- (DEFAULT, 'David'),
-- (DEFAULT, 'Deron'),
-- (DEFAULT, 'Glenn');
-- semicolons are very important in sql, you need a semicolon between commands or they wont run!!


-- SELECT * FROM articles;
-- SELECT id from articles;
-- SELECT name from articles where id > 5

-- "like" is like using a regular expression (sort of)
-- SELECT * FROM articles WHERE name like '%er%'

-- ALTER TABLE command
-- ALTER TABLE articles ADD last_name varchar(50);

-- DROP COLUMN command
-- ALTER TABLE articles DROP COLUMN last_name;

-- ALTER/MODIFY COLUMN
-- ALTER TABLE student MODIFY COLUMN gender varchar(4);
-- this might be a little wrong because it might be outdated...tbd...

-- SELECT * FROM articles LIMIT 5
-- this is normally used for paging, so you limit the amount of results you get at a time
