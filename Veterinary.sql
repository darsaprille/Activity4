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