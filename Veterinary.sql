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