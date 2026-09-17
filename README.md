# Loan Portfolio Analysis — End-to-End Data Analytics Project

An end-to-end analysis of a bank loan approval dataset, covering data cleaning, exploratory data analysis, SQL-based business querying, and an interactive Power BI dashboard.

## Problem
Understand what drives loan approval decisions — income, credit history, property area, education — using a real-world-style BFSI dataset, and surface these patterns in a way a business stakeholder could act on.

## Dataset
- 614 rows, 13 columns of applicant and loan data
- Cleaned using Python (Pandas): missing value imputation (mode for categorical, median for numeric), fixed data types, dropped irrelevant columns, engineered a `TotalIncome` feature

## Tools & Approach
- **Python (Pandas, Matplotlib, Seaborn):** Data cleaning and exploratory analysis — credit history impact, income distribution (right-skewed), property area trends, approval patterns
- **SQL Server:** 12+ queries using `COUNT`, `AVG`, `GROUP BY`, `WHERE`, `HAVING` to extract approval insights by education, income band, and property area
- **Power BI:** Interactive dashboard with DAX measures (`CALCULATE`, `DIVIDE`, `TOTALMTD`) tracking approval rates, income bands, and credit history impact across applicant segments

## Files in this repo
| File | Description |
|---|---|
| `Loan-data_analysis.ipynb` | Python notebook — data cleaning and EDA |
| `Loan_analysis.sql` | SQL Server queries for business insights |
| `Loan-Data_POWERBIDASHBOARD.pbix` | Power BI dashboard file |
| `FINAL-CLEANED-DATA.csv` | Cleaned dataset used for SQL and Power BI |

## Key Findings
- Applicants with a positive credit history show a markedly higher loan approval rate
- Income distribution is right-skewed, with a small number of high-income outliers
- Approval rates vary meaningfully by property area

## About
Built as part of a self-directed transition from IT/Desktop Support into data analytics. Full profile: [github.com/vikram-analytics](https://github.com/vikram-analytics)
