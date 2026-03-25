# 📊 Business Performance Analysis Dashboard (Power BI & SQL)
# LATIN-TOYS Ltd — BI Analyst Dashboard

## Overview

This project focuses on analysing business performance data to identify trends, support decision-making, and highlight areas for improvement. The aim was to simulate a real-world business scenario where data is used to drive operational and strategic insights.
Power BI dashboard analysing website traffic, sales performance, and marketing effectiveness for LATIN-TOYS Ltd (2012–2015).

## Tools & Technologies  
- **SQL** – Data extraction, transformation, and analysis (OperationsDb) 
- **Power BI** – Dashboard design and visualisation  
- **Excel** – Data preparation
- DAX for calculated measures


## What I Did  
- Cleaned and structured raw data using SQL queries  
- Analysed key metrics such as performance trends, category-level insights, and time-based patterns  
- Built an interactive Power BI dashboard with filters, KPIs, and visualisations  
- Translated raw data into clear insights to support business decisions  

## Files

| File | Description |
|:---|:---|
| `BIAnalyst.pbix` | Power BI dashboard (2 pages) |
| `SQL_File1.sql` | Overview queries — KPIs, conversion rate, AOV trends, device analysis |
| `SQL_File2.sql` | Deep dive queries — marketing channels, product sales, refund analysis |

## Dashboard Pages

**Page 1 — Executive Overview**
- 6 KPI cards: Total Orders, Sessions, Revenue, AOV, Conversion Rate, Gross Profit
- Trend charts: Orders & AOV, Sessions, Conversion Rate, Revenue Per Session
- Slicers: Year/Month, Device Type

**Page 2 — Performance Deep Dive**
- Sessions & Orders by marketing channel
- Conversion Rate by channel
- Product performance table (Units, Revenue, COGS, Profit Margin %)
- Revenue share by product (Donut chart)
- Revenue by product over time (Stacked Area)

## Key Findings
- Identified trends in performance over time, highlighting periods of growth and decline  
- Highlighted underperforming segments that may require operational improvement  
- Demonstrated how data can be used to monitor KPIs and support efficiency  
- Sessions grew from ~2K to ~25K/month — strong traffic growth
- Conversion rate nearly doubled from ~3% to ~8%
- gsearch drives 67% of traffic; organic/direct has the highest conversion (7.34%)
- Ninja Warrior set dominates revenue (62%) but has the lowest margin (61%)
- Successful product diversification from 1 to 4 products over the period

## Data Model
5 tables: `orders`, `order_items`, `order_item_refunds`, `website_sessions`, `products`


## Dashboard Preview  
![Dashboard Screenshot](./dashboard.png)

> *(Replace `dashboard.png` with your actual screenshot file name and upload it to your repo)*

---

## Why I Built This  
This project reflects my interest in using data to solve real business problems and support better decision-making. It also helped me strengthen my skills in SQL and Power BI through hands-on application.


