#Create an SQL query that selects the first 10 apartments in the 
"apartments" table, along with their corresponding booking date from the "bookings"
 table (if available). If a column in the LEFT table has no booking date, it should 
 still be included in the result set.
    • select the "name" column from the "apartments" table 
    • select the "country" column from the "apartments" table 
    • select the "booked_at" column from the "bookings" table, convert it to a date format

SELECT
	a.name,
	a.country,
 	DATE(b.booked_at) AS booked_at
FROM
	apartments AS a
LEFT JOIN 
	bookings AS b
ON
	a.booking_id = b.booking_id
LIMIT 10;