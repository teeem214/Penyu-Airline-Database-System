CREATE DATABASE PenyuAirlineSystem;

-- Pilot Table
CREATE TABLE Pilot(
PilotID NVARCHAR(50) PRIMARY KEY NOT NULL,
PilotName NVARCHAR(50)
);

INSERT INTO Pilot 
(PilotID, PilotName) 
VALUES
('P001', 'John Smith'),
('P002', 'David Williams'),
('P003', 'James Anderson'),
('P004', 'Daniel Martinez'),
('P005', 'Matthew Taylor'),
('P006', 'Andrew Harris'),
('P007', 'Joshua Clark'),
('P008', 'Anthony Hall'),
('P009', 'Christopher Allen'),
('P010', 'Ryan Scott'),
('P011', 'Brandon Adams'),
('P012', 'Samuel Nelson'),
('P013', 'Nicholas Carter'),
('P014', 'Justin Roberts'),
('P015', 'Gregory Perez'),
('P016', 'Raymond Rogers'),
('P017', 'Eric Sanchez'),
('P018', 'Tyler Flores'),
('P019', 'Ethan Reed'),
('P020', 'Jacob Howard'),
('P021', 'Dylan Peterson'),
('P022', 'Logan Sanders'),
('P023', 'Owen Coleman'),
('P024', 'Hunter Russell'),
('P025', 'Cole Henderson');

-- CoPilot Table
CREATE TABLE CoPilot (
CoPilotID NVARCHAR(50) PRIMARY KEY NOT NULL,
CoPilotName NVARCHAR(50)
);

INSERT INTO CoPilot 
(CoPilotID, CoPilotName) 
VALUES
('CP001', 'Alex Johnson'),
('CP002', 'Michael Brown'),
('CP003', 'Robert Wilson'),
('CP004', 'Charles Thomas'),
('CP005', 'Christopher Lee'),
('CP006', 'Kevin White'),
('CP007', 'Brian Walker'),
('CP008', 'William Young'),
('CP009', 'Jonathan King'),
('CP010', 'Justin Wright'),
('CP011', 'Benjamin Hill'),
('CP012', 'Zachary Green'),
('CP013', 'Patrick Baker'),
('CP014', 'Stephen Gonzalez'),
('CP015', 'Timothy Murphy'),
('CP016', 'Sean Bell'),
('CP017', 'Adam Hughes'),
('CP018', 'Jeffrey Ramirez'),
('CP019', 'Nathan Cooper'),
('CP020', 'Austin Torres'),
('CP021', 'Aaron Perry'),
('CP022', 'Kyle Bryant'),
('CP023', 'Connor Long'),
('CP024', 'Gavin Jenkins'),
('CP025', 'Chase Griffin');

-- Baggage Table
CREATE TABLE Baggage (
BaggageID NVARCHAR(50) PRIMARY KEY NOT NULL,
Class NVARCHAR(50),
AllowedWeight INT,
AllowedBag INT,
ExcessFee INT,
);

INSERT INTO Baggage
(BaggageID, Class, AllowedWeight, AllowedBag, ExcessFee) 
VALUES
('B01', 'Economy', 20, 1, 50),
('B02', 'Business', 30, 2, 70),
('B03', 'First', 40, 3, 100),
('B04', 'Economy', 20, 1, 50),
('B05', 'Business', 30, 2, 70),
('B06', 'First', 40, 3, 100),
('B07', 'Economy', 20, 1, 50),
('B08', 'Business', 30, 2, 70),
('B09', 'First', 40, 3, 100),
('B10', 'Economy', 20, 1, 50),
('B11', 'Business', 30, 2, 70),
('B12', 'First', 40, 3, 100),
('B13', 'Economy', 20, 1, 50),
('B14', 'Business', 30, 2, 70),
('B15', 'First', 40, 3, 100),
('B16', 'Economy', 20, 1, 50),
('B17', 'Business', 30, 2, 70),
('B18', 'First', 40, 3, 100),
('B19', 'Economy', 20, 1, 50),
('B20', 'Business', 30, 2, 70),
('B21', 'First', 40, 3, 100),
('B22', 'Economy', 20, 1, 50),
('B23', 'Business', 30, 2, 70),
('B24', 'First', 40, 3, 100),
('B25', 'Economy', 20, 1, 50);

-- Service Table
CREATE TABLE Service (
ServiceID NVARCHAR(50) PRIMARY KEY NOT NULL,
SpecialService NVARCHAR(50),
SpecialServiceFee INT,
BaggageID NVARCHAR(50) FOREIGN KEY REFERENCES Baggage(BaggageID),
);

INSERT INTO Service 
(ServiceID, SpecialService, SpecialServiceFee, BaggageID)
VALUES
('SVC001', 'Extra Legroom', 30, 'B01'),
('SVC002', 'Priority Boarding', 20, 'B02'),
('SVC003', 'Lounge Access', 50, 'B03'),
('SVC004', 'Meal Preference', 15, 'B04'),
('SVC005', 'In-Flight Sleeping Kit', 40, 'B05'),
('SVC006', 'Wheelchair Assistance', 25, 'B06'),
('SVC007', 'Infant Care', 35, 'B07'),
('SVC008', 'Pet Travel', 60, 'B08'),
('SVC009', 'WiFi Access', 10, 'B09'),
('SVC010', 'Entertainment Package', 15, 'B10'),
('SVC011', 'Extra Legroom', 30, 'B11'),
('SVC012', 'Priority Boarding', 20, 'B12'),
('SVC013', 'Lounge Access', 50, 'B13'),
('SVC014', 'Meal Preference', 15, 'B14'),
('SVC015', 'In-Flight Sleeping Kit', 40, 'B15'),
('SVC016', 'Wheelchair Assistance', 25, 'B16'),
('SVC017', 'Infant Care', 35, 'B17'),
('SVC018', 'Pet Travel', 60, 'B18'),
('SVC019', 'WiFi Access', 10, 'B19'),
('SVC020', 'Entertainment Package', 15, 'B20'),
('SVC021', 'Extra Legroom', 30, 'B21'),
('SVC022', 'Priority Boarding', 20, 'B22'),
('SVC023', 'Lounge Access', 50, 'B23'),
('SVC024', 'Meal Preference', 15, 'B24'),
('SVC025', 'In-Flight Sleeping Kit', 40, 'B25');

-- Flight Table
CREATE TABLE Flight (
FlightID NVARCHAR(50) PRIMARY KEY NOT NULL,
PilotID NVARCHAR(50) FOREIGN KEY REFERENCES Pilot(PilotID),
CoPilotID NVARCHAR(50) FOREIGN KEY REFERENCES CoPilot(CoPilotID),
SeatNumber NVARCHAR(50),
BookingChannel NVARCHAR(50),
BookingDate DATE, 
Airline NVARCHAR(50),
TypeOfFlight NVARCHAR(50),
AircraftType NVARCHAR(50),
Destination NVARCHAR(50), 
BaggageID NVARCHAR(50) FOREIGN KEY REFERENCES Baggage(BaggageID),
);

