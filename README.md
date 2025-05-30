# 🛒📊 Walmart  Sales  Analysis Project

## 📖 Overview
The Walmart Sales Analysis Project delves into transactional data spanning two years (2024–2025) to uncover key business insights. Using SQL, Power BI, and Excel, this project highlights data cleaning, exploration, and visualization techniques to analyze sales trends, customer preferences, and operational performance.


## 📂 Dataset Details
File Name: Cleaned_Walmart_Retail_Sales_Performance_2024_2025.xlsx
Rows: 10,000+ transactional records.

Columns:

Transaction_Date: The date and time of each transaction.

Region: Geographic area of the store.

Product_Category: Categories like Electronics, Groceries, Furniture, etc.

Sales_Amount: Revenue generated from a transaction.

Quantity: Number of items sold.

Discount: Discount applied to the transaction.

Status: Status of the order (Completed, Pending, Cancelled).

Payment_Method: Mode of payment (Credit Card, Cash, etc.).

Customer_ID: Unique identifier for customers.

File Name: Walmart.SQL
Contains SQL queries for comprehensive analysis, such as identifying top customers, analyzing regional performance, and calculating average discount percentages.

File Name: walmart_dashboard.pdf
A Power BI dashboard visualizing:

Sales trends by month, region, and category.

Cancellations by time and region.

Payment method preferences.

Product ratings and their influence on sales.



## 🔧 Tools & Technologies
SQL: For querying and analyzing large datasets.

Power BI: To create an interactive dashboard for data visualization.

Excel: For initial data cleaning and preparation.



## 🎯 Objectives

📊 Analyze: Explore sales trends, revenue distribution, and order statuses across regions and categories.

🎨 Visualize: Create dynamic dashboards for key stakeholders.

🧹 Clean: Address invalid entries and handle missing data to ensure robust analysis.







## 🔍 SQL Questions Addressed

1. Here are the key analytical queries included in the project:

2. Calculate the total sales amount for each product category in the "South" region, ordered from highest to lowest:

3. Identify regional revenue trends and category preferences.

4. Identify all transactions with invalid entries (e.g., ###INVALID### in Product_Category or Payment_Method) and count them by region:

5. Pinpoint data quality issues for rectification.

6. Find the month with the highest total sales in 2024, excluding cancelled orders:

7. Recognize peak months for effective sales planning.

8. Compare the average discount percentage (Discount/Sales_Amount) for completed vs. pending orders:

9. Evaluate the impact of discounts on order status.

10. List the top 5 customers (by Customer_ID) with the highest total spending, including their preferred payment method:

11. Identify high-value customers and understand their payment preferences.

12. Retrieve all transactions where Region or Payment_Method is missing, and replace NULLs with "Unknown" in the output:

13. Ensure comprehensive data integrity.

14. Calculate the percentage of cancelled orders per region, rounded to 2 decimal places:

15. Assess the operational challenges leading to cancellations.

16. Compute the average revenue per item (Sales_Amount/Quantity) for electronics, grouped by payment method:

17. Analyze pricing strategies across payment methods.

18. Extract the hour of the day (from Transaction_Date) with the highest total sales volume:

19. Determine optimal staffing hours based on sales peaks.





## 📊 Key Insights from the Dashboard

Sales Trends:

Peak sales were observed in January 2024 and July 2025.

Electronics and Groceries emerged as the top-performing categories.

Customer Behavior:

E-Wallets and Credit Cards were the most preferred payment methods.

The South Region contributed the highest revenue, but cancellations were notably high in the Central Region.

Operational Insights:

Peak sales hours were between 4 PM to 6 PM, highlighting the need for efficient staffing during this time.

Discounts were most effective in completing pending orders.



## 🖼️ Dashboard Highlights

The Power BI dashboard (walmart_dashboard.pdf) includes:

Total sales by month, region, and product category.

Cancellations segmented by time, region, and product.

Revenue and payment trends across various customer demographics.

Ratings and their correlation with sales performance.



## 🚀 How to Use
Dataset: Explore the .xlsx file for raw and cleaned data.

SQL Queries: Use Walmart.SQL to replicate analysis in your SQL environment.

Dashboard: Open the PDF file to view interactive visuals and insights.

## 🧗 Challenges Addressed

🧹 Resolved invalid entries (###INVALID###) and missing data in the dataset.

🔍 Analyzed data to identify top-performing products and customer segments.

🎨 Designed visuals to present complex trends intuitively for stakeholders.



## 🔮 Future Improvements

Integrate real-time data streams for live dashboard updates.

Incorporate predictive modeling for revenue and sales forecasting.

Expand analysis to include customer feedback and sentiment trends.



## 📢 Feedback and Collaboration
Let’s make this project better! Feel free to open issues or submit pull requests with suggestions and improvements.

#️⃣ #DataAnalytics #PowerBI #SQL #DataVisualization #WalmartSales #RetailAnalytics #BusinessIntelligence #SQLQueries

