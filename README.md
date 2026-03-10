# E-Commerce-Sales-Analysis
This project analyzes an e-commerce retail dataset to uncover insights about sales performance, customer behavior, and product trends.
The analysis includes data cleaning, exploratory data analysis (EDA), SQL analysis, and dashboard visualization.
The goal is to demonstrate core Data Analyst skills using Python, SQL, Excel, and Power BI.
Dataset
Dataset: Superstore Sales Dataset

The dataset contains 9,994 sales records with information about:
Orders
Customers
Products
Regions
Sales
Profit
Discounts
Shipping details

Key columns include:
Order Date
Customer Name
Product Name
Category
Sales
Profit
Region
Discount

Project Workflow
1 Data Loading
The dataset was loaded into Python using Pandas.
import pandas as pd
df = pd.read_csv("Sample - Superstore.csv", encoding='latin1')

Data Cleaning
Steps performed:
Checked dataset structure using df.info()
Checked missing values
Verified duplicates
Converted date columns to datetime
Created new features (Year, Month)
Example:
df['Order Date'] = pd.to_datetime(df['Order Date'])
df['Ship Date'] = pd.to_datetime(df['Ship Date'])
df['Year'] = df['Order Date'].dt.year
df['Month'] = df['Order Date'].dt.month

3 Exploratory Data Analysis (EDA)
Several business questions were explored:
Sales by Category
Identify which product category generates the highest revenue.
Profit by Region
Analyze profitability across different regions.
Monthly Sales Trend
Understand seasonal sales patterns.
Top 10 Best-Selling Products
Find products contributing the most revenue.
Discount vs Profit
Analyze how discounts impact profitability.
Example visualization:
sns.scatterplot(x='Discount', y='Profit', data=df)
