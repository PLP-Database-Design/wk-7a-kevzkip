--wk7 assignment solutions
--question 1 answer

-- Create a new table to store the normalized data
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

-- Insert the data into the new table, breaking the Products column into separate rows
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
SELECT 101, 'John Doe', 'Laptop' UNION ALL
SELECT 101, 'John Doe', 'Mouse' UNION ALL
SELECT 102, 'Jane Smith', 'Tablet' UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard' UNION ALL
SELECT 102, 'Jane Smith', 'Mouse' UNION ALL
SELECT 103, 'Emily Clark', 'Phone';


--question 2
-- Table to store Order details with the CustomerName information
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

-- Table to store the details of the products ordered
CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
