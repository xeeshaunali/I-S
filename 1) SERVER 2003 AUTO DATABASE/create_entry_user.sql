CREATE USER "001" IDENTIFIED BY "001" DEFAULT TABLESPACE CFMS;
GRANT CONNECT,RESOURCE TO "001";
GRANT AR_INCHARGE_IS TO "001";

CREATE USER "002" IDENTIFIED BY "002" DEFAULT TABLESPACE CFMS;
GRANT CONNECT,RESOURCE TO "002";
GRANT AR_INCHARGE_IS TO "002";
exit;