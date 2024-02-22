CREATE DATABASE Mangata_Gallo;
 USE Mangata_Gallo;
 create table staff(StaffID int,FullName varchar(100),PhoneNumber int(10));
 Alter table staff modify StaffID int not null primary key,modify FullName varchar(100) not null,modify PhoneNumber int not null;
 show columns from staff;
 Alter table staff add column Position varchar(50) not null;
 Alter table staff drop  PhoneNumber;