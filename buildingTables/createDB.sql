.open ddlPractice.sqlite

-- Delete the table so it can be re-created every time
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS SalesStaff;

-- Create our first table
CREATE TABLE contacts (
    contactsID INTEGER PRIMARY KEY NOT NULL,
    fname VARCHAR(25),
    lname VARCHAR(25),
    email VARCHAR(40) CHECK( email LIKE '%@%'),
    phone CHAR(11) DEFAULT '00000000000'
);

-- Insert data into table
INSERT INTO contacts (fname, lname, email, phone)
VALUES  ('Tina','Gotschi', 'tina@ada.ac.uk', '01234567899'),
        ('Fred','Rogers', 'fred@ada.ac.uk', '01234567899'),
        ('Ginger','Astair', 'ginger@ada.ac.uk', '01234567899');


-- Create Address Table and insert data into it
CREATE TABLE addresses (
    personID INTEGER PRIMARY KEY NOT NULL,
    fname VARCHAR (25),
    lname VARCHAR (25),
    postcode VARCHAR (10),
    houseNumber INTEGER
);

INSERT INTO addresses (fname, lname, postcode, houseNumber)
VALUES  ('Mike','White','AB2 8HB','23'),
        ('John','Smith','BN24 1NA','1'),
        ('Anna','Jones','S15 6FH','50');

CREATE TABLE SalesStaff (
    employeeID INTEGER PRIMARY KEY NOT NULL,
    salesPerson VARCHAR(20),
    salesOffice VARCHAR(15),
    officeNumber CHAR(12),
    customer1 VARCHAR(10),
    customer2 VARCHAR(10),
    customer3 VARCHAR(10)
);

INSERT INTO SalesStaff (salesPerson, salesOffice, officeNumber, customer1, customer2, customer3)
VALUES  ('Mary Smith','Chicago', '312-555-1212','Ford','GM','');