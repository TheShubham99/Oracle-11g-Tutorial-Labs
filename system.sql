CREATE USER INVENTORY1 IDENTIFIED BY INVENTORY1;

GRANT CONNECT,RESOURCE,DBA TO INVENTORY1;

GRANT CREATE SESSION,GRANT ANY PRIVILEGE TO INVENTORY1;

GRANT UNLIMITED TABLESPACE TO INVENTORY1;

select MONTHS_BETWEEN('01-MAR-15',DATE) from dual;  

select TABLE_NAME,count(*),OWNER from ALL_TAB_COLUMNS where TABLE_NAME IN('CUSTOMER','PRODUCT') GROUP BY TABLE_NAME,OWNER;
select * from ALL_TAB_COLUMNS;

SELECT * FROM USER_TABLES;