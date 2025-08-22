use students;
alter table ece add(
semail varchar(25), sphone int8);

alter table ece drop column semail;
 alter table ece add(
 scountry varchar(40) default 'India'
 );
 select * from ece;
 select sid, sname, sphone, scountry from ece;