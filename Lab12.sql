--COMMIT, ROLLBACK, INSERT, UPDATE, DELETE, TRUNCATE
--Oracle_85_Lab 12 (Exercises with Answers)_UID
-- <:-------------------------------------------
CREATE TABLE movies
(
Movie_number number,
Movie_name varchar2(100),
Movie_type varchar2(40),
Movie_release_date date
);

/*
1. Insert 3 rows into the MOVIES table, Below is the MOVIES table structure.
Movie_number number,
Movie_name varchar2(100),
Movie_type varchar2(40),
Movie_release_date date
*/
INSERT INTO movies VALUES
(
101,
'TERMINATOR',
'ACTION',
'12-JAN-2015'
);
COMMIT;

INSERT INTO movies VALUES
(
102,
'BABIES DAY OUT',
'COMEDY',
'11-FEB-2014'
);
COMMIT;

INSERT INTO movies VALUES
(
103,
'RUSH HOUR',
'ACTION',
'12-DEC-2001'
);
COMMIT;

--2. Modify movie release date of movie number 101 from ’12-jan-2015’ to ’14-jan-2015’

-- 3. Delete the row from MOVIES table where the movie name is RUSH HOUR.
