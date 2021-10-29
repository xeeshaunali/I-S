sqlplus sys/oracle as sysdba @create_directory.sql
impdp cfmis/cfmis directory=dbdir schemas=cfmis dumpfile=cfmis.dmp logfile=cfmis.log 
impdp cfmisis/cfmisis directory=dbdir schemas=cfmisis dumpfile=cfmisis.dmp logfile=cfmisis.log
sqlplus sys/oracle as sysdba @Grant_Identity.sql