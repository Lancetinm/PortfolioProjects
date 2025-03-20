-- Create the database and select it
CREATE DATABASE `Barnes`;
USE `Barnes`;

-- Create the CUSTOMER table
CREATE TABLE CUSTOMER(
	Customer_ID VARCHAR(10),
	Cust_Name VARCHAR(50) NOT NULL,
	DOB DATE NOT NULL,
	Age INT,
	Cust_Email VARCHAR(50) NOT NULL UNIQUE,
	Membership_Status VARCHAR(10) NOT NULL,
	Cust_State CHAR(2),
	Cust_City VARCHAR(30),
	Cust_Street VARCHAR(50),
	Cust_Zip CHAR(5),
	CONSTRAINT PK_CUSTOMER PRIMARY KEY (Customer_ID)
);

-- Create the PRONOUNS table
CREATE TABLE PRONOUNS(
	Customer_ID VARCHAR(10) UNIQUE,
	Pref_Pronouns VARCHAR(10) NOT NULL,
	CONSTRAINT FK_PRONOUNS_CUSTOMER FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER(Customer_ID)
);

-- Create the GENRE table
CREATE TABLE GENRE(
	Customer_ID VARCHAR(10) UNIQUE,
	Pref_Genre VARCHAR(10) NOT NULL,
	CONSTRAINT FK_GENRE_CUSTOMER FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER(Customer_ID)
);

-- Create the MODIFY table
CREATE TABLE MODIFY (
	Promotion_Code varchar(10) primary key,
    Product_ID char(10) unique
    );

-- Create the CONTAINS table
CREATE TABLE CONTAINS(
	O_No varchar(3) primary key,
    Product_ID char(10) unique
    );


-- Insert data into CUSTOMER
INSERT INTO CUSTOMER (Customer_ID, Cust_Name, DOB, Age, Cust_Email, Membership_Status, Cust_State, Cust_City, Cust_Street, Cust_Zip) VALUES
('C001', 'John Doe', '1980-01-01', 44, 'john.doe@example.com', 'Active', 'NV', 'Las Vegas', '1001 Tropicana Ave', '89109'),
('C002', 'Jane Smith', '1990-05-15', 34, 'jane.smith@example.com', 'Inactive', 'NV', 'Reno', '2002 Virginia St', '89501'),
('C003', 'Alice Johnson', '1975-09-23', 49, 'alice.johnson@example.com', 'Active', 'NV', 'Henderson', '3003 Sunset Rd', '89011'),
('C004', 'Bob Brown', '1985-12-10', 39, 'bob.brown@example.com', 'Active', 'NV', 'Sparks', '4004 Pyramid Way', '89431'),
('C005', 'Charlie Davis', '2000-03-25', 24, 'charlie.davis@example.com', 'Active', 'NV', 'Carson City', '5005 N Carson St', '89701'),
('C006', 'David Miller', '1992-07-05', 32, 'david.miller@example.com', 'Inactive', 'NV', 'Elko', '6006 Idaho St', '89801'),
('C007', 'Emma Wilson', '1982-02-14', 42, 'emma.wilson@example.com', 'Active', 'NV', 'Mesquite', '7007 W Pioneer Blvd', '89027'),
('C008', 'Frank Moore', '1995-08-29', 29, 'frank.moore@example.com', 'Active', 'NV', 'Pahrump', '8008 S Highway 160', '89048'),
('C009', 'Grace Taylor', '1988-11-19', 36, 'grace.taylor@example.com', 'Active', 'NV', 'Fallon', '9009 E Williams Ave', '89406'),
('C010', 'Hannah Martinez', '1997-03-03', 27, 'hannah.martinez@example.com', 'Inactive', 'NV', 'North Las Vegas', '1010 Civic Center Dr', '89030'),
('C011', 'Ian Harris', '1979-06-17', 45, 'ian.harris@example.com', 'Active', 'NV', 'Winnemucca', '1101 Winnemucca Blvd', '89445'),
('C012', 'Jack Clark', '1991-10-08', 33, 'jack.clark@example.com', 'Active', 'NV', 'Boulder City', '1202 Nevada Hwy', '89005'),
('C013', 'Katherine Lewis', '1983-01-30', 41, 'katherine.lewis@example.com', 'Active', 'NV', 'Laughlin', '1303 S Casino Dr', '89029'),
('C014', 'Liam Walker', '1987-12-22', 37, 'liam.walker@example.com', 'Inactive', 'NV', 'Indian Springs', '1404 US Highway 95', '89018'),
('C015', 'Megan Hall', '1994-04-12', 30, 'megan.hall@example.com', 'Active', 'NV', 'Spring Creek', '1505 Spring Creek Pkwy', '89815'),
('C016', 'Nathan Young', '1980-09-05', 44, 'nathan.young@example.com', 'Active', 'NV', 'West Wendover', '1606 Wendover Blvd', '89883'),
('C017', 'Olivia King', '1992-06-22', 32, 'olivia.king@example.com', 'Active', 'NV', 'Ely', '1707 Aultman St', '89301'),
('C018', 'Paul Scott', '1977-11-09', 47, 'paul.scott@example.com', 'Active', 'NV', 'Reno', '1808 N Virginia St', '89503'),
('C019', 'Quinn Adams', '2000-02-04', 24, 'quinn.adams@example.com', 'Inactive', 'NV', 'Las Vegas', '1909 Las Vegas Blvd', '89102'),
('C020', 'Rachel Robinson', '1984-03-17', 40, 'rachel.robinson@example.com', 'Active', 'NV', 'Henderson', '2000 Green Valley Pkwy', '89014'),
('C021', 'Samuel Green', '1993-08-10', 31, 'samuel.green@example.com', 'Inactive', 'NV', 'Carson City', '2101 S Carson St', '89706'),
('C022', 'Tina Carter', '1981-04-30', 43, 'tina.carter@example.com', 'Active', 'NV', 'Mesquite', '2202 N Sandhill Blvd', '89027'),
('C023', 'Ursula Perez', '1990-10-05', 34, 'ursula.perez@example.com', 'Active', 'NV', 'Sparks', '2303 Baring Blvd', '89431'),
('C024', 'Victor Sanchez', '1976-02-15', 48, 'victor.sanchez@example.com', 'Inactive', 'NV', 'Elko', '2404 Mountain City Hwy', '89801'),
('C025', 'Wendy Murphy', '1989-07-22', 35, 'wendy.murphy@example.com', 'Active', 'NV', 'North Las Vegas', '2505 N Las Vegas Blvd', '89030'),
('C026', 'Xander Flores', '1996-09-11', 28, 'xander.flores@example.com', 'Active', 'NV', 'Henderson', '2606 Sunset Rd', '89014'),
('C027', 'Yvonne Cooper', '1985-03-06', 39, 'yvonne.cooper@example.com', 'Inactive', 'NV', 'Reno', '2707 Pyramid Way', '89502'),
('C028', 'Zachary Gonzalez', '1982-08-20', 42, 'zachary.gonzalez@example.com', 'Active', 'NV', 'Carson City', '2808 Fairview Dr', '89701'),
('C029', 'Adeline Mitchell', '1994-10-19', 30, 'adeline.mitchell@example.com', 'Active', 'NV', 'Elko', '2909 Idaho St', '89801'),
('C030', 'Brian Perez', '1978-01-17', 46, 'brian.perez@example.com', 'Inactive', 'NV', 'Mesquite', '3001 W Mesquite Blvd', '89027'),
('C031', 'Cynthia Murphy', '1993-05-29', 31, 'cynthia.murphy@example.com', 'Active', 'NV', 'Reno', '3102 W 2nd St', '89503'),
('C032', 'Dylan Carter', '1998-02-12', 26, 'dylan.carter@example.com', 'Active', 'NV', 'Sparks', '3203 E Prater Way', '89431'),
('C033', 'Eva Richardson', '1987-11-23', 37, 'eva.richardson@example.com', 'Inactive', 'NV', 'Henderson', '3304 S Boulder Hwy', '89011'),
('C034', 'Felix Wilson', '1986-12-30', 38, 'felix.wilson@example.com', 'Active', 'NV', 'Carson City', '3405 E College Pkwy', '89706'),
('C035', 'Gina Young', '1974-06-17', 50, 'gina.young@example.com', 'Active', 'NV', 'Pahrump', '3506 W Bell Vista Ave', '89048'),
('C036', 'Hugo Adams', '1992-10-22', 32, 'hugo.adams@example.com', 'Active', 'NV', 'Fallon', '3607 N Maine St', '89406'),
('C037', 'Iris Turner', '1989-03-05', 35, 'iris.turner@example.com', 'Inactive', 'NV', 'Boulder City', '3708 Nevada Hwy', '89005'),
('C038', 'Jackie Morris', '1988-11-01', 36, 'jackie.morris@example.com', 'Active', 'NV', 'Las Vegas', '3809 Flamingo Rd', '89103'),
('C039', 'Keith Robinson', '1976-07-22', 48, 'keith.robinson@example.com', 'Active', 'NV', 'Mesquite', '3901 E Pioneer Blvd', '89027'),
('C040', 'Laura Walker', '1997-02-12', 27, 'laura.walker@example.com', 'Active', 'NV', 'Reno', '4002 Lakeside Dr', '89509'),
('C041', 'Mark Evans', '1999-06-24', 25, 'mark.evans@example.com', 'Inactive', 'NV', 'Sparks', '4103 McCarran Blvd', '89431'),
('C042', 'Nina Roberts', '1998-05-20', 26, 'nina.roberts@example.com', 'Active', 'NV', 'Carson City', '4204 S Carson St', '89701'),
('C043', 'Oscar Williams', '1995-11-15', 29, 'oscar.williams@example.com', 'Inactive', 'NV', 'Pahrump', '4305 S Nevada Hwy', '89048'),
('C044', 'Patricia Moore', '1987-03-30', 37, 'patricia.moore@example.com', 'Active', 'NV', 'Elko', '4406 Mountain City Hwy', '89801'),
('C045', 'Quincy Jackson', '1983-08-25', 41, 'quincy.jackson@example.com', 'Inactive', 'NV', 'Las Vegas', '4507 Las Vegas Blvd', '89102'),
('C046', 'Rachel Lee', '1992-01-10', 32, 'rachel.lee@example.com', 'Active', 'NV', 'Henderson', '4608 Horizon Ridge Pkwy', '89012'),
('C047', 'Steven Harris', '1990-12-05', 34, 'steven.harris@example.com', 'Active', 'NV', 'Carson City', '4709 S Carson St', '89701'),
('C048', 'Tina Young', '1985-04-12', 39, 'tina.young@example.com', 'Inactive', 'NV', 'Pahrump', '4801 W Highway 160', '89048'),
('C049', 'Ursula Baker', '1996-09-18', 28, 'ursula.baker@example.com', 'Active', 'NV', 'Mesquite', '4902 N Sandhill Blvd', '89027'),
('C050', 'Victor Harris', '1988-07-30', 36, 'victor.harris@example.com', 'Inactive', 'NV', 'Reno', '5003 Pyramid Way', '89502'),
('C051', 'Wendy Johnson', '1989-02-18', 35, 'wendy.johnson@example.com', 'Active', 'NV', 'Las Vegas', '5104 E Tropicana Ave', '89122'),
('C052', 'Xander Miller', '1991-08-07', 33, 'xander.miller@example.com', 'Inactive', 'NV', 'Reno', '5205 Kietzke Ln', '89502'),
('C053', 'Yasmine Taylor', '1987-09-12', 37, 'yasmine.taylor@example.com', 'Active', 'NV', 'Elko', '5306 Gold Rush Dr', '89801'),
('C054', 'Zane Thompson', '1994-11-02', 30, 'zane.thompson@example.com', 'Inactive', 'NV', 'Carson City', '5407 S Carson St', '89701'),
('C055', 'Amelia White', '1985-05-24', 39, 'amelia.white@example.com', 'Active', 'NV', 'Pahrump', '5508 S Highway 160', '89048'),
('C056', 'Benjamin Garcia', '1992-03-17', 32, 'benjamin.garcia@example.com', 'Active', 'NV', 'Mesquite', '5609 W Mesquite Blvd', '89027'),
('C057', 'Catherine Young', '1997-12-04', 27, 'catherine.young@example.com', 'Inactive', 'NV', 'Henderson', '5701 S Green Valley Pkwy', '89052'),
('C058', 'Darren Lee', '1981-06-13', 43, 'darren.lee@example.com', 'Active', 'NV', 'Reno', '5802 Caughlin Pkwy', '89519'),
('C059', 'Elaine King', '1989-07-30', 35, 'elaine.king@example.com', 'Active', 'NV', 'Las Vegas', '5903 S Maryland Pkwy', '89119'),
('C060', 'Franklin Scott', '1993-09-25', 31, 'franklin.scott@example.com', 'Inactive', 'NV', 'Carson City', '6004 W College Pkwy', '89706'),
('C061', 'Grace Turner', '1990-01-17', 34, 'grace.turner@example.com', 'Active', 'NV', 'Sparks', '6105 Pyramid Way', '89431'),
('C062', 'Hannah Clark', '1987-03-20', 37, 'hannah.clark@example.com', 'Inactive', 'NV', 'Elko', '6206 Sage St', '89801'),
('C063', 'Ian Adams', '1992-05-15', 32, 'ian.adams@example.com', 'Active', 'NV', 'Pahrump', '6307 W Gamebird Rd', '89048'),
('C064', 'Jasmine Robinson', '1983-10-10', 41, 'jasmine.robinson@example.com', 'Inactive', 'NV', 'Mesquite', '6408 E Old Hwy 91', '89027'),
('C065', 'Kevin Evans', '1996-11-04', 28, 'kevin.evans@example.com', 'Active', 'NV', 'Reno', '6509 W 4th St', '89523'),
('C066', 'Lily Miller', '1988-05-18', 36, 'lily.miller@example.com', 'Active', 'NV', 'Carson City', '6601 E 5th St', '89701'),
('C067', 'Mark Garcia', '1991-01-14', 33, 'mark.garcia@example.com', 'Inactive', 'NV', 'Sparks', '6702 E Prater Way', '89431'),
('C068', 'Nina Adams', '1995-07-22', 29, 'nina.adams@example.com', 'Active', 'NV', 'Las Vegas', '6803 W Flamingo Rd', '89103'),
('C069', 'Oscar Davis', '1993-12-25', 31, 'oscar.davis@example.com', 'Active', 'NV', 'Pahrump', '6904 W Desert Inn Rd', '89048'),
('C070', 'Pamela Lee', '1989-04-02', 35, 'pamela.lee@example.com', 'Inactive', 'NV', 'Mesquite', '7005 N Sand Ave', '89027'),
('C071', 'Quinn Carter', '1981-08-28', 43, 'quinn.carter@example.com', 'Active', 'NV', 'Henderson', '7106 S Eastern Ave', '89014'),
('C072', 'Rebecca Turner', '1984-12-19', 40, 'rebecca.turner@example.com', 'Inactive', 'NV', 'Reno', '7207 Lakeside Dr', '89509'),
('C073', 'Steven Johnson', '1996-06-11', 28, 'steven.johnson@example.com', 'Active', 'NV', 'Las Vegas', '7308 W Charleston Blvd', '89117'),
('C074', 'Tina Martinez', '1985-03-25', 39, 'tina.martinez@example.com', 'Active', 'NV', 'Carson City', '7409 S Carson St', '89701'),
('C075', 'Ursula Brown', '1992-10-17', 32, 'ursula.brown@example.com', 'Inactive', 'NV', 'Mesquite', '7501 N Pioneer Blvd', '89027');

