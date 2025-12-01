#Create a SQL query that returns the number 
of unique mountain ranges for the countries 
with the country codes 'US', 'RU', and 'BG'. 
The results should be grouped by "country_code" 
and ordered in descending order based on the "mountain_range_count".

SELECT
	mc.country_code,
	COUNT(DISTINCT m.mountain_range) AS mountain_range_count
FROM 
	mountains_countries AS mc
JOIN
	mountains AS m
ON 
	m.id = mc.mountain_id
WHERE 
	mc.country_code IN ('US', 'RU', 'BG')
GROUP BY 
	mc.country_code
ORDER BY 
	mountain_range_count DESC