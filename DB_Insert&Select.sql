-- Sample data for Customers 
INSERT INTO Customer_T (CustomerID, FirstName, LastName, Email, PhoneNumber, Address, SignUpDate, MembershipLevel, PointsAccumulated, LastOrderDate, TotalSpent, PreferredPaymentMethod) 
VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '1234567890', '123 Main St, City', '2023-05-15', 'Gold', 500, '2024-02-28', 1000.00, 'Credit Card'),
(2, 'Jane', 'Smith', 'janesmith@example.com', '9876543210', '456 Elm St, Town', '2023-07-20', 'Silver', 300, '2024-02-25', 750.00, 'PayPal'),
(3, 'Michael', 'Johnson', 'michaeljohnson@example.com', '4561237890', '789 Oak St, Village', '2023-09-10', 'Bronze', 100, '2024-03-01', 500.00, 'Debit Card'),
(4, 'Sarah', 'Brown', 'sarahbrown@example.com', '7894561230', '369 Pine St, County', '2023-11-05', 'Gold', 800, '2024-02-20', 1500.00, 'Credit Card'),
(5, 'Emma', 'Wilson', 'emmawilson@example.com', '3216549870', '159 Willow St, Suburb', '2023-01-15', 'Platinum', 1000, '2024-03-02', 2000.00, 'E-Wallet'),
(6, 'Oliver', 'Jones', 'oliverjones@example.com', '1237894560', '753 Maple St, City', '2023-04-20', 'Silver', 200, '2024-02-22', 800.00, 'Credit Card'),
(7, 'Ava', 'Davis', 'avadavis@example.com', '9873216540', '951 Cedar St, Town', '2023-03-30', 'Bronze', 150, '2024-02-27', 650.00, 'Direct Debit'),
(8, 'William', 'Miller', 'williammiller@example.com', '6549873210', '357 Birch St, Village', '2023-06-25', 'Gold', 700, '2024-02-24', 1250.00, 'Bank Transfer'),
(9, 'Sophia', 'Taylor', 'sophiataylor@example.com', '4567891230', '168 Spruce St, County', '2023-08-30', 'Platinum', 1200, '2024-02-26', 2200.00, 'E-Wallet'),
(10, 'James', 'Anderson', 'jamesanderson@example.com', '3219876540', '264 Redwood St, Suburb', '2023-10-10', 'Silver', 250, '2024-02-23', 900.00, 'Credit Card');

-- Sample data for Employees
INSERT INTO Employee_T (EmployeeID, Name, Role, Email, DepartmentName, HireDate, Status, Address, PhoneNumber, ManagerID, EmployeeType, Salary, HourlyWage, ShiftPreference)
VALUES
(10, 'Alice Johnson', 'Manager', 'alicejohnson@example.com', 'Sales', '2022-03-15', 'Active', '123 Main St, City', '1234567890', NULL, 'Full-time', 60000.00, NULL, NULL),
(11, 'Bob Smith', 'Salesperson', 'bobsmith@example.com', 'Sales', '2023-01-10', 'Active', '456 Elm St, Town', '9876543210', 10, 'Full-time', 45000.00, NULL, NULL),
(12, 'Diana Lee', 'Driver', 'dianalee@example.com', 'Administration', '2023-09-01', 'Active', '369 Pine St, County', '7894561230', 10, 'Full-time', 40000.00, NULL, NULL),
(13, 'Eva Garcia', 'Manager', 'evagarcia@example.com', 'Marketing', '2023-06-20', 'Active', '789 Oak St, Village', '4567890123', NULL, 'Full-time', 55000.00, NULL, NULL),
(14, 'Frank Williams', 'Technician', 'frankwilliams@example.com', 'Maintenance', '2023-07-15', 'Active', '987 Elm St, Town', '3456789012', 10, 'Part-time', NULL, 25.00, 'Day Shift'),
(15, 'Grace Martinez', 'Sales Associate', 'gracemartinez@example.com', 'Sales', '2023-08-10', 'Active', '654 Oak St, Village', '2345678901', 11, 'Part-time', NULL, 18.00, 'Evening Shift'),
(16, 'Henry Clark', 'Warehouse Manager', 'henryclark@example.com', 'Administration', '2023-09-15', 'Active', '321 Pine St, County', '1234567890', 12, 'Part-time', NULL, 20.00, 'Evening Shift'),
(17, 'Isabel Scott', 'Technician', 'isabelscott@example.com', 'Maintenance', '2023-10-20', 'Active', '123 Oak St, City', '7890123456', 13, 'Part-time', NULL, 22.00, 'Flexible'),
(18, 'James Dean', 'Developer', 'jamesdean@example.com', 'IT', '2023-02-01', 'Active', '159 River Rd, Town', '6789012345', 10, 'Full-time', 80000.00, NULL, NULL),
(19, 'Olivia Mark', 'HR Coordinator', 'oliviamark@example.com', 'Human Resources', '2023-05-01', 'Active', '753 Hill St, City', '8901234567', 13, 'Full-time', 45000.00, NULL, NULL),
(20, 'Peter Grant', 'Security Guard', 'petergrant@example.com', 'Security', '2023-04-15', 'Active', '357 Lake Ave, City', '5678901234', 17, 'Full-time', 35000.00, NULL, NULL);

