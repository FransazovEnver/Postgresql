#Write a SQL query to fetch the booking "booking_id" and customer 
"first_name" from the "bookings" and "customers" tables, respectively. 
Use a CROSS JOIN to generate a Cartesian product of the two tables. 
Finally, sort the result set in ascending order based on the "customer_name".

SELECT
	b.booking_id,
	c.first_name AS "customer_name"
FROM
	bookings AS b
CROSS JOIN 
	customers AS c
ORDER BY 
	customer_name;

		

	
