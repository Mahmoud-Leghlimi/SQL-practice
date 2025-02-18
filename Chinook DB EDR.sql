CREATE TABLE customers (
    customersid integer PRIMARY KEY,
    lastName NVARCHAR(20),
    firstName NVARCHAR(20),
    company NVARCHAR(80),
    address NVARCHAR(70),
    city NVARCHAR(40),
    state NVARCHAR(40),
    country NVARCHAR(40),
    postalCode NVARCHAR(10),
    phone NVARCHAR(24),
    fax NVARCHAR(24),
    email NVARCHAR(60),
    supportRepId integer
);

CREATE TABLE employees (
    Employeeid integer PRIMARY KEY,
    lastName NVARCHAR(20),
    firstName NVARCHAR(20),
    title NVARCHAR(30),
    reportsTo integer,
    birthDate integer,
    hireDate integer,
    address NVARCHAR(70)
);