INSERT INTO Flight 
(FlightID, PilotID, CoPilotID, SeatNumber, BookingChannel, BookingDate, Airline, TypeOfFlight, AircraftType, Destination, BaggageID) 
VALUES
('F101', 'P001', 'CP001', '12A', 'Website', '3 Jan 2025', 'Air Asia', 'Domestic', 'Boeing 777', 'Kuala Lumpur - Penang', 'B01'),
('F102', 'P002', 'CP002', '5C', 'Agent', '8 Feb 2025', 'Qatar Airways', 'International', 'Airbus A320', 'Kuala Lumpur - Johor Bahru', 'B02'),
('F103', 'P003', 'CP003', '14D', 'Mobile', '22 Jun 2025', 'MH', 'Domestic', 'Boeing 787', 'Kuala Lumpur - London', 'B03'),
('F104', 'P004', 'CP004', '3B', 'Website', '6 Feb 2025', 'Air Asia', 'Domestic', 'Airbus A380', 'Kuala Lumpur - Singapore', 'B04'),
('F105', 'P005', 'CP005', '8F', 'Agent', '11 Feb 2025', 'Air Asia', 'Domestic', 'Boeing 737', 'Kuala Lumpur - Langkawi', 'B05'),
('F106', 'P006', 'CP006', '9E', 'Website', '20 Jun 2025', 'MH', 'Domestic', 'Boeing 737', 'Kuala Lumpur - Los Angeles', 'B06'),
('F107', 'P007', 'CP007', '2A', 'Mobile', '20 Jan 2025', 'Singapore Airlines', 'International', 'Boeing 777', 'Kuala Lumpur - Sydney', 'B07'),
('F108', 'P008', 'CP008', '6F', 'Agent', '21 Feb 2025', 'Qatar Airways', 'International', 'Airbus A320', 'Kuala Lumpur - Singapore', 'B08'),
('F109', 'P009', 'CP009', '7D', 'Website', '1 Sep 2025', 'Singapore Airlines', 'International', 'Boeing 787', 'Kuala Lumpur - Sydney', 'B09'),
('F110', 'P010', 'CP010', '3C', 'Mobile', '4 Jan 2025', 'Singapore Airlines', 'International', 'Airbus A350', 'Kuala Lumpur - Bali', 'B10'),
('F111', 'P011', 'CP011', '10A', 'Website', '14 Apr 2025', 'Qatar Airways', 'International', 'Boeing 777', 'Kuala Lumpur - Hong Kong', 'B11'),
('F112', 'P012', 'CP012', '4D', 'Agent', '24 Jan 2025', 'Qatar Airways', 'International', 'Boeing 787', 'Kuala Lumpur - Dubai', 'B12'),
('F113', 'P013', 'CP013', '11B', 'Website', '22 Feb 2025', 'MH', 'Domestic', 'Airbus A380', 'Kuala Lumpur - Seoul', 'B13'),
('F114', 'P014', 'CP014', '2F', 'Mobile', '16 Apr 2025', 'MH', 'Domestic', 'Boeing 737', 'Kuala Lumpur - Los Angeles', 'B14'),
('F115', 'P015', 'CP015', '7E', 'Agent', '14 Apr 2025', 'Singapore Airlines', 'International', 'Boeing 777', 'Kuala Lumpur - Paris', 'B15'),
('F116', 'P016', 'CP016', '9A', 'Website', '15 Jan 2025', 'Air Asia', 'Domestic', 'Airbus A350', 'Kuala Lumpur - Osaka', 'B16'),
('F117', 'P017', 'CP017', '6D', 'Mobile', '25 Feb 2025', 'Singapore Airlines', 'International', 'Boeing 787', 'Kuala Lumpur - Jakarta', 'B17'),
('F118', 'P018', 'CP018', '8B', 'Website', '31 Mar 2025', 'MH', 'Domestic', 'Airbus A380', 'Kuala Lumpur - Tokyo', 'B18'),
('F119', 'P019', 'CP019', '3E', 'Agent', '24 Apr 2025', 'Singapore Airlines', 'International', 'Boeing 777', 'Kuala Lumpur - Melbourne', 'B19'),
('F120', 'P020', 'CP020', '14C', 'Website', '15 Jan 2025', 'Air Asia', 'Domestic', 'Boeing 737', 'Kuala Lumpur - Shanghai', 'B20'),
('F121', 'P021', 'CP021', '15A', 'Mobile', '1 Apr 2025', 'Qatar Airways', 'International', 'Airbus A350', 'Kuala Lumpur - Melbourne', 'B21'),
('F122', 'P022', 'CP022', '7C', 'Agent', '24 Feb 2025', 'MH', 'Domestic', 'Boeing 787', 'Kuala Lumpur - Tokyo', 'B22'),
('F123', 'P023', 'CP023', '9D', 'Website', '26 Apr 2025', 'Qatar Airways', 'International', 'Boeing 777', 'Kuala Lumpur - Singapore', 'B23'),
('F124', 'P024', 'CP024', '4A', 'Mobile', '10 Feb 2025', 'Air Asia', 'Domestic', 'Airbus A320', 'Kuala Lumpur - New York', 'B24'),
('F125', 'P025', 'CP025', '10F', 'Agent', '17 Jan 2025', 'Qatar Airways', 'International', 'Boeing 737', 'Kuala Lumpur - Singapore', 'B25');

-- Payment Table
CREATE TABLE Payment (
PaymentID NVARCHAR(50) PRIMARY KEY NOT NULL,
PaymentMethod NVARCHAR(50),
BaseFare INT,
Promotion INT,
Price INT,
FlightID NVARCHAR(50) FOREIGN KEY REFERENCES Flight(FlightID),
);

