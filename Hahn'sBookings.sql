#Create a SQL query that COUNT the number of bookings 
made by customers whose "last_name" is 'Hahn'. The output 
should show only the count of bookings and no other columns.

SELECT 
	COUNT(*)
FROM
	customers
WHERE
	last_name = 'Hahn'