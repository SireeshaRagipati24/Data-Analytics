# 👥 HR Analytics Dashboard

> **Transforming raw HR data into workforce intelligence** — an interactive Power BI dashboard analyzing headcount, attrition, performance, recruitment, and employee satisfaction across departments and years.

---

## 🖥️ Dashboard Preview

![HR Dashboard](https://github.com/SireeshaRagipati24/Data-Analytics/blob/main/HR_Dashboard/HR_Dashboard.png)

> Built in **Power BI** | Interactive filters: Department · Year (2006–2018)

---

## 📌 Project Overview

This HR Analytics project delivers a comprehensive view of an organization's workforce health. By analyzing employee data across multiple dimensions — demographics, departments, performance ratings, and recruitment sources — this dashboard helps HR teams and business leaders make data-backed people decisions.

---

## 📊 Key Metrics at a Glance

| Metric | Value |
|---|---|
| 👥 Total Headcount | 243 |
| ❌ Terminated Employees | 162 (67%) |
| ✅ Active Employees | 81 (33%) |
| 👨 Male Employees | 101 (42%) |
| 👩 Female Employees | 142 (58%) |
| 💰 Total Payroll | 17M |

---

## 🔍 Business Questions Answered

| # | Question | Visual Used |
|---|---|---|
| 1 | What is the total headcount and active vs terminated split? | KPI Cards |
| 2 | How is headcount distributed across departments? | Bar Chart |
| 3 | What is the gender breakdown of the workforce? | KPI Cards |
| 4 | What are the performance ratings across employees? | Donut Chart |
| 5 | Which recruitment sources bring in the most hires? | Horizontal Bar Chart |
| 6 | What is the employee satisfaction distribution? | Donut Chart |
| 7 | How is headcount distributed geographically? | Map Visual |
| 8 | What is the marital status breakdown of employees? | Donut Chart |
| 9 | How has hiring trended year over year (2006–2018)? | Year Slicer Filter |
| 10 | What is the total payroll by department? | KPI + Department Breakdown |

---

## 🧠 Key Insights

- 🔴 **67% termination rate** — a critical attrition signal requiring immediate HR intervention
- 🏭 **Production department** has the highest headcount (159) — also likely highest attrition risk
- 👩 **Female employees (58%)** outnumber male employees — positive diversity indicator
- 🌐 **Indeed & LinkedIn** are the top recruitment sources — digital hiring channels dominate
- 😊 **Employee satisfaction** shows majority in "Acceptable" to "Very High" range — moderate engagement
- 📉 **78.14% of employees "Fully Meet"** performance expectations — a healthy performance curve
- 💼 **Executive Office** has the smallest headcount (250K payroll) vs Production (9.4M) — clear cost concentration

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| **Power BI** | Interactive dashboard & all visualizations |
| **Excel (HRData.xlsx)** | Raw data source & initial cleaning |
| **DAX** | Calculated measures (%, KPIs, headcount logic) |
| **Power Query** | Data transformation & shaping |

---

## 📂 Project Structure

```
HR_Dashboard/
│
├── 📊 HR_Dashboard.png        # Dashboard screenshot
├── 📋 HRData.csv.xlsx         # Raw HR dataset
├── 📁 HR_Dashboard.pbix       # Power BI source file
└── 📝 README.md
```

---

## 💡 DAX Measures Used

**Active Employee %:**
```dax
Active % = 
DIVIDE(
    CALCULATE(COUNT(HRData[EmpID]), HRData[EmploymentStatus] = "Active"),
    COUNT(HRData[EmpID])
) * 100
```

**Termination Rate:**
```dax
Termination Rate = 
DIVIDE(
    CALCULATE(COUNT(HRData[EmpID]), HRData[EmploymentStatus] = "Terminated"),
    COUNT(HRData[EmpID])
) * 100
```

**Total Payroll:**
```dax
Total Payroll = SUM(HRData[Salary])
```

---

## 📈 What I Learned

- Designing **executive-level HR dashboards** that tell a clear workforce story
- Using **DAX** to create dynamic KPIs and percentage calculations
- Building **multi-filter interactive reports** with department and year slicers
- Translating **HR metrics into business insights** around attrition, performance, and hiring
- Working with **map visuals** for geographic headcount distribution

---

## 🙋‍♀️ About Me

**Sireesha Ragipati** — Aspiring Data Analyst passionate about turning raw data into meaningful stories.



[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sireesha-ragipati-269a10244/)

---

*⭐ If you found this project helpful, consider giving it a star!*