INSERT INTO Payment 
(PaymentID, PaymentMethod, BaseFare, Promotion, Price, FlightID)
VALUES
('PAY001', 'Credit Card', 300, 10, 270, 'F101'),
('PAY002', 'PayPal', 800, 15, 680, 'F102'),
('PAY003', 'Debit Card', 2500, 20, 2000, 'F103'),
('PAY004', 'PayPal', 320, 12, 281, 'F104'),
('PAY005', 'Credit Card', 850, 18, 697, 'F105'),
('PAY006', 'PayPal', 2600, 25, 1950, 'F106'),
('PAY007', 'Debit Card', 290, 8, 267, 'F107'),
('PAY008', 'Credit Card', 780, 14, 671, 'F108'),
('PAY009', 'PayPal', 2400, 22, 1872, 'F109'),
('PAY010', 'Debit Card', 310, 11, 276, 'F110'),
('PAY011', 'Credit Card', 820, 17, 681, 'F111'),
('PAY012', 'PayPal', 2550, 21, 2015, 'F112'),
('PAY013', 'Credit Card', 330, 13, 287, 'F113'),
('PAY014', 'Debit Card', 880, 19, 712, 'F114'),
('PAY015', 'PayPal', 2700, 26, 1998, 'F115'),
('PAY016', 'Credit Card', 340, 9, 309, 'F116'),
('PAY017', 'Debit Card', 900, 16, 756, 'F117'),
('PAY018', 'PayPal', 2800, 23, 2156, 'F118'),
('PAY019', 'Credit Card', 295, 10, 266, 'F119'),
('PAY020', 'PayPal', 790, 15, 672, 'F120'),
('PAY021', 'Debit Card', 2450, 20, 1960, 'F121'),
('PAY022', 'Credit Card', 305, 12, 269, 'F122'),
('PAY023', 'PayPal', 810, 18, 664, 'F123'),
('PAY024', 'Debit Card', 2500, 25, 1875, 'F124'),
('PAY025', 'Credit Card', 315, 14, 271, 'F125');

-- Frequent Flyer Table
CREATE TABLE FrequentFlyer (
FrequentFlyerID nvarchar(50) PRIMARY KEY NOT NULL,
MembershipExpiryDate date,
);

INSERT INTO FrequentFlyer
(FrequentFlyerID, MembershipExpiryDate)
VALUES
('FF001', '15 Mar 2025'),
('FF002', '30 Jun 2025'),
('FF003', '12 Sep 2025'),
('FF004', '25 Dec 2025'),
('FF005', '10 Feb 2026'),
('FF006', '05 May 2026'),
('FF007', '18 Jul 2026'),
('FF008', '22 Oct 2026'),
('FF009', '08 Jan 2027'),
('FF010', '19 Apr 2027'),
('FF011', '14 Aug 2027'),
('FF012', '30 Nov 2027'),
('FF013', '05 Mar 2028'),
('FF014', '22 Jun 2028'),
('FF015', '09 Sep 2028'),
('FF016', '31 Dec 2028'),
('FF017', '28 Feb 2029'),
('FF018', '15 May 2029'),
('FF019', '27 Aug 2029'),
('FF020', '11 Nov 2029'),
('FF021', '20 Jan 2030'),
('FF022', '02 Apr 2030'),
('FF023', '07 Jul 2030'),
('FF024', '10 Oct 2030'),
('FF025', '01 Jan 2031');

-- Passenger Table
CREATE TABLE Passenger (
PassengerID nvarchar(50) PRIMARY KEY NOT NULL,
FrequentFlyerID nvarchar(50) FOREIGN KEY REFERENCES FrequentFlyer(FrequentFlyerID),
FirstName nvarchar(50),
LastName nvarchar(50),
PassportNo nvarchar(50),
Nationality nvarchar(50),
Age int,
DateOfBirth date,
Gender nvarchar(50),
PhoneNumber nvarchar(50),
EmailAddress nvarchar (50),
FrequentFlyerStatus nvarchar(50),
);

INSERT INTO Passenger 
(PassengerID, FirstName, LastName, PassportNo, Nationality, DateOfBirth, Age, Gender, PhoneNumber, EmailAddress, FrequentFlyerStatus, FrequentFlyerID) 
VALUES
('P001', 'Adam', 'Tan', 'P12345678', 'Malaysia', '15 Mar 1998', 54, 'Male', '012-3456789', 'adam.tan@email.com', 'Frequent', 'FF001'),
('P002', 'Bella', 'Wong', 'P23456789', 'Singapore', '22 Jul 2000', 12, 'Female', '013-2345678', 'bella.wong@email.com', 'Frequent', 'FF002'),
('P003', 'Charles', 'Lim', 'P34567890', 'Hong Kong', '09 Sep 1995', 24, 'Male', '014-3456789', 'charles.lim@email.com', 'Frequent', 'FF003'),
('P004', 'Diana', 'Ng', 'P45678901', 'Malaysia', '05 May 1999', 80, 'Female', '015-4567890', 'diana.ng@email.com', 'Occasional', NULL),
('P005', 'Ethan', 'Lee', 'P56789012', 'China', '18 Nov 1996', 17, 'Male', '016-5678901', 'ethan.lee@email.com', 'Frequent', 'FF004'),
('P006', 'Farah', 'Aisyah', 'P67890123', 'Indonesia', '27 Dec 2001', 25, 'Female', '017-6789012', 'farah.aisyah@email.com', 'Frequent', 'FF005'),
('P007', 'Ganesh', 'Kumar', 'P78901234', 'India', '03 Apr 1994', 11, 'Male', '018-7890123', 'ganesh.kumar@email.com', 'Frequent', 'FF006'),
('P008', 'Hidayah', 'Siti', 'P89012345', 'Malaysia', '10 Jun 1997', 56, 'Female', '019-8901234', 'hidayah.siti@email.com', 'Inactive', NULL),
('P009', 'Ian', 'Wong', 'P90123456', 'Singapore', '14 Feb 1999', 47, 'Male', '011-9012345', 'ian.wong@email.com', 'Frequent', 'FF007'),
('P010', 'Jessica', 'Tan', 'P01234567', 'Australia', '08 Aug 2002', 63, 'Female', '012-0123456', 'jessica.tan@email.com', 'Frequent', 'FF008'),
('P011', 'Kelvin', 'Chan', 'P23456780', 'Taiwan', '30 Oct 1995', 32, 'Male', '013-2345670', 'kelvin.chan@email.com', 'Frequent', 'FF009'),
('P012', 'Liyana', 'Ahmad', 'P34567891', 'Malaysia', '12 Jan 2000', 50, 'Female', '014-3456781', 'liyana.ahmad@email.com', 'Frequent', 'FF010'),
('P013', 'Muhammad', 'Amir', 'P45678902', 'Indonesia', '25 May 1998', 71, 'Male', '015-4567892', 'muhammad.amir@email.com', 'Frequent', 'FF011'),
('P014', 'Natasha', 'Lee', 'P56789013', 'USA', '17 Jul 1996', 3, 'Female', '016-5678903', 'natasha.lee@email.com', 'Inactive', NULL),
('P015', 'Olivia', 'Chia', 'P67890124', 'Singapore', '06 Mar 2003', 50, 'Female', '017-6789014', 'olivia.chia@email.com', 'Frequent', 'FF012'),
('P016', 'Patrick', 'Lim', 'P78901235', 'Philippines', '21 Sep 1997', 5, 'Male', '018-7890125', 'patrick.lim@email.com', 'Frequent', 'FF013'),
('P017', 'Quek', 'Jun Hao', 'P89012346', 'Malaysia', '04 Dec 1999', 9, 'Male', '019-8901236', 'quek.junhao@email.com', 'Inactive', NULL),
('P018', 'Raja', 'Fairuz', 'P90123457', 'Malaysia', '28 Jun 1994', 7, 'Male', '011-9012347', 'raja.fairuz@email.com', 'Frequent', 'FF014'),
('P019', 'Samuel', 'Lau', 'P01234568', 'Canada', '11 Oct 2001', 50, 'Male', '012-0123458', 'samuel.lau@email.com', 'Frequent', 'FF015'),
('P020', 'Tan', 'Sze Mei', 'P23456781', 'Vietnam', '23 Apr 1998', 68, 'Female', '013-2345679', 'tan.szemei@email.com', 'Frequent', 'FF016'),
('P021', 'Umar', 'Hafiz', 'P34567892', 'Malaysia', '19 Aug 2000', 31, 'Male', '014-3456782', 'umar.hafiz@email.com', 'Frequent', 'FF017'),
('P022', 'Vanessa', 'Ng', 'P45678903', 'Australia', '07 Feb 1997', 62, 'Female', '015-4567893', 'vanessa.ng@email.com', 'Frequent', 'FF018'),
('P023', 'William', 'Chan', 'P56789014', 'Hong Kong', '02 Nov 1995', 45, 'Male', '016-5678904', 'william.chan@email.com', 'Frequent', 'FF019'),
('P024', 'Xavier', 'Lee', 'P67890125', 'Thailand', '29 May 1999', 73, 'Male', '017-6789015', 'xavier.lee@email.com', 'Frequent', 'FF020'),
('P025', 'Yasmin', 'Bakar', 'P78901236', 'Malaysia', '16 Dec 2002', 63, 'Female', '018-7890126', 'yasmin.bakar@email.com', 'Frequent', 'FF021');

