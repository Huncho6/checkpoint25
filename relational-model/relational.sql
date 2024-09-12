-- HOTEL
CREATE TABLE Hotel (
    Hotel_Id (PRIMARY KEY),
    Hotel_name 
);

-- EMPLOYEE
CREATE TABLE Employee (
    Employee_Id (PRIMARY KEY),
    Employee_Name ,
    Employee_Speciality,
    Hotel_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id)
);

-- TYPE
CREATE TABLE Type (
    Type_Id  (PRIMARY KEY),
    Type_Name  
);

-- ROOM
CREATE TABLE Room (
    Room_Id  (PRIMARY KEY),
    Floor ,
    Type_Id ,
    FOREIGN KEY (Type_Id) REFERENCES Type(Type_Id)
);

-- CATEGORY
CREATE TABLE Category (
    Category_Id,
    Category_Name,
    Price,
    Beds_numbers 
);

-- ROOMCATEGORY
CREATE TABLE RoomCategory (
    Room_Id ,
    Category_Id,
    PRIMARY KEY (Room_Id, Category_Id),
    FOREIGN KEY (Room_Id) REFERENCES Room(Room_Id),
    FOREIGN KEY (Category_Id) REFERENCES Category(Category_Id)
);

-- LEADS
CREATE TABLE Leads (
    Leader_Id ,
    Employee_Id,
    PRIMARY KEY (Leader_Id, Employee_Id),
    FOREIGN KEY (Leader_Id) REFERENCES Employee(Employee_Id),
    FOREIGN KEY (Employee_Id) REFERENCES Employee(Employee_Id)
);




RELATIONSHIPS
## Hotel has a one-to-many relationship with Employee.
## Hotel has a one-to-many relationship with Type.
## Type has a one-to-many relationship with Room.
## Room has a many-to-one relationship with Category.
## Employee has a one-to-many self-relation, represented by the Leads table.