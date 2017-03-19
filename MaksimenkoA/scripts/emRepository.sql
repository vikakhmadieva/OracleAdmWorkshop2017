SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo off
spool /u01/app/oracle/admin/MAX/scripts/emRepository.log append
@/u01/app/oracle/product/11.2.0/HOGWARTS/sysman/admin/emdrep/sql/emreposcre /u01/app/oracle/product/11.2.0/HOGWARTS SYSMAN &&sysmanPassword TEMP ON;
WHENEVER SQLERROR CONTINUE;
spool off
