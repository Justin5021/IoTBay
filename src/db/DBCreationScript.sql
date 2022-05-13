/**
 * Author:  Justin
 * Created: Apr 29, 2022
 */

CREATE TABLE Users (
    UserID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    FirstName VARCHAR(50) NOT NULL, 
    LastName VARCHAR(50) NOT NULL, 
    Email VARCHAR(50) NOT NULL, 
    Pass VARCHAR(20) NOT NULL,
    PhoneNumber VARCHAR(10) NOT NULL, 
    StreetNumber VARCHAR(5) NOT NULL, 
    StreetName VARCHAR(50) NOT NULL, 
    StreetType VARCHAR(12) NOT NULL,
    Suburb VARCHAR(50) NOT NULL, 
    "State" VARCHAR(15) NOT NULL, 
    Postcode VARCHAR(4) NOT NULL, 
    Country VARCHAR(50) NOT NULL, 
    PRIMARY KEY (UserID)
);

CREATE TABLE Staff (
    StaffID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    StaffFirstName VARCHAR(50) NOT NULL,
    StaffLastName VARCHAR(50) NOT NULL,
    StaffEmail VARCHAR(50) NOT NULL, 
    StaffPass VARCHAR(20) NOT NULL,
    StaffPhone VARCHAR(10) NOT NULL,
    StaffCountry VARCHAR(50) NOT NULL,  
    PRIMARY KEY (StaffID)
);

CREATE TABLE PaymentInfo (
    PaymentInfoID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    CardHolderName VARCHAR(50), 
    CardNumber VARCHAR(16),
    CardExpiryDate DATE, 
    CardCountry VARCHAR(25), 
    CardCVC VARCHAR(3),
    UserID INT,
    PRIMARY KEY (PaymentInfoID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Payment (
    PaymentID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), 
    PaymentTotal DECIMAL(15,2), 
    PaymentInfoID INT,
    PRIMARY KEY (PaymentID),
    FOREIGN KEY (PaymentInfoID) REFERENCES PaymentInfo(PaymentInfoID)
);

CREATE TABLE Orders (
    OrderID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    OrderDate DATE, 
    OrderStatus VARCHAR(25),
    PaymentID INT,
    PRIMARY KEY (ORDERID),
    FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID)
);

CREATE TABLE Supplier (
    SupplierID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    SupplierName VARCHAR(50) NOT NULL,
    SupplierAddress VARCHAR(50) NOT NULL, 
    SupplierPhone VARCHAR(10) NOT NULL,
    SupplierEmail VARCHAR(50) NOT NULL, 
    PRIMARY KEY (SupplierID)
);

CREATE TABLE Product (
    ProductID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    ProductSerialNum INT, 
    ProductName VARCHAR(50),
    ProductCategory VARCHAR(50), 
    ProductBrand VARCHAR(50), 
    ProductPrice DECIMAL(15,2),
    ProductQuantity INT, 
    ProductImageURL VARCHAR(250),
    SupplierID INT,
    PRIMARY KEY (ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

CREATE TABLE CART(
    UserID INT,
    ProductID INT,
    CartQuantity INT,
    PRIMARY KEY (UserID, ProductID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

CREATE TABLE OrderLine (
    ProductID INT,
    OrderID INT,
    OrderLineQuantity INT,
    PRIMARY KEY (ProductID, OrderID),
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(PRODUCTID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

CREATE TABLE Invoice (
    InvoiceID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    InvoiceDate DATE,
    PaymentID INT,
    PRIMARY KEY (InvoiceID),
    FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID)
);

CREATE TABLE UserLogs (
    UserID INT,
    STATUS VARCHAR(15),
    CurrentTime TimeStamp,
    PRIMARY KEY (UserID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);