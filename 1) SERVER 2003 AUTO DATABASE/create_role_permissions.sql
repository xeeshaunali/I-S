CREATE ROLE AR_INCHARGE_IS IDENTIFIED BY GLOBALLY;
CREATE ROLE IS_STAFF IDENTIFIED BY GLOBALLY;
grant select on sys.dba_role_privs to cfmisis;
GRANT select ON SYS.V_$INSTANCE TO "IS_STAFF";
GRANT select ON SYS.V_$INSTANCE TO "AR_INCHARGE_IS";
GRANT select on sys.dba_role_privs to AR_INCHARGE_IS;
GRANT select on sys.dba_role_privs to IS_STAFF;
exit;
