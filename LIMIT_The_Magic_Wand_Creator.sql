#Retrieve the "magic_wand_creator" with the smallest 
"magic_wand_size" from the "wizard_deposits" table. 
#The query should group the results by "magic_wand_creator" 
and display the "minimum_wand_size" for each creator. 
#The results should be sorted in ascending order by the 
minimum wand size and limited to the top five smallest wand sizes. 


SELECT 
	magic_wand_creator,
	MIN(magic_wand_size) AS minimum_wand_size
FROM 
	wizard_deposits
GROUP by
     magic_wand_creator
ORDER by 
	minimum_wand_size
	ASC
LIMIT 5;

