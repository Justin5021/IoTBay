/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Justin
 * Created: Apr 29, 2022
 */

INSERT INTO IOTBAY.Users (FirstName, LastName, Email, Pass, PhoneNumber, StreetNumber, StreetName, StreetType, Suburb, "State", Postcode, Country)
VALUES
('Gabriel', 'Smith', 'gab.smith@gmail.com', 'Test1234', '1234567890', '4', 'Pokemon', 'Street', 'Road' , 'NSW', '2000', 'Australia'),
('Wilson', 'Smith', 'wilson.smith@gmail.com', 'Test1234', '5912859201', '7', 'Pikachu', 'Street', 'Dolphin', 'NSW', '2000', 'Australia'),
('Sleep', 'Smith', 'sleep.smith@gmail.com', 'Test1234', '4564545877', '6', 'Lamp', 'Street', 'Top', 'NSW', '2000', 'Australia'),
('Laugh', 'Smith', 'laugh.smith@gmail.com', 'Test1234', '2363483858', '2', 'Joke', 'Street', 'Good', 'NSW', '2000', 'Australia'),
('Dylan', 'Smith', 'dylan.smith@gmail.com', 'Test1234', '2365260792', '2', 'Bless', 'Street', 'Active', 'NSW', '2000', 'Australia'),
('Maria', 'Smith', 'maria.smith@gmail.com', 'Test1234', '2369960306', '5', 'Saint', 'Street', 'Peter', 'NSW', '2000', 'Australia'),
('Rachel', 'Smith', 'rachel.smith@gmail.com', 'Test1234', '1500623552', '8', 'Alex', 'Street', 'High', 'NSW', '2000', 'Australia'),
('Unique', 'Smith', 'unique.smith@gmail.com', 'Test1234', '2136397989', '8', 'Funny', 'Street', 'Helium', 'NSW', '2000', 'Australia'),
('Baxter', 'Smith', 'baxter.smith@gmail.com', 'Test1234', '8939160466', '9', 'Unique2', 'Street', 'Funny2', 'NSW', '2000', 'Australia'),
('Taylor', 'Smith', 'taylor.smith@gmail.com', 'Test1234', '2329783947', '2', 'Iam', 'Street', 'Sofunny', 'NSW', '2000', 'Australia'),
('UniqueName1', 'Human', 'unique.name1@gmail.com', 'Test1234', '6592696436', '2', 'Harry', 'Street', 'Corn', 'NSW', '2000', 'Australia'),
('UniqueName2', 'Perhaps', 'unique.name2@gmail.com', 'Test1234', '1234567890', '9', 'Bow', 'Street', 'Apple', 'NSW', '2000', 'Australia'),
('UniqueName3', 'I', 'unique.name3@gmail.com', 'Test1234', '1235678912', '8', 'Gabriel', 'Street', 'Coke', 'NSW', '2000', 'Australia'),
('UniqueName4', 'lost', 'unique.name4@gmail.com', 'Test1234', '3466236439', '6', 'West', 'Street', 'Pepsi', 'NSW', '2000', 'Australia'),
('UniqueName5', 'Track', 'unique.name5@gmail.com', 'Test1234', '9558157926', '4', 'North', 'Street', 'Montreal', 'NSW', '2000', 'Australia'),
('UniqueName6', 'Anyidea', 'unique.name6@gmail.com', 'Test1234', '1647349381', '1', 'South', 'Street', 'Platinum', 'NSW', '2000', 'Australia'),
('UniqueName7', 'of', 'unique.name7@gmail.com', 'Test1234', '9581859305', '1', 'Mahjong', 'Street', 'Diamond', 'NSW', '2000', 'Australia'),
('UniqueName8', 'wat', 'unique.name8@gmail.com', 'Test1234', '1850284956', '2', 'Water', 'Street', 'Biscuit', 'NSW', '2000', 'Australia'),
('UniqueName9', 'Toput', 'unique.name9@gmail.com', 'Test1234', '5869023456', '9', 'Food', 'Street', 'Baguette', 'NSW', '2000', 'Australia'),
('UniqueName10', 'here', 'unique.name10@gmail.com', 'Test1234', '5918572849', '8', 'Bread', 'Street', 'Shampoo', 'NSW', '2000', 'Australia'),
('UniqueName11', 'Names', 'unique.name11@gmail.com', 'Test1234', '3519683951', '3', 'Steak', 'Street', 'Muse', 'NSW', '2000', 'Australia'),
('UniqueName12', 'Hard', 'unique.name12@gmail.com', 'Test1234', '1968395012', '100', 'Lamb', 'Street', 'Digimon', 'NSW', '2000', 'Australia');