-- Insert data into PRONOUNS
INSERT INTO PRONOUNS (Customer_ID, Pref_Pronouns) VALUES
('C001', 'he'),
('C002', 'she'),
('C003', 'they'),
('C004', 'he'),
('C005', 'she'),
('C006', 'they'),
('C007', 'he'),
('C008', 'she'),
('C009', 'they'),
('C010', 'he'),
('C011', 'she'),
('C012', 'they'),
('C013', 'he'),
('C014', 'she'),
('C015', 'they'),
('C016', 'he'),
('C017', 'she'),
('C018', 'they'),
('C019', 'he'),
('C020', 'she'),
('C021', 'they'),
('C022', 'he'),
('C023', 'she'),
('C024', 'they'),
('C025', 'he'),
('C026', 'she'),
('C027', 'they'),
('C028', 'he'),
('C029', 'she'),
('C030', 'they'),
('C031', 'he'),
('C032', 'she'),
('C033', 'they'),
('C034', 'he'),
('C035', 'she'),
('C036', 'they'),
('C037', 'he'),
('C038', 'she'),
('C039', 'they'),
('C040', 'he'),
('C041', 'she'),
('C042', 'they'),
('C043', 'he'),
('C044', 'she'),
('C045', 'they'),
('C046', 'he'),
('C047', 'she'),
('C048', 'they'),
('C049', 'he'),
('C050', 'she'),
('C051', 'he'),
('C052', 'she'),
('C053', 'they'),
('C054', 'he'),
('C055', 'she'),
('C056', 'they'),
('C057', 'he'),
('C058', 'she'),
('C059', 'they'),
('C060', 'he'),
('C061', 'she'),
('C062', 'they'),
('C063', 'he'),
('C064', 'she'),
('C065', 'they'),
('C066', 'he'),
('C067', 'she'),
('C068', 'they'),
('C069', 'he'),
('C070', 'she'),
('C071', 'they'),
('C072', 'he'),
('C073', 'she'),
('C074', 'they'),
('C075', 'he');

-- Insert data into GENRE
INSERT INTO GENRE (Customer_ID, Pref_Genre) VALUES
('C001', 'Action'),
('C002', 'Comedy'),
('C003', 'Drama'),
('C004', 'Romance'),
('C005', 'Thriller'),
('C006', 'Fantasy'),
('C007', 'Horror'),
('C008', 'Sci-Fi'),
('C009', 'Mystery'),
('C010', 'Adventure'),
('C011', 'Action'),
('C012', 'Comedy'),
('C013', 'Drama'),
('C014', 'Romance'),
('C015', 'Thriller'),
('C016', 'Fantasy'),
('C017', 'Horror'),
('C018', 'Sci-Fi'),
('C019', 'Mystery'),
('C020', 'Adventure'),
('C021', 'Action'),
('C022', 'Comedy'),
('C023', 'Drama'),
('C024', 'Romance'),
('C025', 'Thriller'),
('C026', 'Fantasy'),
('C027', 'Horror'),
('C028', 'Sci-Fi'),
('C029', 'Mystery'),
('C030', 'Adventure'),
('C031', 'Action'),
('C032', 'Comedy'),
('C033', 'Drama'),
('C034', 'Romance'),
('C035', 'Thriller'),
('C036', 'Fantasy'),
('C037', 'Horror'),
('C038', 'Sci-Fi'),
('C039', 'Mystery'),
('C040', 'Adventure'),
('C041', 'Action'),
('C042', 'Comedy'),
('C043', 'Drama'),
('C044', 'Romance'),
('C045', 'Thriller'),
('C046', 'Fantasy'),
('C047', 'Horror'),
('C048', 'Sci-Fi'),
('C049', 'Mystery'),
('C050', 'Adventure'),
('C051', 'Action'),
('C052', 'Comedy'),
('C053', 'Drama'),
('C054', 'Romance'),
('C055', 'Thriller'),
('C056', 'Fantasy'),
('C057', 'Horror'),
('C058', 'Sci-Fi'),
('C059', 'Mystery'),
('C060', 'Adventure'),
('C061', 'Action'),
('C062', 'Comedy'),
('C063', 'Drama'),
('C064', 'Romance'),
('C065', 'Thriller'),
('C066', 'Fantasy'),
('C067', 'Horror'),
('C068', 'Sci-Fi'),
('C069', 'Mystery'),
('C070', 'Adventure'),
('C071', 'Action'),
('C072', 'Comedy'),
('C073', 'Drama'),
('C074', 'Romance'),
('C075', 'Thriller');

-- Create the PURCHASE_ORDER table with adjustments
CREATE TABLE PURCHASE_ORDER(
	Purchase_No VARCHAR(10) PRIMARY KEY,
	Order_Date DATE NOT NULL,
	Ship_Date DATE,
	Ship_Address VARCHAR(100) NOT NULL,
	Order_Status CHAR(20),
	Payment_Method CHAR(50),
	Physical_Point_Of_Sale CHAR(50),
	Customer_ID VARCHAR(10),
	CONSTRAINT FK_PURCHASE_ORDER_CUSTOMER FOREIGN KEY (Customer_ID) REFERENCES CUSTOMER(Customer_ID)
);

