# 🛒 Zepto SQL Data Analysis Project

## 📌 Overview
This project analyzes a Zepto product dataset using SQL to perform data cleaning, exploration, and business analysis. The goal is to transform raw retail data into meaningful insights that can support business decision-making.

## 🎯 Project Objectives
- Explore and understand the dataset
- Clean and preprocess the data
- Perform business-focused SQL analysis
- Generate actionable insights using SQL queries

## 🛠️ Technologies Used
- SQL
- MySQL

## 📂 Dataset
The dataset contains product information, including:
- Product Name
- Category
- MRP
- Discount Percentage
- Selling Price
- Quantity
- Weight
- Stock Availability

## 🔍 Data Cleaning
The following preprocessing steps were performed:
- Identified and handled missing values
- Removed invalid records
- Detected duplicate products
- Converted prices from paise to rupees
- Added an `is_active` status column

## 📊 Analysis Performed
This project includes SQL queries to:
- Count total products
- Analyze stock availability
- Find duplicate products
- Identify top discounted products
- Find expensive products that are out of stock
- Compare MRP and selling prices
- Analyze category-wise performance
- Calculate potential revenue
- Filter products based on price and discount criteria

## 💡 Key SQL Concepts Used
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions
- CASE Statements
- Data Cleaning Techniques
- Filtering & Sorting

## 📈 Key Insights
- Identified categories with the highest number of products.
- Found products offering the largest discounts.
- Estimated potential revenue based on available inventory.
- Detected products requiring attention due to stock shortages.
- Generated category-level business insights using SQL.

## 📁 Project Structure

```
Zepto-SQL-Project/
│── Zepto_SQL_Project.sql
│── README.md
```

## 🚀 How to Run
1. Clone this repository.
2. Open MySQL Workbench (or any SQL client).
3. Create a database.
4. Import the `Zepto_SQL_Project.sql` file.
5. Execute the SQL queries to reproduce the analysis.

## 👩‍💻 Author

**Bushra Kalim**

If you found this project helpful, consider giving it a ⭐ on GitHub!
