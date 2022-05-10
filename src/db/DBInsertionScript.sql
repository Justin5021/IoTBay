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
('Wilson', 'Smith', 'wilson.smith@gmail.com', 'Test1234', '1234567890', '7', 'Pikachu', 'Street', 'Dolphin', 'NSW', '2000', 'Australia'),
('Sleep', 'Smith', 'sleep.smith@gmail.com', 'Test1234', '1234567890', '6', 'Lamp', 'Street', 'Top', 'NSW', '2000', 'Australia'),
('Laugh', 'Smith', 'laugh.smith@gmail.com', 'Test1234', '1234567890', '2', 'Joke', 'Street', 'Good', 'NSW', '2000', 'Australia'),
('Dylan', 'Smith', 'dylan.smith@gmail.com', 'Test1234', '1234567890', '2', 'Bless', 'Street', 'Active', 'NSW', '2000', 'Australia'),
('Maria', 'Smith', 'maria.smith@gmail.com', 'Test1234', '1234567890', '5', 'Saint', 'Street', 'Peter', 'NSW', '2000', 'Australia'),
('Rachel', 'Smith', 'rachel.smith@gmail.com', 'Test1234', '1234567890', '8', 'Alex', 'Street', 'High', 'NSW', '2000', 'Australia'),
('Unique', 'Smith', 'unique.smith@gmail.com', 'Test1234', '1234567890', '8', 'Funny', 'Street', 'Helium', 'NSW', '2000', 'Australia'),
('Baxter', 'Smith', 'baxter.smith@gmail.com', 'Test1234', '1234567890', '9', 'Unique2', 'Street', 'Funny2', 'NSW', '2000', 'Australia'),
('Taylor', 'Smith', 'taylor.smith@gmail.com', 'Test1234', '1234567890', '2', 'Iam', 'Street', 'Sofunny', 'NSW', '2000', 'Australia'),
('UniqueName1', 'Human', 'unique.name1@gmail.com', 'Test1234', '1234567890', '2', 'Harry', 'Street', 'Corn', 'NSW', '2000', 'Australia'),
('UniqueName2', 'Perhaps', 'unique.name2@gmail.com', 'Test1234', '1234567890', '9', 'Bow', 'Street', 'Apple', 'NSW', '2000', 'Australia'),
('UniqueName3', 'I', 'unique.name3@gmail.com', 'Test1234', '1234567890', '8', 'Gabriel', 'Street', 'Coke', 'NSW', '2000', 'Australia'),
('UniqueName4', 'lost', 'unique.name4@gmail.com', 'Test1234', '1234567890', '6', 'West', 'Street', 'Pepsi', 'NSW', '2000', 'Australia'),
('UniqueName5', 'Track', 'unique.name5@gmail.com', 'Test1234', '1234567890', '4', 'North', 'Street', 'Montreal', 'NSW', '2000', 'Australia'),
('UniqueName6', 'Anyidea', 'unique.name6@gmail.com', 'Test1234', '1234567890', '1', 'South', 'Street', 'Platinum', 'NSW', '2000', 'Australia'),
('UniqueName7', 'of', 'unique.name7@gmail.com', 'Test1234', '1234567890', '1', 'Mahjong', 'Street', 'Diamond', 'NSW', '2000', 'Australia'),
('UniqueName8', 'wat', 'unique.name8@gmail.com', 'Test1234', '1234567890', '2', 'Water', 'Street', 'Biscuit', 'NSW', '2000', 'Australia'),
('UniqueName9', 'Toput', 'unique.name9@gmail.com', 'Test1234', '1234567890', '9', 'Food', 'Street', 'Baguette', 'NSW', '2000', 'Australia'),
('UniqueName10', 'here', 'unique.name10@gmail.com', 'Test1234', '1234567890', '8', 'Bread', 'Street', 'Shampoo', 'NSW', '2000', 'Australia'),
('UniqueName11', 'Names', 'unique.name11@gmail.com', 'Test1234', '1234567890', '3', 'Steak', 'Street', 'Muse', 'NSW', '2000', 'Australia'),
('UniqueName12', 'Hard', 'unique.name12@gmail.com', 'Test1234', '1234567890', '100', 'Lamb', 'Street', 'Digimon', 'NSW', '2000', 'Australia');

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

