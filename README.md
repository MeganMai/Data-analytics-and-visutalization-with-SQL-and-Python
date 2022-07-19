# Data-analytics-and-visutalization-with-SQL-and-Python
Using SQL for data manipulation and Python (pandas, matplotlib, plotly, geojson) for Data visualization

This project contains 2 parts:
1. Transform the data in SQL Serer (SSMS)
2. Process and Visualize Data in Python


This project is working the [AdventureWorks Database](https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms) from Microsoft. 

### Part 1: Data Transformation in SQL Server

1. The first quesiton is to find out who is the best performing country in the past 2 year (via Sales YTD and Sales Last Year).

2. After that, extract the regional sales of the top performing country and investigate the related figures including Numbers of Customers, Average order Values, Total Sales Quota and created a Sale Category set based on numbers customer in each region. This task is conducted in SQL using INNER JOIN, CASE WHEN, AGGREGATION functions, SUB QUERIES, WHERE & GROUP BY

3. Ater transforming, we have a table including all details needed
![](https://github.com/MeganMai/Data-analytics-and-visutalization-with-SQL-and-Python/blob/main/Table%201_Regional_Sales_Combined_Data.PNG)

Create a view to save the table code into SSMS so that we could call it out easily in Visual Studio Code (Python)

### Part 2: Data Visualization with Python 
1. Sales YTD and Sales Last Year within the regions: Single Axis - Double Bar Char (**using Matplotlib**)
2. Compare the value between the 2 years and percentage of sales in each region within a year: Double donut/pie chart illustrating the value of sales each year (**using plotly**)

![](https://github.com/MeganMai/Data-analytics-and-visutalization-with-SQL-and-Python/blob/main/Double_Bar_Chart.png)

3. Plot the value on map to look at the differences between each region and each year geographically (**unsing json and plotly**)
  - Import geojson file to get geo-data of the US's map
  - Extract the States' name and id and match them to the sales data
  - Plot the maps with plotly.express.choropleth()
  
![](https://github.com/MeganMai/Data-analytics-and-visutalization-with-SQL-and-Python/blob/main/Mapplot_RegSalesLY.png)

![](https://github.com/MeganMai/Data-analytics-and-visutalization-with-SQL-and-Python/blob/main/Mapplot_RegSalesYTD.png)
 
 - Investigate the diferences average order values and number of customer between the 4 regions (**using plotly**) to explain the differences in sales
 
![](https://github.com/MeganMai/Data-analytics-and-visutalization-with-SQL-and-Python/blob/main/NumberCustomers_AvgOrder.png)
### How to run the code:
- **Step 1**: Run SQL view (change ALTER VIEW to CREATE VIEW)
- **Step 2**: Make sure to install all the Python Libraries (numpy, pandas, matplotlib, plotly, jsaon)
- **Step 3**: Change geojson file path to your local path: 'D:/2022/GENERATION/PROJECT_1/gz_2010_us_040_00_20m.json'
- **Step 4**: Change excel file path to your local path: 'D:/2022/GENERATION/PROJECT_1/US-states_sales.xlsx'

Now you're all set
