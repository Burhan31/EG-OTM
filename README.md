# LATIN-TOYS Ltd — BI Analyst Dashboard

## Overview
Power BI dashboard analysing website traffic, sales performance, and marketing effectiveness for LATIN-TOYS Ltd (2012–2015).

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
- Sessions grew from ~2K to ~25K/month — strong traffic growth
- Conversion rate nearly doubled from ~3% to ~8%
- gsearch drives 67% of traffic; organic/direct has the highest conversion (7.34%)
- Ninja Warrior set dominates revenue (62%) but has the lowest margin (61%)
- Successful product diversification from 1 to 4 products over the period

## Data Model
5 tables: `orders`, `order_items`, `order_item_refunds`, `website_sessions`, `products`

## Tools Used
- Power BI Desktop
- MySQL (OperationsDb)
- DAX for calculated measures
