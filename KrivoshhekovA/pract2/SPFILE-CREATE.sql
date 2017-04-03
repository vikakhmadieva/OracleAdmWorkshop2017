CREATE PFILE = '$ORACLE_HOME/dbs/initARK_new.ora'
FROM SPFILE;

CREATE SPFILE = '$ORACLE_HOME/dbs/spfileARK_new.ora' 
   FROM PFILE;

   