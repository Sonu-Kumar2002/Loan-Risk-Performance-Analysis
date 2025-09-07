# Loan Performance & Credit Risk Analysis

## 📌 Project Overview

This project replicates a real-world banking environment to evaluate customer behavior, loan performance, and credit risk exposure. Using **SQL**, **Power BI**, **Python**, and **Excel**, I developed a complete data analytics pipeline covering everything from data generation to insights visualization.

---

## 🛠 Tools & Technologies

- **SQL (PostgreSQL):** Database design, data relationships, analysis queries
- **Power BI:** Dashboarding, visual storytelling, KPI tracking
- **Python (Pandas, Faker):** Synthetic data generation (over 1 million rows)
- **Excel:** Business-focused analysis via pivot tables and charts

---

## 📂 Project Folder Structure

```
Loan_Performance_Credit_Risk_Analysis/
├── SQL_Analysis.sql               # Full SQL query file (5 key queries)
├── PowerBI_Screenshots/           # Screenshots of Power BI dashboard pages
├── PowerBI_Dashboard.pbix         # Interactive Power BI file (optional)
├── Python_Analysis.ipynb          # Jupyter notebook for data generation
├── Excel_Report.xlsx              # Pivot analysis for business insight
├── Sample_Data/                   # Cleaned CSVs for import: customers, applications, etc.
└── README.md                      # This summary file
```

---

## 📊 Dashboard & Report Breakdown

### 🔸 Power BI Dashboards

**Page 1: Portfolio Summary Metrics**

- KPIs: Total Customers, Loans Approved, Defaults, Loan Amount
- Visuals: Default by Employment Type, Loan Approval Breakdown, Loans by Product Type

**Page 2: Risk & Payment Insights**

- Stacked column chart: Loan defaults by region
- Map visual: Missed payments across UK regions
- Clustered bar: Loan types and payment outcomes

**Page 3: Customer Credit Score Bands**

- Distribution of credit score bands
- Loan volume per score range (donut chart)
- Matrix: Avg. income by score band and employment type

### 🔸 Excel Pivot Analysis

- Missed Payment Behavior by Region and Status (stacked column chart)

### 🔸 SQL Analysis Queries

- Default rate by employment type
- Missed payment percentage by region
- Loan defaults by credit score bands
- Default rate by loan type
- Count of defaults across locations

### 🔸 Python Data Pipeline

- Generated synthetic but realistic customer and loan data (over 1 million rows total)
- Used Python (with Faker and custom logic) to generate names, dates, payments, and simulate default behavior
- Outputted clean `.csv` files for import to SQL, BI, and Excel

---

## 📁 Datasets Used (Generated via Python)

- `customers.csv`
- `loan_applications.csv`
- `loan_payments.csv`
- `loan_defaults.csv`

These datasets simulate customer records, loan histories, payment tracking, and default tagging.

---

## 🧠 Business Objective

To provide meaningful insights that help banks:

- Predict default risk by employment and score band
- Identify high-risk regions or loan products
- Understand customer repayment behavior
- Improve lending decisions and reduce losses

---


---



