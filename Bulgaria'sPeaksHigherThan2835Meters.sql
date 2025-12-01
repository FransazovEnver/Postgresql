#Retrieve the "country_code", "mountain_range", "peak_name"
and "elevation" from the "mountains", "peaks", and "mountains_countries" 
tables using a SQL query. The query should only include rows where the peak
"elevation" is greater than 2835 meters and the "country_code" is 'BG'.
The results should be sorted in descending order based on peak "elevation".


SELECT
	m_c.country_code,
	m.mountain_range,
	p.peak_name,
	p.elevation
FROM
	mountains AS m
JOIN
	peaks AS p
ON
	m.id = p.mountain_id
JOIN 
	mountains_countries AS m_c
ON
	p.mountain_id = m_c.mountain_id
WHERE
	 p.elevation > 2835 AND m_c.country_code = 'BG'
ORDER BY 
	p.elevation DESC