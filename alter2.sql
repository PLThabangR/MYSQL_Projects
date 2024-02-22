CREATE DATABASE IF NOT EXISTS lemons; 
USE lemons;
CREATE TABLE FoodOrders (OrderID INT, Quantity INT, Order_Status VARCHAR(15), Cost Decimal(4,2));
SHOW COLUMNS FROM FoodOrders;
Alter table FoodOrders modify OrderID int not null primary key;
Alter table FoodOrders modify Cost Decimal(4,2) not null;
Alter table FoodOrders Add column OrderDate Date not null,Add column OrderID int not null ,ADD foreign key (OrderID_) references Orders_2(OrderID_) ;

CREATE TABLE Orders_2 (OrderID INT NOT NULL PRIMARY KEY, ClientID VARCHAR(10), ProductID VARCHAR(10), Quantity INT, Cost DECIMAL(6,2));
replace INTO Orders_2 (OrderID_, ClientID, ProductID, Quantity, Cost) VALUES (1, "Cl1", "P1", 10, 500), (2, "Cl2", "P2", 5, 100), (3, "Cl3", "P3", 20, 800), (4, "Cl4", "P4", 15, 150), (5, "Cl3", "P3", 10, 450), (6, "Cl2", "P2", 5, 800), (7, "Cl1", "P4", 22, 1200), (8, "Cl1", "P1", 15, 150);