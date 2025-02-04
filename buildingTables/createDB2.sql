.open ddlPractice2.sqlite
-- Switchin on referentia inegrity rules (foreign key rules)
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS products;

CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name TEXT    NOT NULL,
    last_name  TEXT    NOT NULL,
    email      TEXT,
    phone      TEXT CHECK(length(phone) > 10) NOT NULL
);

INSERT INTO contacts (first_name, last_name, email, phone)
VALUES ('John','Smith','John@ada.ac.uk','12345678900'),
       ('Mary','Smith','Mary@ada.ac.uk','99876543210');

CREATE TABLE products (
    product_id   INTEGER         PRIMARY KEY,
    product_name TEXT            NOT NULL,
    list_price   DECIMAL (10,2)  CHECK(list_price > discount) NOT NULL,
    discount     DECIMAL (10,2)  NOT NULL
);

INSERT INTO products (product_name, list_price, discount)
VALUES ('Apple', 2.50, 0.25),
       ('Orange', 1.00, 0.50);