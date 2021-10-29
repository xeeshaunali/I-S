--------------------------------------------------------
--  File created - Friday-May-17-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table STD_COURTS
--------------------------------------------------------

  CREATE TABLE "CFMISIS"."STD_COURTS" 
   (	"C_ID" NUMBER, 
	"COURT_NAME" VARCHAR2(250 BYTE), 
	"STATUS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CFMS" ;
REM INSERTING into CFMISIS.STD_COURTS
SET DEFINE OFF;
Insert into CFMISIS.STD_COURTS (C_ID,COURT_NAME,STATUS) values (1,'IN THE COURT OF ANTI-CORRUPTION (PROVINCIAL), HYDERABAD',1);
Insert into CFMISIS.STD_COURTS (C_ID,COURT_NAME,STATUS) values (2,'IN THE COURT OF ANTI-CORRUPTION (CENTRAL), HYDERABAD',1);
Insert into CFMISIS.STD_COURTS (C_ID,COURT_NAME,STATUS) values (3,'IN THE BANKING COURT NO.I, HYDERABAD.',1);
Insert into CFMISIS.STD_COURTS (C_ID,COURT_NAME,STATUS) values (4,'IN THE BANKING COURT NO.II, HYDERABAD.',1);
Insert into CFMISIS.STD_COURTS (C_ID,COURT_NAME,STATUS) values (5,'IN THE LABOUR COURT, HYDERABAD.',1);
Insert into CFMISIS.STD_COURTS (C_ID,COURT_NAME,STATUS) values (41,'IN THE HIGH COURT OF SINDH, KARACHI',1);
--------------------------------------------------------
--  DDL for Trigger STD_COURTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CFMISIS"."STD_COURTS_TRG" 
BEFORE INSERT ON STD_COURTS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.C_ID IS NULL THEN
      SELECT STD_COURTS_SEQ.NEXTVAL INTO :NEW.C_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CFMISIS"."STD_COURTS_TRG" ENABLE;