INSERT INTO IOTBAY.Staff (StaffFirstName, StaffLastName, StaffEmail, StaffPass, StaffPhone, StaffCountry)
VALUES
('Jackson', 'Albert', 'jack.alb@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Wilson', 'Jackson', 'will.jack@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Mason', 'Wilson', 'mason.wilson@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Johnson', 'Mason', 'johnson.mason@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Thompson', 'Johnson', 'thompson.johnson@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Yourson', 'Thompson', 'yourson.thompson@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Someonesson', 'Yourson', 'someonesson.yourson@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Jeff', 'Someonesson', 'jeff.someonesson@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Mee', 'Hun', 'mee.hun@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Roti', 'Planta', 'roti.planta@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Kari', 'Ikan', 'kari.ikan@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Kuih', 'Ketupat', 'kuih.ketupat@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Ais', 'Kacang', 'ais.kacang@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Tepung', 'Gandum', 'tepung.gandum@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Nasi', 'Lemak', 'nasi.lemak@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Apam', 'Balik', 'apam.balik@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Kuih', 'Lapis', 'kuih.lapis@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Siew', 'Yok', 'siew.yok@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Hor', 'Fun', 'hor.fun@gmail.com', 'Test1234', '1234567890', 'Australia'),
('Pad', 'Thai', 'pad.thai@gmail.com', 'Test1234', '1234567890', 'Australia');

INSERT INTO IOTBAY.PaymentInfo (CardHolderName, CardNumber, CardExpiryDate, CardCountry, CardCVC, UserID)
VALUES
('Gabriel Smith', '1111222233334444', '2026-12-25', 'Australia', '123', 1),
('Gabriel Smith', '4444333322221111', '2026-7-10', 'Australia', '234', 1),
('Gabriel Smith', '3333222244441111', '2026-2-10', 'Australia', '456', 1),
('Wilson Smith', '1234123412341234', '2025-2-4', 'Australia', '567', 2),
('Sleep Smith', '2859205868209501', '2025-4-7', 'Australia', '968', 3),
('Sleep Smith', '8590285045825024', '2025-4-5', 'Australia', '586', 3),
('Sleep Smith', '5682058391160469', '2025-2-22', 'Australia', '289', 3),
('Sleep Smith', '9481196534792360', '2025-3-30', 'Australia', '872', 3),
('Sleep Smith', '5823520125126992', '2025-7-21', 'Australia', '895', 3),
('Laugh Smith', '2135902467204973', '2027-1-24', 'Australia', '693', 4),
('Laugh Smith', '1959230145236825', '2027-5-18', 'Australia', '196', 4),
('Laugh Smith', '1959230145236825', '2027-12-6', 'Australia', '236', 4),
('Dylan Smith', '0909010102020303', '2029-5-21', 'Australia', '678', 5),
('Maria Smith', '7878121234349898', '2026-2-5', 'Australia', '789', 6),
('Maria Smith', '1122334455667788', '2026-3-5', 'Australia', '890', 6),
('Maria Smith', '1122334455667788', '2027-4-5', 'Australia', '912', 6),
('Maria Smith', '8877665544332211', '2023-3-7', 'Australia', '522', 6),
('Taylor Smith', '9191010120203030', '2025-4-22', 'Australia', '592', 10),
('Taylor Smith', '7878929283830202', '2027-7-26', 'Australia', '145', 10),
('Taylor Smith', '1818727293932828', '2027-7-26', 'Australia', '823', 10);