-- Sample data for Orders
INSERT INTO Order_T (OrderID, Date, Status, TotalAmount, PaymentMethod, DeliveryAddress, DeliveryDate, PromoCodeApplied, TrackingNumber, OrderType, CustomerID, EmployeeID)
VALUES
(1, '2023-01-24', 'Processing', 97.47, 'Credit Card', '123 Main St, City', '2023-11-05', 'No', 'TN9674', 'Express', 1, 11),
(2, '2023-05-25', 'Shipped', 63.56, 'Credit Card', '789 Oak St, Village', '2023-07-06', 'No', 'TN2173', 'Express', 3, 11),
(3, '2023-07-23', 'Shipped', 321.79, 'Bank Transfer', '159 Willow St, Suburb', '2023-11-22', 'Yes', 'TN6109', 'Express', 5, 13),
(4, '2023-02-06', 'Processing', 161.32, 'Bank Transfer', '168 Spruce St, County', '2023-12-21', 'No', 'TN6919', 'Express', 9, 10),
(5, '2023-07-14', 'Processing', 439.99, 'Bank Transfer', '951 Cedar St, Town', '2023-07-31', 'Yes', 'TN7691', 'Express', 7, 13),
(6, '2023-11-21', 'Cancelled', 175.2, 'Paypal', '168 Spruce St, County', '2023-12-08', 'No', 'TN7624', 'Express', 9, 11),
(7, '2023-09-13', 'Shipped', 218.37, 'Paypal', '168 Spruce St, County', '2023-09-30', 'No', 'TN4161', 'Standard', 9, 13),
(8, '2023-01-13', 'Delivered', 140.9, 'Credit Card', '753 Maple St, City', '2023-07-28', 'Yes', 'TN7671', 'Standard', 6, 10),
(9, '2023-03-16', 'Processing', 434.35, 'Paypal', '456 Elm St, Town', '2023-05-15', 'No', 'TN8523', 'Express', 2, 13),
(10, '2023-05-08', 'Delivered', 185.39, 'Bank Transfer', '168 Spruce St, County', '2023-11-05', 'No', 'TN2166', 'Standard', 9, 11);

