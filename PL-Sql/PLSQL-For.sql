-- FOR LOOP
----------------------
DECLARE 
counter NUMBER(2):=10;

BEGIN
  FOR counter IN 10..20
  LOOP 
      DBMS_OUTPUT.PUT_LINE('Counter : '||counter);
    
  END LOOP;    

end;

-- FOR LOOP REVERSE
----------------------
DECLARE 
counter NUMBER(2):=10;

BEGIN
  FOR counter IN REVERSE 10..20
  LOOP 
      DBMS_OUTPUT.PUT_LINE('Counter : '||counter);
    
  END LOOP;    

end;