INSERT INTO IOTBAY.PAYMENT (PaymentTotal, PaymentInfoID)
VALUES
(14.22, 1),
(1007, 2),
(805, 3),
(133.37, 4),
(420.99, 5),
(123.45, 6),
(678.89, 7),
(444.44, 8),
(555.55, 9),
(666.66, 10),
(727.27, 11),
(1023, 12),
(111.11, 13),
(99.99, 14),
(9.99, 15),
(235.32, 16),
(296.3, 17),
(14.22, 18),
(14.22, 19),
(287.5, 20);

INSERT INTO IOTBAY.ORDERS (OrderDate, OrderStatus, PaymentID)
VALUES
('2022-5-21','Unpaid',1),
('2022-5-22','Paid',2),
('2022-5-23','Shipping',3),
('2022-5-24','Delivered',4),
('2022-5-25','Cancelled',5),
('2022-5-26','Unpaid',6),
('2022-5-27','Paid',7),
('2022-5-28','Shipping',8),
('2022-5-29','Delivered',9),
('2022-5-30','Cancelled',10),
('2022-6-11','Unpaid',11),
('2022-6-12','Paid',12),
('2022-6-13','Shipping',13),
('2022-6-14','Delivered',14),
('2022-6-15','Cancelled',15),
('2022-6-16','Unpaid',16),
('2022-6-17','Paid',17),
('2022-6-18','Shipping',18),
('2022-6-19','Delivered',19),
('2022-6-20','Cancelled',20);

INSERT INTO IOTBAY.Supplier (SupplierAddress, SupplierPhone)
VALUES
('Road Road 1 Avenue', '1234567895'),
('Starlight Road 2 Avenue', '5912859202'),
('Pokemon Road 3 Avenue', '4564545871'),
('Victory Road 4 Avenue', '2363483855'),
('Diamond Road 5 Avenue', '2365260794'),
('Board Road 6 Avenue', '2369960305'),
('Damian Road 7 Avenue', '1500623557'),
('Zinger Road 8 Avenue', '2136397982'),
('Stinger Road 9 Avenue', '8939160468'),
('Water Road 10 Avenue', '2329783941'),
('Blue Road 11 Avenue', '6592696435'),
('Zen Road 12 Avenue', '1234567893'),
('Split Road 13 Avenue', '1235678916'),
('Half Road 14 Avenue', '3466236437'),
('Plain Road 15 Avenue', '9558157921'),
('Safe Road 16 Avenue', '1647349385'),
('Lame Road 17 Avenue', '9581859301'),
('Fun Road 18 Avenue', '1850284958'),
('Food Road 19 Avenue', '5869023459'),
('Digimon Road 20 Avenue', '5918572841');

INSERT INTO IOTBAY.PRODUCT ()
VALUES
(),

INSERT INTO IOTBAY.CART ()
VALUES
(),

INSERT INTO IOTBAY.OrderLine ()
VALUES
(),

INSERT INTO IOTBAY.INVOICE (InvoiceDate, PaymentID)
VALUES
('2022-5-21',1),
('2022-5-22',2),
('2022-5-23',3),
('2022-5-24',4),
('2022-5-25',5),
('2022-5-26',6),
('2022-5-27',7),
('2022-5-28',8),
('2022-5-29',9),
('2022-5-30',10),
('2022-6-11',11),
('2022-6-12',12),
('2022-6-13',13),
('2022-6-14',14),
('2022-6-15',15),
('2022-6-16',16),
('2022-6-17',17),
('2022-6-18',18),
('2022-6-19',19),
('2022-6-20',20);