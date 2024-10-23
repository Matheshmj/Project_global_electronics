# Global Electronics - Data Analytics Project
## Problem Statement
As part of the Global Electronics data analytics team, the goal is to conduct a comprehensive Exploratory Data Analysis (EDA) to uncover valuable insights from the company’s data. The aim is to provide actionable recommendations that enhance customer satisfaction, optimize operations, and drive overall business growth.

## Business Use Cases
By analyzing customer, product, sales, and store data, this project focuses on:

- Enhancing marketing strategies based on customer insights.
- Optimizing inventory management by analyzing product demand.
- Improving sales forecasting and planning store expansions.
- Leveraging currency exchange rates to refine international pricing strategies.
## Tools Used
- Jupyter Notebook for analysis.
- Python (Pandas, Matplotlib, Seaborn) for data cleaning and EDA.
- MySQL for storing and retrieving cleaned data.
- Power BI for data visualization.
## Data Sources

## Datasets:
- Customer data (Customers.csv): Demographic details such as gender, D.O.B, and location.
- Sales data (Sales.csv): Transaction details, including product quantities, dates, and store IDs.
- Products data (Products.csv): Product information including categories, unit prices, and costs.
- Stores data (Stores.csv): Store locations, operational attributes, and sales performance.
- Currency exchange rates data (Exchange_Rates.csv): Historical exchange rates for financial analysis.
## Approach
### Data Cleaning and Preparation
- Handling missing values and converting data types (e.g., dates, numerical values).
- Merging datasets where necessary for analysis (e.g., linking sales data with product and customer data).
### Data Loading
- Inserting cleaned data into a MySQL database by creating relevant tables for each dataset.
### Power BI Visualization
- Connecting SQL to Power BI, importing the data, and creating interactive dashboards.
### SQL Queries and Calculations
- Formulating SQL queries to extract insights and perform calculations in Power BI.
## Analysis Steps
### Customer Analysis
- Demographic Distribution: Analyze gender, age, and location.
- Purchase Patterns: Frequency of purchases, preferred products, and customer behavior.
- Segmentation: Segment customers based on demographics and purchasing behavior.
### Sales Analysis
- Sales by Product and Store: Evaluate top-selling products and store performance.
- Order Volume Trends: Examine sales history over time (month and year).
### Product Analysis
- Product Popularity: Identify top-selling products and categories.
- Profitability: Compare unit cost and unit price for profitability analysis.
### Store Analysis
- Store Performance: Evaluate store performance based on sales and operational data.
- Geographical Analysis: Analyze sales by store location to identify top-performing regions.
## Findings and Recommendations
### Customer Demographics
- Balanced gender distribution: Products appeal equally to both men and women.
- Older customer base: Most customers are aged 60 and above, with fewer younger customers.
- Regional dominance: North America is the largest customer base, especially cities like Toronto, Montreal, and Atlanta.
### Product and Sales Insights
- Universal product appeal: Products like computers, cell phones, and entertainment content are popular across all demographics.
- Top brands: Contoso leads the market, followed by Wide World Importers and Adventure Works.
- Top products: Desktop computers, particularly from the "Adventure Works Desktop" and "WWI Desktop" series, are bestsellers.
### Sales and Delivery Trends
- Seasonal trends: Sales peak in December and decline in April annually.
- Growth trend: Sales saw an upward trend from 2017 to 2020, with a slight dip after April 2020.
## Conclusion
- The analysis provides insights that can guide Global Electronics in refining their marketing strategies, improving product offerings, and optimizing store operations. Addressing the preferences of a diverse customer base and considering currency exchange impacts can further drive business growth.

## Repository Structure
- /data: Dataset files (customers.csv, sales.csv, products.csv, stores.csv, exchangerates.csv).
- /notebooks: Jupyter notebooks for data cleaning, EDA, and analysis.
- /sql: SQL queries for data loading and analysis.
- /reports: Power BI dashboards and reports.