-- Sample data for Promotions
INSERT INTO Promotion_T (PromotionID, Description, StartDate, EndDate, PromoCode, MinimumPurchaseAmount, ApplicableCategories, DiscountRate)
VALUES
(1, 'IClrTWrwTiQOBlDiKVuZ', '2023-01-29T00:00:00', '2023-10-28T00:00:00', 'BTKASANE', 120.18, 'haPEeIgTJCdTUFu', 19.94),
(2, 'FnGfkeeAYEPtsxUcIvop', '2023-06-30T00:00:00', '2023-08-30T00:00:00', 'TYQQZSVX', 160.81, 'JtGeiUYdRAXJbyo', 23.94),
(3, 'lPckxdmhVahehYqyzSJT', '2023-03-16T00:00:00', '2023-12-05T00:00:00', 'IFBRRYKK', 63.56, 'YyFJdVLqoLsdKNB', 20.42),
(4, 'NpdquLpEoLglUqpEdlve', '2023-05-27T00:00:00', '2023-11-11T00:00:00', 'OJCBXEWK', 170.27, 'beUQFuUEidOwfAz', 11.94),
(5, 'tonuJVljwEifYGJqYFFs', '2023-02-14T00:00:00', '2023-09-17T00:00:00', 'INKQRYFG', 141.99, 'NfewJCofDYBpwyb', 15.75),
(6, 'zpkpLRIepKxfZquBgnHz', '2023-06-24T00:00:00', '2023-10-09T00:00:00', 'HVBQZQKG', 161.12, 'hdbGUguKpoWCVzt', 10.2),
(7, 'JTXExUWJOYmWnpFZvDTk', '2023-01-06T00:00:00', '2023-11-05T00:00:00', 'ZQMSUZYD', 96.82, 'tmRWsNRWElYGkvn', 9.69),
(8, 'NDSFtMSToUXkoDNSwGeP', '2023-06-27T00:00:00', '2023-12-11T00:00:00', 'RMJOXDKY', 159.99, 'EucASGIJrHtvslG', 18.85),
(9, 'PSZFDgEBGvggykpdIVfU', '2023-02-12T00:00:00', '2023-07-25T00:00:00', 'IRLUYQFN', 57.9, 'FhwNQibagCIrxNC', 13.67),
(10, 'cOKzTPJiVKZkJJugPMbP', '2023-02-05T00:00:00', '2023-11-11T00:00:00', 'ITJCHWRX', 135.65, 'xRDNSPPpNPSxvep', 15.35);

-- Sample data for Products
INSERT INTO Product_T (ProductID, Name, Description, CategoryName, Price, StockQuantity, PromotionID, Returnable, ReturnCondition, ReturnInstructions, NonReturnableCause, ReturnPeriod)
VALUES
(1, 'cHvfhzYObnAQSwh', 'kXdhSvmEixEpPpZBPBgsTqeKnalgOVTeQrAqnoRuYxYRVXtyoa', 'Groceries', 27.93, 27, 9, TRUE, 'Must be unused and in original packaging', 'Return through mail within return period', null, 30),
(2, 'ZbcjDBXOOomQXix', 'znyYRIFCSDqRQyZdecDMLKyvJyJvNIfVONKnAgPpGTIPJRRuGn', 'Electronics', 63.44, 36, 4, TRUE, 'Must be in sellable condition', 'Return to any store or by mail', null, 30),
(3, 'BdKwWcuMsjaVgSp', 'SmuVcHPzrcOXkYvQqrjYjUhUidadWrhdZoWmRwoSjczeZBJNPe', 'Pharmacy', 21.2, 93, 10, FALSE, null, null, 'Product is a final sale item due to hygiene reasons', null),
(4, 'QGtBeDmkImnTrwb', 'rSZQVzfVtxHQNvtYayQwWJdNcOSSetRthZjCLbmWlyLkcaZgta', 'Home Goods', 98.47, 54, 4, TRUE, 'Product must not be used', 'Contact customer service for return shipping label', null, 45),
(5, 'YNgAYciQCEaUaqr', 'vAxcKFrRMyFXNtSXhuphpuvLGSXxTGEztbXIySUMgPoyMsfLhJ', 'Pharmacy', 52.3, 28, 10, TRUE, 'Return in original condition', 'Use prepaid return shipping label', null, 30),
(6, 'HBUAtsqiRWrMSSF', 'KwCtBkkTJIgntLBShaYnrpfZULdUeqGtxSfubeFjCjNBgpPQvV', 'Pharmacy', 89.72, 75, 4, FALSE, null, null, 'Electronic products are non-returnable after opening', null),
(7, 'ToJrEMckOBfwQcq', 'kgTJmkAOhmOylaiOxtiaiwgaZejjwQWYmOvqsgsTzBMsNiSLTv', 'Clothing', 37.27, 77, 8, TRUE, 'Item must be undamaged and in its original packaging', 'Fill out the return form and send it back to us', null, 60),
(8, 'mNSqUhAZohOsGBj', 'wVFRIFBzwCeiTOQxSMOqRhcPqYoxdhIlCFBHPXVaZEQRrWcsxF', 'Groceries', 30.83, 32, 10, TRUE, 'All tags must be attached', 'Return at our physical stores or by post', null, 30),
(9, 'gPsbfYGQdRdvnYl', 'VqkxBhyctpbfrJgZuuEtgqwziwQoiluUyitnKgWceciZwInFBx', 'Clothing', 61.48, 14, 8, FALSE, null, null, 'This item is non-returnable due to being a clearance sale product', null),
(10, 'HHVimVnCJyVxOVX', 'xJFBbhlfXRelKiqFFvMsrghfSGHJaEhcmbYYdjbqqkCiaGgUgb', 'Pharmacy', 45.89, 87, 3, TRUE, 'Product must be in the original state', 'Send back in original packaging with receipt', null, 30);

