# 🛒📊Blinkit-Insights
Blinkit Insights is a comprehensive data analytics project focused on delivering strategic insights for a fast-paced grocery delivery platform (Blinkit). The project simulates a real-world analytics environment, including data extraction, transformation, loading (ETL), and the development of interactive dashboards for stakeholders. This project was built with a focus on automation, data quality, and insightful visual storytelling to support data-driven decision-making.

# 🧰 Tools & Technologies
Data Wrangling & ETL: MySQL, Python (Pandas, NumPy)

Data Visualization & BI Reporting: Microsoft Excel, Power BI, Tableau

Automation & Reporting: Python scripting, Power Query

Version Control: Git & GitHub

# 🔍 Problem Statement
With thousands of transactions occurring daily, Blinkit needs efficient reporting mechanisms to monitor KPIs like order volume, delivery time, product performance, customer churn, and regional demand.

Manual reporting was slow and error-prone. The goal was to:

Automate reporting processes

Improve data accuracy

Provide dynamic dashboards for fast decision-making.

# 🧪 Objectives
Clean and transform raw operational data (8k+ records).

Build reusable ETL pipelines to automate monthly reporting.

Create interactive dashboards using Power BI and Tableau.

Present clear, actionable insights to non-technical stakeholders.

# 📈 Key Deliverables
✅ ETL Pipeline (SQL + Python)
Extracted and merged transactional datasets using SQL joins.

Cleaned inconsistent data (missing values, duplicates).

Used Python (Pandas) to automate preprocessing for faster refreshes.

📊 Dashboards
Power BI: Created dynamic dashboards with DAX for KPIs, filters for time, region, product category.

Tableau: Designed interactive visuals to showcase delivery trends, product performance, and customer segments.

📉 Excel Reporting
Used Pivot Tables, Charts, and Conditional Formatting for quick snapshot reports.

Automated refresh using Power Query linked to cleaned datasets.

# 🔍 Insights & Impact
Reduced report generation time by 60% via automation.

Identified underperforming product categories in specific regions.

Revealed peak delivery time windows to help optimize fleet allocation.

Helped decision-makers focus on top 3 regions driving 75% revenue.

# 📁 Repository Structure
The project is organized into the following directories and files:

1. Data
Contains all dataset files used in the project:

raw_data.csv: The original data collected for analysis.

cleaned_data.csv: The cleaned and preprocessed version of the dataset after applying data wrangling steps.

2. Scripts
Houses the code used for ETL and automation:

data_cleaning.py: A Python script for cleaning and preparing the dataset using pandas.

sql_queries.sql: SQL queries used for data extraction and transformation from the source database.

3. Dashboards
Includes the business intelligence dashboards:

PowerBI_Dashboard.pbix: The Power BI file showing interactive visualizations and KPI dashboards.

Tableau_Dashboard.twbx: The Tableau workbook used to explore and present insights.


