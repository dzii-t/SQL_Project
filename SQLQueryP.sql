CREATE DATABASE TrademarkTreasures
CREATE TABLE Customers(CustomerID INT PRIMARY KEY, 
						FirstName VARCHAR(20),
						LastName VARCHAR(20),	
						Email VARCHAR(50),
						Location VARCHAR(50),
						RegistrationDate DATE);

CREATE TABLE Products(ProductID INT PRIMARY KEY,
					ProductName VARCHAR(25),
					Category VARCHAR(20), 
					Price DECIMAL(10,2));
					
CREATE TABLE ORDERS(OrderID INT PRIMARY KEY, 
					CustomerID INT,
					ProductID INT,
					OrderDate DATE,
					Quantity INT,
					FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), 
					FOREIGN KEY (ProductID) REFERENCES Products(ProductID));
					
CREATE TABLE PAYMENT(PaymentID INT PRIMARY KEY,
					OrderID INT,
					PaymentMethod VARCHAR(20),
					PaymentDate DATE,
				    Amount DECIMAL(10,2));

INSERT INTO Customers(CustomerID, FirstName, LastName, Email, Location, 
						RegistrationDate)
VALUES ('1011','David','Tchar','dTchar1@gmail.com','New York','01-01-2016'),
		('1012','Lesley','Johnson','lesleyjohn@yahoo.com','Melbourne','10-29-2019'),
		('1013','Tara','Benson','tb@outlook.com','Accra','08-14-2017'),
		('1014','David','OB','OBD@outlook.com','Johannesburg','01-21-2017'),
		('1015','Daniel','Antwi','dannytwi@yahoo.com','Accra','01-18-2016'),
		('1016','Mary','Adams','sweetnuck@yahoo.com','Nairobi','07-28-2023'),
		('1017','Dior','Haydes','dhaydes213@gmail.com','New York','03-15-2022'),
		('1018','Troy','Bolton','TroyBolton 99@outlook.com','New York','09-19-2020'),
		('1019','Camila','Dre','cmdre45@gmail.com','Melbourne','12-12-2023'),
		('1020','Nia','Roberts','dicihinia@gmail.com','New York','08-19-2022'),
		('1021','Dora','Quainoo','doraquainoo@yahoo.com','Accra','09-20-2023'),
		('1022','Emma','Newman','eman@gmail.com','New York','02-15-2020'),
		('1023','Amanda','Kingsley','nayakman@outlook.com','Johannesburg','02-14-2021'),
		('1024','King','King','KK@outlook.com','New York','08-16-2022'),
		('1025','Colette','Tanefa','Colettetanefa@gmail.com','New York','10-29-2020'),
		('1026','Kennedy','Adams','kenkaydam@yahoo.com','Nairobi','11-20-2023'),
		('1027','Derrick','Jones','derrickjones14@gmail.com','New York','10-20-2019'),
		('1028','Andy','Hope','anhope22@gmail.com','Accra','09-15-2019'),
		('1029','Olivia','Johnson','oj29@yahoo.com','Johannesburg','06-17-2020'),
		('1030','Andria','Cedric','cedrica28@gmail.com','Johannesburg','09-30-2022');





INSERT INTO Products(ProductID, ProductName, Category, Price)
VALUES (1,'Gerber Foods','Baby & Childcare',89.35),
		(2,'The Pink Stuff','Household Cleaning',112.00),
		(3,'Gold Collagen','Health & Beauty',125.99),
		(4,'Biotin Supplements','Health & Beauty',143.99),
		(5,'Advil','Health & Beauty',120.00),
		(6,'Huggies Diapers','Baby & Childcare',365.50),
		(7,'Savlon Anticeptic','Household Cleaning',300.00),
		(8,'JBL Echo Dot','Electrnics',299.99),
		(9,'Asconi Agor','Beverages',650.63),
		(10,'Martinellis','Beverages',365.00),
		(11,'Maltesers','Confectionery',111.24),
		(12,'Desktop Barcode Reader','Electronics',1850.00),
		(13,'Tommee Tippee Single Pump','Baby & Childcare',1100.99),
		(15,'Trader Joe Cookies','Confectionery',125.69),
		(16,'Melatonin','Health & Beauty',200.00),
		(17,'Bottle Frappucino','Beverages',51.72),
		(18,'Chicco Nail Trimmer','Baby & Childcare',990.99),
		(19,'Power Scrubber','Household Cleaning',780.00),
		(20,'Ingco Wet & Dry Vacuum','Electronics',9797.77);

