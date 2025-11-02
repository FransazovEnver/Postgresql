#Create a view in SQL named "view_wizard_deposits_with_expiration_date_before_1983_08_17"
that fetches data from the "wizard_deposits" table. 
#The view should display the full name of the wizard, 
concatenated from their "first_name" and "last_name", 
along with the "deposit_start_date", "deposit_expiration_date", 
and "deposit_amount". 
#The view's results should be grouped by the "wizard_name", 
"start_date", "expiration_date", and "amount". 
#Additionally, the view should only include deposits that have an 
expiration date before or on '1983-08-17', and should be ordered by the 
"expiration_date" in ascending order.



CREATE VIEW view_wizard_deposits_with_expiration_date_before_1983_08_17
AS
SELECT 
	CONCAT(first_name, ' ', last_name) AS wizard_name,
	deposit_start_date AS start_date,
	deposit_expiration_date AS expiration_date,
	deposit_amount AS amount
FROM 
	wizard_deposits	
WHERE
	 deposit_expiration_date <= '1983-08-17'
GROUP BY 
	wizard_name,
	start_date,
	expiration_date,
	amount
ORDER BY expiration_date ASC
