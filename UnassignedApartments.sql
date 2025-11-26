#Create a SQL query to retrieve the "booking_id" 
of bookings and the corresponding "companion_full_name" 
from the "customers" table, where the "apartment_id" has not been assigned yet.
*** Note that in a SQL JOIN operation, if the columns 
being joined have the same name in both tables, you can 
use the USING syntax in the JOIN predicate instead of the ON clause.

SELECT 
	b.booking_id,
	apartment_id,
	companion_full_name
FROM	
	bookings AS b
JOIN
	customers AS c
USING 
	(customer_id)
WHERE 
	apartment_id IS NULL 