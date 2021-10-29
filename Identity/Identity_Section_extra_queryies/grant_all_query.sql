BEGIN
   FOR R IN (SELECT owner, table_name FROM all_tables WHERE owner='CFMS') LOOP
      EXECUTE IMMEDIATE 'grant select on '||R.owner||'.'||R.table_name||' to cfmsapi';
   END LOOP;
END;
commit;

--  SELECT owner, table_name FROM all_tables WHERE owner='CFMIS';