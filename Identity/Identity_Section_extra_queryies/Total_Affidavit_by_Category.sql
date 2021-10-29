select count(*) from IDENTITY
join AFFIDAVIT_SUBMITED on (IDENTITY.USERID=AFFIDAVIT_SUBMITED.USERID) 
where casenamecode=172;
select count(*) from IDENTITY where casenamecode=172;