-- Sample data for OrderItems
INSERT INTO OrderItem_T (ItemID, Quantity, UnitPrice, DiscountRate, FinalPrice, ReturnStatus, Review, ProductID, OrderID)
VALUES
(1, 6, 46.91, 0.24, 213.91, 'Not Returned', 'Generated review text', 2, 5),
(2, 3, 84.27, 0.03, 245.23, 'Returned', 'Generated review text', 4, 1),
(3, 8, 91.79, 0.01, 726.98, 'Not Returned', 'Generated review text', 8, 7),
(4, 8, 87.45, 0.14, 601.66, 'Returned', 'Generated review text', 2, 1),
(5, 6, 71.65, 0.01, 425.60, 'Not Returned', 'Generated review text', 8, 2),
(6, 3, 27.50, 0.08, 75.90, 'Returned', 'Generated review text', 9, 7),
(7, 2, 41.16, 0.09, 74.91, 'Not Returned', 'Generated review text', 6, 2),
(8, 1, 86.55, 0.27, 63.18, 'Returned', 'Generated review text', 8, 3),
(9, 8, 37.36, 0.28, 215.19, 'Returned', 'Generated review text', 3, 10),
(10, 7, 12.16, 0.06, 80.01, 'Returned', 'Generated review text', 4, 3);

-- Sample data for Shelves
INSERT INTO Shelf_T (ShelfID, Location, Capacity, CategoryName, Accessibility, TemperatureControlled, RestockFrequency, LastRestockDate)
VALUES
(1, 'Location 93', 194, 'Groceries', True, True, 1, '2024-02-21'),
(2, 'Location 35', 84, 'Home Goods', False, False, 1, '2024-02-18'),
(3, 'Location 53', 491, 'Electronics', False, False, 7, '2024-03-02'),
(4, 'Location 70', 149, 'Pharmacy', True, False, 7, '2024-03-06'),
(5, 'Location 85', 241, 'Clothing', False, False, 30, '2024-02-24'),
(6, 'Location 54', 359, 'Electronics', False, True, 1, '2024-02-13'),
(7, 'Location 58', 431, 'Groceries', False, True, 1, '2024-02-07'),
(8, 'Location 37', 225, 'Pharmacy', True, False, 15, '2024-02-15'),
(9, 'Location 71', 434, 'Electronics', False, True, 15, '2024-02-11'),
(10, 'Location 83', 277, 'Electronics', False, False, 30, '2024-02-18');

