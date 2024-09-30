CREATE DATABASE Walmart;
USE Walmart;

-- Customers
CREATE TABLE Customer_T (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    SignUpDate DATE,
    MembershipLevel VARCHAR(50),
    PointsAccumulated INT,
    LastOrderDate DATE,
    TotalSpent DECIMAL(10, 2),
    PreferredPaymentMethod VARCHAR(50)
);

-- Employees
CREATE TABLE Employee_T (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    Role VARCHAR(50),
    Email VARCHAR(255),
    DepartmentName VARCHAR(50),
    HireDate DATE,
    Status VARCHAR(50),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(20),
    ManagerID INT, -- This will reference EmployeeID within the same table
    EmployeeType VARCHAR(50),
    Salary DECIMAL(10, 2),
    HourlyWage DECIMAL(10, 2),
    ShiftPreference VARCHAR(50),
    FOREIGN KEY (ManagerID) REFERENCES Employee_T(EmployeeID) -- This establishes the hierarchical relationship
);

-- Orders
-- Order is a keywords in mysql, so must use specific symbol to distinguish
CREATE TABLE Order_T ( 
  OrderID INT PRIMARY KEY, 
  Date DATE, 
  Status VARCHAR(50), 
  TotalAmount DECIMAL(10, 2), 
  PaymentMethod VARCHAR(50), 
  DeliveryAddress VARCHAR(255), 
  DeliveryDate DATE, 
  PromoCodeApplied VARCHAR(50), 
  TrackingNumber VARCHAR(50), 
  OrderType VARCHAR(50), 
  CustomerID INT, 
  EmployeeID INT, 
  FOREIGN KEY (CustomerID) REFERENCES Customer_T(CustomerID), 
  FOREIGN KEY (EmployeeID) REFERENCES Employee_T(EmployeeID) 
);

-- Promotions
CREATE TABLE Promotion_T (
    PromotionID INT PRIMARY KEY,
    Description TEXT,
    StartDate DATE,
    EndDate DATE,
    PromoCode VARCHAR(50),
    MinimumPurchaseAmount DECIMAL(10, 2),
    ApplicableCategories TEXT,
    DiscountRate DECIMAL(5, 2)
);

-- Products
CREATE TABLE Product_T (
	ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    CategoryName VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    PromotionID INT,
    Returnable BOOLEAN,
    ReturnCondition VARCHAR(255) NULL,
    ReturnInstructions TEXT NULL,
    NonReturnableCause VARCHAR(255) NULL,
    ReturnPeriod INT NULL,
    FOREIGN KEY (PromotionID) REFERENCES Promotion_T(PromotionID),
    CHECK (
        (Returnable = TRUE AND NonReturnableCause IS NULL) OR 
        (Returnable = FALSE AND ReturnCondition IS NULL AND ReturnInstructions IS NULL AND ReturnPeriod IS NULL)
    )
);

-- OrderItems
CREATE TABLE OrderItem_T (
    ItemID INT PRIMARY KEY,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    DiscountRate DECIMAL(5, 2),
    FinalPrice DECIMAL(10, 2),
    ReturnStatus VARCHAR(50),
    Review TEXT,
    ProductID INT,
    OrderID INT,
    FOREIGN KEY (ProductID) REFERENCES Product_T(ProductID),
    FOREIGN KEY (OrderID) REFERENCES Order_T(OrderID)
);

-- Shelves
CREATE TABLE Shelf_T (
    ShelfID INT PRIMARY KEY,
    Location VARCHAR(255),
    Capacity INT,
    CategoryName VARCHAR(50),     
    Accessibility VARCHAR(50),
    TemperatureControlled BOOLEAN,
    RestockFrequency INT,
    LastRestockDate DATE
);

-- Warehouses
CREATE TABLE Warehouse_T (
    WarehouseID INT PRIMARY KEY,
    Location VARCHAR(255),
    Capacity INT,
    ManagerID INT,
    TemperatureControlled BOOLEAN,
    SecurityLevel VARCHAR(50),
    OperatingHours VARCHAR(50),
    LastMaintenanceDate DATE,
    FOREIGN KEY (ManagerID) REFERENCES Employee_T(EmployeeID)
);

-- Transports
CREATE TABLE Transport_T (
    TransportID INT PRIMARY KEY,
    Type VARCHAR(50),
    Schedule VARCHAR(50),
    Capacity INT,
    Destination VARCHAR(255),
    Origin VARCHAR(255),
    DriverID INT,
    EstimatedArrivalDate DATE,
    FOREIGN KEY (DriverID) REFERENCES Employee_T(EmployeeID)
);

