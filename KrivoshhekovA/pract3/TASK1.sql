insert into MYTABLE(text) values ('z');

commit;

select * from MYTABLE;

rollback;

select * from v$session;

ALTER SYSTEM KILL SESSION '26,219' IMMEDIATE; 