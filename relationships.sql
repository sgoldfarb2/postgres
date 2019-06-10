-- CREATE TABLE author(
--   id serial PRIMARY KEY,
--   name varchar(25)
-- );

-- CREATE TABLE article(
--   id serial PRIMARY KEY,
--   title varchar(150),
--   author_id integer REFERENCES author (id)
-- );
-- -- our author_id is going to be a foreign key
-- -- you can't have an author that is undefined in this case
-- --in postgres, you can't use double quotes for strings

-- INSERT INTO author VALUES (DEFAULT, 'Alfie Santos');
-- INSERT INTO article VALUES(DEFAULT, 'living in EADO', 1);



-- INSERT INTO author VALUES (DEFAULT, 'michael dao');
-- INSERT INTO author VALUES (DEFAULT, 'tarek beb');
-- INSERT INTO author VALUES(DEFAULT, 'chris humphrey');

-- INSERT INTO article VALUES
-- (DEFAULT, 'why i wear nice pants?', 4),
-- (DEFAULT, 'my car is nice', 2),
-- (DEFAULT, 'going home at lunch', 3),
-- (DEFAULT, 'getting shit from tray', 1);
-- INSERT INTO author VALUES (DEFAULT, 'ollie vargas');

-- inner join (associate articles with their authors)
-- SELECT * FROM article, author WHERE article.author_id = author.id;
-- this equates the foreign key in one table to the primary key in the other table
-- can also do the same thing this way
-- SELECT * FROM article INNER JOIN author ON article.author_id = author.id;

-- outer join returns all rows that don't match the join condition (for example if you had authors without articles, you could find them using outer join)
-- SELECT * FROM article RIGHT OUTER JOIN author ON article.author_id = author.id;
-- this says we want to join our articles with our author, but we also want any authors without articles, so in this case we get Ollie as well, whereas before we didn't


-- a full outer join will give you everything from both tables whether or not they satisfy the join condition

-- a right join returns all records from the right table, and matched records for the left table

-- to find out how many articles each author has written...
-- SELECT
--   author.id,
--   author.name,
--   COUNT(article.id)
-- FROM
--   article
-- INNER JOIN
--   author ON article.author_id = author.id
-- GROUP BY
--   author.id;







-- Many to many relationships
-- uses three tables
-- the third table is our "membership table" and it groups together our first two tables
-- so we can have a member ID for each person, a group ID for the groups, and our membership table tables our groupID and our memberID

-- here's an example of this:
-- CREATE TABLE groups(
--   id SERIAL PRIMARY KEY,
--   name varchar(100)
-- );

-- CREATE TABLE member(
-- id SERIAL PRIMARY KEY,
-- name varchar(25)
-- );

-- CREATE TABLE membership(
-- id SERIAL PRIMARY KEY,
-- group_id integer REFERENCES groups (id),
-- member_id integer REFERENCES member (id)
-- );

-- INSERT INTO groups VALUES
-- (DEFAULT, 'Atl JS'),
-- (DEFAULT, 'Pyladies'),
-- (DEFAULT, 'GDI'),
-- (DEFAULT, 'ATL web design');

-- INSERT INTO member VALUES
-- (DEFAULT, 'alfie'),
-- (DEFAULT, 'michael'),
-- (DEFAULT, 'tarek'),
-- (DEFAULT, 'kevin'),
-- (DEFAULT, 'glenn'),
-- (DEFAULT, 'david'),
-- (DEFAULT, 'ollie'),
-- (DEFAULT, 'chris'),
-- (DEFAULT, 'garrett'),
-- (DEFAULT, 'sabrina');

-- INSERT INTO membership VALUES
-- (DEFAULT, 1, 10),
-- (DEFAULT, 2, 10),
-- (DEFAULT, 3, 10),
-- (DEFAULT, 4, 10),
-- (DEFAULT, 1, 1),
-- (DEFAULT, 2, 2),
-- (DEFAULT, 2, 2),
-- (DEFAULT, 3, 3),
-- (DEFAULT, 2, 4);

-- SELECT member.name, groups.name FROM groups
-- INNER JOIN membership ON group_id = membership.group_id
-- INNER JOIN member ON membership.group_id = member.id;

-- selects
-- distinct let's you filter out duplicates
