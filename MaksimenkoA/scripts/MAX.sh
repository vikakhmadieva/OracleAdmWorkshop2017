#!/bin/sh

OLD_UMASK=`umask`
umask 0027
mkdir -p /u01/app/oracle/admin/MAX/adump
mkdir -p /u01/app/oracle/admin/MAX/dpdump
mkdir -p /u01/app/oracle/admin/MAX/pfile
mkdir -p /u01/app/oracle/cfgtoollogs/dbca/MAX
mkdir -p /u01/app/oracle/flash_recovery_area
mkdir -p /u01/app/oracle/flash_recovery_area/MAX
mkdir -p /u01/app/oracle/oradata/MAX
mkdir -p /u01/app/oracle/product/11.2.0/HOGWARTS/dbs
umask ${OLD_UMASK}
ORACLE_SID=MAX; export ORACLE_SID
PATH=$ORACLE_HOME/bin:$PATH; export PATH
echo You should Add this entry in the /etc/oratab: MAX:/u01/app/oracle/product/11.2.0/HOGWARTS:Y
/u01/app/oracle/product/11.2.0/HOGWARTS/bin/sqlplus /nolog @/u01/app/oracle/admin/MAX/scripts/MAX.sql
