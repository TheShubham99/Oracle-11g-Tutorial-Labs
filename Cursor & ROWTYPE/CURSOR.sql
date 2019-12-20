CREATE OR REPLACE PROCEDURE Cursor_eg (r IN student.ROLLNO%TYPE)
AS

TYPE STUD_REC is RECORD
(
  Roll NUMBER,
  N VARCHAR  
);

rec STUD_REC;
BEGIN

Select * into rec FROM student where ROLLNO=r;

  DBMS_OUTPUT.put_line('Name is '||rec.N);


END;