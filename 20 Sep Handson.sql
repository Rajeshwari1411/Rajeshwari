--1.)Create the table Member, Book and Issue without any constraints as mentioned in the schema description above.
create database Library
use Library

create table Member(Member_ID numeric(5) primary key, Member_Name Char(25), Acc_Open_Date Date,
Max_Books_Allowed numeric(2), Penalty_Amount numeric(7,2))

create table Book(Book_No numeric(6) primary key, Book_Name varchar(30), Author Char(30), 
Cost numeric(7,2), Category Char(10))

create table Issue(Lib_Issue_Id	numeric(10) primary key, Book_No numeric(6) foreign key references Book(Book_No),
Member_Id numeric(5) foreign key references Member(Member_Id), Issue_Date Date, Return_date Date)


sp_help Member
sp_help Book
sp_help Issue


alter table issue
add Comment varchar(100) 

alter table Member 
alter column Member_Name Char(30)

alter table Issue
add Reference varchar(30)

alter table Issue
drop column Reference 

exec sp_rename 'Issue',  'Lib_Issue';



insert into Member values(1,'Rajeshwari','2001-11-14',5,50)
insert into Member values(2,'jaya','2000-06-06',6,100)
insert into Member values(3,'Ram','2003-03-13',7,105)
insert into Member values(4,'Raj','2002-01-12',8,110)
insert into Member values(6,'Sarmila','2000-07-18',4,120)
insert into Member values(7,'Senthamil',CURRENT_TIMESTAMP,3,null)

alter table Member 
alter column Member_Name Char(20)



use Library
select * into Member101 from Member
select * into Member102 from Member where 1=2 



insert into Book values(101,'Let us C',	'Denis Ritchie', 450 , 'System')
insert into Book values(102, 'Oracle � Complete Ref', 'Loni', 550	,'Database')
insert into Book values(103, 'Mastering SQL', 'Loni', 250, 'Database')
insert into Book values(104, 'PL SQL-Ref', 'Scott Urman', 750, 'Database')

insert into Book values(105 , 'Stellar' , 'Soam Jena' , 500 , 'Trading')
insert into Book values(106 & 'C# Basics' & 'Jolie' & 340 & 'System')
select * into Book101 from Book where 1=2


insert into Book101 select * from Book


select * from Member
select * from Member101
select * from Book
select * from Book101
select * from Issue




insert into Book values(107,'National Geographic', 'Adis Scott', 1000,  'Science')


delete from book where Book_no = 105


update Book set Cost = 300, Category = 'RDBMS' where Book_No = 103


exec sp_rename 'Lib_Issue', 'Issue'



alter table Issue drop column Comment
insert into Issue values(7001,101,1,'10-Dec-06','')
insert into Issue values(7002,102,2,'25-Dec-06','')
insert into Issue values(7003,104,1,'15-Jan-06','')
insert into Issue values(7004,101,1,'04-Jul-06','')
insert into Issue values(7005,104,2,'15-Nov-06','')
insert into Issue values(7006,101,3,'18-Feb-06','')


insert into Issue values(7007,103,3,'12-Oct-06','')
insert into Issue values(7008,102,1,'28-Mar-06','')


update Issue set Return_date = '19-Jul-06' where Lib_Issue_Id = 7004
update Issue set Return_date = '30-Nov-06' where Lib_Issue_Id = 7005


update Member set Penalty_Amount = 300 where Member_Name = 'Senthamil'


delete from Issue where Member_Id = 1 and Issue_Date < '10-Dec-06'


delete from Book where Category != 'RDBMS' and  Category != 'Database'

drop table Member101


drop table Book101


select * from Member
select * from Book
select * from Issue


select * from Member
select * from Issue
select * from Book

select * from Member where Year(Acc_Open_Date) = 2006

select * from Book where Author = 'Loni' and Cost < 600

select * from Issue where Return_date > GETDATE()

update Issue set Return_date = '31-Dec-06 ' where Lib_Issue_Id != 7005 and Lib_Issue_Id != 7006

select * from Issue where (Day(Return_date) - Day(Issue_Date)) > 30

select * from Book where (Cost >= 500 and Cost <= 750) and Category = 'Database'

select * from Book where Category = 'Science' or Category = 'Database'or  Category ='Fiction'or  Category = 'Management'

select * from Member order by Penalty_Amount desc

select * from Book order by Category, Cost desc

select * from Book where Book_Name like '%SQL%'

select * from Member where Member_Name like 'R%' or Member_Name  like 'G%' and Member_Name  like '%I%'

select upper(Author) as Author_In_Upper from Book order by Book_Name desc

select Book_No,('is written by') as '--------------------',Book_Name from Book


select * from Book where Category like '%D'

select Lib_Issue_Id, Issue_Date, Return_Date, (Return_Date - Issue_Date) as No_of_Days_Book_issued  from Issue

select count(Book_No) from Issue where Member_Id = 101

select sum(Penalty_Amount) as Total_Penalty from Member

select sum(Cost) as Total_Cost from Book where Category = 'Database'

select min(Cost) as Cheapest_Book from Book

select avg(Cost) as Average_Price_Book from Book

select * from Member
select * from Issue
select * from Book