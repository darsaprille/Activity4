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

INSERT INTO animals(animal_id,name,species,breed,date_of_birth,gender,color,owner_id)
VALUES(1,'Fido','Dog','Golden Retriever',2018-03-15,'Male','Golden',1),
(2,'Whiskers','Cat','Siamese',2019-07-20,'Female','Cream',2),
(3,'Rocky','Dog','German Shepherd',2017-05-10,'Male','Black and Tan',3),
(4,'Fluffy','Cat','Persian',2020-01-30,'Male','White',4),
(5,'Luna','Dog','Labrador Retriever',2019-11-25,'Female','Yellow',5),
(6,'Mochi','Cat','Maline Coon',2018-09-12,'Male','Brown Tabby',6),
(7,'Bella','Dog','Poodle',2020-04-05,'Female','White',7),
(8,'Simba','Cat','Bengal',2010-06-10,'Male','Spotted Rosetted',8),
(9,'Max','Dog','Dachshund',2020-07-14,'Male','Black and Tan',9),
(10,'Cleo','Cat','Ragdoll',2019-0512-22,'Female','Seal Point',10);

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

	INSERT INTO invoices (invoicesid, appointmentid, totalamount, paymentdate)
VALUES (1, 1, 100.00, '2023-11-09'),
       (2, 2, 200.00, '2023-11-10'),
       (3, 3, 300.00, '2023-11-11'),
       (4, 4, 400.00, '2023-11-12'),
       (5, 5, 500.00, '2023-11-13'),
       (6, 6, 600.00, '2023-11-14'),
       (7, 7, 700.00, '2023-11-15'),
       (8, 8, 800.00, '2023-11-16'),
       (9, 9, 900.00, '2023-11-17'),
       (10, 10, 1000.00, '2023-11-18');

INSERT INTO doctors(doctorid,dfirstname,dlastname,speciality,phone,email)
VALUES(1,'Dr.Maria','Santos','General Veterinarian, 987-654-3210,'maria@example.com'),
(2,'Dr. Antonio','Gonzales','Feline Specialist', 555-123-4567,'antonio@example.com'),
(3,'Dr. Felipe','Luna','Orthopedic Specialist', 111-222-3333,'felipe@example.com'),
(4,'Dr. Sofia','Reyes','Dermatology Specialist', 999-888-7777,'sofia@example.com'),
(5,'Dr. Luis','Torres','Surgery Specialist', 123-555-7777,'luis@example.com'),
(6,'Dr. Carmen','Fernandez','Ophthalmology Specialist', 333-222-1111,'carmen@example.com');

INSERT INTO invoices (invoicesid, appointmentid, totalamount, paymentdate)
VALUES (1, 1, 100.00, '2023-11-09'),
       (2, 2, 200.00, '2023-11-10'),
       (3, 3, 300.00, '2023-11-11'),
       (4, 4, 400.00, '2023-11-12'),
       (5, 5, 500.00, '2023-11-13'),
       (6, 6, 600.00, '2023-11-14'),
       (7, 7, 700.00, '2023-11-15'),
       (8, 8, 800.00, '2023-11-16'),
       (9, 9, 900.00, '2023-11-17'),
       (10, 10, 1000.00, '2023-11-18');

INSERT INTO medicalrecords(recordid,animalid,recorddate,doctorid,diagnosis,prescription,notes)
VALUES(1,1,2023-01-05 00:00:00,1,'Healthy check','N/A','Regular check up,no issue detected'),
(2,2,2023-01-10 00:00:00,1,'Vaccination','Vaccine X','Administered vaccination X as per schedule'),
(3,3,2023-02-02 00:00:00,3,'Sprained leg','Pain medication','Rest recommended for two weeks'),
(4,4,2023-02-15 00:00:00,1,'Dental cleaning','N/A','Completed dental cleaning procedure'),
(5,5,2023-03-05 00:00:00,4,'Skin infection','Antibiotics','Prescribed antibiotics for skin infection'),
(6,6,2023-03-10 00:00:00,2,'Flea infestation','Flea treatment','Administered flea treatment'),
(7,2,2023-04-12 00:00:00,1,'Vaccination','Vaccine Y','Administered vaccination Y as per schedule'),
(8,8,2023-04-18 00:00:00,5,'Spaying','N/A','Successfully performed spaying surgery'),
(9,9,2023-05-02 00:00:00,4,'Allergic reaction','Antihistamines','Allergic reaction due to food; prescribed antihistamine'),
(10,10,2023-05-20 00:00:00,6,'Conjunctivitis','Eye drops','Prescribed eye drops for conjunctivitis');

ALTER TABLE owners
ADD COLUMN registereddate DATE;

ALTER TABLE invoices
RENAME COLUMN paymentdate TO paymenttime;

DELETE FROM invoices
WHERE appointid = (
	SELECT appointid 
	FROM appointments 
	WHERE animalid = (
		SELECT animalid 
		FROM animals WHERE name = 'Simba'));

UPDATE doctors
SET dlastname = 'Reyes-Gonzales'
WHERE dfirstname = 'Dr. Sofia';

SELECT DISTINCT species
FROM animals;

SELECT SUM(totalamount) AS total_sales
FROM invoices;


SELECT COUNT(*) AS total_appointments
FROM appointments
WHERE animalid IN (
    SELECT animalid
    FROM animals
    WHERE ownerid = (
        SELECT ownerid
        FROM owners
        WHERE ofirstname = 'Maria'
    )
);