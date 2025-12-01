To begin, create a table called "monasteries" with three columns: 
"id" - column should be a PRIMARY KEY and automatically incremented
"monastery_name" - column should have a maximum length of 255 characters 
"country_code" - column should be exactly two characters long. 
Then, insert the provided data into this table:
Next, modify the "countries" table by adding a BOOLEAN column 
called "three_rivers". This column should have a default value of false, 
indicating that the country does not have three rivers. To update 
the "three_rivers" column for countries that have three or more 
rivers running through them, use a subquery to count the number 
of rivers in each country and compare the result to the value of 3.
Finally, write a SQL query that selects the "monastery_name" and 
their respective "country_name" from the "monasteries" table, 
ordered alphabetically by "monastery_name". The query should 
retrieve records for countries with less than three rivers flowing 
within their borders.



CREATE TABLE IF NOT EXISTS monasteries(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	monastery_name VARCHAR(255),
	country_code CHAR(2)
);

INSERT INTO 
	monasteries(monastery_name, country_code)
VALUES
	('Rila Monastery "St. Ivan of Rila"', 'BG'),
	('Bachkovo Monastery "Virgin Mary"', 'BG'),
	('Troyan Monastery "Holy Mother''s Assumption"', 'BG'),
  	('Kopan Monastery', 'NP'),
  	('Thrangu Tashi Yangtse Monastery', 'NP'),
  	('Shechen Tennyi Dargyeling Monastery', 'NP'),
  	('Benchen Monastery', 'NP'),
  	('Southern Shaolin Monastery', 'CN'),
  	('Dabei Monastery', 'CN'),
  	('Wa Sau Toi', 'CN'),
  	('Lhunshigyia Monastery', 'CN'),
  	('Rakya Monastery', 'CN'),
  	('Monasteries of Meteora', 'GR'),
  	('The Holy Monastery of Stavronikita', 'GR'),
	('Taung Kalat Monastery', 'MM'),
	('Pa-Auk Forest Monastery', 'MM'),
	('Taktsang Palphug Monastery', 'BT'),
	('Sümela Monastery', 'TR');

ALTER TABLE 
	countries
ADD COLUMN 
	three_rivers
BOOLEAN DEFAULT FALSE;  --default value of false and adding BOOLEAN 

UPDATE 
	countries
SET 
	three_rivers = (
	SELECT 
		COUNT(*) >= 3 --value of 3 rivers if is > or < is FALSE 
	FROM 
		countries_rivers AS cr
	WHERE 
		cr.country_code = countries.country_code   --value comparison of new and UPDATE one 
);


SELECT 							
	m.monastery_name,		--the query who selects the countries does not have three rivers
	c.country_name			-- and monastery in selecting country 
FROM 
	monasteries AS m
JOIN 
	countries AS c
USING
	(country_code)
WHERE
	NOT three_rivers 
ORDER BY 
	m.monastery_name;












	