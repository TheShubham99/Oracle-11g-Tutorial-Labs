CREATE OR REPLACE PROCEDURE U_Curr 
as

rt student%ROWTYPE;

CURSOR curr 
is
select * FROM 
student;

begin

open curr;

LOOP
    FETCH curr INTO rt;
    EXIT WHEN curr%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE ('Student Name ' || rt.NAME); 
  END LOOP;
  
  IF curr%NOTFOUND THEN
  
  DBMS_OUTPUT.PUT_LINE ('Number of Students is '||curr%ROWCOUNT);
  
  END IF;

end;


call U_Curr();