# Power BI Superstore Dashboard

## Project Overview
The **Power BI Superstore Dashboard** is a professional, end-to-end analytics solution built to transform the Sample Superstore dataset into actionable business insights. The dashboard enables exploration of **Sales, Profit, and % Returned Orders**, incorporating **year-over-year comparisons**, product performance, segment analysis, and regional insights. This project demonstrates expertise in **data transformation, SQL, DAX, star schema modeling, and interactive dashboard design**, delivering a polished solution that supports informed decision-making.

The dashboard allows stakeholders to interactively explore metrics, identify trends, and quickly understand the impact of returns on overall profitability. It integrates best practices in **data modeling, visualization, and storytelling**.

---

## 🚀 Key Contributions
- **End-to-End Data Pipeline:** Collected, cleaned, and transformed the Orders, Returns, and Date tables using **Power Query** and **SQL queries**, ensuring reliable and accurate analysis.  
- **Star Schema & Relational Modeling:** Built a **central fact table (Orders)** connected to Returns and Date dimension tables, enabling time-based and relational calculations across multiple metrics.  
- **KPI & DAX Development:** Engineered DAX measures for **Sales, Profit, % Returned Orders, YoY growth, and % change vs previous year**, stored in a dedicated Key Measures table for clarity and maintainability.  
- **Interactive Visuals & Dashboard Design:** Created **KPI cards, line charts, bar charts, donut charts, and shape maps** with slicers, bookmarks, and conditional formatting for dynamic exploration.  
- **Problem-Solving & Analysis:** Independently identified trends in product performance, segment profitability, and regional sales to provide actionable insights.

---

## 🎛️ Dashboard Features
- **Slicer Panel:** Filter metrics dynamically by **Segment, Region, Customer, and Date Range**.  
- **KPI Cards:** Quick-view KPIs with **conditional formatting** to highlight trends.  
- **Time-Series Analysis:** Line charts comparing **current vs previous year sales** to reveal seasonal trends.  
- **Product & Segment Analysis:** Bar and donut charts visualize **top-performing and underperforming products and segments**.  
- **Geographical Insights:** Shape maps display **regional sales, profits, and return rates**.  
- **Bookmarks & Navigation:** Interactive bookmarks and grouped visuals improve dashboard navigation and storytelling.  
- **Dynamic Metrics:** All KPIs and charts update automatically based on slicer selections.

---

## 📸 Visualization
### Dashboard Screenshot
![Power BI Dashboard](Dashboard%20Image/Analytics_Dashboard.png)

The visuals provide a **user-friendly, interactive experience**, enabling stakeholders to filter, drill down, and explore trends at multiple levels of granularity.

- **Power BI File:** Full interactive dashboard available in `Dashboard/Analytics Dashboard.pbix`.


---

## 🌐 Data Sources
The project uses the Sample Superstore dataset, structured in the Excel file and enhanced within Power BI:

1. **Orders Table (Excel)**: Contains transactional data including order dates, products, quantities, sales, and profits.

2. **Returns Table (Excel)**: Tracks returned orders to calculate return rates and their impact on profitability.

3. **People Table (Excel)**: Provides date-related fields to support time-based analysis.

4. **Date Table (Power BI)**: A dedicated Date table created in Power BI for time intelligence calculations, including year-over-year comparisons.

All source data is included in Dataset/Dataset.xls, and the Date table is built directly within Power BI for accurate analytics.

---

## 🔢 Key Formulas & Logic
- **DAX Measures:** Used for **Sales, Profit, % Returned Orders, YoY growth, and percentage change** calculations.  
- **SQL Queries:** Extracted and aggregated Orders and Returns data to calculate metrics and validate dashboards (`SQL Queries/Store_Queries.sql`).  
- **Star Schema:** Optimized reporting performance and ensured accurate aggregation across multiple dimensions (Product, Segment, Region, Date).  
- **Conditional Formatting & Bookmarks:** Highlight trends, positive/negative changes, and guide users through interactive storytelling.  

Key formulas include:  
- `SUM()`, `SUMX()` – Aggregate sales, profit, and returns  
- `DIVIDE()` – Calculate percentages and ratios safely  
- `CALCULATE()` – Contextual metric calculation with filters  
- `SAMEPERIODLASTYEAR()` – Time intelligence for YoY comparisons  
- `IF()` & `IFERROR()` – Conditional logic and error handling  

---

## 📂 Repository Structure
/PowerBI-Superstore-Dashboard
│
├── Dashboard/
│ └── Analytics Dashboard.pbix # Interactive Power BI dashboard
├── Dashboard Image/
│ └── Analytics_Dashboard.png # Dashboard screenshot
├── Dataset/
│ └── Dataset.xls # Source dataset
├── DAX Measures/
│ └── DAX Measures.md # Documented DAX formulas and measures
├── Documentation/
│ └── Store Dashboard.pdf # Full project documentation
├── SQL Queries/
│ └── Store_Queries.sql # SQL queries used for metrics and analysis
└── README.md # Project overview

## 🎯 Project Impact
- Demonstrates **advanced data analytics skills**: data cleaning, modeling, SQL, DAX, and visualization.  
- Provides actionable insights into **sales, profits, and returns**, enabling informed business decisions.  
- Serves as a **reusable template** for retail performance dashboards, including KPIs, YoY comparisons, and regional/segment analysis.  
- Highlights **self-directed problem-solving**, dashboard storytelling, and professional analytics workflow.

## 🖱️ How to Use
1. Open `Dashboard/Analytics Dashboard.pbix` in **Power BI Desktop**.  
2. Use **slicers** to filter by Segment, Region, Customer, or Date Range.  
3. Explore **KPIs, trends, product and segment performance, and regional insights**.  
4. Refer to `DAX Measures/DAX Measures.md` for the **formulas used in calculations**.  
5. Optional: Use `SQL Queries/Store_Queries.sql` to extract, aggregate, or validate data.  
6. Use bookmarks and visual drill-through to **interactively navigate the dashboard**.
