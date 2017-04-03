CREATE USER user1 IDENTIFIED  BY paswd1;
GRANT CREATE SESSION TO user1;
GRANT UNLIMITED TABLESPACE TO user1;
GRANT  CREATE  TABLESPACE  TO user1;

alter user user1
QUOTA unlimited on users;

SELECT default_tablespace, temporary_tablespace
FROM dba_users
WHERE username='user1';

/* create tablespace TEMPTBS01;

alter user user1
TEMPORARY TABLESPACE TEMPTBS01
DEFAULT TABLESPACE USERS
QUOTA 500M ON USERS;*/

CREATE USER user2 IDENTIFIED  BY paswd2;
GRANT CREATE SESSION TO user2;

alter user user2
QUOTA 50M on users;

CREATE PROFILE miser
LIMIT
connect_time 120
idle_time 900
sessions_per_user 2;

alter user user2
profile miser;

commit;

 SELECT * FROM dba_users
WHERE username in ('USER1', 'USER2');

show user;

ALTER PROFILE DEFAULT
LIMIT
PASSWORD_REUSE_TIME UNLIMITED;

SELECT * from dba_profiles where RESOURCE_NAME = 'PASSWORD_REUSE_TIME';

