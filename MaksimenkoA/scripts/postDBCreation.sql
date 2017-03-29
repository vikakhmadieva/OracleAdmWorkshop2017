SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u01/app/oracle/admin/MAX/scripts/postDBCreation.log append
select 'utl_recomp_begin: ' || to_char(sysdate, 'HH:MI:SS') from dual;
execute utl_recomp.recomp_serial();
select 'utl_recomp_end: ' || to_char(sysdate, 'HH:MI:SS') from dual;
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
create spfile='/u01/app/oracle/product/11.2.0/HOGWARTS/dbs/spfileMAX.ora' FROM pfile='/u01/app/oracle/admin/MAX/scripts/init.ora';
shutdown immediate;
connect "SYS"/"&&sysPassword" as SYSDBA
startup ;
host /u01/app/oracle/product/11.2.0/HOGWARTS/bin/emca -config dbcontrol db -silent -DB_UNIQUE_NAME MAX -PORT 1521 -EM_HOME /u01/app/oracle/product/11.2.0/HOGWARTS -LISTENER HOGW -SERVICE_NAME MAX -SID MAX -ORACLE_HOME /u01/app/oracle/product/11.2.0/HOGWARTS -HOST TATUUIN -LISTENER_OH /u01/app/oracle/product/11.2.0/HOGWARTS -LOG_FILE /u01/app/oracle/admin/MAX/scripts/emConfig.log;
spool off