-- Insert data into PURCHASE_ORDER with adjusted Customer_ID
INSERT INTO PURCHASE_ORDER (Purchase_No, Order_Date, Ship_Date, Ship_Address, Order_Status, Payment_Method, Physical_Point_Of_Sale, Customer_ID)
VALUES
('1', '2024-11-01', '2024-11-05', '1001 Tropicana Ave, Las Vegas', 'Completed', 'Credit Card', 'Store A', 'C001'),
('2', '2024-11-02', '2024-11-06', '2002 Virginia St, Reno', 'Processing', 'PayPal', 'Store B', 'C002'),
('3', '2024-11-03', '2024-11-07', '3003 Sunset Rd, Henderson', 'Shipped', 'Debit Card', 'Store A', 'C003'),
('4', '2024-11-04', '2024-11-08', '4004 Pyramid Way, Sparks', 'Pending', 'Cash', 'Store C', 'C004'),
('5', '2024-11-05', '2024-11-09', '5005 N Carson St, Carson City', 'Completed', 'Credit Card', 'Store A', 'C005'),
('6', '2024-11-06', '2024-11-10', '6006 Idaho St, Elko', 'Processing', 'PayPal', 'Store B', 'C006'),
('7', '2024-11-07', '2024-11-11', '7007 W Pioneer Blvd, Mesquite', 'Shipped', 'Debit Card', 'Store C', 'C007'),
('8', '2024-11-08', '2024-11-12', '8008 S Highway 160, Pahrump', 'Completed', 'Cash', 'Store A', 'C008'),
('9', '2024-11-09', '2024-11-13', '9009 E Williams Ave, Fallon', 'Pending', 'Credit Card', 'Store B', 'C009'),
('10', '2024-11-10', '2024-11-14', '1010 Civic Center Dr, North Las Vegas', 'Shipped', 'PayPal', 'Store C', 'C010'),
('11', '2024-11-11', '2024-11-15', '1101 Winnemucca Blvd, Winnemucca', 'Processing', 'Debit Card', 'Store A', 'C011'),
('12', '2024-11-12', '2024-11-16', '1202 Nevada Hwy, Boulder City', 'Completed', 'Cash', 'Store B', 'C012'),
('13', '2024-11-13', '2024-11-17', '1303 S Casino Dr, Laughlin', 'Shipped', 'Credit Card', 'Store C', 'C013'),
('14', '2024-11-14', '2024-11-18', '1404 US Highway 95, Indian Springs', 'Pending', 'PayPal', 'Store A', 'C014'),
('15', '2024-11-15', '2024-11-19', '1505 Spring Creek Pkwy, Spring Creek', 'Completed', 'Debit Card', 'Store B', 'C015'),
('16', '2024-11-16', '2024-11-20', '1606 Wendover Blvd, West Wendover', 'Processing', 'Cash', 'Store C', 'C016'),
('17', '2024-11-17', '2024-11-21', '1707 Aultman St, Ely', 'Shipped', 'Credit Card', 'Store A', 'C017'),
('18', '2024-11-18', '2024-11-22', '1808 N Virginia St, Reno', 'Pending', 'PayPal', 'Store B', 'C018'),
('19', '2024-11-19', '2024-11-23', '1909 Las Vegas Blvd, Las Vegas', 'Completed', 'Debit Card', 'Store C', 'C019'),
('20', '2024-11-20', '2024-11-24', '2000 Green Valley Pkwy, Henderson', 'Processing', 'Cash', 'Store A', 'C020'),
('21', '2024-11-21', '2024-11-25', '2101 S Carson St, Carson City', 'Shipped', 'Credit Card', 'Store B', 'C021'),
('22', '2024-11-22', '2024-11-26', '2202 N Sandhill Blvd, Mesquite', 'Pending', 'PayPal', 'Store C', 'C022'),
('23', '2024-11-23', '2024-11-27', '2303 Baring Blvd, Sparks', 'Completed', 'Debit Card', 'Store A', 'C023'),
('24', '2024-11-24', '2024-11-28', '2404 Mountain City Hwy, Elko', 'Processing', 'Cash', 'Store B', 'C024'),
('25', '2024-11-25', '2024-11-29', '2505 N Las Vegas Blvd, North Las Vegas', 'Shipped', 'Credit Card', 'Store C', 'C025'),
('26', '2024-11-26', '2024-11-30', '2606 Sunset Rd, Henderson', 'Processing', 'PayPal', 'Store A', 'C026'),
('27', '2024-11-27', '2024-12-01', '2707 Pyramid Way, Reno', 'Shipped', 'Debit Card', 'Store B', 'C027'),
('28', '2024-11-28', '2024-12-02', '2808 Fairview Dr, Carson City', 'Pending', 'Cash', 'Store C', 'C028'),
('29', '2024-11-29', '2024-12-03', '2909 Idaho St, Elko', 'Completed', 'Credit Card', 'Store A', 'C029'),
('30', '2024-11-30', '2024-12-04', '3001 W Mesquite Blvd, Mesquite', 'Processing', 'PayPal', 'Store B', 'C030'),
('31', '2024-12-01', '2024-12-05', '3102 W 2nd St, Reno', 'Shipped', 'Debit Card', 'Store C', 'C031'),
('32', '2024-12-02', '2024-12-06', '3203 E Prater Way, Sparks', 'Pending', 'Cash', 'Store A', 'C032'),
('33', '2024-12-03', '2024-12-07', '3304 S Boulder Hwy, Henderson', 'Completed', 'Credit Card', 'Store B', 'C033'),
('34', '2024-12-04', '2024-12-08', '3405 E College Pkwy, Carson City', 'Processing', 'PayPal', 'Store C', 'C034'),
('35', '2024-12-05', '2024-12-09', '3506 W Bell Vista Ave, Pahrump', 'Shipped', 'Debit Card', 'Store A', 'C035'),
('36', '2024-12-06', '2024-12-10', '3607 N Maine St, Fallon', 'Pending', 'Cash', 'Store B', 'C036'),
('37', '2024-12-07', '2024-12-11', '3708 Nevada Hwy, Boulder City', 'Completed', 'Credit Card', 'Store C', 'C037'),
('38', '2024-12-08', '2024-12-12', '3809 Flamingo Rd, Las Vegas', 'Processing', 'PayPal', 'Store A', 'C038'),
('39', '2024-12-09', '2024-12-13', '3901 E Pioneer Blvd, Mesquite', 'Shipped', 'Debit Card', 'Store B', 'C039'),
('40', '2024-12-10', '2024-12-14', '4002 Lakeside Dr, Reno', 'Pending', 'Cash', 'Store C', 'C040'),
('41', '2024-12-11', '2024-12-15', '4204 S Carson St, Carson City', 'Completed', 'Credit Card', 'Store A', 'C041'),
('42', '2024-12-12', '2024-12-16', '4305 S Nevada Hwy, Pahrump', 'Processing', 'PayPal', 'Store B', 'C042'),
('43', '2024-12-13', '2024-12-17', '4406 Mountain City Hwy, Elko', 'Shipped', 'Debit Card', 'Store C', 'C043'),
('44', '2024-12-14', '2024-12-18', '4507 Las Vegas Blvd, Las Vegas', 'Pending', 'Cash', 'Store A', 'C044'),
('45', '2024-12-15', '2024-12-19', '4608 Horizon Ridge Pkwy, Henderson', 'Completed', 'Credit Card', 'Store B', 'C045'),
('46', '2024-12-16', '2024-12-20', '4709 S Carson St, Carson City', 'Processing', 'PayPal', 'Store C', 'C046'),
('47', '2024-12-17', '2024-12-21', '4801 W Highway 160, Pahrump', 'Shipped', 'Debit Card', 'Store D', 'C047'),
('48', '2024-12-18', '2024-12-22', '4902 Idaho St, Elko', 'Pending', 'Cash', 'Store B', 'C048'),
('49', '2024-12-19', '2024-12-23', '5003 Flamingo Rd, Las Vegas', 'Completed', 'Credit Card', 'Store C', 'C049'),
('50', '2024-12-20', '2024-12-24', '5104 S Carson St, Carson City', 'Completed', 'PayPal', 'Store A', 'C050');

-- Create the BRANCH table
CREATE TABLE BRANCH (
	Branch_ID CHAR(10) PRIMARY KEY,
	Branch_TEL CHAR(10) NOT NULL,
	Branch_State CHAR(2),
	Branch_City VARCHAR(30),
	Branch_Street VARCHAR(50),
	Branch_Zip CHAR(5)
);

-- Insert data into BRANCH
INSERT INTO BRANCH (Branch_ID, Branch_TEL, Branch_State, Branch_City, Branch_Street, Branch_Zip)
VALUES
('B001', '7021234567', 'NV', 'Las Vegas', '101 Strip Blvd', '89101'),
('B002', '7022345678', 'NV', 'Las Vegas', '202 Fremont St', '89102'),
('B003', '7023456789', 'NV', 'Las Vegas', '303 Tropicana Ave', '89103'),
('B004', '7024567890', 'NV', 'Las Vegas', '404 Sahara Ave', '89104'),
('B005', '7025678901', 'NV', 'Las Vegas', '505 Paradise Rd', '89109'),
('B006', '7026789012', 'NV', 'Las Vegas', '606 Charleston Blvd', '89110'),
('B007', '7027890123', 'NV', 'Las Vegas', '707 Desert Inn Rd', '89121'),
('B008', '7028901234', 'NV', 'Las Vegas', '808 Rainbow Blvd', '89117'),
('B009', '7029012345', 'NV', 'Las Vegas', '909 Summerlin Pkwy', '89128'),
('B010', '7020123456', 'NV', 'Las Vegas', '1001 Blue Diamond Rd', '89139'),
('B011', '7751234567', 'NV', 'Reno', '111 Silver Ave', '89501'),
('B012', '7752345678', 'NV', 'Reno', '222 Casino Blvd', '89502'),
('B013', '7753456789', 'NV', 'Reno', '333 Virginia St', '89503'),
('B014', '7754567890', 'NV', 'Reno', '444 Keystone Ave', '89506'),
('B015', '7755678901', 'NV', 'Reno', '555 Lakeside Dr', '89509'),
('B016', '7756789012', 'NV', 'Carson City', '101 Capital Blvd', '89701'),
('B017', '7757890123', 'NV', 'Carson City', '202 Eagle Valley Rd', '89702'),
('B018', '7758901234', 'NV', 'Carson City', '303 Carson St', '89703'),
('B019', '7759012345', 'NV', 'Carson City', '404 Nevada Capitol Ave', '89705'),
('B020', '7021234567', 'NV', 'Henderson', '101 Green Valley Pkwy', '89012'),
('B021', '7022345678', 'NV', 'Henderson', '202 Water St', '89015'),
('B022', '7023456789', 'NV', 'Henderson', '303 Sunset Rd', '89014'),
('B023', '7024567890', 'NV', 'Henderson', '404 Stephanie St', '89012'),
('B024', '7755678901', 'NV', 'Sparks', '101 Victorian Ave', '89431'),
('B025', '7756789012', 'NV', 'Sparks', '202 Pyramid Way', '89436'),
('B026', '7757890123', 'NV', 'Sparks', '303 Sparks Blvd', '89434'),
('B027', '7028901234', 'NV', 'North Las Vegas', '101 Centennial Pkwy', '89031'),
('B028', '7029012345', 'NV', 'North Las Vegas', '202 Losee Rd', '89032'),
('B029', '7020123456', 'NV', 'North Las Vegas', '303 Aliante Pkwy', '89084'),
('B030', '7751234567', 'NV', 'Elko', '101 Ruby Vista Dr', '89801'),
('B031', '7752345678', 'NV', 'Elko', '202 Mountain City Hwy', '89801'),
('B032', '7753456789', 'NV', 'Elko', '303 Idaho St', '89801'),
('B033', '7024567890', 'NV', 'Boulder City', '101 Nevada Way', '89005'),
('B034', '7025678901', 'NV', 'Boulder City', '202 Eldorado Valley Dr', '89005'),
('B035', '7026789012', 'NV', 'Mesquite', '101 Pioneer Blvd', '89027'),
('B036', '7027890123', 'NV', 'Mesquite', '202 Mesquite Blvd', '89027'),
('B037', '7028901234', 'NV', 'Laughlin', '101 Casino Dr', '89029'),
('B038', '7029012345', 'NV', 'Laughlin', '202 Riverfront Dr', '89029'),
('B039', '7750123456', 'NV', 'Pahrump', '101 Calvada Blvd', '89048'),
('B040', '7751234567', 'NV', 'Pahrump', '202 Basin Ave', '89048'),
('B041', '7752345678', 'NV', 'Fernley', '101 Main St', '89408'),
('B042', '7753456789', 'NV', 'Fernley', '202 Farm District Rd', '89408'),
('B043', '7754567890', 'NV', 'Fallon', '101 Williams Ave', '89406'),
('B044', '7755678901', 'NV', 'Fallon', '202 Maine St', '89406'),
('B045', '7756789012', 'NV', 'Winnemucca', '101 Bridge St', '89445'),
('B046', '7757890123', 'NV', 'Winnemucca', '202 Railroad St', '89445'),
('B047', '7758901234', 'NV', 'Ely', '101 Aultman St', '89301'),
('B048', '7759012345', 'NV', 'Ely', '202 Great Basin Blvd', '89301'),
('B049', '7750123456', 'NV', 'Tonopah', '101 Main St', '89049'),
('B050', '7751234567', 'NV', 'Tonopah', '202 Florence Ave', '89049');

