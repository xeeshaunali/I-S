-- 002262 Asad
-- 002255 Tanzeel 
-- 000691 Javeed 
-- 002217 Khalid 
select count(*) from entry_track where login_id='002262' and ENTRY_DATETIME like '09-MAY-13%' and action_on='AFFIDAVIT INSERTED';
select count(*) from entry_track where login_id='002255' and ENTRY_DATETIME like '09-MAY-13%' and action_on='AFFIDAVIT INSERTED';
select * from entry_track where userid=21687;

select * from IDENTITY_SECTION_STAFF where COMP_CODE='002255';
--Tanzil 65
-- Asad 71
-- javeed 4
-- Khalid 10

select Userid,login_id,IPADDRESS,firtname from entry_track et,IDENTITY_SECTION_STAFF s where 
s.COMP_CODE=et.login_id
and login_id='002255' and ENTRY_DATETIME like '21-MAY-13%' and action_on='AFFIDAVIT INSERTED' 
order by userid;

-- Total Number of affidavit per person 
select count(login_id) Total,firtname,login_id from entry_track et,IDENTITY_SECTION_STAFF s 
where s.COMP_CODE=et.login_id
and to_date(substr(entry_datetime,0,10))>=to_date('01-OCT-13')
and action_on='AFFIDAVIT GENERATED' 
and login_id='000637'
group by login_id,s.firtname 
order by Total;

select * from entry_track et,IDENTITY_SECTION_STAFF s 
where s.COMP_CODE=et.login_id
and to_date(substr(entry_datetime,0,10))>=to_date('01-OCT-13')
and action_on='AFFIDAVIT INSERTED' 
and login_id='000637';

-- count affidavit for surety 
select count(*) from affidavit_submited 
join TBLUSERS on(TBLUSERS.USERID=affidavit_submited.USERID)
join entry_track on (TBLUSERS.USERID=entry_track.userid)
where at_id=1333 and to_date(substr(entry_datetime,0,10))>=to_date('01-OCT-13');




select * from entry_track;
select substr(entry_datetime,0,10) from entry_track;
 
 and login_id='000691'




