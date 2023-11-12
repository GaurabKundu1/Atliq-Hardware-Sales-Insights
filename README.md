# Atliq Hardware Sales Insights

## A Sales Insights Report Created by [Gaurab Kundu](https://www.linkedin.com/in/gaurab-kundu/)

## Project Overview

### About Project

- Performed Data Cleaning, Analysing and Visualization on India based hardware company sales insights.

- Developed ETL mappings using SQL to extract the data from unstructured data and transformed it to the staging area to conduct data cleaning and design star schema data model on Tableau.

- Developed a Tableau dashboard to perform analysis, producing quantitative visualizations in Tableau to draw valuable insights based on different parameters affecting the company performance year on year and further provide business solutions.

### About ATLIQ

- AtliQ Hardware is Computer Hardware and peripheral Manufacture company.

### Technologies Used

- Advance Excel

- MySQL

- Tableau

- Statistics

## Problem Statements

- Sales director wants to know the performance of the company in various Indian states & accordingly provide some discount.

    Q1. Revenue breakdown by cities.

    Q2. Revenue breakdown by years & months. 

    Q3. Top 5 customers by revenue & sales quantity.

    Q4. Top 5 Products by revenue.

    Q5. Net Profit & Profit Margin by Market.

## Approach - Project Planning & Aims Grid

### Purpose: What? Why? What do we want to achieve?

- To unlock sales insights that are not visible before for sales team for decision support & automate them to reduced manual time spent in data gathering.

### Stake Holders: Who will be involved?

 -	Sales Director
 -	I.T. Team
 -	Customer Service Team
 -	Data & Analytics Team

### End Result: What do we want to achieve?

- An automated dashboard providing quick & latest sales insights in order to support data driven decision making.

### Success Criteria: What will be our success criteria?

  -	Dashboards uncovering sales order insights with latest data available.
  -	Sales team able to take better decision & prove 10% cost savings of total spend.
  -	Sales analysts stop data gathering manually in order to save 20% of their business time & reinvest it in value added activity.

## Data Analyst Approach

<img src="https://github.com/GaurabKundu1/Atliq-Hardware-Sales-Insights/assets/86102231/c887ded6-603f-4469-b380-6893f3a8398f">

### Setup Process

- Step 1: Download file: db_dump.sql or db_dump.xlsx.

- Step 2: Import it in MySql do ETL(Extract, Transform, Load) if required.

- Step 3: Download Tableau Public (Free) or Tableau Desktop (14 days trial) to perform Data Analysis.

- Step 4: Connect Tableau with MySql database or Excel database.

- Step 5: Save the file as (.twb or .twbx).

## Data Analysis Using SQL

```sql
-- Show all customer records
SELECT * FROM customers;

-- Show total number of customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Show transactions for Chennai market (market code for Chennai is Mark001)
SELECT * FROM transactions
WHERE market_code = 'Mark001';

-- Show distinct product codes that were sold in Chennai.
SELECT DISTINCT product_code
FROM transactions
WHERE market_code = 'Mark001';

-- Show transactions where currency is US dollars.
SELECT * FROM transactions
WHERE currency = 'USD';

-- Show transactions in 2020 join by date table.
SELECT transactions.*, date.*
FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020;

-- Show total revenue in the year 2020.
SELECT SUM(transactions.sales_amount) AS total_revenue_2020
FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020
AND (transactions.currency = 'INR' OR transactions.currency = 'USD');

-- Show total revenue in the year 2020, January Month.
SELECT SUM(transactions.sales_amount) AS total_revenue_jan_2020
FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020
AND date.month_name = 'January'
AND (transactions.currency = 'INR' OR transactions.currency = 'USD');
```

## Data Analysis Using Tableau

- Tableau Dashboards: Revenue & Profit Analysis
- Creating Star Schema in Tableau

<img src="https://github.com/GaurabKundu1/Atliq-Hardware-Sales-Insights/assets/86102231/7c2365ff-e2e2-43fe-95a3-6d84aaaa9e1a">

## Tableau Dashboard : Revenue Analysis

<img src="https://github.com/GaurabKundu1/Atliq-Hardware-Sales-Insights/assets/86102231/7cf64477-7800-443f-8a06-15f26fc72368">

## Tableau Dashboard : Profit Analysis

<img src="https://github.com/GaurabKundu1/Atliq-Hardware-Sales-Insights/assets/86102231/fe3cba37-c812-42c3-bd8e-150487123ca3">

The Dashboards Can be Accessible Here : [Atliq Hardware Sales Insights](https://public.tableau.com/views/AtliqHardwareSalesInsights_16997131869620/RevenueAnalysisDashboard?:language=en-US&:display_count=n&:origin=viz_share_link)

## Recommendation

- Should Maintain healthy relationship with the customers in Bhubaneshwar, Surat, Patna as they are highest profit % by market.

- Make some stategy for Bengaluru market as its revenue are less and also profit % are in negative.

- Figure out what need to be done as sales quantity in Kanpur, Bengaluru, Patna, Bhubaneshwar, Surat are the lowest.

- North zone have highest revenue contribution but lowest profit % whereas South zone have lowest revenue contribution but highest profit %. Try to increase customers in South zone.

- Delhi is the highest revenue contibutor and eightth highest profit contributor whereas Mumbai is the second highest revenue contributor and sixth highest profit contributor. So its need to be implement the same market strategy as in mumbai to increase the profit % in Delhi.