-- Create the PRODUCT table with adjustments
CREATE TABLE PRODUCT(
	Product_ID CHAR(10) PRIMARY KEY,
	Product_Name VARCHAR(50) NOT NULL UNIQUE,
	Product_Status VARCHAR(50),
	Cost DECIMAL(10,2),
	MSRP DECIMAL(10,2),
	Branch_ID CHAR(10),
	CONSTRAINT FK_PRODUCT_BRANCH FOREIGN KEY (Branch_ID) REFERENCES BRANCH(Branch_ID)
);

-- Insert data into PRODUCT with adjusted Branch_ID
INSERT INTO PRODUCT(Product_ID, Product_Name, Product_Status, Cost, MSRP, Branch_ID)
VALUES
('P001', 'Law End Edition', 'Discontinued', 23.14, 32.33, 'B001'),
('P002', 'Almost Professional Edition', 'Backorder', 9.89, 15.20, 'B002'),
('P003', 'Expert Everything Edition', 'Backorder', 26.33, 44.88, 'B003'),
('P004', 'If Business Edition', 'Discontinued', 10.59, 13.45, 'B004'),
('P005', 'Guy Film Edition', 'Backorder', 24.19, 33.41, 'B005'),
('P006', 'Person Huge Edition', 'Available', 36.58, 63.21, 'B006'),
('P007', 'Office Everyone Edition', 'Discontinued', 7.23, 12.54, 'B007'),
('P008', 'Risk Dead Edition', 'Available', 15.34, 22.41, 'B008'),
('P009', 'Major Wall Edition', 'Backorder', 12.49, 18.99, 'B009'),
('P010', 'Chance Oil Edition', 'Pre-Order', 19.67, 32.44, 'B010'),
('P011', 'Black Hundred Edition', 'Pre-Order', 22.15, 39.31, 'B011'),
('P012', 'Turn Power Edition', 'Available', 45.23, 72.14, 'B012'),
('P013', 'Sure Plan Edition', 'Pre-Order', 13.56, 20.95, 'B013'),
('P014', 'Watch Wrong Edition', 'Discontinued', 9.44, 14.66, 'B014'),
('P015', 'Call Explain Edition', 'Available', 18.97, 27.50, 'B015'),
('P016', 'Modern Place Edition', 'Pre-Order', 22.59, 40.66, 'B016'),
('P017', 'Book Describe Edition', 'Available', 31.74, 49.23, 'B017'),
('P018', 'Wall Unit Edition', 'Available', 29.45, 50.87, 'B018'),
('P019', 'Role Fine Edition', 'Backorder', 20.98, 31.47, 'B019'),
('P020', 'Always Network Edition', 'Pre-Order', 24.66, 41.92, 'B020'),
('P021', 'Officer Family Edition', 'Backorder', 5.11, 7.45, 'B021'),
('P022', 'Expect Policy Edition', 'Pre-Order', 33.85, 56.22, 'B022'),
('P023', 'Force Will Edition', 'Discontinued', 17.92, 25.94, 'B023'),
('P024', 'Section End Edition', 'Available', 42.74, 72.19, 'B024'),
('P025', 'Single Activity Edition', 'Available', 30.12, 50.89, 'B025'),
('P026', 'Discuss Mother Edition', 'Backorder', 27.84, 44.18, 'B026'),
('P027', 'Alone Growth Edition', 'Pre-Order', 12.58, 19.04, 'B027'),
('P028', 'Speak Finally Edition', 'Available', 38.61, 68.97, 'B028'),
('P029', 'Rule Sort Edition', 'Pre-Order', 11.97, 18.38, 'B029'),
('P030', 'Manager Meet Edition', 'Available', 6.49, 10.78, 'B030'),
('P031', 'Just Time Edition', 'Available', 19.99, 31.52, 'B031'),
('P032', 'Impact Feel Edition', 'Available', 17.86, 28.91, 'B032'),
('P033', 'Catch Office Edition', 'Pre-Order', 24.13, 39.88, 'B033'),
('P034', 'Focus Create Edition', 'Available', 21.98, 37.36, 'B034'),
('P035', 'Meet Suggest Edition', 'Pre-Order', 26.45, 42.89, 'B035'),
('P036', 'Trial Trouble Edition', 'Discontinued', 9.22, 14.67, 'B036'),
('P037', 'Complete Act Edition', 'Available', 34.67, 58.14, 'B037'),
('P038', 'Join Section Edition', 'Backorder', 7.97, 12.94, 'B038'),
('P039', 'Practice Term Edition', 'Discontinued', 16.49, 24.86, 'B039'),
('P040', 'Wind Piece Edition', 'Backorder', 20.33, 33.88, 'B040'),
('P041', 'Grow Dark Edition', 'Pre-Order', 11.29, 18.31, 'B041'),
('P042', 'Trust Goal Edition', 'Available', 18.74, 30.24, 'B042'),
('P043', 'Point Final Edition', 'Backorder', 14.33, 22.31, 'B043'),
('P044', 'Huge Like Edition', 'Available', 23.67, 39.88, 'B044'),
('P045', 'Turn Discuss Edition', 'Pre-Order', 28.98, 46.12, 'B045'),
('P046', 'Power Catch Edition', 'Available', 16.45, 26.97, 'B046'),
('P047', 'Include White Edition', 'Backorder', 10.11, 16.39, 'B047'),
('P048', 'Kind Agree Edition', 'Discontinued', 21.77, 35.51, 'B048'),
('P049', 'House Rule Edition', 'Pre-Order', 12.96, 19.82, 'B049'),
('P050', 'Process Respond Edition', 'Available', 35.78, 58.23, 'B050');

-- Create the PROMOTION table
CREATE TABLE IF NOT EXISTS PROMOTION (
	Promotion_Code VARCHAR(10) NOT NULL primary key,
	Adjusted_Cost DECIMAL(10, 2) NOT NULL,
	Product_ID char(10) references PRODUCT(Product_ID)
);

-- Insert data into PROMOTION
INSERT INTO PROMOTION (Promotion_Code, Product_ID, Adjusted_Cost) VALUES
('PROMO1001', 'P001', 19.99),
('PROMO1002', 'P002', 15.99),
('PROMO1003', 'P003', 9.99),
('PROMO1004', 'P004', 18.50),
('PROMO1005', 'P005', 13.25),
('PROMO1006', 'P006', 7.99),
('PROMO1007', 'P007', 11.75),
('PROMO1008', 'P008', 14.00),
('PROMO1009', 'P009', 10.50),
('PROMO1010', 'P010', 6.99),
('PROMO1011', 'P011', 19.49),
('PROMO1012', 'P012', 8.99),
('PROMO1013', 'P013', 17.00),
('PROMO1014', 'P014', 12.99),
('PROMO1015', 'P015', 16.25),
('PROMO1016', 'P016', 5.99),
('PROMO1017', 'P017', 4.50),
('PROMO1018', 'P018', 18.99),
('PROMO1019', 'P019', 3.75),
('PROMO1020', 'P020', 2.99),
('PROMO1021', 'P021', 13.49),
('PROMO1022', 'P022', 17.75),
('PROMO1023', 'P023', 14.50),
('PROMO1024', 'P024', 9.49),
('PROMO1025', 'P025', 19.99),
('PROMO1026', 'P026', 6.50),
('PROMO1027', 'P027', 16.99),
('PROMO1028', 'P028', 8.49),
('PROMO1029', 'P029', 12.75),
('PROMO1030', 'P030', 10.25),
('PROMO1031', 'P031', 18.75),
('PROMO1032', 'P032', 7.50),
('PROMO1033', 'P033', 14.99),
('PROMO1034', 'P034', 13.99),
('PROMO1035', 'P035', 4.25),
('PROMO1036', 'P036', 19.00),
('PROMO1037', 'P037', 11.25),
('PROMO1038', 'P038', 5.50),
('PROMO1039', 'P039', 17.25),
('PROMO1040', 'P040', 16.00),
('PROMO1041', 'P041', 9.00),
('PROMO1042', 'P042', 3.50),
('PROMO1043', 'P043', 18.25),
('PROMO1044', 'P044', 13.00),
('PROMO1045', 'P045', 7.75),
('PROMO1046', 'P046', 10.00),
('PROMO1047', 'P047', 15.50),
('PROMO1048', 'P048', 5.25),
('PROMO1049', 'P049', 14.75),
('PROMO1050', 'P050', 8.00);

-- Create the EMPLOYEE table
CREATE TABLE EMPLOYEE (
	Employee_ID INT(10) NOT NULL AUTO_INCREMENT,
	Emp_Name VARCHAR(100) NOT NULL,
	Emp_Email VARCHAR(100) NOT NULL UNIQUE,
	Emp_TEL VARCHAR(15) NOT NULL,
	Emp_Schedule VARCHAR(100) NOT NULL,
	Emp_Address_State VARCHAR(20) NOT NULL,
	Emp_Address_City VARCHAR(50) NOT NULL,
	Emp_Address_Street VARCHAR(100) NOT NULL,
	Emp_Address_Zip VARCHAR(10) NOT NULL,
	Flex VARCHAR(100),
	PRIMARY KEY (Employee_ID)
);

