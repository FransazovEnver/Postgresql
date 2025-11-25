#Write a SQL query that selects the first 10 bookings in the "bookings"
 table, along with their corresponding customer's full name from the
 "customers" table. If any column in the RIGHT table does not have booking 
 information available, it should still be included in the result set.
    • select the " booking_id" column from the "bookings" table
    • select the "starts_at" column from the "bookings" table, convert 
	it to a date format
    • select the "apartment_id" column from the "bookings" table
    • select the concatenated "first_name" and "last_name" columns from the 
	"customers" table, renaming the resulting column as "customer_name"
    • order the outcome in ascending order based on the "Customer Name" column
*** Note, that the RIGHT JOIN and RIGHT OUTER JOIN are the same therefore you 
can use them interchangeably.

SELECT
	b.booking_id AS bookings,
	DATE(b.starts_at),
	b.apartment_id,
	CONCAT(first_name, ' ', last_name) AS "customer_name"
FROM
	bookings AS b
RIGHT JOIN 
	customers AS c
USING
	(customer_id)
ORDER BY customer_name ASC LIMIT 10;