SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u01/app/oracle/admin/MAX/scripts/spatial.log append
@/u01/app/oracle/product/11.2.0/HOGWARTS/md/admin/mdinst.sql;
spool off
