Write a SQL query to create a view called 
"continent_currency_usage" that shows the 
"continent_code", "currency_code", and a number 
of countries using the currency where more than one 
country on a continent uses the same currency. The 
column displaying the number of countries using the 
currency should be renamed as "currency_usage". The
data should be ordered by the "currency_usage" column in 
descending order.


CREATE VIEW 
	continent_currency_usage
AS
SELECT
	ra.continent_code,								--selected the currencies who is on winning places    
	ra.currency_code,								--and ordered them		
	ra.currency_usage
FROM (
	SELECT 
		ct.continent_code,							--Finding a most currency used in continent
		ct.currency_code,							--and ordered and ranked with DENSE_RANK					
		ct.currency_usage,
	DENSE_RANK() OVER (PARTITION BY ct.continent_code ORDER BY ct.currency_usage DESC) AS ranked_usage
	FROM(
		SELECT 
			continent_code,                          --Find a currency more than ones on a continent
			currency_code,							 --with HAVING and count them
			COUNT(currency_code) AS currency_usage
		FROM 
			countries
		GROUP BY 
			continent_code,
			currency_code
		HAVING
			COUNT(currency_code) > 1
			) AS ct
		) AS ra
WHERE 
	ra.ranked_usage = 1
ORDER BY
	ra.currency_usage DESC;


