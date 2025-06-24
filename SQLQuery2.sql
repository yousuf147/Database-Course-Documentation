USE yousufDB;

-- Insert a department head
INSERT INTO employee (SSN, FNAME, LNAME, GENDER, BIRTHDATE, SUPERSSN, DNUM)
VALUES ('999887777', 'Salim', 'Alharthy', 'M', '1985-12-15', NULL, NULL);

-- Create a new department
INSERT INTO department (DNUM, DNAME, SSN, MHDATE)
VALUES (2, 'Data Analytics', '999887777', '2017-06-01');

-- Assign department number to the head
UPDATE employee SET DNUM = 2 WHERE SSN = '999887777';

-- Add more employees under this department
INSERT INTO employee (SSN, FNAME, LNAME, GENDER, BIRTHDATE, SUPERSSN, DNUM)
VALUES 
('888776666', 'Amna', 'Aljabri', 'F', '1993-05-10', '999887777', 2),
('777665555', 'Nasser', 'Alzadjali', 'M', '1991-11-22', '999887777', 2);

-- Add two more employees
INSERT INTO employee (SSN, FNAME, LNAME, GENDER, BIRTHDATE, SUPERSSN, DNUM)
VALUES 
('666554444', 'Sara', 'Alrawahi', 'F', '1995-03-18', '999887777', 2),
('555443333', 'Hassan', 'Alfarsi', 'M', '1996-07-29', '999887777', 2);

-- Add dependents for two employees
INSERT INTO dependent (Name, SSN, GENDER, BIRTHDATE)
VALUES 
('Salim Alharthy', '999887777', 'M', '1985-12-15'),
('Sara Alrawahi', '666554444', 'F', '1995-03-18');

-- Remove a dependent
DELETE FROM dependent
WHERE Name = 'Sara Alrawahi';

-- Add a department location
INSERT INTO DEARTMENTLOC (LOCATION, DNUM)
VALUES 
('Innovation Hub', 2);

-- Add projects for the new department
INSERT INTO PROJECT (PNUMBER, PNAME, LOCATION, CITY, DNUM)
VALUES 
(201, 'Smart City Analysis', 'Innovation Hub', 'Sohar', 2),
(202, 'AI Traffic Control', 'Innovation Hub', 'Sohar', 2);

-- Assign employees to the projects
INSERT INTO WORKON (SSN, PNUMBER, WORKINGHOUR)
VALUES 
('999887777', 201, 40),
('666554444', 201, 32),
('777665555', 202, 28);

-- Update working hours for one employee
UPDATE WORKON
SET WORKINGHOUR = 36
WHERE SSN = '777665555' AND PNUMBER = 202;