-- Insert data into EMPLOYEE
INSERT INTO EMPLOYEE (Employee_ID, Emp_Name, Emp_Email, Emp_TEL, Emp_Schedule, Emp_Address_State, Emp_Address_City, Emp_Address_Street, Emp_Address_Zip, Flex)
VALUES
(1001, 'John Doe', 'john.doe@email.com', '7021234001', 'Mon-Fri 9am-5pm', 'NV', 'Las Vegas', '101 Strip Blvd', '89101', 'YES'),
(1002, 'Jane Smith', 'jane.smith@email.com', '7021234002', 'Tue-Sat 10am-6pm', 'NV', 'Las Vegas', '202 Fremont St', '89102', 'YES'),
(1003, 'Michael Brown', 'michael.brown@email.com', '7021234003', 'Mon-Fri 8am-4pm', 'NV', 'Las Vegas', '303 Tropicana Ave', '89103', 'YES'),
(1004, 'Emily Davis', 'emily.davis@email.com', '7021234004', 'Wed-Sun 11am-7pm', 'NV', 'Las Vegas', '404 Sahara Ave', '89104', 'YES'),
(1005, 'David Wilson', 'david.wilson@email.com', '7021234005', 'Mon-Fri 9am-5pm', 'NV', 'Las Vegas', '505 Paradise Rd', '89109', 'YES'),
(1006, 'Emma Garcia', 'emma.garcia@email.com', '7021234006', 'Tue-Sat 9am-5pm', 'NV', 'Las Vegas', '606 Charleston Blvd', '89110', 'YES'),
(1007, 'Daniel Martinez', 'daniel.martinez@email.com', '7021234007', 'Mon-Fri 10am-6pm', 'NV', 'Las Vegas', '707 Desert Inn Rd', '89121', 'YES'),
(1008, 'Sophia Rodriguez', 'sophia.rodriguez@email.com', '7021234008', 'Thu-Mon 9am-5pm', 'NV', 'Las Vegas', '808 Rainbow Blvd', '89117', 'YES'),
(1009, 'Matthew Johnson', 'matthew.johnson@email.com', '7021234009', 'Mon-Fri 7am-3pm', 'NV', 'Las Vegas', '909 Summerlin Pkwy', '89128', 'YES'),
(1010, 'Olivia Anderson', 'olivia.anderson@email.com', '7021234010', 'Mon-Fri 9am-5pm', 'NV', 'Las Vegas', '1001 Blue Diamond Rd', '89139', 'YES'),
(1011, 'Liam Thomas', 'liam.thomas@email.com', '7751234001', 'Mon-Fri 9am-5pm', 'NV', 'Reno', '111 Silver Ave', '89501', 'YES'),
(1012, 'Mia Moore', 'mia.moore@email.com', '7751234002', 'Tue-Sat 9am-5pm', 'NV', 'Reno', '222 Casino Blvd', '89502', 'YES'),
(1013, 'Ethan Clark', 'ethan.clark@email.com', '7751234003', 'Mon-Fri 8am-4pm', 'NV', 'Reno', '333 Virginia St', '89503', 'YES'),
(1014, 'Ava Lewis', 'ava.lewis@email.com', '7751234004', 'Wed-Sun 10am-6pm', 'NV', 'Reno', '444 Keystone Ave', '89506', 'YES'),
(1015, 'Noah Walker', 'noah.walker@email.com', '7751234005', 'Mon-Fri 9am-5pm', 'NV', 'Reno', '555 Lakeside Dr', '89509', 'YES'),
(1016, 'Sophia Allen', 'sophia.allen@email.com', '7751234006', 'Mon-Fri 9am-5pm', 'NV', 'Carson City', '101 Capital Blvd', '89701', 'YES'),
(1017, 'James Young', 'james.young@email.com', '7751234007', 'Tue-Sat 10am-6pm', 'NV', 'Carson City', '202 Eagle Valley Rd', '89702', 'YES'),
(1018, 'Charlotte King', 'charlotte.king@email.com', '7751234008', 'Mon-Fri 7am-3pm', 'NV', 'Carson City', '303 Carson St', '89703', 'YES'),
(1019, 'Henry Scott', 'henry.scott@email.com', '7751234009', 'Thu-Mon 9am-5pm', 'NV', 'Carson City', '404 NV Capitol Ave', '89705', 'YES'),
(1020, 'Amelia Martinez', 'amelia.martinez@email.com', '7021234011', 'Mon-Fri 9am-5pm', 'NV', 'Henderson', '101 Green Valley Pkwy', '89012', 'YES'),
(1021, 'Mason Perez', 'mason.perez@email.com', '7021234012', 'Tue-Sat 10am-6pm', 'NV', 'Henderson', '202 Water St', '89015', 'YES'),
(1022, 'Ella White', 'ella.white@email.com', '7021234013', 'Mon-Fri 8am-4pm', 'NV', 'Henderson', '303 Sunset Rd', '89014', 'YES'),
(1023, 'William Harris', 'william.harris@email.com', '7021234014', 'Wed-Sun 10am-6pm', 'NV', 'Henderson', '404 Stephanie St', '89012', 'YES'),
(1024, 'Oliver Murphy', 'oliver.murphy@email.com', '7021234024', 'Tue-Sat 9am-5pm', 'NV', 'Henderson', '505 Anthem Pkwy', '89052', 'YES'),
(1025, 'Isabella Cooper', 'isabella.cooper@email.com', '7021234025', 'Mon-Fri 10am-6pm', 'NV', 'North Las Vegas', '606 Craig Rd', '89031', 'YES'),
(1026, 'Lucas Bell', 'lucas.bell@email.com', '7021234026', 'Wed-Sun 8am-4pm', 'NV', 'North Las Vegas', '707 Aliante Pkwy', '89084', 'YES'),
(1027, 'Mia Rivera', 'mia.rivera@email.com', '7021234027', 'Mon-Fri 9am-5pm', 'NV', 'Reno', '808 Sparks Blvd', '89521', 'YES'),
(1028, 'Aiden Wright', 'aiden.wright@email.com', '7021234028', 'Tue-Sat 10am-6pm', 'NV', 'Reno', '909 South Meadows Pkwy', '89521', 'YES'),
(1029, 'Charlotte Walker', 'charlotte.walker@email.com', '7021234029', 'Mon-Fri 8am-4pm', 'NV', 'Sparks', '1010 Vista Blvd', '89431', 'YES'),
(1030, 'Ethan Hall', 'ethan.hall@email.com', '7021234030', 'Wed-Sun 10am-6pm', 'NV', 'Sparks', '1111 Pyramid Way', '89436', 'YES'),
(1031, 'Amelia Robinson', 'amelia.robinson@email.com', '7021234031', 'Mon-Fri 9am-5pm', 'NV', 'Carson City', '1212 Mountain St', '89703', 'YES'),
(1032, 'Liam Green', 'liam.green@email.com', '7021234032', 'Tue-Sat 9am-5pm', 'NV', 'Carson City', '1313 Stewart St', '89701', 'YES'),
(1033, 'Evelyn Adams', 'evelyn.adams@email.com', '7021234033', 'Mon-Fri 10am-6pm', 'NV', 'Boulder City', '1414 NV Way', '89005', 'YES'),
(1034, 'Mason Scott', 'mason.scott@email.com', '7021234034', 'Wed-Sun 8am-4pm', 'NV', 'Boulder City', '1515 Avenue D', '89005', 'YES'),
(1035, 'Sofia Nelson', 'sofia.nelson@email.com', '7021234035', 'Mon-Fri 9am-5pm', 'NV', 'Elko', '1616 Idaho St', '89801', 'YES'),
(1036, 'James Carter', 'james.carter@email.com', '7021234036', 'Tue-Sat 10am-6pm', 'NV', 'Elko', '1717 Mountain City Hwy', '89801', 'YES'),
(1037, 'Ella Mitchell', 'ella.mitchell@email.com', '7021234037', 'Mon-Fri 8am-4pm', 'NV', 'Winnemucca', '1818 Winnemucca Blvd', '89445', 'YES'),
(1038, 'Benjamin Perez', 'benjamin.perez@email.com', '7021234038', 'Wed-Sun 10am-6pm', 'NV', 'Winnemucca', '1919 Grass Valley Rd', '89445', 'YES'),
(1039, 'Grace Roberts', 'grace.roberts@email.com', '7021234039', 'Mon-Fri 9am-5pm', 'NV', 'Mesquite', '2020 W Mesquite Blvd', '89027', 'YES'),
(1040, 'Henry Lee', 'henry.lee@email.com', '7021234040', 'Tue-Sat 9am-5pm', 'NV', 'Mesquite', '2121 E Mesquite Blvd', '89027', 'YES'),
(1041, 'Grace Adams', 'grace.adams@email.com', '7021234041', 'Mon-Fri 9am-5pm', 'NV', 'Las Vegas', '2222 Sunset Blvd', '89146', 'YES'),
(1042, 'Jackson Carter', 'jackson.carter@email.com', '7021234042', 'Tue-Sat 10am-6pm', 'NV', 'Las Vegas', '2323 Desert Springs Rd', '89148', 'YES'),
(1043, 'Zoe White', 'zoe.white@email.com', '7021234043', 'Mon-Fri 8am-4pm', 'NV', 'Las Vegas', '2424 Flamingo Rd', '89119', 'YES'),
(1044, 'Samuel King', 'samuel.king@email.com', '7021234044', 'Wed-Sun 10am-6pm', 'NV', 'Las Vegas', '2525 Hualapai Way', '89117', 'YES'),
(1045, 'Lily Gonzalez', 'lily.gonzalez@email.com', '7021234045', 'Mon-Fri 9am-5pm', 'NV', 'Henderson', '2626 Boulder Hwy', '89015', 'YES'),
(1046, 'Oliver Martinez', 'oliver.martinez@email.com', '7021234046', 'Tue-Sat 9am-5pm', 'NV', 'Henderson', '2727 St. Rose Pkwy', '89052', 'YES'),
(1047, 'Chloe Lopez', 'chloe.lopez@email.com', '7021234047', 'Mon-Fri 8am-4pm', 'NV', 'Henderson', '2828 Horizon Ridge Pkwy', '89052', 'YES'),
(1048, 'Aiden Perez', 'aiden.perez@email.com', '7021234048', 'Wed-Sun 10am-6pm', 'NV', 'Henderson', '2929 Eastern Ave', '89074', 'YES'),
(1049, 'Mila Wilson', 'mila.wilson@email.com', '7021234049', 'Mon-Fri 9am-5pm', 'NV', 'North Las Vegas', '3030 W Craig Rd', '89032', 'YES'),
(1050, 'Ethan Taylor', 'ethan.taylor@email.com', '7021234050', 'Tue-Sat 9am-5pm', 'NV', 'North Las Vegas', '3131 Losee Rd', '89030', 'YES'),
(1051, 'Zoe Sanders', 'zoe.sanders@email.com', '7021234051', 'Mon-Fri 9am-5pm', 'NV', 'Carson City', '3232 Stewart St', '89701', 'NO'),
(1052, 'Samuel Patterson', 'samuel.patterson@email.com', '7021234052', 'Tue-Sat 10am-6pm', 'NV', 'Carson City', '3333 Mountain St', '89703', 'NO'),
(1053, 'Layla Ross', 'layla.ross@email.com', '7021234053', 'Mon-Fri 8am-4pm', 'NV', 'Boulder City', '3434 NV Way', '89005', 'NO'),
(1054, 'Julian Price', 'julian.price@email.com', '7021234054', 'Wed-Sun 10am-6pm', 'NV', 'Boulder City', '3535 Avenue D', '89005', 'NO'),
(1055, 'Chloe Bryant', 'chloe.bryant@email.com', '7021234055', 'Mon-Fri 9am-5pm', 'NV', 'Elko', '3636 Idaho St', '89801', 'NO'),
(1056, 'Sebastian Kelly', 'sebastian.kelly@email.com', '7021234056', 'Tue-Sat 10am-6pm', 'NV', 'Elko', '3737 Mountain City Hwy', '89801', 'NO'),
(1057, 'Lillian Lee', 'lillian.lee@email.com', '7021234057', 'Mon-Fri 8am-4pm', 'NV', 'Winnemucca', '3838 Winnemucca Blvd', '89445', 'NO'),
(1058, 'Owen Allen', 'owen.allen@email.com', '7021234058', 'Wed-Sun 10am-6pm', 'NV', 'Winnemucca', '3939 Railroad St', '89445', 'NO'),
(1059, 'Stella Barnes', 'stella.barnes@email.com', '7021234059', 'Mon-Fri 9am-5pm', 'NV', 'Mesquite', '4040 Pioneer Blvd', '89027', 'NO'),
(1060, 'Isaac Jenkins', 'isaac.jenkins@email.com', '7021234060', 'Tue-Sat 9am-5pm', 'NV', 'Mesquite', '4141 Falcon Ridge Pkwy', '89027', 'NO'),
(1061, 'Aurora James', 'aurora.james@email.com', '7021234061', 'Mon-Fri 8am-4pm', 'NV', 'Las Vegas', '4242 Sahara Ave', '89104', 'NO'),
(1062, 'Ezra Carter', 'ezra.carter@email.com', '7021234062', 'Tue-Sat 10am-6pm', 'NV', 'Las Vegas', '4343 Spring Mountain Rd', '89102', 'NO'),
(1063, 'Victoria Scott', 'victoria.scott@email.com', '7021234063', 'Mon-Fri 9am-5pm', 'NV', 'Henderson', '4444 St Rose Pkwy', '89074', 'NO'),
(1064, 'Miles Watson', 'miles.watson@email.com', '7021234064', 'Wed-Sun 8am-4pm', 'NV', 'Henderson', '4545 Stephanie St', '89014', 'NO'),
(1065, 'Penelope Green', 'penelope.green@email.com', '7021234065', 'Mon-Fri 10am-6pm', 'NV', 'North Las Vegas', '4646 Civic Center Dr', '89030', 'NO'),
(1066, 'Jack Kelly', 'jack.kelly@email.com', '7021234066', 'Tue-Sat 9am-5pm', 'NV', 'North Las Vegas', '4747 Decatur Blvd', '89032', 'NO'),
(1067, 'Luna Parker', 'luna.parker@email.com', '7021234067', 'Mon-Fri 9am-5pm', 'NV', 'Reno', '4848 McCarran Blvd', '89503', 'NO'),
(1068, 'Henry Diaz', 'henry.diaz@email.com', '7021234068', 'Wed-Sun 10am-6pm', 'NV', 'Reno', '4949 Mill St', '89502', 'NO'),
(1069, 'Aria Martinez', 'aria.martinez@email.com', '7021234069', 'Mon-Fri 8am-4pm', 'NV', 'Sparks', '5050 Victorian Ave', '89431', 'NO'),
(1070, 'Jacob Bennett', 'jacob.bennett@email.com', '7021234070', 'Tue-Sat 10am-6pm', 'NV', 'Sparks', '5151 Galleria Pkwy', '89436', 'NO'),
(1071, 'Chloe Hernandez', 'chloe.hernandez@email.com', '7021234071', 'Mon-Fri 9am-5pm', 'NV', 'Carson City', '5252 Robinson St', '89701', 'NO'),
(1072, 'Michael Coleman', 'michael.coleman@email.com', '7021234072', 'Wed-Sun 8am-4pm', 'NV', 'Carson City', '5353 Musser St', '89703', 'NO'),
(1073, 'Harper Peterson', 'harper.peterson@email.com', '7021234073', 'Mon-Fri 10am-6pm', 'NV', 'Boulder City', '5454 Utah St', '89005', 'NO'),
(1074, 'Anthony Reed', 'anthony.reed@email.com', '7021234074', 'Tue-Sat 9am-5pm', 'NV', 'Boulder City', '5555 Adams Blvd', '89005', 'NO'),
(1075, 'Madison Ross', 'madison.ross@email.com', '7021234075', 'Mon-Fri 9am-5pm', 'NV', 'Elko', '5656 College Ave', '89801', 'NO'),
(1076, 'Joseph Jenkins', 'joseph.jenkins@email.com', '7021234076', 'Wed-Sun 10am-6pm', 'NV', 'Elko', '5757 Ruby View Dr', '89801', 'NO'),
(1077, 'Addison Cook', 'addison.cook@email.com', '7021234077', 'Mon-Fri 8am-4pm', 'NV', 'Winnemucca', '5858 Winnemucca Blvd', '89445', 'NO'),
(1078, 'Nathan Perez', 'nathan.perez@email.com', '7021234078', 'Tue-Sat 10am-6pm', 'NV', 'Winnemucca', '5959 Railroad St', '89445', 'NO'),
(1079, 'Aubrey King', 'aubrey.king@email.com', '7021234079', 'Mon-Fri 9am-5pm', 'NV', 'Mesquite', '6060 Mesquite Blvd', '89027', 'NO'),
(1080, 'Daniel Turner', 'daniel.turner@email.com', '7021234080', 'Wed-Sun 8am-4pm', 'NV', 'Mesquite', '6161 Riverside Rd', '89027', 'NO'),
(1081, 'Sophia Morris', 'sophia.morris@email.com', '7021234081', 'Mon-Fri 10am-6pm', 'NV', 'Las Vegas', '6262 Charleston Blvd', '89117', 'NO'),
(1082, 'Ethan Phillips', 'ethan.phillips@email.com', '7021234082', 'Tue-Sat 9am-5pm', 'NV', 'Las Vegas', '6363 Tropicana Ave', '89118', 'NO'),
(1083, 'Aaliyah Clark', 'aaliyah.clark@email.com', '7021234083', 'Mon-Fri 9am-5pm', 'NV', 'Henderson', '6464 Valle Verde Dr', '89014', 'NO'),
(1084, 'Gabriel Ramirez', 'gabriel.ramirez@email.com', '7021234084', 'Wed-Sun 10am-6pm', 'NV', 'Henderson', '6565 Horizon Ridge Pkwy', '89012', 'NO'),
(1085, 'Scarlett Martinez', 'scarlett.martinez@email.com', '7021234085', 'Mon-Fri 8am-4pm', 'NV', 'North Las Vegas', '6666 Martin L King Blvd', '89032', 'NO'),
(1086, 'Landon Cooper', 'landon.cooper@email.com', '7021234086', 'Tue-Sat 10am-6pm', 'NV', 'North Las Vegas', '6767 Alexander Rd', '89084', 'NO'),
(1087, 'Zoey Lopez', 'zoey.lopez@email.com', '7021234087', 'Mon-Fri 9am-5pm', 'NV', 'Reno', '6868 Sierra Center Pkwy', '89511', 'NO'),
(1088, 'Elijah White', 'elijah.white@email.com', '7021234088', 'Wed-Sun 8am-4pm', 'NV', 'Reno', '6969 Meadowood Mall Cir', '89502', 'NO'),
(1089, 'Camila Hall', 'camila.hall@email.com', '7021234089', 'Mon-Fri 10am-6pm', 'NV', 'Sparks', '7070 Disc Dr', '89436', 'NO'),
(1090, 'Carter Adams', 'carter.adams@email.com', '7021234090', 'Tue-Sat 9am-5pm', 'NV', 'Sparks', '7171 Los Altos Pkwy', '89436', 'NO'),
(1091, 'Hannah Hill', 'hannah.hill@email.com', '7021234091', 'Mon-Fri 9am-5pm', 'NV', 'Carson City', '7272 East Nye Ln', '89706', 'NO'),
(1092, 'Wyatt Bailey', 'wyatt.bailey@email.com', '7021234092', 'Wed-Sun 10am-6pm', 'NV', 'Carson City', '7373 South Carson St', '89701', 'NO'),
(1093, 'Ellie Allen', 'ellie.allen@email.com', '7021234093', 'Mon-Fri 8am-4pm', 'NV', 'Boulder City', '7474 Eldorado Valley Dr', '89005', 'NO'),
(1094, 'Levi Hernandez', 'levi.hernandez@email.com', '7021234094', 'Tue-Sat 10am-6pm', 'NV', 'Boulder City', '7575 Railroad Pass Rd', '89005', 'NO'),
(1095, 'Violet Brooks', 'violet.brooks@email.com', '7021234095', 'Mon-Fri 9am-5pm', 'NV', 'Elko', '7676 Mountain City Hwy', '89801', 'NO'),
(1096, 'David Sanders', 'david.sanders@email.com', '7021234096', 'Wed-Sun 8am-4pm', 'NV', 'Elko', '7777 Lamoille Hwy', '89801', 'NO'),
(1097, 'Isla Foster', 'isla.foster@email.com', '7021234097', 'Mon-Fri 10am-6pm', 'NV', 'Winnemucca', '7878 Harmony Rd', '89445', 'NO'),
(1098, 'Grayson Bell', 'grayson.bell@email.com', '7021234098', 'Tue-Sat 9am-5pm', 'NV', 'Winnemucca', '7979 Melarkey St', '89445', 'NO'),
(1099, 'Eliana Turner', 'eliana.turner@email.com', '7021234099', 'Mon-Fri 9am-5pm', 'NV', 'Tonopah', '202 Florence Ave', '89049', 'NO'),
(1100, 'Logan Torres', 'logan.torres@email.com', '7021234100', 'Tue-Sat 9am-5pm', 'NV', 'Tonopah', '101 Main St', '89049', 'NO'),
(1101, 'Sophia Howard', 'sophia.howard@email.com', '7021234101', 'Mon-Fri 8am-4pm', 'NV', 'Henderson', '8282 Green Valley Pkwy', '89014', 'NO'),
(1102, 'James Ford', 'james.ford@email.com', '7021234102', 'Wed-Sun 9am-5pm', 'NV', 'Henderson', '8383 Horizon Dr', '89002', 'NO'),
(1103, 'Charlotte Rivera', 'charlotte.rivera@email.com', '7021234103', 'Mon-Fri 9am-5pm', 'NV', 'North Las Vegas', '8484 Craig Rd', '89031', 'NO'),
(1104, 'Benjamin Powell', 'benjamin.powell@email.com', '7021234104', 'Tue-Sat 10am-6pm', 'NV', 'North Las Vegas', '8585 Ann Rd', '89084', 'NO'),
(1105, 'Emily Long', 'emily.long@email.com', '7021234105', 'Mon-Fri 8am-4pm', 'NV', 'Reno', '8686 Kietzke Ln', '89502', 'NO'),
(1106, 'Lucas Griffin', 'lucas.griffin@email.com', '7021234106', 'Wed-Sun 10am-6pm', 'NV', 'Reno', '8787 West Plumb Ln', '89509', 'NO'),
(1107, 'Amelia Price', 'amelia.price@email.com', '7021234107', 'Mon-Fri 9am-5pm', 'NV', 'Sparks', '8888 Pyramid Way', '89436', 'NO'),
(1108, 'Logan Wood', 'logan.wood@email.com', '7021234108', 'Tue-Sat 9am-5pm', 'NV', 'Sparks', '8989 Vista Blvd', '89434', 'NO'),
(1109, 'Ella Flores', 'ella.flores@email.com', '7021234109', 'Mon-Fri 8am-4pm', 'NV', 'Carson City', '9090 Saliman Rd', '89701', 'NO'),
(1110, 'Mason Perry', 'mason.perry@email.com', '7021234110', 'Wed-Sun 9am-5pm', 'NV', 'Carson City', '9191 North Carson St', '89706', 'NO'),
(1111, 'Scarlett Ramirez', 'scarlett.ramirez@email.com', '7021234111', 'Mon-Fri 10am-6pm', 'NV', 'Boulder City', '9292 Nevada Way', '89005', 'NO'),
(1112, 'Ethan Brooks', 'ethan.brooks@email.com', '7021234112', 'Tue-Sat 10am-6pm', 'NV', 'Boulder City', '9393 Elm St', '89005', 'NO'),
(1113, 'Abigail Sanders', 'abigail.sanders@email.com', '7021234113', 'Mon-Fri 8am-4pm', 'NV', 'Elko', '9494 Idaho St', '89801', 'NO'),
(1114, 'Jackson Butler', 'jackson.butler@email.com', '7021234114', 'Wed-Sun 10am-6pm', 'NV', 'Elko', '9595 Mountain City Hwy', '89801', 'NO'),
(1115, 'Grace Jenkins', 'grace.jenkins@email.com', '7021234115', 'Mon-Fri 9am-5pm', 'NV', 'Winnemucca', '9696 Melarkey St', '89445', 'NO'),
(1116, 'Samuel Torres', 'samuel.torres@email.com', '7021234116', 'Tue-Sat 9am-5pm', 'NV', 'Winnemucca', '9797 Railroad St', '89445', 'NO'),
(1117, 'Chloe Young', 'chloe.young@email.com', '7021234117', 'Mon-Fri 8am-4pm', 'NV', 'Mesquite', '9898 Mesquite Blvd', '89027', 'NO'),
(1118, 'Sebastian Bailey', 'sebastian.bailey@email.com', '7021234118', 'Wed-Sun 9am-5pm', 'NV', 'Mesquite', '9999 Pioneer Blvd', '89027', 'NO'),
(1119, 'Layla Martinez', 'layla.martinez@email.com', '7021234119', 'Mon-Fri 10am-6pm', 'NV', 'Las Vegas', '10101 Charleston Blvd', '89117', 'NO'),
(1120, 'Daniel Hall', 'daniel.hall@email.com', '7021234120', 'Tue-Sat 9am-5pm', 'NV', 'Las Vegas', '10202 Sahara Ave', '89104', 'NO'),
(1121, 'Mila Morgan', 'mila.morgan@email.com', '7021234121', 'Mon-Fri 9am-5pm', 'NV', 'Henderson', '10303 Warm Springs Rd', '89014', 'NO'),
(1122, 'Alexander Foster', 'alexander.foster@email.com', '7021234122', 'Wed-Sun 10am-6pm', 'NV', 'Henderson', '10404 Stephanie St', '89014', 'NO'),
(1123, 'Lily Griffin', 'lily.griffin@email.com', '7021234123', 'Mon-Fri 8am-4pm', ' NV', 'North Las Vegas', '10505 Simmons St', '89031', 'NO'),
(1124, 'Hunter King', 'hunter.king@email.com', '7021234124', 'Tue-Sat 10am-6pm', 'NV', 'North Las Vegas', '10606 Lone Mountain Rd', '89031', 'NO'),
(1125, 'Zoey Ross', 'zoey.ross@email.com', '7021234125', 'Mon-Fri 9am-5pm', 'NV', 'Reno', '10707 Longley Ln', '89511', 'NO');


