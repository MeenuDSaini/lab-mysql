CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE Cars (
    CarID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL,
    Manufacturer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Color VARCHAR(250)
);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Phone_Number VARCHAR(20),
    Email VARCHAR(250),
    Address VARCHAR(250),
    City VARCHAR(50),
    StateProvince VARCHAR(50),
    Country VARCHAR(50),
    ZipPostalCode VARCHAR(20)
);

CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    ID INT NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Store VARCHAR(50) NOT NULL
);

CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    CarID INT,
    CustomerID INT,
    StaffID INT,
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID)
);
select * from cars;
select * from customers;
select * from salespersons;
select * from invoices;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
