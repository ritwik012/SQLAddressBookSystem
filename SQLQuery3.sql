/*UC1*/
create database AddressBookSystem;

use AddressBookSystem;

/*UC2*/
create table AddressBookTable(id int identity (1,1) primary key, FirstName varchar(20), LastName varchar(20), Address varchar(50), City varchar(20), State varchar(20), Zip varchar(6), Phone varchar(16), Email varchar(40));
exec sp_help AddressBookTable;

/*UC3*/
insert into AddressBookTable(FirstName,LastName,Address,City,State,Zip,Phone,Email) values
('Rutwik', 'Gulhane', 'Main Road', 'Kalmeshwar', 'Maharashtra', '441501', '8007356529', 'rutwik@bridgelabz.com'),
('Ajinkya', 'Appa', 'Main Road', 'Kalmeshwar', 'Maharashtra', '441501', '9569265976', 'Ajinkya000gmail.com'),
('Rakesh', 'Kolhe', 'Masjid Street', 'Guntur', 'Maharashtra', '400001', '7985702876', 'Rakesh@gmail.com'),
('Hitesh', 'Sharma', 'Road No 34', 'Sangli', 'Maharashtra', '440034', '8374837584', 'Hitesh@gmail.com'),
('Durga', 'Bhavani', 'Durga Temple Road', 'Nagpur', 'Maharashtra', '440021', '9924936885', 'durga@gmail.com'),
('Satya', 'Narayana', 'Bus Stand Road', 'Nagpur', 'Maharashtra', '440021', '6084375820', 'satya@gmail.com');


update AddressBookTable set City='kalmeshwar' where FirstName='Rakesh';
update AddressBookTable set Zip='441501' where LastName='Bhavani';
select * from AddressBookTable;

delete from AddressBookTable where FirstName='Hitesh';

select FirstName,LastName from AddressBookTable where City='Kalmeshwar' or State='Maharashtra';


select count(City) as CityCount, count(State) as StateCount from AddressBookTable

;
select * from AddressBookTable where City='kalmeshwar' order by FirstName;

alter table AddressBookTable add NameType varchar(30);

update AddressBookTable set NameType='Family' where FirstName='Rutwik' or FirstName='Gulhane';
update AddressBookTable set NameType='Friends' where FirstName='Rakesh' or FirstName='Ajinkya';
update AddressBookTable set NameType='Profession' where FirstName='Satya';

select NameType,count(*) as TypeCount from AddressBookTable group by NameType;