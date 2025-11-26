#Write a SQL query that retrieves the "name" 
of each apartment in the "apartments" table 
along with the total sum of nights "booked_for" 
for each apartment. Group the result by the apartment "name" 
and sort the result in ascending order based on the "name".



SELECT 
	a.name,
	SUM(b.booked_for)
FROM
	apartments AS a
JOIN 
	bookings AS b
USING 
	(apartment_id)
GROUP BY 
	a.name
ORDER BY 
	a.name 
ASC;