-- Sample Data for Warehouses
INSERT INTO Warehouse_T (WarehouseID, Location, Capacity, ManagerID, TemperatureControlled, SecurityLevel, OperatingHours, LastMaintenanceDate)
VALUES
(1, 'Location 49', 4179, 13, False, 5, '7-22', '2023-03-21'),
(2, 'Location 70', 4728, 13, True, 2, '7-21', '2024-02-25'),
(3, 'Location 69', 1594, 13, True, 3, '6-21', '2024-02-18'),
(4, 'Location 29', 1591, 16, False, 5, '6-19', '2023-11-21'),
(5, 'Location 36', 3504, 10, True, 3, '8-21', '2023-06-08'),
(6, 'Location 52', 3618, 16, False, 2, '7-19', '2024-01-14'),
(7, 'Location 54', 2302, 10, False, 4, '6-19', '2023-10-02'),
(8, 'Location 92', 2214, 10, True, 3, '6-22', '2023-04-10'),
(9, 'Location 43', 807, 10, True, 4, '7-22', '2023-06-03'),
(10, 'Location 85', 4748, 13, True, 5, '7-22', '2023-10-30');

-- Sample data for Transport
INSERT INTO Transport_T (TransportID, Type, Schedule, Capacity, Destination, Origin, DriverID, EstimatedArrivalDate)
VALUES
(1, 'Van', 'Evening', 3, 'City 72', 'City 140', 12, '2023-07-16'),
(2, 'Van', 'Morning', 19, 'City 100', 'City 199', 12, '2023-03-31'),
(3, 'Semi', 'Evening', 3, 'City 13', 'City 132', 12, '2023-07-12'),
(4, 'Truck', 'Evening', 38, 'City 83', 'City 116', 12, '2023-11-10'),
(5, 'Semi', 'Morning', 4, 'City 72', 'City 196', 12, '2024-01-06'),
(6, 'Van', 'Afternoon', 19, 'City 36', 'City 159', 12, '2023-05-11'),
(7, 'Semi', 'Evening', 35, 'City 56', 'City 161', 12, '2023-06-03'),
(8, 'Van', 'Morning', 29, 'City 95', 'City 114', 12, '2023-07-04'),
(9, 'Van', 'Morning', 1, 'City 94', 'City 153', 12, '2024-01-01'),
(10, 'Van', 'Morning', 27, 'City 90', 'City 137', 12, '2023-09-15');

-- Sample data for Memberships
INSERT INTO Membership_T (MembershipID, CustomerID, MembershipLevel, Benefits, SignUpDate, ExpiryDate, RenewalRate, PointsAccumulated)
VALUES
(1, 1, 'Gold', 'Priority Support', '2023-02-01', '2024-02-01', 10.99, 500),
(2, 2, 'Silver', 'Exclusive Deals', '2023-05-01', '2024-01-01', 20.99, 300),
(3, 3, 'Bronze', 'Priority Support', '2023-05-01', '2024-01-01', 25.99, 600),
(4, 4, 'Gold', 'Priority Support', '2023-06-01', '2024-05-01', 25.99, 400),
(5, 5, 'Platinum', 'Free Shipping', '2023-06-01', '2024-06-01', 30.99, 300),
(6, 6, 'Platinum', 'Bonus Points', '2023-05-01', '2024-04-01', 15.99, 100),
(7, 1, 'Gold', 'Priority Support', '2023-02-01', '2024-02-01', 10.99, 500),
(8, 2, 'Silver', 'Exclusive Deals', '2023-05-01', '2024-01-01', 20.99, 300),
(9, 3, 'Bronze', 'Priority Support', '2023-05-01', '2024-01-01', 25.99, 600),
(10, 4, 'Gold', 'Priority Support', '2023-06-01', '2024-05-01', 25.99, 400);

