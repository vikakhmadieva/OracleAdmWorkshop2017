SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u01/app/oracle/admin/MAX/scripts/JServer.log append
@/u01/app/oracle/product/11.2.0/HOGWARTS/javavm/install/initjvm.sql;
@/u01/app/oracle/product/11.2.0/HOGWARTS/xdk/admin/initxml.sql;
@/u01/app/oracle/product/11.2.0/HOGWARTS/xdk/admin/xmlja.sql;
@/u01/app/oracle/product/11.2.0/HOGWARTS/rdbms/admin/catjava.sql;
@/u01/app/oracle/product/11.2.0/HOGWARTS/rdbms/admin/catexf.sql;
spool off