-- Memberships
CREATE TABLE Membership_T (
    MembershipID INT PRIMARY KEY,
    CustomerID INT,
    MembershipLevel VARCHAR(50),
    Benefits TEXT,
    SignUpDate DATE,
    ExpiryDate DATE,
    RenewalRate DECIMAL(10, 2),
    PointsAccumulated INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer_T(CustomerID)
);

-- Returns
-- Return is a keywords in mysql, so must use specific symbol to distinguish
CREATE TABLE Return_T (
    ReturnID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Reason TEXT,
    Status VARCHAR(50),
    ReturnDate DATE,
    ProcessedBy INT,
    RefundAmount DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Order_T (OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product_T(ProductID),
    FOREIGN KEY (ProcessedBy) REFERENCES Employee_T(EmployeeID)
);

-- Inventory
CREATE TABLE Inventory_T(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    WarehouseID INT,
    Quantity INT,
    RestockLevel INT,
    RestockQuantity INT,
    LastRestockDate DATE,
    ExpectedDeliveryDate DATE,
    Status VARCHAR(50),
    ShelfID INT,
    FOREIGN KEY (ProductID) REFERENCES Product_T(ProductID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouse_T(WarehouseID),
    FOREIGN KEY (ShelfID) REFERENCES Shelf_T(ShelfID)
);

-- Shipments
CREATE TABLE Shipment_T (
     ShipmentID INT PRIMARY KEY,
     OrderID INT,
     TransportID INT,
     WarehouseID INT,
     ShipmentDate DATE,
     EstimatedArrivalDate DATE,
     Status VARCHAR(50),
     Destination VARCHAR(255),
     Origin VARCHAR(255),
     DriverID INT,
     TrackingNumber VARCHAR(50),
     ActualArrivalDate DATE,
     ShipmentType VARCHAR(20),
     ShipmentCarrier VARCHAR(255) NULL,
     ShippingInsurance DECIMAL(10, 2) NULL,
     ExpeditedFee DECIMAL(10, 2) NULL,
     SignatureRequirement BOOLEAN NULL,
     FOREIGN KEY (OrderID) REFERENCES Order_T(OrderID),
     FOREIGN KEY (TransportID) REFERENCES Transport_T(TransportID),
     FOREIGN KEY (WarehouseID) REFERENCES Warehouse_T(WarehouseID),
     FOREIGN KEY (DriverID) REFERENCES Employee_T(EmployeeID),
     CHECK (
         (ShipmentType = 'Standard' AND ExpeditedFee IS NULL AND SignatureRequirement IS NULL) OR
         (ShipmentType = 'Express' AND ShipmentCarrier IS NULL AND ShippingInsurance IS NULL)
     )
);

-- Equipment
CREATE TABLE Equipment_T (
    EquipmentID INT PRIMARY KEY,
    Name VARCHAR(255),
    Type VARCHAR(50),
    PurchaseDate DATE,
    Location VARCHAR(255),
    Status VARCHAR(50),
    MaintenanceSchedule VARCHAR(50),
    LastMaintenanceDate DATE,
    ModelNumber VARCHAR(50),
    SerialNumber VARCHAR(50),
    Manufacturer VARCHAR(255),
    Cost DECIMAL(10, 2)
);

-- Maintenance
CREATE TABLE Maintenance_T (
    MaintenanceID INT PRIMARY KEY,
    EquipmentID INT,
    Date DATE,
    Type VARCHAR(50),
    ScheduledNext DATE,
    CompletedDate DATE,
    PerformedBy INT,
    Cost DECIMAL(10, 2),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment_T(EquipmentID),
    FOREIGN KEY (PerformedBy) REFERENCES Employee_T(EmployeeID)
);

-- Feedback
CREATE TABLE Feedback_T (
    FeedbackID INT PRIMARY KEY,
    CustomerID INT,
    OrderID INT,
    ProductID INT,
    Rating INT,
    Comments TEXT,
    FeedbackDate DATE,
    ResponseStatus VARCHAR(50),
    ResponseText TEXT,
    Visibility BOOLEAN,
    CategoryName VARCHAR(50),  
    ResolutionStatus VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customer_T(CustomerID),
    FOREIGN KEY (OrderID) REFERENCES Order_T(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product_T(ProductID)
);

-- EmployeeSchedule
CREATE TABLE EmployeeSchedule_T (
    EmployeeID INT,
    Date DATE,
    ShiftStart TIME,
    ShiftEnd TIME,
    Location VARCHAR(255), 
    Role VARCHAR(50),
    OvertimeHours DECIMAL(5, 2),
    PRIMARY KEY (EmployeeID, Date),
    FOREIGN KEY (EmployeeID) REFERENCES Employee_T(EmployeeID)
);