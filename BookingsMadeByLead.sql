#Write a SQL query that selects the "apartment_id",
"booked_for" nights, customer is "first_name", and
"country" from the "bookings" and "customers" tables, 
respectively, by performing an INNER JOIN. Filter the 
results only to include bookings made by customers with
a "job_type" of "Lead"



SELECT 
	b.apartment_id,
	b.booked_for,
	c.first_name,
	c.country
FROM
	bookings AS b
INNER JOIN 
	customers AS c
USING 
	(customer_id)
WHERE
	c.job_type ILIKE '%Lead'
	
	