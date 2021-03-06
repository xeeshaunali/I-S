--------------------------------------------------------
--  File created - Thursday-November-05-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure IS_COPYUSER_M
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CFMISIS"."IS_COPYUSER_M" (P_FROMUSERID VARCHAR2,P_TOUSERID VARCHAR2)
AS
BEGIN
UPDATE CFMISIS.tblusers SET 
FINGERIMAGE5=(SELECT FINGERIMAGE5 FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
FINGERIMAGE0=(SELECT FINGERIMAGE0 FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
USERIMAGE=(SELECT USERIMAGE FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
USERFNAME=(SELECT USERFNAME FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
USERNAME=(SELECT USERNAME FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
ADDRESS=(SELECT ADDRESS FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
DOB=(SELECT DOB FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
CNIC=(SELECT CNIC FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
USERNAME_ENG=(SELECT USERNAME_ENG FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
USERFNAME_ENG=(SELECT USERFNAME_ENG FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
RESIDENT=(SELECT RESIDENT FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
SALUTATION=(SELECT SALUTATION FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
RELATION=(SELECT RELATION FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),  
REMARKS=(SELECT REMARKS FROM CFMISIS.tblusers WHERE USERID=P_FROMUSERID),
IMAGE_SAVE_BY=USER
WHERE USERID=P_TOUSERID;
COMMIT;
END;
 
 
/
