select * from TBLUSERS where USERID='22136';
select * from IDENTITY where USERID='22136';
--select * from PENDING_AFFIDAVIT where USERID=12670;
select * from ENTRY_TRACK where USERID=25140;
update tblusers set lock_rec=0 where userid=116557;

-- delete entry 
delete from ENTRY_TRACK where USERID='116557';
delete from TBLUSERS where USERID='116557';
delete from IDENTITY where USERID='116557';
delete from PENDING_AFFIDAVIT where USERID='116557';
commit;
