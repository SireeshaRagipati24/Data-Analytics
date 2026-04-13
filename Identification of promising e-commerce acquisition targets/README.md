
# 🛒 Identification of Promising E-Commerce Acquisition Targets

![Python](https://img.shields.io/badge/Python-3.11-blue?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Data-green?style=for-the-badge&logo=pandas&logoColor=white)
![Seaborn](https://img.shields.io/badge/Seaborn-Visualization-9B59B6?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)

> **A data-driven pipeline to identify the most promising Amazon seller accounts for e-commerce acquisition** — evaluating sellers on product volume, reputation, brand strength, and market presence using a composite scoring model.

---

## 🎯 Business Problem

E-commerce acquisition firms evaluate hundreds of Amazon sellers to identify the best candidates for purchase. Manually reviewing each seller is time-consuming and subjective. This project automates the evaluation process by:

1. Extracting structured features from raw seller text data
2. Filtering out inactive or data-sparse sellers
3. Scoring every seller using a weighted composite model
4. Producing a ranked shortlist of **prime acquisition targets**

---

## 🧠 What Makes a Good Acquisition Target?

| Signal | Why It Matters |
|--------|---------------|
| **High positive rating %** | Trustworthy seller with loyal customers |
| **Large total ratings count** | Proxy for lifetime sales volume |
| **Strong hero products** | Viral flagship items = brand value |
| **Large product catalog** | Scalable business, not single-product risk |
| **Multi-brand portfolio** | Diversified revenue = lower acquisition risk |
| **Zero recent negatives** | Clean operational track record |

---

## 🏗️ Analysis Pipeline

```
Raw Excel Data (Sample_Longlist_Data.xlsx)
         ↓
Feature Extraction from text columns
  - product_count ← sellerproductcount
  - positive_rating %, total_ratings ← sellerratings
  - Phone, Email ← sellerdetails
  - business_name ← seller business name
  - Country ← businessaddress
         ↓
Data Quality Filtering
  - Remove ghost sellers (0 brands, 0 products, 0 ratings)
  - Remove Chinese sellers (CN) — out of acquisition scope
         ↓
Exploratory Data Analysis (8 visualizations)
         ↓
Acquisition Scoring Model
  - Composite 5-metric score
  - Negative rating penalty
         ↓
Ranked Output: Top 15 targets + Quadrant Analysis
```

---

## 🏆 Acquisition Score Formula

```python
Acquisition Score =
    0.30 × Positive Rating %      (trust & quality)
  + 0.25 × Total Ratings          (sales volume proxy)
  + 0.20 × Hero Product Avg       (flagship strength)
  + 0.15 × Product Count          (catalog breadth)
  + 0.10 × Brand Count            (portfolio diversity)

  × 0.90 penalty if any negative ratings in last 30 days
```

All metrics are **min-max normalized to 0–1** before scoring, ensuring no single metric dominates due to scale differences.

---

## 📊 Visualizations

| # | Chart | Business Question |
|---|-------|-------------------|
| 1 | Country Distribution | Which countries do our sellers come from? |
| 2 | Positive Rating Histogram | How are seller quality ratings distributed? |
| 3 | Negative Rating by Time Window | Are negative trends improving or worsening? |
| 4 | Product Count vs Total Ratings | Do bigger catalogs attract more customers? |
| 5 | Top 10 Brands by Rating | Which brands have the strongest reputations? |
| 6 | Correlation Heatmap | How do key metrics relate to each other? |
| 7 | High-Risk Seller Scatter | Which popular sellers have quality issues? |
| 8 | Acquisition Quadrant | 2x2 matrix: volume vs quality |

---

## 🗂️ Project Structure

```
E_Commerce_Acquisition/
│
├── 📓 Identification_of_promising_e-commerce_acquisition_Analysis.ipynb
├── 📊 Sample_Longlist_Data.xlsx      # Input seller data
└── 📝 README.md
```

---

## 🛠️ Tech Stack

| Library | Version | Purpose |
|---------|---------|---------|
| **Pandas** | Latest | Data loading, cleaning, feature extraction |
| **NumPy** | Latest | Normalization, vectorized operations |
| **Matplotlib** | Latest | Custom visualizations |
| **Seaborn** | Latest | Statistical plots, heatmaps |
| **re (regex)** | Built-in | Text pattern extraction |

---

## 🚀 How to Run

**1. Clone the repository**
```bash
git clone https://github.com/SireeshaRagipati24/Data-Analytics.git
cd Data-Analytics/E_Commerce_Acquisition
```

**2. Install dependencies**
```bash
pip install pandas numpy matplotlib seaborn openpyxl jupyter
```

**3. Place the data file**
```
Ensure Sample_Longlist_Data.xlsx is in the same directory as the notebook.
```

**4. Run the notebook**
```bash
jupyter notebook Identification_of_promising_e-commerce_acquisition_Analysis.ipynb
```

---

## 📈 Sample Output

```
🏆 TOP 15 ACQUISITION TARGETS (Ranked by Score)
================================================================
Rank  Score   Rating%   Total Ratings  Products  Hero Avg  Brands  Country
  1   0.7821  100       1432           2100      3210      16      US  ✅
  2   0.7543   98       1289           1800      2980      12      GB  ✅
  3   0.7312  100        987           1650      2541      14      US  ✅
  ...
✅ No recent negative ratings | ⚠️ Has negative ratings (penalized)
```

---

## 🔍 Key Findings

- **Most sellers have strong reputation** — majority maintain 90%+ positive ratings
- **Hero product strength is the key differentiator** — sellers with viral flagships score highest
- **Perfect sellers are rare and extremely valuable** — 0 negatives + strong volume = ideal target
- **Product count and total ratings are correlated** — bigger catalogs drive more customer engagement
- **Prime Quadrant (high volume + high rating)** contains the best acquisition candidates

---

## 🔮 Next Steps

| Action | Description |
|--------|-------------|
| **Outreach automation** | Use extracted emails/phone numbers to contact top-scored sellers |
| **Trend monitoring** | Track if negative ratings are recovering or worsening over time |
| **Revenue estimation** | Apply industry multiples (3–5× annual revenue) to total ratings volume |
| **Competitor analysis** | Cross-reference against known acquisitions in the market |
| **Due diligence** | Manual review of Tier 1 sellers' product listings, supplier relationships |

---

## 👩‍💻 Author

**Sireesha Ragipati**  
📧 [LinkedIn](https://www.linkedin.com/in/sireesha-ragipati-269a10244/) 

> *"Turning raw seller data into ranked acquisition intelligence."*

---

⭐ **If you found this helpful, please star the repository!**