-- Ticket Table
CREATE TABLE Ticket (
TicketNumber NVARCHAR(50) PRIMARY KEY NOT NULL,
BaggageID NVARCHAR(50) FOREIGN KEY REFERENCES Baggage(BaggageID),
FlightID NVARCHAR(50) FOREIGN KEY REFERENCES Flight(FlightID),
SeatNumber NVARCHAR(50),
CancellationFeePolicy NVARCHAR(50),
RefundStatus NVARCHAR(50),
PaymentID NVARCHAR(50) FOREIGN KEY REFERENCES Payment(PaymentID),
SeatSelectionFee INT,
PassengerID NVARCHAR(50) FOREIGN KEY REFERENCES Passenger(PassengerID)
);

INSERT INTO Ticket 
(TicketNumber, BaggageID, FlightID, SeatNumber, CancellationFeePolicy, RefundStatus, PaymentID, SeatSelectionFee, PassengerID) 
VALUES
('T001', 'B01', 'F101', '12A', 'Non-refundable', 'No Refund', 'PAY001', 20, 'P001'),
('T002', 'B02', 'F102', '5C', 'Non-refundable', 'No Refund', 'PAY002', 30, 'P002'),
('T003', 'B03', 'F103', '14D', 'Non-refundable', 'No Refund', 'PAY003', 40, 'P003'),
('T004', 'B04', 'F104', '3B', 'Non-refundable', 'No Refund', 'PAY004', 20, 'P004'),
('T005', 'B05', 'F105', '8F', 'Non-refundable', 'No Refund', 'PAY005', 30, 'P005'),
('T006', 'B06', 'F106', '9E', '50% Refund', 'Partial Refund', 'PAY006', 40, 'P006'),
('T007', 'B07', 'F107', '2A', '50% Refund', 'Partial Refund', 'PAY007', 20, 'P007'),
('T008', 'B08', 'F108', '6F', '50% Refund', 'Partial Refund', 'PAY008', 30, 'P008'),
('T009', 'B09', 'F109', '7D', '50% Refund', 'Partial Refund', 'PAY009', 40, 'P009'),
('T010', 'B10', 'F110', '3C', '50% Refund', 'Partial Refund', 'PAY010', 20, 'P010'),
('T011', 'B11', 'F111', '10A', '50% Refund', 'Partial Refund', 'PAY011', 30, 'P011'),
('T012', 'B12', 'F112', '4D', '50% Refund', 'Partial Refund', 'PAY012', 40, 'P012'),
('T013', 'B13', 'F113', '11B', '50% Refund', 'Partial Refund', 'PAY013', 20, 'P013'),
('T014', 'B14', 'F114', '2F', '50% Refund', 'Partial Refund', 'PAY014', 30, 'P014'),
('T015', 'B15', 'F115', '7E', '50% Refund', 'Partial Refund', 'PAY015', 40, 'P015'),
('T016', 'B16', 'F116', '9A', 'Full Refund', 'Full Refund', 'PAY016', 20, 'P016'),
('T017', 'B17', 'F117', '6D', 'Full Refund', 'Full Refund', 'PAY017', 30, 'P017'),
('T018', 'B18', 'F118', '8B', 'Full Refund', 'Full Refund', 'PAY018', 40, 'P018'),
('T019', 'B19', 'F119', '3E', 'Full Refund', 'Full Refund', 'PAY019', 20, 'P019'),
('T020', 'B20', 'F120', '14C', 'Full Refund', 'Full Refund', 'PAY020', 30, 'P020'),
('T021', 'B21', 'F121', '15A', 'Full Refund', 'Full Refund', 'PAY021', 40, 'P021'),
('T022', 'B22', 'F122', '7C', 'Full Refund', 'Full Refund', 'PAY022', 20, 'P022'),
('T023', 'B23', 'F123', '9D', 'Full Refund', 'Full Refund', 'PAY023', 30, 'P023'),
('T024', 'B24', 'F124', '4A', 'Full Refund', 'Full Refund', 'PAY024', 40, 'P024'),
('T025', 'B25', 'F125', '10F', 'Full Refund', 'Full Refund', 'PAY025', 20, 'P025');

-- Redemption Table
CREATE TABLE Redemption (
RedemptionID nvarchar(50) PRIMARY KEY NOT NULL,
FrequentFlyerID nvarchar(50) FOREIGN KEY REFERENCES FrequentFlyer(FrequentFlyerID),
MilesAccrued int,
RedemptionOption nvarchar(50),
);