-- Sample data for Returns
INSERT INTO Return_T (ReturnID, OrderID, ProductID, Reason, Status, ReturnDate, ProcessedBy, RefundAmount)
VALUES
(1, 2, 4, 'Changed mind', 'Pending', '2023-12-26', 13, 25.99),
(2, 9, 4, 'Changed mind', 'Approved', '2024-01-11', 15, 25.99),
(3, 1, 3, 'Incorrect item sent', 'Approved', '2023-12-27', 13, 75.99),
(4, 6, 5, 'Changed mind', 'Approved', '2023-10-09', 10, 49.99),
(5, 3, 4, 'Damaged on arrival', 'Pending', '2023-11-22', 10, 25.99),
(6, 7, 5, 'Damaged on arrival', 'Processing', '2023-08-14', 13, 75.99),
(7, 8, 3, 'Product malfunction', 'Processing', '2023-08-26', 10, 99.99),
(8, 5, 4, 'Changed mind', 'Approved', '2024-01-18', 13, 49.99),
(9, 8, 2, 'Damaged on arrival', 'Rejected', '2023-08-27', 10, 25.99),
(10, 6, 1, 'Damaged on arrival', 'Processing', '2023-11-26', 13, 75.99);

-- Sample data for Inventory
INSERT INTO Inventory_T (InventoryID, ProductID, WarehouseID, Quantity, RestockLevel, RestockQuantity, LastRestockDate, ExpectedDeliveryDate, Status, ShelfID)
VALUES
(1, 1, 10, 20, 30, 6, '2023-05-12', '2023-09-19', 'Out of Stock', 7),
(2, 2, 7, 48, 36, 17, '2023-06-30', '2023-09-07', 'In Stock', 6),
(3, 3, 3, 67, 14, 13, '2023-02-03', '2023-07-19', 'Backordered', 8),
(4, 4, 2, 38, 48, 10, '2023-09-05', '2023-11-24', 'In Stock', 2),
(5, 5, 5, 23, 31, 9, '2023-05-08', '2023-12-20', 'Out of Stock', 4),
(6, 6, 6, 97, 15, 12, '2023-05-10', '2023-10-04', 'Backordered', 4),
(7, 7, 9, 28, 35, 11, '2023-10-15', '2023-10-23', 'In Stock', 5),
(8, 8, 4, 54, 38, 16, '2023-08-23', '2023-12-22', 'In Stock', 1),
(9, 9, 1, 83, 18, 9, '2023-07-25', '2023-08-16', 'Backordered', 5),
(10, 10, 8, 22, 15, 19, '2023-05-14', '2023-06-04', 'Out of Stock', 8);

-- Sample data for Shipment
INSERT INTO Shipment_T (ShipmentID, OrderID, TransportID, WarehouseID, ShipmentDate, EstimatedArrivalDate, Status, Destination, Origin, DriverID, TrackingNumber, ActualArrivalDate, ShipmentType, ShipmentCarrier, ShippingInsurance, ExpeditedFee, SignatureRequirement)
VALUES
(1, 1, 1, 1, '2023-12-22', '2023-12-25', 'Delivered', 'Destination-55', 'Origin-53', 12, 'SHP-41997213', '2023-12-25', 'Standard', 'FedEx', 0, null, null),
(2, 2, 2, 5, '2023-12-08', '2023-12-09', 'In Transit', 'Destination-36', 'Origin-63', 12, 'TRK-78044751', '2023-12-09', 'Express', null, null, 7.99, 1),
(3, 3, 3, 9, '2023-11-22', '2023-11-24', 'In Transit', 'Destination-35', 'Origin-62', 12, 'TRK-78044752', '2023-11-25', 'Standard', 'DHL', 6.99, null, null),
(4, 4, 4, 10, '2023-11-06', '2023-11-07', 'Shipped', 'Destination-77', 'Origin-60', 12, 'PKG-65855885', '2023-11-07', 'Express', null, null, 7.99, 1),
(5, 5, 5, 6, '2023-11-05', '2023-11-09', 'In Transit', 'Destination-86', 'Origin-96', 12, 'PKG-54973079', '2023-11-09', 'Standard', 'UPS', 2.99, null, null),
(6, 6, 6, 2, '2023-09-30', '2023-10-02', 'In Transit', 'Destination-84', 'Origin-16', 12, 'TRK-38276490', '2023-10-03', 'Standard', 'FedEx', 0, null, null),
(7, 7, 7, 4, '2023-08-01', '2023-08-03', 'Delivered', 'Destination-74', 'Origin-22', 12, 'PKG-07555490', '2023-08-05', 'Standard', 'FedEx', 0, null, null),
(8, 8, 8, 3, '2023-07-29', '2023-08-03', 'In Transit', 'Destination-57', 'Origin-61', 12, 'TRK-89485075', '2023-08-03', 'Standard', 'UPS', 0, null, null),
(9, 9, 9, 8, '2023-07-07', '2023-07-11', 'Shipped', 'Destination-90', 'Origin-48', 12, 'PKG-38554379', '2023-07-11', 'Standard', 'UPS', 0, null, null),
(10, 10, 10, 7, '2023-05-16', '2023-05-21', 'Delivered', 'Destination-21', 'Origin-58', 12, 'SHP-98474062', '2023-05-21', 'Standard', 'FedEx', 0, null, null);

