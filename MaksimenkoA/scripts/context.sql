SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u01/app/oracle/admin/MAX/scripts/context.log append
@/u01/app/oracle/product/11.2.0/HOGWARTS/ctx/admin/catctx change_on_install SYSAUX TEMP NOLOCK;
connect "CTXSYS"/"change_on_install"
@/u01/app/oracle/product/11.2.0/HOGWARTS/ctx/admin/defaults/dr0defin.sql "AMERICAN";
spool off
