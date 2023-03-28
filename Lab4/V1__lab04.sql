//Ex1
CREATE DATABASE taxidb;
//Ex2
CREATE SCHEMA data;
CREATE TABLE data.user(
    id serial PRIMARY KEY,
    name text,
    surname text,
    email text,
    phone_number text
);
CREATE TABLE data.passenger(
    id serial PRIMARY KEY
);
CREATE TABLE data.passenger_rating(
    id serial PRIMARY KEY,
    behavior int NOT NULL,
    punctuality int NOT NULL
);
CREATE TABLE data.driver_rating(
    id serial PRIMARY KEY,
    skill int NOT NULL,
    car_condition int NOT NULL,
    rules_observance int NOT NULL
);
CREATE TABLE data.driver(
    id serial PRIMARY KEY,
    photo bytea
);
CREATE TABLE data.driver_car(
    id serial PRIMARY KEY,
    licence_plate text,
    color text
);
CREATE TABLE data.car(
    id serial PRIMARY KEY,
    brand text,
    model text
);
CREATE TABLE data.car_type(
    id serial PRIMARY KEY,
    name text
);
CREATE TABLE data.ride(
    id serial PRIMARY KEY,
    distance decimal
);
CREATE TABLE data.payment(
    id serial PRIMARY KEY,
    amount money NOT NULL
);
CREATE TABLE data.payment_type(
    id serial PRIMARY KEY,
    name text
);
CREATE TABLE data.address(
    id serial PRIMARY KEY,
    street text NOT NULL,
    street_number text,
    apartment_number text,
    post_code text NOT NULL,
    city text NOT NULL,
    country text NOT NULL
);
CREATE TABLE data.area(
    id serial PRIMARY KEY,
    name text NOT NULL
);
//Ex3
INSERT INTO 
    data.user(name,surname,email,phone_number)
VALUES
    ('Jan','Kowalski','jk@x.pl','123456789'),
    ('gsdg','fasdsa','sadsax.pl','42323439'),
    ('fsadw','Kdasgski','xkfdasdpl','15654789'),
    ('asgfga','Kgdfgi','jgdfgpl','123867989'),
    ('gasdsa','htrhdki','gdfgldsa','12796789');
INSERT INTO
    data.passenger_rating(behavior,punctuality)
VALUES
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5);
INSERT INTO
    data.driver_rating(skill,car_condition,rules_observance)
VALUES
    (1,1,1),
    (2,2,2),
    (3,3,3),
    (4,4,4),
    (5,5,5);
INSERT INTO
    data.driver_car(licence_plate,color)
VALUES
    ('dfsdfsd','black'),
    ('gsdgshs','white'),
    ('hdfsdse','red'),
    ('gnocnsa','green'),
    ('vgnosas','orange');
INSERT INTO
    data.car(brand,model)
VALUES
    ('toyota','yaris'),
    ('mini','cooper'),
    ('toyota','aygo'),
    ('tesla','model s'),
    ('tesla','model x');
INSERT INTO
    data.car_type(name)
VALUES
    ('suv'),
    ('coupe'),
    ('off-road'),
    ('supercar'),
    ('luxery');
INSERT INTO
    data.ride(distance)
VALUES
    (1.1),
    (2.2),
    (3.3),
    (4.4),
    (5.5);
INSERT INTO
    data.payment(amount)
VALUES
    (1.1),
    (2.2),
    (3.3),
    (4.4),
    (5.5);
INSERT INTO
    data.payment_type(name)
VALUES
    ('card'),
    ('cash');
INSERT INTO
    data.address(street,street_number,apartment_number,post_code,city,country)
VALUES
    ('gsadsda','1','1','11-1111','dsagsd','xxd'),
    ('sduisd','2','2','22-2222','gfgdsd','sxd'),
    ('shxccxsd','3','3','33-333','hgbgsd','zxd'),
    ('gsdsadd','4','4','44-4444','bsdgsd','yxd'),
    ('swhsdwad','5','5','55-5555','kfdssd','jxd');
INSERT INTO
    data.area(name)
VALUES
    ('hsadsa'),
    ('gdnsaudn'),
    ('xfonsoan'),
    ('yibubjsd'),
    ('lnugbojs');
//Ex4
SELECT * FROM data.user;
SELECT * FROM data.passenger;
SELECT * FROM data.passenger_rating;
SELECT * FROM data.driver;
SELECT * FROM data.driver_rating;
SELECT * FROM data.driver_car;
SELECT * FROM data.car;
SELECT * FROM data.car_type;
SELECT * FROM data.ride;
SELECT * FROM data.payment;
SELECT * FROM data.payment_type;
SELECT * FROM data.address;
SELECT * FROM data.area;