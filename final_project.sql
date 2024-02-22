create database database_project_1;
use database_project_1;

CREATE TABLE Customers(CustomerID INT NOT NULL PRIMARY KEY, FullName VARCHAR(100) NOT NULL, PhoneNumber INT NOT NULL UNIQUE);
INSERT INTO Customers(CustomerID, FullName, PhoneNumber) VALUES 
(1, "Vanessa McCarthy", 0757536378), 
(2, "Marcos Romero", 0757536379), 
(3, "Hiroki Yamane", 0757536376), 
(4, "Anna Iversen", 0757536375), 
(5, "Diana Pinto", 0757536374),     
(6, "Altay Ayhan", 0757636378),      
(7, "Jane Murphy", 0753536379),      
(8, "Laurina Delgado", 0754536376),      
(9, "Mike Edwards", 0757236375),     
(10, "Karl Pederson", 0757936374);

CREATE TABLE Bookings (BookingID INT, BookingDate DATE,TableNumber INT, NumberOfGuests INT,CustomerID INT); 
INSERT INTO Bookings 
(BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID) 
VALUES 
(10, '2021-11-10', 7, 5, 1),  
(11, '2021-11-10', 5, 2, 2),  
(12, '2021-11-10', 3, 2, 4), 
(13, '2021-11-11', 2, 5, 5),  
(14, '2021-11-11', 5, 2, 6),  
(15, '2021-11-11', 3, 2, 7), 
(16, '2021-11-11', 3, 5, 1),  
(17, '2021-11-12', 5, 2, 2),  
(18, '2021-11-12', 3, 2, 4), 
(19, '2021-11-13', 7, 5, 6),  
(20, '2021-11-14', 5, 2, 3),  
(21, '2021-11-14', 3, 2, 4);

CREATE TABLE Courses (CourseName VARCHAR(255) PRIMARY KEY, Cost Decimal(4,2));
INSERT INTO Courses (CourseName, Cost) VALUES 
("Greek salad", 15.50), 
("Bean soup", 12.25), 
("Pizza", 15.00), 
("Carbonara", 12.50), 
("Kabasa", 17.00), 
("Shwarma", 11.30);

Select * from Bookings where BookingDate Between "2021-11-11" and "2021-11-13";
select * from Customers;
select x.FullName,y.BookingID from Customers as x inner join Bookings as y  on x.CustomerID = y.CustomerID
where BookingDate = "2021-11-11";

Select BookingDate,count(BookingDate) as date1 from Bookings group by bookingDate ;
replace into Courses Set Cost = 20.00, CourseName ="Kabasa";
select * from Courses;
show columns from Courses;
create table DeliveryAddress(ID int primary key,Address varchar(255) not null,Type varchar(100) not null default "private",CustomerID int not null, foreign key (CustomerID) references Customers (CustomerID));
show columns from DeliveryAddress;

alter table Courses add column Ingredients varchar(255); 

Select BookingDate from Bookings where BookingDate = "2021-11-11" and Customers.CustomerID=Bookings.BookingID ;

Select FullName from Customers where (Select CustomerID from Bookings where BookingDate = "2021-11-11" and Customers.CustomerID =Bookings.CustomerID);

create view BookingView as Select BookingID,BookingDate,NumberOfGuests from Bookings where BookingDate < "2021-11-13" and NumberOfGuests>3;
select* from BookingView;

drop view BookingView;

create procedure GetBookingsData(InputDate date)  select * from Bookings where BookingDate = InputDate; 

call GetBookingsData("2021-11-13");

SELECT CONCAT("5", "*", "4", "=?");