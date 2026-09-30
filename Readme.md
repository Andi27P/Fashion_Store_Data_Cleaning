# 🛍️ Fashion Store Data Cleaning

## 📌 Project Overview

In this project I take an unclean Fashion Store and Customers dataset with multiple empty spaces, multiple errors, different date format, missing customers or missing products and clean it using SQL Queries.
I investigated and resolved anomalies across 4 core datasets: `Customer_Data`, `Sales_Data`, `Store_Data` and `Product_Data`.

## 🛠️ Cleaning Process

* **Missing Data:** 
 * Identify on each of the 4th datasets 'Customer_Data', 'Sales_Data','Store_Data', 'Product_Data' any anomalies using SQL.
 * Fill the empty columns where needed In order to easy identify the permanent customer or subscribed customer vs guest customer.
 * Add an Uncategorized Class for the products without a known product category.
 * Find any product that is on the sales history but doesn't appear on the Product list and Insert the missing product id into the Sales Table.

* **Financial Correction:**
 * Apply correction for the prices where the list prices is smaller than cost prices.

* **Guest Account Generations:**
 * Set a distinct Guest Username for Customer who doesn't have an account on the store using ROWID.

* **Clean Format:**
 * Ensuring an universal used type of Date format using SUBSTR


## 📊 Outcome:
Clean Fashion Store Datasets ready to use for analysis and BI Dashboards.


## 📂 Project Structure
```text
├── Fashion_Store_Clean.sql     # SQL cleaning process
├── Customer_Data_Clean.csv     # Cleaned dataset
├── Product_Data_Clean.csv      # Cleaned dataset
├── Sales_Data_Clean.csv        # Cleaned dataset
├── Store_Data_Clean.csv        # Cleaned dataset
└── README.md                   # Project documentation