INSERT INTO Redemption
(RedemptionID, FrequentFlyerID, MilesAccrued, RedemptionOption) 
VALUES
('R001', 'FF001', 3200, 'Seat Upgrades'),
('R002', 'FF001', 3200, 'Extra Baggage Allowance'),
('R003', 'FF002', 2700, 'Seat Upgrades'),
('R004', 'FF003', 2900, 'Priority Boarding'),
('R005', 'FF004', 3100, 'Seat Upgrades'),
('R006', 'FF005', 3200, 'Priority Boarding'),
('R007', 'FF006', 3300, 'Seat Upgrades'),
('R008', 'FF007', 3100, 'Priority Boarding'),
('R009', 'FF008', 4800, 'Free Flight'),
('R010', 'FF009', 6700, 'Companion Tickets'),
('R011', 'FF010', 3000, 'Priority Boarding'),
('R012', 'FF011', 5400, 'Airport Lounge Access'),
('R013', 'FF012', 5800, 'Free Flight'),
('R014', 'FF013', 3500, 'Airport Lounge Access'),
('R015', 'FF014', 2100, 'Seat Upgrades'),
('R016', 'FF015', 4300, 'Priority Boarding'),
('R017', 'FF015', 4300, 'Airport Lounge Access'),
('R018', 'FF016', 4600, 'Companion Tickets'),
('R019', 'FF016', 4600, 'Airport Lounge Access'),
('R020', 'FF017', 1400, 'Companion Tickets'),
('R021', 'FF018', 1500, 'Seat Upgrades'),
('R022', 'FF019', 6200, 'Priority Boarding'),
('R023', 'FF019', 6200, 'Airport Lounge Access'),
('R024', 'FF020', 3300, 'Free Flight'),
('R025', 'FF021', 4900, 'Seat Upgrades');

-- Emergency Contact Table
CREATE TABLE EmergencyContact (
PassengerID nvarchar(50) PRIMARY KEY NOT NULL,
EmergencyContactName nvarchar(50),
EmergencyContactRelationship nvarchar(50),
EmergencyContactPhone nvarchar(50),
);

INSERT INTO EmergencyContact 
(PassengerID, EmergencyContactName, EmergencyContactRelationship, EmergencyContactPhone) 
VALUES
('P001', 'John Doe', 'Father', '+60123456789'),
('P002', 'Jane Doe', 'Mother', '+60198765432'),
('P003', 'Mike Johnson', 'Brother', '+60123459876'),
('P004', 'Sarah Lee', 'Sister', '+60187654321'),
('P005', 'David Smith', 'Spouse', '+60156473829'),
('P006', 'Emily Brown', 'Friend', '+60127836495'),
('P007', 'Robert Wilson', 'Uncle', '+60187456321'),
('P008', 'Linda White', 'Aunt', '+60129837465'),
('P009', 'Kevin Harris', 'Cousin', '+60176543219'),
('P010', 'Laura Martin', 'Grandmother', '+60193287465'),
('P011', 'James Clark', 'Grandfather', '+60138765432'),
('P012', 'Rachel Adams', 'Neighbor', '+60156789123'),
('P013', 'Oliver Scott', 'Colleague', '+60176549821'),
('P014', 'Sophia Carter', 'Best Friend', '+60192837456'),
('P015', 'William Evans', 'Son', '+60138475921'),
('P016', 'Olivia Hall', 'Daughter', '+60123457891'),
('P017', 'Ethan Wright', 'Brother-in-law', '+60178456329'),
('P018', 'Isabella Green', 'Sister-in-law', '+60192384756'),
('P019', 'Alexander Young', 'Family Doctor', '+60135678912'),
('P020', 'Mia King', 'Mentor', '+60123784569'),
('P021', 'Henry Turner', 'Teacher', '+60129837458'),
('P022', 'Ava Perez', 'Coach', '+60129837465'),
('P023', 'Daniel Parker', 'Guardian', '+60178459632'),
('P024', 'Grace Collins', 'Landlord', '+60176548932'),
('P025', 'Benjamin Stewart', 'Business Partner', '+60123847596');

-- Staff Table
CREATE TABLE Staff
(StaffID nvarchar(50) Primary key NOT NULL, 
StaffName nvarchar(50),
StaffGender nvarchar(50),
StaffDOB Date,
StaffPhone nvarchar(50),
StaffNationality nvarchar(50),
StaffEmail nvarchar(50)
);

INSERT INTO Staff 
(StaffID, StaffName, StaffGender, StaffDOB, StaffPhone, StaffNationality, StaffEmail)
VALUES
('S001', 'Aiman Rahman', 'Male', '03 Dec 1989', '012-3456789', 'Malaysia', 'aiman@penyuair.com'),
('S002', 'Sarah Lim', 'Female', '14 Sep 1989', '013-9876543', 'Saudi Arabia', 'sarah@penyuair.com'),
('S003', 'Daniel Kim', 'Male', '17 Jun 2002', '014-7654321', 'North Korea', 'daniel@penyuair.com'),
('S004', 'Farah Ibrahim', 'Female', '23 Jan 2000', '016-3456781', 'Malaysia', 'farah@penyuair.com'),
('S005', 'Jason Tan', 'Male', '31 Dec 2001', '017-5678912', 'Indonesia', 'jason@penyuair.com'),
('S006', 'Nurul Hafizah', 'Female', '20 Dec 1999', '019-2345678', 'Malaysia', 'nurul@penyuair.com'),
('S007', 'Michael Cheng', 'Male', '30 Nov 1993', '018-7654329', 'Russia', 'michael@penyuair.com'),
('S008', 'Zainal Hassan', 'Male', '27 Apr 1990', '011-2345674', 'Malaysia', 'zainal@penyuair.com'),
('S009', 'Atof Hiler', 'Male', '20 Apr 1989', '010-9876545', 'Germany', 'atof@penyuair.com'),
('S010', 'Liyana Ahmad', 'Female', '23 May 1998', '012-6789345', 'Indonesia', 'liyana@penyuair.com'),
('S011', 'Sofia Aziz', 'Female', '13 May 1978', '014-3456783', 'Malaysia', 'sofia@penyuair.com'),
('S012', 'Rajesh Kumar', 'Male', '25 Aug 2003', '016-8765432', 'Brunei', 'rajesh@penyuair.com'),
('S013', 'Aida Mustapha', 'Male', '19 Aug 1969', '019-4567890', 'Afghanistan', 'aida@penyuair.com'),
('S014', 'Amirul Hakim', 'Female', '28 Jun 1992', '018-6789345', 'Saudi Arabia', 'amirul@penyuair.com'),
('S015', 'Vincent Goh', 'Male', '24 May 1999', '017-3456782', 'Malaysia', 'vincent@penyuair.com'),
('S016', 'Yasmin Zainal', 'Female', '12 Apr 1970', '015-7896543', 'Malaysia', 'yasmin@penyuair.com'),
('S017', 'Nizam Harun', 'Female', '18 Oct 1995', '013-7654321', 'Brunei', 'nizam@penyuair.com'),
('S018', 'Stephanie Yeo', 'Female', '31 Jul 1980', '019-9876123', 'Thailand', 'stephanie@penyuair.com'),
('S019', 'Ahmad Razi', 'Male', '15 Mar 2006', '017-5436789', 'Thailand', 'ahmad@penyuair.com'),
('S020', 'Chong Wei', 'Male', '29 Sep 1990', '016-2345679', 'Malaysia', 'chong@penyuair.com'),
('S021', 'Diana Roslan', 'Female', '17 Sep 2003', '018-1234567', 'Russia', 'diana@penyuair.com'),
('S022', 'Faizal Mahmud', 'Male', '18 Feb 2000', '014-6789012', 'Afghanistan', 'faizal@penyuair.com'),
('S023', 'Katherine Lee', 'Female', '26 Feb 2005', '012-9087654', 'Japan', 'katherine@penyuair.com'),
('S024', 'Zulhafiz Rahim', 'Male', '29 Feb 2004', '019-5678901', 'Malaysia', 'zulhafiz@penyuair.com'),
('S025', 'Noraini Hamzah', 'Female', '19 Dec 2002', '017-6789123', 'Indonesia', 'noraini@penyuair.com');