-- Create the INVENTORY table with adjustments
CREATE TABLE INVENTORY(
	Stack_No VARCHAR(3) PRIMARY KEY,
	Product_ID CHAR(10),
	Quantity VARCHAR(3),
	CONSTRAINT FK_INVENTORY_PRODUCT FOREIGN KEY (Product_ID) REFERENCES PRODUCT(Product_ID)
);

-- Insert data into INVENTORY
INSERT INTO INVENTORY (Stack_No, Product_ID, Quantity) VALUES
('001', 'P001', '50'),
('002', 'P002', '40'),
('003', 'P003', '70'),
('004', 'P004', '20'),
('005', 'P005', '60'),
('006', 'P006', '80'),
('007', 'P007', '30'),
('008', 'P008', '55'),
('009', 'P009', '45'),
('010', 'P010', '35'),
('011', 'P011', '65'),
('012', 'P012', '75'),
('013', 'P013', '25'),
('014', 'P014', '15'),
('015', 'P015', '85'),
('016', 'P016', '95'),
('017', 'P017', '40'),
('018', 'P018', '70'),
('019', 'P019', '60'),
('020', 'P020', '50'),
('021', 'P021', '30'),
('022', 'P022', '80'),
('023', 'P023', '20'),
('024', 'P024', '90'),
('025', 'P025', '35'),
('026', 'P026', '65'),
('027', 'P027', '45'),
('028', 'P028', '75'),
('029', 'P029', '55'),
('030', 'P030', '25'),
('031', 'P031', '85'),
('032', 'P032', '95'),
('033', 'P033', '40'),
('034', 'P034', '70'),
('035', 'P035', '60'),
('036', 'P036', '50'),
('037', 'P037', '30'),
('038', 'P038', '80'),
('039', 'P039', '20'),
('040', 'P040', '90'),
('041', 'P041', '35'),
('042', 'P042', '65'),
('043', 'P043', '45'),
('044', 'P044', '75'),
('045', 'P045', '55'),
('046', 'P046', '25'),
('047', 'P047', '85'),
('048', 'P048', '95'),
('049', 'P049', '40'),
('050', 'P050', '70');

