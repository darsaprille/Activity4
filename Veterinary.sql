CREATE DATABASE veterinary;

CREATE TABLE IF NOT EXISTS public.owners
(
	owner_id INT PRIMARY KEY,
	ofirstname VARCHAR (50) NOT NULL,
	olastname VARCHAR (50) NOT NULL,
	address VARCHAR (50) NOT NULL, 
	phone VARCHAR (15) NOT NULL,
	email VARCHAR (100) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.animals
(
animal_id INT NOT NULL,
name VARCHAR(50) NOT NULL,
species VARCHAR(50) NOT NULL,
breed VARCHAR(50) NOT NULL,
date_of_birth DATE NOT NULL,
gender VARCHAR(10) NOT NULL,
color VARCHAR(50) NOTY NULL,
owner_id INT NOT NULL,
PRIMARY KEY(animalid),
FOREIGN KEY (owner_id) REFERENCES owners(owner_id)
);

CREATE TABLE IF NOT EXIST appointments
(
	appointments INT PRIMARY KEY,
	animal_id INT NOT NULL,
	appointmentdate DATE NOT NULL,
	reason VARCHAR(100) NOT NULL,
);
CREATE TABLE IF NOT EXISTS public.doctors
(
doctor_id INT NOT NULL,
d_first_name VARCHAR(50) NOT NULL,
d_last_name VARCHAR(50) NOT NULL,
speciality VARCHAR(100) NOT NULL,
phone VARCHAR(15) NOT NULL,
email VARCHAR(100) NOT NULL,
PRIMARY KEY (doctor_id)
);
CREATE TABLE IF NOT EXIST invoices
(
	invoice_id INT PRIMARY KEY,
	appointment_id INT NOT NULL,
	totalamount NUMERIC(10,2) NOT NULL,
	payment_date DATE NOT NULL,
	FOREIGN KEY (appointmentid) REFERENCES appointment(appointmentid),
);
CREATE TABLE IF NOT EXISTS medicalrecords
(
record_id INT NOT NULL,
animnal_id INT NOT NULL,
record_date TIMESTAMP NOT NULL,
doctor_id INT NOT NULL,
diagnosis TEXT NOT NULL,
prescription TEXT NOT NULL,
notes TEXT NOT NULL,
PRIMARY KEY (record_id),
FOREIGN KEY (animal_id) REFERENCES animals(animal_id)
FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);
INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
VALUES
    (1, 'John', 'Doe', '123 Main St', '555-555-1212', 'johndoe@example.com'),
    (2, 'Jane', 'Doe', '456 Elm St', '555-555-1212', 'janedoe@example.com'),
    (3, 'Bob', 'Smith', '789 Oak St', '555-555-1212', 'bobsmith@example.com'),
    (4, 'Sue', 'Jones', '321 Pine St', '555-555-1212', 'suejones@example.com'),
    (5, 'Tom', 'Brown', '654 Maple St', '555-555-1212', 'tombrown@example.com'),
    (6, 'Mary', 'Green', '987 Cedar St', '555-555-1212', 'marygreen@example.com'),
    (7, 'Bill', 'White', '246 Birch St', '555-555-1212', 'billwhite@example.com'),
    (8, 'Amy', 'Black', '135 Walnut St', '555-555-1212', 'amyblack@example.com'),
    (9, 'Mike', 'Gray', '864 Cherry St', '555-555-1212', 'mikegray@example.com'),
    (10, 'Lisa', 'Taylor', '975 Spruce St', '555-555-1212', 'lisataylor@example.com');