-- Department Table
CREATE TABLE Department
(DepartmentID nvarchar(50) Primary Key NOT NULL, 
DepartmentName nvarchar(50),
DepartmentLocation nvarchar(50)
);

INSERT INTO Department 
(DepartmentID, DepartmentName, DepartmentLocation)
VALUES
('D001', 'Customer Service', 'Kuala Lumpur HQ'),
('D002', 'Customer Service', 'Penang Branch'),
('D003', 'Operations', 'Kuala Lumpur HQ'),
('D004', 'Cabin Crew', 'Kuala Lumpur HQ'),
('D005', 'Cabin Crew', 'Johor Bahru Branch'),
('D006', 'Ground Services', 'Kuala Lumpur HQ'),
('D007', 'Ground Services', 'Kota Kinabalu Branch'),
('D008', 'Flight Crew', 'Kuala Lumpur HQ'),
('D009', 'Flight Crew', 'Kuching Branch'),
('D010', 'Cabin Crew', 'Kota Kinabalu Branch'),
('D011', 'Customer Service', 'Kuching Branch'),
('D012', 'IT Department', 'Kuala Lumpur HQ'),
('D013', 'IT Department', 'Cyberjaya Branch'),
('D014', 'Ground Services', 'Penang Branch'),
('D015', 'Ground Services', 'Johor Bahru Branch'),
('D016', 'Customer Service', 'Kota Kinabalu Branch'),
('D017', 'Flight Crew', 'Penang Branch'),
('D018', 'Cabin Crew', 'Langkawi Branch'),
('D019', 'Flight Crew', 'Johor Bahru Branch'),
('D020', 'Customer Service', 'Langkawi Branch'),
('D021', 'Ground Services', 'Kuching Branch'),
('D022', 'Catering Services', 'Kuala Lumpur HQ'),
('D023', 'Lounge Services', 'Kuala Lumpur HQ'),
('D024', 'Security', 'Kuala Lumpur HQ'),
('D025', 'Medical Services', 'Kuala Lumpur HQ');

-- Position Table
CREATE TABLE Position 
(PositionID nvarchar(50) PRIMARY KEY NOT NULL, 
Position nvarchar(50),
Salary DECIMAL(10,2)
);

INSERT INTO Position 
(PositionID, Position, Salary)
VALUES
('P001', 'Ticketing Agent', 3500),
('P002', 'Ticketing Agent', 3500),
('P003', 'Flight Manager', 12000),
('P004', 'Flight Attendant', 5500),
('P005', 'Flight Attendant', 5500),
('P006', 'Check-in Officer', 4000),
('P007', 'Check-in Officer', 4000),
('P008', 'Pilot', 25000),
('P009', 'Co-Pilot', 15000),
('P010', 'Cabin Crew Manager', 8500),
('P011', 'Customer Support', 3800),
('P012', 'IT Support', 5000),
('P013', 'IT Support', 5000),
('P014', 'Baggage Handler', 3200),
('P015', 'Baggage Handler', 3200),
('P016', 'Customer Support', 3800),
('P017', 'Pilot', 25000),
('P018', 'Flight Attendant', 5500),
('P019', 'Flight Engineer', 13000),
('P020', 'Ticketing Supervisor', 5000),
('P021', 'Ground Supervisor', 6000),
('P022', 'Catering Manager', 7500),
('P023', 'Lounge Manager', 7000),
('P024', 'Security Officer', 4500),
('P025', 'Medical Officer', 9000);

-- StaffJob Table
CREATE TABLE StaffJob
(StaffID nvarchar(50) PRIMARY KEY NOT NULL,
PositionID nvarchar(50),
EmploymentType nvarchar(50),
WorkingShift nvarchar(50),
HiredDate Date,
CertificationLevel nvarchar(50),
DutyStatus nvarchar(50),
FOREIGN KEY (PositionID) REFERENCES Position(PositionID)
);

INSERT INTO StaffJob 
(StaffID, PositionID, EmploymentType, WorkingShift, HiredDate, CertificationLevel, DutyStatus)
VALUES
('S001', 'P001', 'Full-Time', 'Morning', '12 Jun 2015', 'Level 3', 'Active'),
('S002', 'P002', 'Part-Time', 'Evening', '23 Aug 2019', 'Level 2', 'Active'),
('S003', 'P003', 'Full-Time', 'Morning', '05 Apr 2017', 'Level 4', 'On Leave'),
('S004', 'P004', 'Contract', 'Rotational', '30 Oct 2021', 'Level 3', 'Active'),
('S005', 'P005', 'Full-Time', 'Rotational', '18 Jul 2018', 'Level 5', 'Active'),
('S006', 'P006', 'Full-Time', 'Morning', '09 Dec 2016', 'Level 4', 'On Duty'),
('S007', 'P007', 'Part-Time', 'Evening', '09 Nov 2002', 'Level 1', 'Training'),
('S008', 'P008', 'Contract', 'Rotational', '06 Jun 2020', 'Level 3', 'Active'),
('S009', 'P009', 'Full-Time', 'Rotational', '21 May 2013', 'Level 5', 'On Duty'),
('S010', 'P010', 'Full-Time', 'Rotational', '03 Sep 2015', 'Level 4', 'Active'),
('S011', 'P011', 'Part-Time', 'Morning', '15 Mar 2021', 'Level 2', 'On Leave'),
('S012', 'P012', 'Full-Time', 'Morning', '28 Feb 2018', 'Level 3', 'Active'),
('S013', 'P013', 'Part-Time', 'Evening', '04 Apr 2023', 'Level 1', 'Training'),
('S014', 'P014', 'Contract', 'Rotational', '20 Jan 2020', 'Level 3', 'Active'),
('S015', 'P015', 'Full-Time', 'Rotational', '12 Sep 2017', 'Level 5', 'On Duty'),
('S016', 'P016', 'Part-Time', 'Evening', '25 Jun 2022', 'Level 2', 'Training'),
('S017', 'P017', 'Full-Time', 'Rotational', '07 Aug 2019', 'Level 4', 'Active'),
('S018', 'P018', 'Contract', 'Rotational', '03 Dec 2016', 'Level 3', 'On Leave'),
('S019', 'P019', 'Full-Time', 'Morning', '14 Jul 2014', 'Level 5', 'Active'),
('S020', 'P020', 'Full-Time', 'Morning', '22 Nov 2015', 'Level 4', 'Active'),
('S021', 'P021', 'Full-Time', 'Morning', '08 Feb 2018', 'Level 3', 'On Duty'),
('S022', 'P022', 'Full-Time', 'Morning', '01 May 2016', 'Level 5', 'Active'),
('S023', 'P023', 'Part-Time', 'Morning', '10 Sep 2023', 'Level 1', 'Training'),
('S024', 'P024', 'Contract', 'Rotational', '05 Oct 2020', 'Level 3', 'On Leave'),
('S025', 'P025', 'Full-Time', 'Morning', '12 Apr 2017', 'Level 4', 'Active');