-- Create the ORDER_DETAIL table with adjustments
CREATE TABLE ORDER_DETAIL(
	O_No VARCHAR(3) PRIMARY KEY,
	Purchase_No VARCHAR(10),
	Product_ID CHAR(10),
	Quantity VARCHAR(3),
	CONSTRAINT FK_ORDERDETAIL_PURCHASE_ORDER FOREIGN KEY (Purchase_No) REFERENCES PURCHASE_ORDER(Purchase_No),
	CONSTRAINT FK_ORDERDETAIL_PRODUCT FOREIGN KEY (Product_ID) REFERENCES PRODUCT(Product_ID)
);

-- Insert data into ORDER_DETAIL
INSERT INTO ORDER_DETAIL (O_No, Purchase_No, Product_ID, Quantity) VALUES
('001', '1', 'P001', '2'),
('002', '1', 'P005', '1'),
('003', '1', 'P010', '3'),
('004', '2', 'P002', '1'),
('005', '2', 'P006', '2'),
('006', '3', 'P003', '2'),
('007', '3', 'P007', '1'),
('008', '3', 'P011', '3'),
('009', '4', 'P004', '5'),
('010', '4', 'P008', '2'),
('011', '5', 'P005', '4'),
('012', '5', 'P009', '1'),
('013', '6', 'P006', '2'),
('014', '6', 'P010', '3'),
('015', '7', 'P007', '6'),
('016', '7', 'P011', '1'),
('017', '8', 'P008', '1'),
('018', '8', 'P012', '2'),
('019', '9', 'P009', '3'),
('020', '9', 'P013', '1'),
('021', '10', 'P010', '2'),
('022', '10', 'P014', '3'),
('023', '11', 'P011', '4'),
('024', '11', 'P015', '1'),
('025', '12', 'P012', '5'),
('026', '12', 'P016', '2'),
('027', '13', 'P013', '1'),
('028', '13', 'P017', '3'),
('029', '14', 'P014', '2'),
('030', '14', 'P018', '4'),
('031', '15', 'P015', '3'),
('032', '15', 'P019', '1'),
('033', '16', 'P016', '4'),
('034', '16', 'P020', '2'),
('035', '17', 'P017', '2'),
('036', '17', 'P021', '3'),
('037', '18', 'P018', '5'),
('038', '18', 'P022', '1'),
('039', '19', 'P019', '1'),
('040', '19', 'P023', '2'),
('041', '20', 'P020', '3'),
('042', '20', 'P024', '1'),
('043', '21', 'P021', '2'),
('044', '21', 'P025', '4'),
('045', '22', 'P022', '4'),
('046', '22', 'P026', '1'),
('047', '23', 'P023', '5'),
('048', '23', 'P027', '2'),
('049', '24', 'P024', '1'),
('050', '24', 'P028', '3'),
('051', '25', 'P025', '2'),
('052', '25', 'P029', '1'),
('053', '26', 'P026', '3'),
('054', '26', 'P030', '2'),
('055', '27', 'P027', '4'),
('056', '27', 'P031', '1'),
('057', '28', 'P028', '2'),
('058', '28', 'P032', '3'),
('059', '29', 'P029', '5'),
('060', '29', 'P033', '1'),
('061', '30', 'P030', '1'),
('062', '30', 'P034', '2'),
('063', '31', 'P031', '3'),
('064', '31', 'P035', '1'),
('065', '32', 'P032', '2'),
('066', '32', 'P036', '4'),
('067', '33', 'P033', '4'),
('068', '33', 'P037', '1'),
('069', '34', 'P034', '5'),
('070', '34', 'P038', '2'),
('071', '35', 'P035', '1'),
('072', '35', 'P039', '3'),
('073', '36', 'P036', '2'),
('074', '36', 'P040', '4'),
('075', '37', 'P037', '3'),
('076', '37', 'P041', '1'),
('077', '38', 'P038', '4'),
('078', '38', 'P042', '2'),
('079', '39', 'P039', '2'),
('080', '39', 'P043', '3'),
('081', '40', 'P040', '5'),
('082', '40', 'P044', '1'),
('083', '41', 'P041', '1'),
('084', '41', 'P045', '2'),
('085', '42', 'P042', '3'),
('086', '42', 'P046', '1'),
('087', '43', 'P043', '2'),
('088', '43', 'P047', '4'),
('089', '44', 'P044', '4'),
('090', '44', 'P048', '1'),
('091', '45', 'P045', '5'),
('092', '45', 'P049', '2'),
('093', '46', 'P046', '1'),
('094', '46', 'P050', '3'),
('095', '47', 'P047', '2'),
('096', '47', 'P001', '1'),
('097', '48', 'P048', '3'),
('098', '48', 'P002', '2'),
('099', '49', 'P049', '4'),
('100', '49', 'P003', '1'),
('101', '50', 'P050', '2'),
('102', '50', 'P004', '3');


