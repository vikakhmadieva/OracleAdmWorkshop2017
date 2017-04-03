alter system set optimizer_mode = rule scope=spfile;

select value from v$parameter where name='optimizer_mode'
union all
select value from v$spparameter where name='optimizer_mode';
