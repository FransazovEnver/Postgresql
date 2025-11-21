#Retrieve data from the " table_relations_geography_db" 
database by joining the "mountains" and "peaks" tables using their common data. 
#Then, display all peaks for the "Rila" mountain, including the "mountain_range", 
"peak_name", and "elevation". Finally, sort the results in descending order by the 
"elevation".

SELECT 
	m.mountain_range,
	p.peak_name,
	p.elevation
FROM
	mountains AS m
JOIN
	peaks AS p
ON 
	p.mountain_id = m.id 
WHERE 
	m.mountain_range = 'Rila'
ORDER BY 
	elevation DESC;
	