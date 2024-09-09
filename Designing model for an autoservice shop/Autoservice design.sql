CREATE DATABASE autoshop;
USE autoshop;

CREATE TABLE Customer(
	CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    CustomerAddress VARCHAR(255),
    CustomerPhone VARCHAR(50)
    );
    SELECT*
    FROM Customer;

CREATE TABLE Vehicle (
    VehicleID INT PRIMARY KEY,
    Make VARCHAR(255),
    Model VARCHAR(255),
    Year INT,
    Color VARCHAR(50),
    VIN VARCHAR(50),
    RegistrationNo VARCHAR(50),
    Mileage INT
);

SELECT *
FROM Vehicle;

CREATE TABLE Service (
    ServiceID INT PRIMARY KEY,
    ServiceType VARCHAR(255),
    ServiceDesc VARCHAR(255),
    ServiceRate DECIMAL(10, 2)
);
SELECT *
FROM Service;

CREATE TABLE Part (
    PartID INT PRIMARY KEY,
    PartNumber VARCHAR(50),
    PartName VARCHAR(255),
    UnitPrice DECIMAL(10, 2),
    Quantity INT,
    Amount DECIMAL(10, 2)
   );
   
SELECT *
FROM Part;

CREATE TABLE Location (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(255),
    LocationAddress VARCHAR(255)
);

SELECT *
FROM Location;

CREATE TABLE `Date` (
    DateID INT PRIMARY KEY,
    FullDate DATE,
    Day INT,
    Month INT,
    Quarter INT,
    Year INT,
    DayOfWeek VARCHAR(50),
    MonthName VARCHAR(50)
);
SELECT *
FROM `Date`;

CREATE TABLE FactSales (
    SalesID INT PRIMARY KEY,
    CustomerID INT,
    VehicleID INT,
    ServiceID INT,
    PartID INT,
    LocationID INT,
    DateID INT,
    ServiceHours DECIMAL(10, 2),
    ServiceCharge DECIMAL(10, 2),
    PartsCharge DECIMAL(10, 2),
    Subtotal DECIMAL(10, 2),
    SalesTaxRate DECIMAL(5, 2),
    SalesTaxAmount DECIMAL(10, 2),
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID),
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID),
    FOREIGN KEY (PartID) REFERENCES Part(PartID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID),
    FOREIGN KEY (DateID) REFERENCES Date(DateID)
);

SELECT *
FROM FactSales;
    
    

    

