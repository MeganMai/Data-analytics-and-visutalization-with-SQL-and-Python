ALTER VIEW region_sales_US AS
SELECT st.Name as region
		,SUM(st.SalesYTD) Sales_YTD
		,SUM(st.SalesLastYear) Sales_LastYear
		,SUM(sp.SalesQuota) Total_Sales_Quota
		,AVG(sp.CommissionPct) Commission_Percentage
		,COUNT(DISTINCT (sc.CustomerID)) Number_Customers
		,(SUM(st.SalesYTD)/COUNT(DISTINCT(so.SalesOrderID))) Average_Order_Value --get the average order value
		,CASE   
			WHEN COUNT(DISTINCT (sc.CustomerID)) < 1000 THEN 'High priority' 
			ELSE 'Low priority'
		END AS Sales_Category --categorize the sales activities
		
FROM sales.SalesTerritory st
INNER JOIN sales.SalesPerson sp
ON st.TerritoryID = sp.TerritoryID
INNER JOIN sales.Customer sc
ON sc.TerritoryID = st.TerritoryID
INNER JOIN sales.SalesOrderHeader so
ON so.CustomerID = sc.CustomerID
WHERE CountryRegionCode IN  --select from the top perforning country
	(SELECT country_code FROM 
			(SELECT top 1 
				CountryRegionCode as country_code
				,SUM(SalesYTD) AS country_sales
				FROM Sales.SalesTerritory
				GROUP BY CountryRegionCode
				ORDER BY country_sales DESC) sub)

GROUP BY st.Name