-- MARCOS QUERIES BASED ON PURCHASE_TABLE

-- QUERY 1
-- Retrieve pending orders for location Store A
SELECT Purchase_No, Order_Date, Ship_Address, Order_Status, Physical_Point_Of_Sale
FROM PURCHASE_ORDER
WHERE Physical_Point_Of_Sale = "Store A"
AND Order_Status = "Pending";

-- QUERY 2
-- Find purchase order information where order_date is both larger than 7 days and order_status is unfulfilled
SELECT Purchase_No, Order_Date, Ship_Address, Order_Status, Payment_Method, Physical_Point_Of_Sale
FROM PURCHASE_ORDER
WHERE DATEDIFF(CURRENT_DATE, ORDER_DATE) >= 7
AND Order_Status = "Processing"
OR  Order_Status = "Pending";

-- QUERY 3
-- Find the number of purchase_orders created for Store A where customers paid in cash
SELECT COUNT(*) AS Store_A_Cash_Count
FROM PURCHASE_ORDER
WHERE Physical_Point_Of_Sale = "Store A"
AND Payment_Method = "Cash"
AND Order_Date BETWEEN "2024-11-11" AND "2024-11-17";

-- QUERY 4
-- Find the number of purchase_orders created for Store B where customers paid in cash
SELECT COUNT(*) AS Store_B_Cash_Count
FROM PURCHASE_ORDER
WHERE Physical_Point_Of_Sale = "Store B"
AND Payment_Method = "Cash"
AND Order_Date BETWEEN "2024-11-11" AND "2024-11-17";

-- QUERY 5
-- Find the number of purchase_orders created for Store C where customers paid in cash and ordered between Nov 11, 2024 and Nov 17, 2024
SELECT COUNT(*) AS Store_C_Cash_Count
FROM PURCHASE_ORDER
WHERE Physical_Point_Of_Sale = "Store C"
AND Payment_Method = "Cash"
AND Order_Date BETWEEN "2024-11-11" AND "2024-11-17";

-- LANCES QUERIES
-- QUERY 6
-- Find the products that are discontinued by branches in Las Vegas. Provide the phone number of the branch as well
Select product_name as 'Product', product_status as 'Status' , branch_tel as 'Branch Phone Number'
from product p
left outer join branch b
on p.branch_id=b.branch_id
where branch_city = 'las vegas' and product_status = 'Discontinued';

-- QUERY 7
-- Find the product's original price and the discounted price
Select product_name, cost, adjusted_cost
from product p, promotion pr
where p.product_id=pr.product_id;

-- QUERY 8 
-- This code provides insight into the price changes of each product at each Barnes & Noble branch. The increase or decrease in a product’s price can provide insight into what earns the company the most profit
Update PRODUCT 
Set Product_Name = 'Diary of a Wimpy Kid' 
Where cost = 9.89; 
Update Product 
Set Product_Status = 'Available' 
Where Product_Name LIKE '%Law%';


-- KYLES QUERIES 
-- QUERY 9
-- List of customer names and what genre they prefer. Reasoning: We want to figure out what genres are popular so that we can cater towards those.
SELECT 
    CUSTOMER.Cust_Name, 
    GENRE.Pref_Genre, 
    PRONOUNS.Pref_Pronouns
FROM 
    CUSTOMER
INNER JOIN 
    GENRE 
    ON CUSTOMER.Customer_ID = GENRE.Customer_ID
INNER JOIN 
    PRONOUNS 
    ON CUSTOMER.Customer_ID = PRONOUNS.Customer_ID;

-- QUERY 10
-- Subquery to figure out what ages our customers are. Reasoning: Just like the previous query, we want to identify what ages our customers are so we can target those ages.
SELECT 
    (SELECT COUNT(*) 
     FROM CUSTOMER 
     WHERE Age BETWEEN 21 AND 30) AS 'Ages 21 - 30',
    (SELECT COUNT(*) 
     FROM CUSTOMER 
     WHERE Age BETWEEN 31 AND 40) AS 'Ages 31 - 40',
    (SELECT COUNT(*) 
     FROM CUSTOMER 
     WHERE Age BETWEEN 41 AND 50) AS 'Ages 41 - 50';

-- QUERY 11
-- Count the number of employees working in each city. Reasoning: This is a great way to see how many employees work in what city and then we can identify if that city needs more or less employees.
SELECT 
    Emp_Address_City AS City, 
    COUNT(Employee_ID) AS Total_Employees, 
    COUNT(CASE WHEN Flex = 'YES' THEN 1 END) AS Flexible_Employees, 
    COUNT(CASE WHEN Flex = 'NO' THEN 1 END) AS Non_Flexible_Employees
FROM 
    EMPLOYEE
GROUP BY 
    Emp_Address_City
ORDER BY 
    Total_Employees DESC;

-- QUERY 12
-- Determine the most frequently ordered item by order count. Reasoning: We get to see what items are the most popular and keep those in stock.
SELECT 
    Product_ID, 
    COUNT(*) AS Order_Count
FROM 
    ORDER_DETAIL
GROUP BY 
    Product_ID
ORDER BY 
    Order_Count DESC;

-- ANAMTA QUERY
-- QUERY 13    
-- Displays average cost of products in Las Vegas location
Select avg(cost)
FROM product, inventory, branch
WHERE product.product_id = inventory.product_id
AND product.branch_id = branch.branch_id
AND branch_city = 'Las Vegas';

-- QUERY 14
-- Displays the products with costs higher than the average cost of products with the status of 'preorder'
Select avg(cost)
FROM product, inventory 
WHERE product.product_id = inventory.product_id
AND product_status = 'pre-order';

select product_name, cost
FROM product
	WHERE cost > (Select avg(cost)
	FROM product, inventory 
	WHERE product.product_id = inventory.product_id
	AND product_status = 'pre-order')
ORDER BY cost;

-- QUERY 15
-- Display the name and ID of employees who work 9am-5pm in Las Vegas
SELECT Employee_ID, Emp_Name, Emp_Schedule
FROM employee
WHERE Emp_Schedule LIKE '%9am-5pm%'
AND Emp_Address_City = 'Las Vegas';

-- ANGELICA QUERY
-- QUERY 16
-- Pull a list of products that cost $25 or less after the promo code has been applied. Organize products descending by price.  
SELECT p.Product_ID, p.Product_Name, pr.Promotion_Code, pr.Adjusted_Cost
FROM PRODUCT p
JOIN PROMOTION pr
ON p.Product_ID = pr.Product_ID
WHERE pr.Adjusted_Cost < 10.00
ORDER BY pr.Adjusted_Cost DESC;

-- QUERY 17
-- Pull a list employee name and contact information of those who can work Tuesday through Saturday and can flexibly work at other locations
SELECT Employee_ID, Emp_Name, Emp_Email, Emp_TEL, Emp_Schedule, Flex
FROM EMPLOYEE
WHERE Flex = 'YES'
  AND Emp_Schedule LIKE 'Tue-Sat%';
  
-- Updating data into CUSTOMER
UPDATE CUSTOMER
SET Membership_Status = 'Active'
WHERE Customer_ID = 'C002';

-- Deleting data from CUSTOMER
DELETE FROM CUSTOMER
WHERE Customer_ID > 'C075' ;

-- Updating data into PRONOUNS
UPDATE PRONOUNS
SET Pref_Pronouns = 'they'
WHERE Customer_ID = 'C050';

-- Deleting data from PRONOUNS
DELETE FROM PRONOUNS
WHERE Customer_ID = 'C0075';

-- Updating data into GENRE
UPDATE GENRE
SET Pref_Genre = 'Comedy'
WHERE Customer_ID = 'C075';

-- Deleting data from GENRE
DELETE FROM GENRE
WHERE Customer_ID = 'C074';

-- Updating data into PURCHASE_ORDER
UPDATE PURCHASE_ORDER
SET Payment_Method = 'Cash'
WHERE Purchase_No = '49';

-- Deleting data from PURCHASE_ORDER
DELETE FROM PURCHASE_ORDER
WHERE Order_Date > '2024-12-20';

-- Updating data into BRANCH
UPDATE BRANCH
SET Branch_TEL = '7021234999'
WHERE Branch_ID = 'B042';

-- Deleting data from BRANCH
DELETE FROM BRANCH
WHERE Branch_ID > 'B050';

-- Updating data into PRODUCT
Update PRODUCT
Set Product_Name = 'Diary of a Wimpy Kid'
Where cost = 9.89;

Update Product
Set Product_Status = 'Available'
Where Product_Name LIKE '%Law%';

-- Deleting data from PRODUCT
DELETE FROM PRODUCT
WHERE MSRP > '150.00';

-- Updating data into PROMOTION
UPDATE PROMOTION
SET Adjusted_Cost = '2.99'
WHERE Promotion_Code = 'PROMO1023';

-- Deleting data from PROMOTION
DELETE FROM PROMOTION
WHERE Promotion_Code = 'PROMO1050';

-- Updating data into EMPLOYEE
UPDATE EMPLOYEE
SET Emp_Schedule = 'Mon-Fri 9am-5pm'
WHERE Employee_ID = '1119';

-- Deleting data from EMPLOYEE
DELETE FROM EMPLOYEE
WHERE Emp_Name = 'Jane Smith' AND Employee_ID = '1001';

-- Updating data into INVENTORY
UPDATE INVENTORY
SET Quantity = '100'
WHERE Stack_No = '041';

-- Deleting data from INVENTORY
DELETE FROM INVENTORY
WHERE Stack_No = '50';

-- Deleting data from ORDER_DETAIL
DELETE FROM ORDER_DETAIL
WHERE Quantity > 99;

-- Updating data into ORDER_DETAIL
UPDATE ORDER_DETAIL
SET Quantity = '3'
WHERE O_NO = '001';

-- Deleting data from ORDER_DETAIL
DELETE FROM ORDER_DETAIL
WHERE Quantity > 99;