-- Sample data for Equipment
INSERT INTO Equipment_T (EquipmentID, Name, Type, PurchaseDate, Location, Status, MaintenanceSchedule, LastMaintenanceDate, ModelNumber, SerialNumber, Manufacturer, Cost)
VALUES
(1, 'Motor', 'Mechanical', '2022-09-18', 'Site A', 'Out of Service', 'Annually', '2022-07-05', 'SAOCEVGQ', '6RV8M8Q15MZE', 'MfgB', 9203.88),
(2, 'Pump', 'Mechanical', '2021-12-18', 'Site B', 'Maintenance Required', 'Annually', '2023-08-19', 'S7BAHG2K', 'LU7Y3Z7RBQZB', 'MfgA', 18370.55),
(3, 'Generator', 'Mechanical', '2017-12-03', 'Warehouse 2', 'Out of Service', 'Annually', '2022-10-19', 'ZMXFWTJ8', 'ZQGZ2MYUR9YH', 'MfgB', 7599.21),
(4, 'Valve', 'Electrical', '2021-03-09', 'Site B', 'Operational', 'Bi-Annually', '2023-09-10', 'UOQYMR0L', 'H1DX5XRG1X98', 'MfgC', 7061.68),
(5, 'Generator', 'Mechanical', '2023-08-22', 'Warehouse 2', 'Operational', 'Annually', '2023-09-02', '06ADC5GR', 'UU8NOE8QUDQE', 'MfgD', 6368.04),
(6, 'Pump', 'Hydraulic', '2017-09-10', 'Site A', 'Operational', 'Bi-Annually', '2022-05-29', '62J9WLGK', 'IOKSNC4QCERC', 'MfgB', 7382.88),
(7, 'Compressor', 'Mechanical', '2015-05-16', 'Site B', 'Out of Service', 'Annually', '2023-03-11', 'G2WPOTX7', 'L7C06F2VO2PE', 'MfgB', 12429.29),
(8, 'Valve', 'Mechanical', '2018-08-31', 'Warehouse 1', 'Operational', 'Bi-Annually', '2023-11-21', 'UMKYC4CB', '87D70YS5HTU6', 'MfgC', 11160.19),
(9, 'Pump', 'Hydraulic', '2019-08-01', 'Warehouse 1', 'Operational', 'Annually', '2022-08-27', 'GPN6P5RJ', '1RIWDRCX9VRJ', 'MfgC', 8346.79),
(10, 'Compressor', 'Electrical', '2022-10-21', 'Warehouse 2', 'Out of Service', 'Annually', '2023-11-08', '7PO4MXYZ', '7YH9ES8KVJKK', 'MfgB', 14508.71);

