set verify off
ACCEPT sysPassword CHAR PROMPT 'Enter new password for SYS: ' HIDE
ACCEPT systemPassword CHAR PROMPT 'Enter new password for SYSTEM: ' HIDE
ACCEPT sysmanPassword CHAR PROMPT 'Enter new password for SYSMAN: ' HIDE
ACCEPT dbsnmpPassword CHAR PROMPT 'Enter new password for DBSNMP: ' HIDE
host /u01/app/oracle/product/11.2.0/HOGWARTS/bin/orapwd file=/u01/app/oracle/product/11.2.0/HOGWARTS/dbs/orapwMAX force=y
@/u01/app/oracle/admin/MAX/scripts/CreateDB.sql
@/u01/app/oracle/admin/MAX/scripts/CreateDBFiles.sql
@/u01/app/oracle/admin/MAX/scripts/CreateDBCatalog.sql
@/u01/app/oracle/admin/MAX/scripts/JServer.sql
@/u01/app/oracle/admin/MAX/scripts/context.sql
@/u01/app/oracle/admin/MAX/scripts/xdb_protocol.sql
@/u01/app/oracle/admin/MAX/scripts/ordinst.sql
@/u01/app/oracle/admin/MAX/scripts/interMedia.sql
@/u01/app/oracle/admin/MAX/scripts/spatial.sql
@/u01/app/oracle/admin/MAX/scripts/emRepository.sql
@/u01/app/oracle/admin/MAX/scripts/apex.sql
@/u01/app/oracle/admin/MAX/scripts/lockAccount.sql
@/u01/app/oracle/admin/MAX/scripts/postDBCreation.sql
