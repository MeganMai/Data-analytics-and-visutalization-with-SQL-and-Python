ALTER VIEW region_sales_US AS
SELECT Name as region, SUM(SalesYTD) Sales_YTD, SUM(SalesLastYear) Sales_LastYear
FROM sales.SalesTerritory
WHERE CountryRegionCode IN (
							SELECT country_code FROM top_performing_country)
GROUP BY Name
