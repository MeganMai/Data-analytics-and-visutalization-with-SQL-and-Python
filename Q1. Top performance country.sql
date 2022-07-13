ALTER VIEW top_performing_country AS
SELECT top 1
	CountryRegionCode as country_code,
	SUM(SalesYTD) AS country_sales
FROM Sales.SalesTerritory
GROUP BY CountryRegionCode
ORDER BY country_sales DESC





