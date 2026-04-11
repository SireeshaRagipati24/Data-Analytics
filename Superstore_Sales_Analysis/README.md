# 🛒 Superstore Sales Analysis Dashboard

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Excel](https://img.shields.io/badge/Microsoft%20Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)

> **An end-to-end business intelligence solution** analyzing retail sales performance, profitability trends, and customer segment behavior using Power BI — delivering actionable insights across product categories, geographies, and time periods.

---

## 📊 Live Dashboard Preview

![Superstore Dashboard](https://github.com/SireeshaRagipati24/Data-Analytics/blob/main/Superstore_Sales_Analysis/Superstore_Dashboard.png)

---

## 🎯 Business Problem

Retail businesses often struggle to pinpoint **where profits are being lost**, which product categories underperform, and how sales evolve over time. This project addresses those questions by building an interactive dashboard that empowers stakeholders to:

- Monitor KPIs like Sales, Profit, and Return Rate at a glance
- Identify high-loss product subcategories dragging down margins
- Compare current year vs. previous year performance
- Understand which customer segments and states drive the most value

---

## 📈 Key Insights Uncovered

| Metric | Value | YoY Change |
|--------|-------|-----------|
| 💰 Total Sales | $2.30M | ▲ 46.88% vs PY |
| 📦 Total Profit | $286.40K | ▲ 48.42% vs PY |
| 🔄 % Returned Orders | 100.00% | 0.00% vs PY |

### 🔍 Notable Findings

- **Tables and Bookcases** recorded **negative profit** — key targets for pricing or inventory strategy review
- **Technology** category outperformed Furniture and Office Supplies in profit margins
- **Consumer segment** dominates with ~50.56% of total sales, followed by Corporate (30.74%)
- Sales show a **consistent upward trend** from Jan 2016 to Jul 2019, with seasonal spikes

---

## 🗂️ Project Structure

```
Superstore_Sales_Analysis/
│
├── 📊 Superstore_Dashboard.png          # Dashboard screenshot (Page 1)
├── 📊 Superstore_Dashboard_with_Filters.png  # Dashboard with filter panel
├── 📁 Sample - Superstore.xlsx          # Raw dataset (orders, returns, customers)
├── 📄 Superstore_Sales_Analysis.pbix    # Power BI source file
├── 🎬 superstore.mp4                    # Dashboard walkthrough video
└── 📝 README.md                         # Project documentation
```

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Microsoft Power BI** | Dashboard design, DAX measures, data modeling |
| **Microsoft Excel** | Raw data source (Orders, Returns, Customers sheets) |
| **DAX** | Custom KPI calculations (YoY %, PY comparisons) |
| **Power Query** | Data cleaning and transformation |

---

## 📐 Dashboard Features

### Page 1 — Executive Overview
- **KPI Cards** — Sales, Profit, % Returned Orders with PY comparison
- **Sales vs. Previous Year Over Time** — Dual-line time series chart (2016–2019)
- **Profit by Product** — Grouped bar chart across subcategories and main categories
- **Profit by State** — Choropleth map for geographic performance
- **Sales by Segment** — Donut chart (Consumer / Corporate / Home Office)

### Page 2 — Detailed Filters View
- Dynamic slicers for date range, region, segment, and category
- Drill-through capability for granular analysis

---

## 🧮 DAX Measures Used

```dax
-- Year-over-Year Sales Growth
Sales YoY % = 
DIVIDE([Total Sales] - [Sales PY], [Sales PY], 0)

-- Previous Year Sales
Sales PY = 
CALCULATE([Total Sales], SAMEPERIODLASTYEAR('Date'[Date]))

-- Profit Margin
Profit Margin % = 
DIVIDE([Total Profit], [Total Sales], 0)
```

---

## 📦 Dataset Overview

**Source:** [Tableau Superstore Sample Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)

| Feature | Details |
|---------|---------|
| Records | ~10,000 orders |
| Time Period | 2015 – 2018 |
| Geography | United States (49 states) |
| Categories | Furniture, Office Supplies, Technology |
| Segments | Consumer, Corporate, Home Office |

---

## 🚀 How to Use

1. **Clone the repository**
   ```bash
   git clone https://github.com/SireeshaRagipati24/Data-Analytics.git
   cd Data-Analytics/Superstore_Sales_Analysis
   ```

2. **Open the Power BI file**
   - Ensure **Power BI Desktop** is installed
   - Open `Superstore_Sales_Analysis.pbix`

3. **Refresh Data** *(if needed)*
   - Go to `Home → Transform Data → Close & Apply`

4. **Explore the Dashboard**
   - Use slicers to filter by year, region, category, or segment
   - Hover on visuals for tooltips and drill-down options

---

## 💡 Business Recommendations

1. **Discontinue or reprice unprofitable subcategories** — Tables (-$17.7K) and Bookcases are eroding margins
2. **Double down on Technology** — Highest profit density per order
3. **Investigate return patterns** — 100% return rate flag needs deeper investigation by category
4. **Focus marketing on Consumer segment** — Largest revenue driver with room to upsell

---

## 👩‍💻 Author

**Sireesha Ragipati**  
📧 [LinkedIn](https://www.linkedin.com/in/sireesha-ragipati-269a10244/) 

> *"Turning raw data into decisions — one dashboard at a time."*

---

## ⭐ If you found this helpful, please star the repository!

[![GitHub stars](https://img.shields.io/github/stars/SireeshaRagipati24/Data-Analytics?style=social)](https://github.com/SireeshaRagipati24/Data-Analytics)
