#Perform a JOIN operation between the "apartments" table and the 
"bookings" table to retrieve only matching rows. The resulting 
columns should be renamed as "apartment_address" for the concatenated
"address" and "address_2" columns and "nights" for the "booked_for" column. 
Conclude by arranging the outcome in ascending order based on the "apartment_id" column.



SELECT
	CONCAT_WS(' ',a.address, a.address_2) AS apartment_address,
	booked_for AS nights
FROM 
	apartments AS a
JOIN 
	bookings AS b
ON 
	a.booking_id = b.booking_id
ORDER BY 
	a.apartment_id ASC;