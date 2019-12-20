/*
1. Create table called MOVIES that stores below columns and enforce a NOT NULL
constraint on column movie number
* movie number (accepts only numbers)
* movie name (accepts numbers and characters and maximum length can be 100)
* movie type (accepts numbers and characters and maximum length can be 40)
* movie release date (accepts only dates)
*/


CREATE TABLE 
MOVIES(MOVIE_NO NUMBER NOT NULL,MOVIE_NAME VARCHAR2(100),TYPE VARCHAR2(40),RELEASE_DATE DATE);

/*
2. Create table called MOVIES that stores below columns and enforce a UNIQUE constraint on column movie number
* movie number (accepts only numbers)
* movie name (accepts numbers and characters and maximum length can be 100)
* movie type (accepts numbers and characters and maximum length can be 40)
* movie release date (accepts only dates)
*/

ALTER TABLE MOVIES MODIFY (MOVIE_NO NUMBER UNIQUE, MOVIE_NAME VARCHAR2(100),TYPE VARCHAR2(40),DIRECTOR_NUMBER Number(5) ,RELEASE_DATE DATE);

/*
3. Create table called MOVIES that stores below columns and enforce a PRIMARY KEY constraint on column movie number
* movie number (accepts only numbers)
* movie name (accepts numbers and characters and maximum length can be 100)
* movie type (accepts numbers and characters and maximum length can be 40)
* movie release date (accepts only dates)
*/

CREATE TABLE 
MOVIES(MOVIE_NO NUMBER NOT NULL, MOVIE_NAME VARCHAR2(100),TYPE VARCHAR2(40),RELEASE_DATE DATE);

DELETE FROM MOVIES;
INSERT INTO MOVIES values(3,'Race 4','COMEDY','01-02-2017');
/*
4. Create table called MOVIES that stores below columns and enforce a CHECK constraint on column movie type
(values allowed are COMEDY and ACTION)
* movie number (accepts only numbers)
* movie name (accepts numbers and characters and maximum length can be 100)
* movie type (accepts numbers and characters and maximum length can be 40)
* movie release date (accepts only dates)
*/

ALTER TABLE
MOVIES ADD CONSTRAINT check_c CHECK(TYPE IN ('COMEDY','ACTION'));

CREATE TABLE DIRECTOR(DIRECTOR_NUMBER Number(5)PRIMARY KEY, D_NAME Varchar2(10));



/*
5. Create table called MOVIES that stores below columns and enforce a foreign key constraint on column movie
director number which references table DIRECTOR and column DIRECTOR_NUMBER.
* movie number (accepts only numbers)
* movie name (accepts numbers and characters and maximum length can be 100)
* movie type (accepts numbers and characters and maximum length can be 40)
* movie release date (accepts only dates)
* movie director number (accepts only numbers)
*/

ALTER TABLE
MOVIES ADD CONSTRAINT f_key FOREIGN KEY (DIRECTOR_NUMBER) REFERENCES DIRECTOR(DIRECTOR_NUMBER);

