                      📊 Superstore Sales Analysis – Power BI Project

📌 Project Overview

This project is an end-to-end Sales Analysis Dashboard built using the Superstore dataset.
The dashboard helps analyze Sales, Profit, and Returned Orders with Year-over-Year (YoY) comparison.
It allows business users to identify growth trends, profitable segments, and loss-making categories.

🛠️ Steps Followed

1️⃣ Data Import & Preparation

Imported Orders and Returns tables from the Superstore dataset.

Checked data types for Date, Sales, Profit, Order IDs.

Removed unnecessary columns and ensured clean data for reporting.

2️⃣ Creating a Date Table

To perform time-based comparisons, I created a Date Table in DAX:

Date Table = 
ADDCOLUMNS(
    CALENDAR( MIN( Orders[Order Date] ), MAX( Orders[Order Date] ) ),
    "start of month", EOMONTH( [Date], -1 ) + 1
)


This allows calculations like Sales PY, Profit PY, and % Returned Orders PY.

3️⃣ Creating Measures

🔹 Core KPIs
Sales = SUM(Orders[Sales])
Profit = SUM(Orders[Profit])

🔹 % Returned Orders
% Returned Orders =
VAR _total_orders = DISTINCTCOUNT(Orders[Order ID])
VAR _returned_orders = DISTINCTCOUNT(Returns[Order ID])
VAR _perc = DIVIDE(_returned_orders, _total_orders)
RETURN _perc

🔹 Previous Year (PY) Measures
Sales PY = CALCULATE([Sales], SAMEPERIODLASTYEAR('Date Table'[Date]))
Profit PY = CALCULATE([Profit], SAMEPERIODLASTYEAR('Date Table'[Date]))
% Returned Orders PY = CALCULATE([% Returned Orders], SAMEPERIODLASTYEAR('Date Table'[Date]))

🔹 Variance vs PY
vs PY - Sales = DIVIDE([Sales] - [Sales PY], [Sales PY])
vs PY - Profit = DIVIDE([Profit] - [Profit PY], [Profit PY])
vs PY - % Returned Orders = [% Returned Orders] - [% Returned Orders PY]


These help measure growth/decline compared to the previous year.

4️⃣ Dashboard Design

The dashboard includes:

KPI Cards → Sales, Profit, % Returned Orders with YoY change.

Line Chart → Sales trend vs previous year.

Bar Chart → Profit by Product (showing profitable & loss-making items).

Map → Profit by State.

Donut Chart → Sales by Segment.

Slicer Panel → Customer, State, Segment, Date range.

This makes the dashboard interactive and dynamic.

5️⃣ Key Insights

✔️ Sales reached $2.3M, a +46.8% growth YoY.
✔️ Profit grew by +48.4% YoY, showing strong business growth.
✔️ Consumer Segment contributed ~50% of total sales.
✔️ Some categories (like Tables) consistently showed losses.
✔️ Certain states showed high sales but lower profit, needing action.

📂 Repository Structure
Superstore-Sales-Analysis/
│
├── Superstore_Dashboard.pbix               # Power BI dashboard file
├── Superstore_Dashboard.png                # Dashboard screenshot
├── Superstore_Dashboard_with_Filters.png   # With filters
├── README.md                               # Documentation
└── Superstore.xlsx                         # Dataset      

🚀 How to Use

Download or clone this repository.

Open the .pbix file in Power BI Desktop.

Use slicers (Customer, State, Segment, Date) to interact with the data.

Explore sales trends, profitability, and returned orders.

📌 Tools Used

Power BI – Dashboard & DAX measures

DAX – Calculations & KPIs

Superstore Dataset – Public dataset

📝 Credits

Dataset: Superstore Sample Dataset (public)

Visualization Tool: Power BI

Author: Ragipati Sireesha
