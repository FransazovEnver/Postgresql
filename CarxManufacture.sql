#To complete this task, you will need to create a database called 
"car_manufacture_db" that consists of three tables: "manufacturers", 
"models", and "production_years".
#Create Tables
#The "manufacturers" table should have a column, which is 
"name". In the "models" table, you should include columns for 
"model_name" and "manufacturer_id". The "production_years" table 
should contain information about "established_on" and "manufacturer_id". 
#You are free to select the data type for each column, 
but it is crucial to ensure that each column has a unique identifier. 
#Additionally, it is important to correctly set up the foreign keys. 
#Note that the "models" identifier should start at 1000 and increment by 1.
#Insert Data
#Add data to the tables in the following manner:


CREATE TABLE IF NOT EXISTS manufacturers(
	id INT GENERATED ALWAYS	AS IDENTITY PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS models(
	id INT GENERATED ALWAYS	AS IDENTITY (START WITH 1000 INCREMENT BY 1) PRIMARY KEY,
	model_name VARCHAR(50),
	manufacturer_id INT REFERENCES manufacturers(id)
);

CREATE TABLE IF NOT EXISTS production_years(
	id INT GENERATED ALWAYS	AS IDENTITY PRIMARY KEY,
	established_on DATE,
	manufacturer_id INT REFERENCES manufacturers(id)
);

INSERT INTO 
	manufacturers(name)
VALUES
	('BMW'),
 	('Tesla'),
	('Lada');

INSERT INTO 
	models(model_name, manufacturer_id) 
VALUES 
	('X1', 1),
 	('i6', 1),
	('Model S', 2),
 	('Model X', 2),
 	('Model 3', 2),
 	('Nova', 3);

INSERT INTO 
	production_years(established_on, manufacturer_id) 
VALUES
	('1916-03-01', 1),
 	('2003-01-01', 2),
	('1966-05-01', 3);
