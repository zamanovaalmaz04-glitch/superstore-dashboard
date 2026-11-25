# Superstore Sales & Profitability Analysis

## Project Overview

An end-to-end data analytics project focused on transforming raw sales data into actionable business insights. The project analyzes sales performance, profitability, customer behavior, discount impact, and regional performance to answer key business questions:

- Which products generate losses?
- Which customers are high-value (VIP) or at risk of churn?
- How do discounts affect profitability?
- Which regions deliver the highest profit margins?

## Key Business Insights

| Metric | Result |
|---|---:|
| Total Sales | $2.3M |
| Best-Selling Product | Canon imageCLASS 2200 ($61,599) |
| Most Unprofitable Product | Cubify CubeX 3D Printer (-$9,239) |
| Critical Finding | Discounts above 40% result in an average loss of $134 per order |
| VIP Customers | 193 |
| Most Profitable Region | West (14.94% profit margin) |

## Technologies & Tools

- **Python 3.14** – Data processing and analysis
- **Pandas** – Data cleaning and ETL
- **SQL (SQLite)** – Database management and business queries
- **Power BI** – Interactive dashboards and business reporting
- **Plotly** – Interactive data visualization
- **Excel** – Reporting and data analysis

## Project Structure

```text
superstore_dashboard/
├── data/
│   └── Sample - Superstore.csv
├── notebooks/
│   ├── 01_etl.ipynb
│   └── 02_analiz.ipynb
├── sql/
│   └── analiz.sql
├── dashboard/
│   ├── proje9.pbix
│   ├── hesabat.xlsx
│   ├── index.html
│   ├── rfm_seqment.html
│   ├── satis_trendi.html
│   └── endirim_menfeet.html
└── superstore.db
```

## Data Analytics Workflow

1. **Data Extraction:** Imported raw sales data from CSV files.
2. **Data Transformation:** Cleaned, processed, and transformed data using Python and Pandas.
3. **Data Storage:** Loaded the processed data into an SQLite database.
4. **Data Analysis:** Used SQL queries and RFM analysis to identify business patterns and customer segments.
5. **Data Visualization:** Created interactive charts using Plotly.
6. **Business Reporting:** Developed Power BI dashboards and Excel reports to communicate findings.

## Power BI Dashboard

The dashboard consists of four interactive pages:

| Dashboard Page | Key Features |
|---|---|
| Overview | 5 KPIs, 4 charts, and 2 slicers |
| Sales Analysis | Year-over-year growth (YoY%), monthly trends, and discount analysis |
| Product Analysis | Top 10 and Bottom 10 products, profit margins |
| Customer Analysis | RFM segmentation, regional performance, and Top 10 customers |

## RFM Customer Segmentation

Applied RFM (Recency, Frequency, Monetary) analysis to segment customers based on purchasing behavior and identify opportunities for targeted marketing strategies.

| Customer Segment | Number of Customers | Recommended Strategy |
|---|---:|---|
| VIP | 193 | Loyalty and retention programs |
| Loyal | 222 | Rewards and engagement |
| Potential | 182 | Customer activation campaigns |
| At Risk | 141 | Targeted re-engagement campaigns |
| Lost | 55 | Win-back campaigns |

## How to Run the Project

```bash
# 1. Clone the repository
git clone https://github.com/zamanovaalmaz04-glitch/superstore-dashboard.git

# 2. Install dependencies
pip install pandas plotly openpyxl

# 3. Run the ETL notebook
jupyter notebook notebooks/01_etl.ipynb

# 4. Run the analysis notebook
jupyter notebook notebooks/02_analiz.ipynb

# 5. Open interactive visualizations
open dashboard/index.html
```

## Project Outcomes

This project demonstrates practical, end-to-end data analytics skills, including:

- Data cleaning and transformation (ETL)
- SQL querying and business analysis
- Sales and profitability analysis
- RFM customer segmentation
- Interactive Power BI dashboard development
- Data visualization and business reporting
- Translating data into actionable business insights

**GitHub Repository:** https://github.com/zamanovaalmaz04-glitch/superstore-dashboard

**Author:** Almaz Zamanova  
**Email:** zamanovaalmaz04@gmail.com
