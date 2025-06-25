
-- Create Database
-- Note: "CREATE DATABASE" is not supported in SQLite or DB Fiddle directly.
-- It's assumed the DB context is already set.
-- CREATE DATABASE OnlineRetailDB;

-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50), 
    Lastname VARCHAR(50), 
    Email VARCHAR(50), 
    Phone VARCHAR(50), 
    Address VARCHAR(50), 
    City VARCHAR(50), 
    State VARCHAR(50),
    ZipCode VARCHAR(50), 
    Country VARCHAR(50), 
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY AUTOINCREMENT, 
    ProductName VARCHAR(50), 
    CategoryID VARCHAR(50), 
    Price DECIMAL(10,2),
    Stock INT, 
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Categories Table
CREATE TABLE Categories (
    CategoryID INTEGER PRIMARY KEY AUTOINCREMENT,
    CategoryName VARCHAR(50),
    Description VARCHAR(255)
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID INT,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create OrderItems Table
CREATE TABLE OrderItems (
    OrderItemID INTEGER PRIMARY KEY AUTOINCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- INSERT sample data

-- Insert Customers
INSERT INTO Customers (CustomerID, FirstName, Lastname, Email, Phone, Address, City, State, ZipCode, Country)
VALUES
(1, 'John', 'Doe', 'john@example.com', '1234567890', '123 Main St', 'New York', 'NY', '10001', 'USA'),
(2, 'Jane', 'Smith', NULL, '9876543210', '456 Maple St', 'Los Angeles', 'CA', '90001', 'USA'),
(3, 'Emily', 'Jones', 'emily@example.com', NULL, '789 Pine St', 'Chicago', 'IL', '60601', 'USA');

-- Insert Categories
INSERT INTO Categories (CategoryName, Description) VALUES
('Electronics', 'Devices and gadgets'),
('Home Appliances', 'Household electronic items');

-- Insert Products
INSERT INTO Products (ProductName, CategoryID, Price, Stock) VALUES
('Smartphone', '1', 19999.99, 50),
('Microwave', '2', 5999.49, NULL);

-- Insert Orders
INSERT INTO Orders (CustomerID, TotalAmount) VALUES
(1, 25999.48),
(3, 19999.99);

-- Insert OrderItems
INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price) VALUES
(1, 1, 1, 19999.99),
(1, 2, 1, 5999.49),
(2, 1, 1, 19999.99);

-- UPDATE example: Add stock to product with NULL stock
UPDATE Products SET Stock = 30 WHERE Stock IS NULL;

-- DELETE example: Delete customer with NULL email
DELETE FROM Customers WHERE Email IS NULL;
