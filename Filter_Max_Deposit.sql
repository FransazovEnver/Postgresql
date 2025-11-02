#Create a SQL query that retrieves the name of the 
"magic_wand_creator" and their maximum "deposit_amount" from the 
"wizard_deposits" table. 
#The results should be grouped by the "magic_wand_creator" 
and filtered to only include those with a maximum "deposit_amount" 
that falls outside the range of 20000 to 40000. 
#Order the results by "max_deposit_amount" in descending order, 
and limit the results to 3 records


SELECT 
	magic_wand_creator,
	MAX(deposit_amount) AS max_deposit_amount
FROM
	wizard_deposits
WHERE
	deposit_amount BETWEEN 20000 AND 400000
GROUP BY 
	magic_wand_creator
ORDER BY 
	max_deposit_amount
DESC LIMIT 3 
	