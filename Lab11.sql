--Oracle_79_Lab 11 (Exercises with Answers)_CAD
--<:-------------------------------------------
/*
1. Create table called MOVIES that stores below columns
* movie number (accepts only numbers)
* movie name (accepts numbers and characters and maximum length can be 100)
* movie type (accepts numbers and characters and maximum length can be 40)
* movie release date (accepts only dates)
*/

CREATE TABLE 
MOVIES(MOVIE_NO NUMBER NOT NULL,MOVIE_NAME VARCHAR2(100),TYPE VARCHAR2(40),RELEASE_DATE DATE);


/*
2. Add a new column movie language (accepts numbers and characters and maximum
length can be 30) to the MOVIES table.
*/

ALTER TABLE MOVIES ADD (LANGUAGE Varchar2(30));

/*
3. Modify the MOVIES table by increasing the maximum length of column movie type to 50.
*/

ALTER TABLE MOVIES Modify TYPE VARCHAR2(50);

/*
4. Go ahead and delete the MOVIES table.
*/
DELETE FROM MOVIES;