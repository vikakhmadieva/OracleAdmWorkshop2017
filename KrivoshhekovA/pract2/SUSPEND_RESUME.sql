alter SYSTEM suspend;

select * from V$INSTANCE;

alter SYSTEM resume;

select * from V$INSTANCE;