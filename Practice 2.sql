Create Table Clients (ClientID int not null, FirstName char(50),
LastName char(50), Address char(50), City Char(50) Default 'London',
Country char(25) Default 'England', BirthDate Date, Primary Key (ClientID)
)

Insert Into Clients Values
(1, 'Claude', 'Shannon', '123 Big Road', 'New York', 'USA', '11-09-1914'),
(2, 'John', 'NewMann', '45 Manor Drive', 'Budapest', 'Hungary', '12-28-1903'),
(3, 'Tim', 'Lee', '1 Abbey Road', 'London', 'England', '06-08-1955'),
(4, 'Bill', 'Gates', '10 Moon Crescent', 'Seattle', 'USA', '10-28-1955'),
(5, 'Hedy', 'Lamar', '99 Warwick Avenue', 'Vienna', 'Austria', '11-10-1924')

Create Table Orders (OrderID Int Primary Key,
OrderDate Date, Product char(50), Customer int,
ClientID int not null References Clients(ClientID)
)

Insert Into Orders Values
(1, '02-22-1922', 'Bubble gum', 2),
(2, '12-19-1945', 'Cinder Toffee', 1),
(3, '03-28-1968', 'Jelly Beans', 4),
(4, '10-20-1988', 'Gob Stopper', 4),
(5, '06-06-1942', 'Gummy Bears', 2),
(6, '01-02-1945', 'Cola Bottles', 3),
(7, '08-18-1920', 'Love Hearts', 5),
(8, '10-16-1943', 'Aniseed Balls', 3)