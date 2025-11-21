#Create an SQL query that retrieves data from the "table_relations_geography_db" 
database by joining the "countries" and "countries_rivers" tables based on 
their common data. 
#Then, calculate the total number of countries that do not have any rivers.
#Note, using a LEFT JOIN will ensure that all records from the "countries" 
table are included in the result set, and a WHERE clause will filter out rows 
where the "countries_rivers" table has no corresponding records.


SELECT
	COUNT(*) AS countries_without_rivers
FROM
	countries AS c
LEFT JOIN
	countries_rivers AS c_r
ON
	c.country_code = c_r.country_code
WHERE
	river_id IS NULL;	




