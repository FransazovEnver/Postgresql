#Retrieve booking information from the three tables, where 
all records should be returned, regardless of matches.
    • select the "booking_id" column from the "bookings" table
    • select the "name" column from the "apartments" table and rename it as "apartment_owner"
    • select the "apartment_id" column from the "apartments" table
    • select the concatenated "first_name" and "last_name" columns from the "customers" table, renaming the resulting column as "customer_name"
    • order the results in ascending order based on the "booking_id", "apartment_owner" and "customer_name" columns
*** Note, that the FULL JOIN and FULL OUTER JOIN are the same therefore you can use them interchangeably.

SELECT
	b.booking_id,
	a.name AS "apartment_owner",
	a.apartment_id,
	CONCAT(c.first_name, ' ', c.last_name) AS "customer_name"
FROM
	bookings AS b
FULL JOIN 
	customers AS c
USING
	(customer_id)
FULL JOIN 
	apartments AS a
USING
	(booking_id)
ORDER BY 
	booking_id,
	apartment_owner,
	customer_name
ASC;
		

	
