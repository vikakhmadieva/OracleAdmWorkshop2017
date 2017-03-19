SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u01/app/oracle/admin/MAX/scripts/interMedia.log append
@/u01/app/oracle/product/11.2.0/HOGWARTS/ord/im/admin/iminst.sql;
spool off
