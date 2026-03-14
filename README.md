# SmartRetail Power BI — Capstone Data Analysis Project
---

## Project Overview

This capstone project delivers a **3-page interactive Power BI dashboard** for **SmartRetail Company**, transforming raw superstore data into executive-ready insights. The analysis spans operations overview, market dynamics, and strategic risk intelligence — enabling data-driven decisions across sales, discounting, product management, and regional strategy.

---


## Dataset Overview

**Source:** Superstore Sales Dataset | **Records:** 9,994 orders

| Column | Description |
|---|---|
| `Order_ID` | Unique order identifier |
| `Order_Date` / `Ship_Date` | Order and shipping dates |
| `Ship_Mode` | Shipping method (Standard, Second, First, Same Day) |
| `Customer_ID` / `Customer_Name` | Customer identifiers |
| `Segment` | Customer type (Consumer, Corporate, Home Office) |
| `Country` / `City` / `State` / `Region` | Geographic data |
| `Category` / `Sub_Category` | Product classification |
| `Sales` | Order revenue ($) |
| `Quantity` | Units sold |
| `Discount` | Discount applied (0–0.80) |
| `Profit` | Profit generated ($) |

---

## Dashboard Pages

### Page 1 — Operations & Business Vitality Overview
- KPI cards: Total Profit ($286K), Total Quantity (38K), Total Sales ($2.30M)
- Annual Sales & Profit Growth (2014–2017)
- Trend & Seasonality by product
- Total Revenue by Customer Segment
- Correlation between Discount and Quantity Sold

### Page 2 — Market Dynamics & Portfolio Performance
- Business Growth & Seasonal Performance (Min/Max Sales by month)
- Top 10 Products by Revenue vs. Profit
- Total Sales by Category (pie chart)
- Products with High Sales but Negative Profit (scatter plot)

### Page 3 — Strategic Optimization & Risk Intelligence
- Best Regions by Sales and Profit (West, East, Central, South)
- States with High Sales but Negative Profit (map visual)
- Customers with Most Frequent Orders
- Correlation Between Discount and Profit
- Most Used and Profitable Shipping Modes

---

## DAX Measures Used

| Measure | Purpose |
|---|---|
| `Total Sales` | Sum of all sales revenue |
| `Total Profit` | Sum of all profit |
| `Total Quantity` | Sum of units sold |
| `Total Revenue` | Revenue aggregation |
| `Average Discount` | Mean discount rate |
| `Average Profit` | Mean profit per order |
| `Min Sales` / `Max Sales` | Seasonal range tracking |
| `Customer Orders` | Count of orders per customer |
| `Order Count` | Total order volume |
| `Shipping Usage` | Shipping mode distribution |
| `Total Profit Average per Discount` | Profitability at each discount tier |
| `Top 10 Filter` | Dynamic top-N product filter |
| `Unique Rank` | Customer ranking by order frequency |

---

## Key Findings

| # | Question | Finding |
|---|---|---|
| Q1 | Scale of operations | $2.3M revenue, $286K profit, 38K units — ~12.5% margin |
| Q2 | Sales trajectory | Consistent YoY growth from 2014 to 2017 with strong Q4 seasonality |
| Q3 | Seasonal products | Canon imageCLASS 2200 Copier is the top seasonal product (Autumn) |
| Q4 | Customer segments | Consumer segment leads at $1.16M — nearly double Corporate |
| Q5 | Discounts & behaviour | High discounts (>30%) destroy margin without significantly boosting volume |
| Q6 | Return rates | Data gap identified — returns not currently flagged in dataset |
| Q7 | Peaks & troughs | Peak: March 2017 | Trough: February / June (off-season) |
| Q8 | Top products | Canon imageCLASS 2200 Copier — $62K sales, $25.2K profit |
| Q9 | Loss-making products | Cubify 3D Printers and Lexmark units generate negative profit |
| Q10 | Category split | Technology 36.4% | Furniture 32.3% | Office Supplies 31.3% |
| Q11 | Customer loyalty | Emily Phan leads with 17 orders — top cohort has 13 orders each |
| Q12 | Regional performance | West leads ($725.46K sales, $108.42K profit) |
| Q13 | States at risk | Central region states (Texas/Illinois) drive volume but destroy profit |
| Q14 | Discount cliff | Profit crashes beyond 20% discount; 0% discount = highest profit ($321K) |

---

## Strategic Recommendations

1. **Enforce a 20% Discount Cap** — No discount above 20% without manager approval; profits crash beyond this threshold
2. **Delist Unprofitable Products** — Remove Cubify 3D Printers and Lexmark units from the active catalogue immediately
3. **Regional Intervention in Central Region** — Investigate pricing pressure or high shipping costs in Texas/Illinois
4. **Seasonal Inventory Alignment** — Stock HP Printers in winter, Canon Copiers in Autumn to maximise peak months
5. **Customer Loyalty Programme** — Target top 10 frequent customers (led by Emily Phan) with a VIP programme

---

## Tools & Technologies

| Tool | Usage |
|---|---|
| **Power BI Desktop** | Dashboard creation, DAX measures, visuals |
| **Power Query (M Language)** | Data transformation and cleaning |
| **DAX** | Custom measures and calculated columns |
| **Microsoft Excel** | Raw dataset source |
| **PowerPoint** | Findings presentation |

---


