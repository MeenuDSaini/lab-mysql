use lab_mysql;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO Cars (carID, VIN, Manufacturer, Model, Year, Color) VALUES
(0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

select * from cars;

INSERT INTO Customers (CustomerID, Name, Phone_Number, Email, Address, City, StateProvince, Country, ZipPostalCode) VALUES
(10001, 'Pablo Picasso', '+34636176382', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', '+13059077086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', '+33179754000', '-', '40 Rue du Colisée', 'Paris', 'Île de France', 'France', 75008);

select * from customers;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
INSERT INTO Salespersons (`ID`, `StaffID`, `Name`, `Store`) VALUES
(0,	00001,	'Petey Cruiser','Madrid'),
(1,	00002,	'Anna Sthesia',	'Barcelona'),
(2, 00003,	'Paul Molive',	'Berlin'),
(3,	00004,	'Gail Forcewind','Paris'),
(4,	00005,	'Paige Turner',	'Mimia'),
(5,	00006,	'Bob Frapples',	'Mexico City'),
(6,	00007,	'Walter Melon',	'Amsterdam'),
(7,	00008,	'Shonda Leer',	'São Paulo');
ALTER TABLE Salespersons
ADD COLUMN ID INT FIRST;

select * from Salespersons;
describe Salespersons;

ALTER TABLE Invoices MODIFY COLUMN InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY;

INSERT INTO Invoices (Date, CarID, CustomerID, StaffID) VALUES 
('2018-08-22', 0, 10001, 00001),
('2018-12-31', 3, 20001, 00002),
('2019-01-22', 2, 30001, 00003);