INSERT INTO ORDERS( OrderID, CustomerID, ProductID, OrderDate, Quantity)
VALUES ('001','1011','1','07-07-2023',90),
		('002','1015','20','07-29-2023',25),
		('003','1013','1','03-19-2024',10),
		('004','1019','12','01-01-2024',44),
		('005','1011','9','11-15-2023',30),
		('006','1012','18','12-29-2023',16),
		('007','1015','2','11-07-2023',23),
		('008','1017','10','10-10-2024',10),
		('009','1011','11','04-11-2024',20),
		('010','1014','13','04-16-2024',10),
		('011','1019','10','06-30-2024',65),
		('012','1017','18','10-10-2024',28),
		('013','1014','10','04-21-2024',15),
		('014','1013','10','09-09-2024',50),
		('015','1020','20','12-25-2023',3),
		('016','1011','20','01-01-2024',1),
		('017','1020','9','09-30-2023',10),
		('018','1019','10','10-01-2024',16),
		('019','1011','3','10-15-2023',10),
		('020','1025','5','09-10-2024',14);



INSERT INTO PAYMENT(PaymentID, OrderID, PaymentMethod, PaymentDate, Amount)
VALUES  ('9001','001','Cash','07-07-2023',2000.00),
		('401','002','Cash','07-29-2023',2500.00),
		('402','003','Cash','03-19-2024',1000.00),
		('403','004','Zeepay','01-01-2024',4400.00),
		('404','005','Venmo','11-15-2023',3000.00),
		('111','006','Credit card','12-29-2023',1600.00),
		('112','007','Credit card','11-07-2023',2300.00),
		('113','008','Cash','10-10-2024',1000.00),
		('114','009','Cash','04-16-2024',2000.00),
		('100','010','Cash','04-16-2024',1000.00),
		('200','011','Cashapp','06-30-2024',6500.00),
		('300','012','Cash','10-10-2024',2800.00),
		('400','013','Venmo','04-21-2024',1500.00),
		('014','014','Paypal','09-09-2024',5000.00),
		('015','015','Cashapp','12-25-2023',300.00),
		('016','016','Cash','01-01-2024',100.00),
		('017','017','Credit card','09-30-2023',1000.00),
		('018','018','Paypal','01-10-2024',1600.00),
		('019','019','Credit card','10-15-2023',1000.00),
		('020','020','Cash','09-10-2024',1400.00);
select * from Customers
select * from ORDERS
select * from PAYMENT
select * from Products


GO
CREATE VIEW SALESOVERVIEW AS
select c.CustomerID,c.FirstName,c.LastName,c.Location,c.RegistrationDate,p.ProductName,pay.PaymentDate,pay.PaymentID,pay.PaymentMethod,pay.Amount
from ORDERS o
inner join Customers c on o.CustomerID=c.CustomerID
inner join Products p on p.ProductID=o.ProductID
inner join PAYMENT pay on pay.OrderID=o.OrderID

GO
CREATE VIEW TOPCUSTOMERS AS
SELECT c.FirstName,c.LastName, SUM(p.Price * o.Quantity) AS TotalSales
FROM customers c
INNER JOIN ORDERS o ON c.CustomerID = o.CustomerID
INNER JOIN	Products p ON o.ProductID = p.	ProductID
GROUP BY c.FirstName,c.LastName
ORDER BY TotalSales DESC;

GO
CREATE VIEW TOPPRODUCTS AS
SELECT p.ProductName, SUM(o.Quantity) AS TotaLSalesVolume, SUM(p.Price * o.Quantity) AS TotalRevenue
FROM Products p
INNER JOIN orders o ON p.ProductID= o.ProductID
GROUP BY p.ProductName
ORDER BY TotaLSalesVolume DESC, TotalRevenue DESC;

GO

GO
CREATE VIEW MONTHLYSALESSUMMARY AS
   SELECT 
    CONCAT(YEAR(o.OrderDate), '-', MONTH(o.OrderDate)) AS OrderMonth, 
    SUM(p.Price * o.Quantity) AS TotalRevenue, 
    COUNT(o.OrderID) AS TotalOrders, 
    (SUM(p.Price * o.Quantity) / COUNT(o.OrderID)) AS AverageSalesPerOrder
FROM ORDERS o
INNER JOIN Products p ON o.ProductID = p.ProductID
GROUP BY CONCAT(YEAR(o.OrderDate), '-', MONTH(o.OrderDate))
ORDER BY OrderMonth DESC;


SELECT * FROM MONTHLYSALESSUMMARY
