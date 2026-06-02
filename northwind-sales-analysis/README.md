# Northwind Sales Analysis

## Overview
SQL analysis of the Northwind database exploring 
sales performance, customer behavior, employee 
productivity, and supplier revenue.

## Tools
- MySQL
- MySQL Workbench

## Questions Answered
1. Top 5 best selling products by total revenue
2. Top 5 customers by total amount spent
3. Highest revenue generating US state
4. Employees ranked by orders processed
5. Average order value per customer
6. Customers with more than 2 orders
7. Days since each customer's last order
8. Month over month revenue trend
9. Employees ranked by total revenue
10. Suppliers ranked by product revenue

## Key Insights

- Northwind Traders Coffee is the top revenue-generating product at $29,900.00, 
  accounting for 65% of total product revenue. The 5th ranked product, Northwind 
  Traders Clam Chowder, generated only $2,798.50 (6%), indicating heavy revenue 
  concentration in a single SKU — a potential business risk worth monitoring.

- The top customer by spend ($15,432.50) outspent the 5th ranked customer 
  ($4,683.00) by $10,749.50, suggesting a small segment of high-value customers 
  drives a disproportionate share of revenue.

- Tennessee is the highest revenue-generating state at $15,432.50, making it 
  the primary market for targeted sales and retention efforts.

- Order processing is distributed unevenly across the sales team, with the top 
  employee handling 12 orders compared to a low of 2. This suggests a workload 
  balancing opportunity for management.

- Customer 27 holds the highest average order value at $1,505.00 but has placed 
  only 1 order, identifying them as a high-potential customer worth targeting 
  for re-engagement.

- 7 customers (24% of the customer base) have placed more than 2 orders, 
  representing the core loyal segment most likely to respond to retention programs.

- The two most inactive customers have not placed an order in 7,346 days (~20 years), 
  highlighting a significant lapsed customer segment that may benefit from 
  a win-back campaign.

- Revenue trends upward from January through April before declining through summer, 
  suggesting seasonal demand patterns that could inform promotional planning.

- The employee with the highest order count also ranks #1 in total revenue 
  processed, indicating strong correlation between activity and performance 
  on the sales team.

- Supplier C accounts for $30,722.50 in total product revenue, representing a 
  disproportionate share of sales. This supplier dependency is a supply chain 
  risk worth addressing.

## Files
- `northwind_sales_analysis.sql` - All analysis queries
