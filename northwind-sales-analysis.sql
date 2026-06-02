-- ================================================
-- Northwind Sales Analysis
-- Author: Pablo Ruiz
-- Date: 5/28/26
-- Description: Business analysis of Northwind sales,
--              customers, employees and revenue trends
-- ================================================

use northwind;

-- ================================================
-- REVENUE & SALES PERFORMANCE
-- ================================================

-- Q1: Top 5 best selling products by total revenue
-- Identifies highest revenue products to guide inventory
-- and purchasing decisions

select p.product_name as 'Best Sellers by Revenue', sum(d.unit_price * d.quantity) as total_revenue from products p
join order_details d on d.product_id = p.id
group by p.product_name
order by total_revenue desc limit 5;

-- Q2: Top 5 customers by total amount spent
-- Identifies highest value customers for retention
-- and loyalty program targeting

select c.first_name, c.last_name, sum(d.unit_price * d.quantity) as total_spent from customers c
inner join orders o on o.customer_id = c.id
inner join order_details d on d.order_id = o.id
group by c.first_name, c.last_name
order by total_spent desc limit 5;

-- Q3: US state that generates the most revenue
-- Highlights top performing regions to guide
-- regional sales and marketing strategy

select c.state_province, sum(d.quantity * d.unit_price) as revenue from customers c
join orders o on o.customer_id = c.id
join order_details d on d.order_id = o.id
group by c.state_province
order by revenue desc limit 1;

-- Q4: Employees ranked by total orders processed
-- Measures employee productivity and workload
-- distribution across the sales team

select e.first_name, e.last_name, count(o.id) as order_count from employees e
inner join orders o on o.employee_id = e.id
group by e.id, e.first_name, e.last_name
order by order_count desc;

-- ================================================
-- CUSTOMER ANALYSIS
-- ================================================

-- Q5: Average order value per customer
-- Segments customers by spending behavior to identify
-- high value vs low value customer groups

with total_revenue as (
    select order_id, sum(unit_price * quantity) as order_total
	from order_details
    group by order_id
),
customer_orders as (
    select o.customer_id, ot.order_total
    from orders o
    join total_revenue ot on ot.order_id = o.id
)
select customer_id, 
    avg(order_total) as avg_order_value,
    count(order_total) as total_orders
from customer_orders
group by customer_id;

-- Q6: Customers who have placed more than 2 orders
-- Identifies loyal repeat customers for
-- targeted retention and rewards programs

select c.first_name, c.last_name, count(o.id) as order_count from customers c
join orders o on o.customer_id = c.id
group by c.id
having order_count > 2
order by order_count desc;

-- Q7: Days since each customer's last order
-- Flags inactive customers for win-back campaigns
-- Customers with highest days_since_last_order
-- are highest churn risk

select distinct c.first_name, 
c.last_name,
datediff(curdate(), max(o.order_date) over(partition by o.customer_id)) as days_since_last_order 
from customers c
join orders o on o.customer_id = c.id
order by days_since_last_order desc limit 5;

-- ================================================
-- EMPLOYEE PERFORMANCE
-- ================================================

-- Q8: Month over month order count and revenue trend
-- Tracks business growth over time to identify
-- seasonal patterns and revenue acceleration

select date_format(o.order_date, '%Y-%m') as month,
count(distinct o.id) as order_count,
sum(d.unit_price * d.quantity) as revenue
from orders o
join order_details d on d.order_id = o.id
group by month
order by month;

-- Q9: Employees ranked by total revenue processed
-- Ranks sales team performance by revenue generated
-- to identify top performers and coaching opportunities

select e.first_name, e.last_name, sum(d.unit_price * d.quantity) as line_total,
rank() over(order by sum(d.unit_price * d.quantity) desc) as revenue_rank
from employees e
join orders o on o.employee_id = e.id
join order_details d on d.order_id = o.id
group by e.id, e.first_name, e.last_name
order by revenue_rank;

-- Q10: Suppliers ranked by total product revenue
-- Identifies most valuable supplier relationships
-- to inform procurement and negotiation strategy

select s.company, sum(d.unit_price * d.quantity) as total_revenue 
from suppliers s
inner join products p on p.supplier_ids = s.id
inner join order_details d on d.product_id = p.id
group by s.company
order by total_revenue desc limit 10;
