.open ddlPractice.sqlite

-- Delete the table so it can be re-created every time
DROP TABLE IF EXISTS contacts;

-- Create our first table
CREATE TABLE contacts (
    contactsID INTEGER PRIMARY KEY NOT NULL,
    fname VARCHAR(25),
    lname VARCHAR(25),
    email VARCHAR(40),
    phone CHAR(11)
);

-- Insert data into table
INSERT INTO contacts (fname, lname, email, phone)
VALUES  ('Tina','Gotschi', 'tina@ada.ac.uk', '01234567899'),
        ('Fred','Rogers', 'fred@ada.ac.uk', '01234567899'),
        ('Ginger','Astair', 'ginger@ada.ac.uk', '01234567899');