-- Calculator Using PACKAGE in PL SQL.

CREATE OR REPLACE PACKAGE calc AS 
  PROCEDURE ADD(x IN number, y IN number);
  PROCEDURE SUB(x IN number, y IN number);
  PROCEDURE MUL(x IN number, y IN number);
  PROCEDURE sqareroot(x IN number);  
END calc; 

CREATE OR REPLACE PACKAGE BODY calc
as

  PROCEDURE MUL(x IN number, y IN number)
  as
  BEGIN
  DBMS_OUTPUT.PUT_LINE('MUL :'||x*y);
  END;
  
  PROCEDURE ADD(x IN number, y IN number)
  as
  sumation NUMBER;
  BEGIN
  sumation:=x+y;
  DBMS_OUTPUT.PUT_LINE('ADD :'||sumation);
  END;
  
  PROCEDURE SUB(x IN number, y IN number)
  as
  subs NUMBER;
  BEGIN
  subs:=x-y;
  DBMS_OUTPUT.PUT_LINE('SUB :'||subs);
  END;

  PROCEDURE sqareroot(x IN number)
  as
  root NUMBER;
  BEGIN
  root:=sqrt(x);
  DBMS_OUTPUT.PUT_LINE('SUB :'||root);
  END;  

END;  

-- Execute Later -->

DECLARE
a NUMBER;
b NUMBER;

BEGIN
  a:=&a;
  b:=&b;

calc.ADD(a,b);
calc.SUB(a,b);
 calc.MUL(a,b);
 calc.SQAREROOT(a);
END;

