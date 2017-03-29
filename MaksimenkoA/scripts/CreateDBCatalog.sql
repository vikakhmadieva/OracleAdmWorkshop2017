SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u01/app/oracle/admin/MAX/scripts/CreateDBCatalog.log append
@/u01/app/oracle/product/11.2.0/HOGWARTS/rdbms/admin/catalog.sql;
@/u01/app/oracle/product/11.2.0/HOGWARTS/rdbms/admin/catblock.sql;
@/u01/app/oracle/product/11.2.0/HOGWARTS/rdbms/admin/catproc.sql;
@/u01/app/oracle/product/11.2.0/HOGWARTS/rdbms/admin/catoctk.sql;
@/u01/app/oracle/product/11.2.0/HOGWARTS/rdbms/admin/owminst.plb;
connect "SYSTEM"/"&&systemPassword"
@/u01/app/oracle/product/11.2.0/HOGWARTS/sqlplus/admin/pupbld.sql;
connect "SYSTEM"/"&&systemPassword"
set echo on
spool /u01/app/oracle/admin/MAX/scripts/sqlPlusHelp.log append
@/u01/app/oracle/product/11.2.0/HOGWARTS/sqlplus/admin/help/hlpbld.sql helpus.sql;
spool off
spool off
