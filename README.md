# Northwind Sales Analysis (SQL Joins & Aggregation)

## Overview
This project uses the Northwind sample database — a classic dataset modeling a small trading company's sales operations — to practice and showcase SQL joins, from simple two-table lookups up to multi-table joins with aggregation and date-based analysis.

Unlike my other portfolio projects, Northwind is a widely-used **practice dataset**, not real proprietary or government data. It's included here specifically to demonstrate join and aggregation skills on a relational schema with realistic business relationships (customers, orders, products, employees, categories, shippers).

## Data Source
- **Dataset:** Northwind sample database (PostgreSQL port)
- **Source repo:** [pthom/northwind_psql](https://github.com/pthom/northwind_psql)
- This repo does not re-host the original `northwind.sql` file — see setup instructions below to get it directly from the source.

## Setup
1. Clone or download `northwind.sql` from [pthom/northwind_psql](https://github.com/pthom/northwind_psql)
2. Create a new PostgreSQL database (e.g. `northwind`)
3. Run `northwind.sql` against it to create and populate all tables
4. Run the scripts in `sql/` (in order) against that database to reproduce the analysis in this repo

## Schema Overview
Key tables and how they relate:
- `customers` → `orders` (who placed each order)
- `employees` → `orders` (who processed each order)
- `orders` → `order_details` (line items within each order)
- `order_details` → `products` (what was purchased)
- `products` → `categories` (product classification)
- `orders` → `shippers` (how the order was shipped)

Revenue for any order line is calculated as `quantity * unit_price` from `order_details`.

## Queries in This Project

### `sql/02_basic_joins.sql`
Two-table joins: orders + customers, products + categories, orders + employees.

### `sql/03_three_table_joins.sql`
Three-table joins: line-item detail (orders + order_details + products), and revenue per product.

### `sql/04_multi_table_analysis.sql`
Four-table joins with aggregation:
- Revenue by category
- Top-performing employee by total sales
- Revenue by category by quarter (uses `EXTRACT()` to break down `order_date` into year and quarter)

## Skills Demonstrated
- Multi-table joins (2 to 4+ tables)
- Aggregation (`SUM`, `GROUP BY`)
- Date functions (`EXTRACT`) for time-based analysis
- Structuring SQL queries to answer specific business questions (e.g., "which category generates the most revenue?")

## Notes
- This project uses sample/practice data, not real business data — noted here for transparency alongside my other portfolio projects, which use real public datasets.