-- StaffBaseAirport Table
CREATE TABLE StaffBaseAirport 
(StaffID nvarchar(50) PRIMARY KEY NOT NULL,
BaseAirport nvarchar(50),
FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

INSERT INTO StaffBaseAirport 
(StaffID, BaseAirport)
VALUES
('S001', 'KLIA (KUL)'),
('S002', 'Penang Int''l (PEN)'),
('S003', 'KLIA (KUL)'),
('S004', 'KLIA (KUL)'),
('S005', 'Senai Int''l (JHB)'),
('S006', 'KLIA (KUL)'),
('S007', 'KKIA (BKI)'),
('S008', 'KLIA (KUL)'),
('S009', 'Kuching Int''l (KCH)'),
('S010', 'KKIA (BKI)'),
('S011', 'Kuching Int''l (KCH)'),
('S012', 'KLIA (KUL)'),
('S013', 'No Base Airport'),
('S014', 'Penang Int''l (PEN)'),
('S015', 'Senai Int''l (JHB)'),
('S016', 'KKIA (BKI)'),
('S017', 'Penang Int''l (PEN)'),
('S018', 'Langkawi Int''l (LGK)'),
('S019', 'Senai Int''l (JHB)'),
('S020', 'Langkawi Int''l (LGK)'),
('S021', 'Kuching Int''l (KCH)'),
('S022', 'KLIA (KUL)'),
('S023', 'KLIA (KUL)'),
('S024', 'KLIA (KUL)'),
('S025', 'KLIA (KUL)');

-- Booking Table
CREATE TABLE Booking (
PNR NVARCHAR(50) PRIMARY KEY NOT NULL,
FlightID NVARCHAR(50) FOREIGN KEY REFERENCES Flight(FlightID),
PassengerID NVARCHAR(50) FOREIGN KEY REFERENCES Passenger(PassengerID),
TicketNumber NVARCHAR(50) FOREIGN KEY REFERENCES Ticket(TicketNumber),
ServiceID NVARCHAR(50) FOREIGN KEY REFERENCES Service(ServiceID),
StaffID NVARCHAR(50) FOREIGN KEY REFERENCES Staff(StaffID),
BookingChannel NVARCHAR(50),
BookingDate DATE,
);

INSERT INTO Booking 
(PNR, FlightID, PassengerID, TicketNumber, ServiceID, StaffID, BookingChannel, BookingDate)
VALUES
('PNR01', 'F101', 'P001', 'T001', 'SVC001', 'S001', 'Website', '3 Feb 2025'),
('PNR02', 'F101', 'P002', 'T002', 'SVC002', 'S002', 'Agent', '8 Feb 2025'),
('PNR03', 'F101', 'P003', 'T003', 'SVC003', 'S003', 'Mobile', '22 Mar 2025'),
('PNR04', 'F101', 'P004', 'T004', 'SVC004', 'S004', 'Website', '6 Feb 2025'),
('PNR05', 'F101', 'P005', 'T005', 'SVC005', 'S005', 'Agent', '11 Feb 2025'),
('PNR06', 'F101', 'P006', 'T006', 'SVC006', 'S006', 'Website', '20 Mar 2025'),
('PNR07', 'F101', 'P007', 'T007', 'SVC007', 'S007', 'Mobile', '20 Mar 2025'),
('PNR08', 'F101', 'P008', 'T008', 'SVC008', 'S008', 'Agent', '21 Feb 2025'),
('PNR09', 'F101', 'P009', 'T009', 'SVC009', 'S009', 'Website', '1 Feb 2025'),
('PNR10', 'F101', 'P010', 'T010', 'SVC010', 'S010', 'Mobile', '4 Apr 2025'),
('PNR11', 'F101', 'P011', 'T011', 'SVC011', 'S011', 'Website', '14 Apr 2025'),
('PNR12', 'F101', 'P012', 'T012', 'SVC012', 'S012', 'Agent', '24 Jan 2025'),
('PNR13', 'F101', 'P013', 'T013', 'SVC013', 'S013', 'Website', '22 Feb 2025'),
('PNR14', 'F101', 'P014', 'T014', 'SVC014', 'S014', 'Mobile', '16 Apr 2025'),
('PNR15', 'F101', 'P015', 'T015', 'SVC015', 'S015', 'Agent', '14 Apr 2025'),
('PNR16', 'F101', 'P016', 'T016', 'SVC016', 'S016', 'Website', '15 Jan 2025'),
('PNR17', 'F101', 'P017', 'T017', 'SVC017', 'S017', 'Mobile', '25 Feb 2025'),
('PNR18', 'F101', 'P018', 'T018', 'SVC018', 'S018', 'Website', '31 Mar 2025'),
('PNR19', 'F101', 'P019', 'T019', 'SVC019', 'S019', 'Agent', '24 Apr 2025'),
('PNR20', 'F101', 'P020', 'T020', 'SVC020', 'S020', 'Website', '15 Jan 2025'),
('PNR21', 'F101', 'P021', 'T021', 'SVC021', 'S021', 'Mobile', '1 Mar 2025'),
('PNR22', 'F101', 'P022', 'T022', 'SVC022', 'S022', 'Agent', '24 Feb 2025'),
('PNR23', 'F101', 'P023', 'T023', 'SVC023', 'S023', 'Website', '26 Apr 2025'),
('PNR24', 'F101', 'P024', 'T024', 'SVC024', 'S024', 'Mobile', '10 Feb 2025'),
('PNR25', 'F101', 'P025', 'T025', 'SVC025', 'S025', 'Agent', '17 Feb 2025');

Select* from Pilot
Select* from CoPilot
Select* from Baggage
Select* from Service
Select* from Flight
Select* from Payment
Select* from FrequentFlyer
Select* from Passenger
Select* from Ticket
Select* from Redemption
Select* from EmergencyContact
Select* from Staff
Select* from Department
Select* from Position
Select* from StaffJob
Select* from StaffBaseAirport
Select* from Booking








-- Question 1
SELECT PassengerID, COUNT(TicketNumber) AS NumberOfTickets
FROM Booking
GROUP BY PassengerID;

-- Question 2
Select Destination AS Flight, COUNT(*) AS BookingCount
FROM Flight
GROUP BY Destination
HAVING COUNT(*) = (SELECT MAX(FlightCount) 
FROM (SELECT COUNT(*) AS FlightCount FROM Flight GROUP BY Destination) AS SubQuery);

-- Question 3
SELECT BookingChannel, COUNT(*) AS TicketsBooked
FROM Booking
GROUP BY BookingChannel
HAVING COUNT(*) = (SELECT MAX(TicketCount)
FROM (SELECT COUNT(*) AS TicketCount FROM Booking GROUP BY BookingChannel) AS SubQuery);

-- Question 4
SELECT Baggage.Class, SUM(Ticket.SeatSelectionFee) AS TotalSeatSelectionFee
FROM Ticket
INNER JOIN Baggage ON Ticket.BaggageID = Baggage.BaggageID
WHERE Baggage.BaggageID IN 
(SELECT BaggageID FROM Flight WHERE BookingDate BETWEEN '1 Jan 2025' AND '31 Jan 2025')
GROUP BY Baggage.Class;

-- Question 5
SELECT Destination AS Flight, COUNT(FlightID) AS NumberOfTicketsReserved
FROM Flight
GROUP BY Destination
HAVING COUNT(FlightID) > (SELECT AVG(TotalFlight) FROM (SELECT COUNT(FlightID) AS TotalFlight FROM Flight
GROUP BY Destination) AS AvgFlight
);

-- Question 6
Select Baggage.Class, SUM(Price) AS TotalAmountRefunded
FROM Ticket
INNER JOIN Payment ON Ticket.PaymentID = Payment.PaymentID
INNER JOIN Baggage ON Ticket.BaggageID = Baggage.BaggageID
WHERE Ticket.RefundStatus = 'Full Refund'
GROUP BY Baggage.Class;

-- Question 7
SELECT TOP 3 MONTH(Flight.BookingDate) AS Month, Baggage.Class,
MAX(Payment.Price) AS HighestTicketPrice, COUNT(Baggage.BaggageID) AS TicketsSold
FROM Flight
FULL OUTER JOIN Baggage ON Flight.BaggageID = Baggage.BaggageID
FULL OUTER JOIN Payment ON Payment.FlightID = Flight.FlightID
WHERE Flight.BookingDate >= DATEADD(MONTH, -3, GETDATE())
GROUP BY MONTH(Flight.BookingDate), Baggage.Class
ORDER BY Month DESC, HighestTicketPrice DESC;

-- Question 8
SELECT COUNT(DISTINCT Passenger.PassengerID) AS TotalFrequentFlyers
FROM Passenger
INNER JOIN Ticket ON Passenger.PassengerID = Ticket.PassengerID
INNER JOIN Flight ON Ticket.FlightID = Flight.FlightID
WHERE Flight.BookingDate BETWEEN '1 Jan 2025' AND '31 Mar 2025'
AND Passenger.FrequentFlyerStatus = 'Frequent';

-- Question 9
SELECT SUM(Baggage.ExcessFee) AS TotalAdditionalBaggageFee, SUM(Service.SpecialServiceFee) AS TotalSpecialServiceFee
FROM Baggage
INNER JOIN Service ON Baggage.BaggageID = Service.BaggageID;

-- Question 10
SELECT MONTH(Flight.BookingDate) AS MostInactiveMonth, COUNT(Passenger.PassengerID) AS InactiveTravelers
FROM Passenger
INNER JOIN Ticket ON Passenger.PassengerID = Ticket.PassengerID
INNER JOIN Flight ON Ticket.FlightID = Flight.FlightID
WHERE Passenger.FrequentFlyerStatus = 'Inactive'
GROUP BY MONTH(Flight.BookingDate)
HAVING COUNT(Passenger.PassengerID) = (SELECT MAX(InactiveTravelers)
FROM (SELECT MONTH(Flight.BookingDate) AS MostInactiveMonth, COUNT(Passenger.PassengerID) AS InactiveTravelers
FROM Passenger
INNER JOIN Ticket ON Passenger.PassengerID = Ticket.PassengerID
INNER JOIN Flight ON Ticket.FlightID = Flight.FlightID
WHERE Passenger.FrequentFlyerStatus = 'Inactive'
GROUP BY MONTH(Flight.BookingDate)) AS MonthlyCounts
);

-- Question 11
Select COUNT(DISTINCT Ticket.PassengerID) AS DomesticFlightPassengers
FROM Ticket
INNER JOIN Flight ON Ticket.FlightID = Flight.FlightID
WHERE Flight.TypeOfFlight = 'Domestic'
AND Flight.BookingDate BETWEEN '1 Jun 2025' AND '30 Jun 2025';

-- Question 12
SELECT COUNT(*) AS NumberOfPassengers
FROM Passenger
INNER JOIN Ticket ON Passenger.PassengerID = Ticket.PassengerID
INNER JOIN Flight ON Ticket.FlightID = Flight.FlightID
WHERE Passenger.Age < 15
AND Flight.TypeOfFlight = 'International';

-- Question 13
SELECT DISTINCT FirstName, LastName, PhoneNumber
FROM Passenger
INNER JOIN Flight ON Flight.FlightID = Flight.FlightID
WHERE Flight.TypeOfFlight = 'Domestic'
AND Passenger.FrequentFlyerStatus = 'Occasional';


-- Question 14
SELECT MONTH(Flight.BookingDate) AS Month, 
MIN(Payment.Price) AS LowestPrice
FROM Payment
INNER JOIN Flight ON Payment.FlightID = Flight.FlightID
WHERE Flight.TypeOfFlight = 'Domestic'
GROUP BY MONTH(Flight.BookingDate)
HAVING MIN(Payment.Price) = (SELECT MIN(Payment.Price)  
FROM Payment
INNER JOIN Flight ON Payment.FlightID = Flight.FlightID  
WHERE Flight.TypeOfFlight = 'Domestic'  
);

-- Question 15
SELECT Baggage.Class, COUNT(*) AS TotalBookings
FROM Baggage
GROUP BY Baggage.Class
HAVING COUNT(*) = (SELECT MAX(ClassCount) 
FROM (SELECT COUNT(*) AS ClassCount 
FROM Baggage
);