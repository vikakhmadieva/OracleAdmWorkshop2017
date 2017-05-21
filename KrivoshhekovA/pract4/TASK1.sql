create user techcode identified by 123;
create user techcode1 identified by 123;

alter user techcode
  identified by 123;
  
grant create public synonym to techcode;  
grant create session to techcode1;
grant create table to techcode1;

show parameter audit;

SELECT USERNAME, TIMESTAMP, ACTION_NAME 
FROM   dba_audit_trail
WHERE USERNAME = 'TECHCODE1'
ORDER BY timestamp;

select name,value from v$parameter
where name like 'audit%';

audit delete any table by TECHCODE1 by access WHENEVER successful;