Create table Bill(
Tbill varchar(50),
Catbill varchar(50),
Amtbill int,
Dateentry date,
Due date,
Paymode varchar(50),
Status varchar(50)
);

insert into Bill (Tbill,Catbill,Amtbill,Dateentry,Due,Paymode,Status) values('water','family',800,'11-11-2002','11-12-2002','netbanking','due');
select * from Bill