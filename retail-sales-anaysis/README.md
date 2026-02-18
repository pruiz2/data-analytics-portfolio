# Retail Sales Analysis

Exploratory data analysis of a 1,000-record retail transactions dataset to uncover purchasing patterns across gender, age groups, and product categories — simulating a real-world business intelligence workflow.

## Overview

This project analyzes retail transaction data to answer the question: **How do spending patterns differ across customer demographics and product categories?**

Using Python and pandas, I cleaned and transformed the data, engineered age-group features, built multi-dimensional pivot tables, and visualized key findings to surface actionable business insights.

## Dataset

- **Source:** [Kaggle — Retail Sales Dataset](https://www.kaggle.com/datasets/mohammadtalib786/retail-sales-dataset)
- **Size:** 1,000 transactions
- **Features:** Transaction ID, Date, Customer ID, Gender, Age, Product Category, Quantity, Price per Unit, Total Amount

## Tools & Technologies

- Python
- pandas
- matplotlib
- Jupyter Notebook

## Key Findings

- **Male customers aged 51+** outspent females in Electronics by 28%
- **Female customers aged 36–50** led Clothing spend across all segments
- **Male customers aged 18–25** spent more on Beauty products than females of the same age group — an unexpected pattern with potential marketing implications
- Spending patterns vary significantly by age group, suggesting age is a stronger segmentation variable than gender alone

## Project Structure

```
retail-sales-analysis/
├── retail_sales_analysis.ipynb   # Main analysis notebook
├── retail_sales_dataset.csv      # Raw dataset
└── requirements.txt              # Dependencies
```

## How to Run

1. Clone the repo
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Open `retail_sales_analysis.ipynb` in Jupyter Notebook or VS Code and run all cells
