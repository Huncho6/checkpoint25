-- Create the CUSTOMER table
CREATE TABLE CUSTOMER (
    CustID NUMBER PRIMARY KEY,
    CustName VARCHAR2(50),
    CustPhone VARCHAR2(15),
    CustEmail VARCHAR2(50)
);

-- Create the PRODUCT table
CREATE TABLE PRODUCT (
    ProdID NUMBER PRIMARY KEY,
    ProdName VARCHAR2(100),
    ProdPrice NUMBER(8,2)
);

-- Create the SUPPLIER table
CREATE TABLE SUPPLIER (
    SuppID NUMBER PRIMARY KEY,
    SuppName VARCHAR2(50),
    SuppPhone VARCHAR2(15),
    SuppEmail VARCHAR2(50)
);

-- Create the ORDERS table
CREATE TABLE ORDERS (
    OrderID NUMBER PRIMARY KEY,
    CustID NUMBER,
    ProdID NUMBER,
    OrderAmount NUMBER(5),
    CONSTRAINT fk_customer FOREIGN KEY (CustID) REFERENCES CUSTOMER(CustID),
    CONSTRAINT fk_product FOREIGN KEY (ProdID) REFERENCES PRODUCT(ProdID)
);

-- Create the SUPPLY table
CREATE TABLE SUPPLY (
    SuppID NUMBER,
    ProdID NUMBER,
    SupplyAmount NUMBER(5),
    PRIMARY KEY (SuppID, ProdID),
    CONSTRAINT fk_supplier FOREIGN KEY (SuppID) REFERENCES SUPPLIER(SuppID),
    CONSTRAINT fk_supply_product FOREIGN KEY (ProdID) REFERENCES PRODUCT(ProdID)
);
-- To add the Category column to the PRODUCT table:
ALTER TABLE PRODUCT
ADD Category VARCHAR2(20);

-- Adding a Column to the ORDERS Table with a Default Value
ALTER TABLE ORDERS
ADD OrderDate DATE DEFAULT SYSDATE;