-- Sample data for Maintenance
INSERT INTO Maintenance_T (MaintenanceID, EquipmentID, Date, Type, ScheduledNext, CompletedDate, PerformedBy, Cost)
VALUES
(1, 1, '2023-03-27', 'Inspection', '2024-04-27', '2023-03-31', 14, 435.53),
(2, 2, '2023-09-15', 'Repair', '2023-10-04', '2023-09-29', 14, 487.15),
(3, 3, '2023-08-06', 'Inspection', '2024-06-25', '2023-08-24', 18, 514.13),
(7, 7, '2023-04-27', 'Inspection', '2024-05-18', '2023-05-03', 17, 435.24),
(10, 10, '2023-12-18', 'Inspection', '2024-10-11', '2023-12-18', 17, 195.58);

-- Sample data for Feedback
INSERT INTO Feedback_T (FeedbackID, CustomerID, OrderID, ProductID, Rating, Comments, FeedbackDate, ResponseStatus, ResponseText, Visibility, CategoryName, ResolutionStatus)
VALUES
(1, 1, 1, 4, 4, 'Good quality but size is too small', '2024-02-27', 'Received', 'we will continue to improve', 0, 'Home Goods', 'Completed'),
(3, 3, 2, 8, 5, 'Great backpack, exactly as described', '2024-02-17', 'Received', 'Thank you for your rating', 1, 'Groceries', 'N/A'),
(4, 5, 3, 8, 3, 'Notebook quality is average', '2024-02-12', 'Received', 'we will continue to improve', 1, 'Groceries', 'Pending'),
(6, 7, 5, 2, 5, 'Good value for money', '2024-02-06', 'Received', 'Thank you for your rating', 1, 'Electronics', 'N/A'),
(9, 9, 7, 8, 2, 'Printer arrived damaged', '2024-03-04', 'Received', 'we will continue to improve', 1, 'Groceries', 'Pending'),
(10, 9, 10, 3, 1, 'Below expectations', '2024-03-03', 'Received', 'we will continue to improve', 1, 'Pharmacy', 'N/A');

-- Sample data for EmployeeSchedule
INSERT INTO EmployeeSchedule_T (EmployeeID, Date, ShiftStart, ShiftEnd, Location, Role, OvertimeHours)
VALUES
(10, '2024-11-04', '09:00', '17:00', 'Warehouse', 'Manager', 0),
(11, '2024-02-29', '09:00', '18:00', 'Store', 'Salesperson', 1),
(12, '2024-12-01', '09:00', '17:00', 'Warehouse', 'Driver', 0),
(13, '2024-03-11', '09:00', '19:00', 'Store', 'Manager', 2),
(14, '2024-02-28', '10:00', '16:00', 'Back Office', 'Technician', 0),
(15, '2024-03-17', '16:00', '22:00', 'Store', 'Sales Associate', 0),
(16, '2024-11-27', '16:00', '22:00', 'Warehouse', 'Warehouse Manager', 0),
(17, '2024-12-13', '09:00', '15:00', 'Back Office', 'Technician', 0),
(18, '2024-10-29', '09:00', '18:00', 'Back Office', 'Developer', 1),
(19, '2024-01-28', '09:00', '19:00', 'HR Office', 'HR Coordinator', 2),
(20, '2024-01-27', '09:00', '20:00', 'Security', 'Security Guard', 3);

-- Sample select query 1
SELECT CustomerID, FirstName, LastName, TotalSpent,
	   RANK() OVER (ORDER BY TotalSpent DESC)As SpendingRank
FROM Customer_T;

-- Sample select query 2
SELECT DISTINCT c.CustomerID, c.FirstName, c.LastName, c.PointsAccumulated
FROM Customer_T c
LEFT JOIN Order_T o ON c.CustomerID = o.CustomerID
WHERE c.PointsAccumulated >= 500
AND (o.Date < DATE_SUB(CURDATE(), INTERVAL 3 MONTH) OR o.Date IS NULL)
GROUP BY c.CustomerID, c.FirstName, c.LastName, c.PointsAccumulated;

-- Sample select query 3
SELECT e.EmployeeID, e.Name, IFNULL(SUM(o.TotalAmount), 0) As Totalsales
FROM Employee_T e
LEFT JOIN Order_T o ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID, e.Name
ORDER BY Totalsales DESC
LIMIT 5;