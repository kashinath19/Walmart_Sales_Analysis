use walmart_sales;

SELECT 
	*
FROM walmart_retail_sales;
	

    

   
    
    
    
-- SQL Questions
--  Calculate the total sales amount for each product category in the "South" region, ordered from highest to lowest.

SELECT
	Product_Category,Region,ROUND(SUM(Sales_Amount),0) Total_Sales_Amt
FROM 
	walmart_retail_sales
GROUP BY 
	1,2
HAVING 
	Region='South'
    
ORDER BY
	2 DESC;






-- Identify all transactions with invalid entries (e.g., ###INVALID### in Product_Category or Payment_Method) and count them by region.
SELECT 
	*
FROM 
	walmart_retail_sales
WHERE 
	Product_Category OR Payment_Method = '###INVALID###';




--  Find the month with the highest total sales in 2024, excluding cancelled orders.



SELECT 
	substring(Transaction_Date,4,2) MONTH,ROUND(SUM(Sales_Amount),2) highest_total_sales
FROM 
	walmart_retail_sales
WHERE 
	substring(Transaction_Date,7,4) = 2024
GROUP BY 
	substring(Transaction_Date,4,2);
	


--  Compare the average discount percentage (Discount/Sales_Amount) for completed vs. pending orders.

SELECT
	ROUND(Discount / Sales_Amount,2) * 100
    AVG_DIS_PER
FROM 
	walmart_retail_sales
WHERE 
	Status = 'Completed';


SELECT
	ROUND(Discount / Sales_Amount,2) * 100
    AVG_DIS_PER
FROM 
	walmart_retail_sales
WHERE 
	Status = 'Pending';




-- List the top 5 customers (by Customer_ID) with the highest total spending, including their preferred payment method.

SELECT 
	Customer_ID,ROUND(SUM(Sales_Amount),2) highest_total_spending
FROM 
	walmart_retail_sales
GROUP BY
	Customer_ID
ORDER BY 
	2 DESC;



-- Calculate the percentage of cancelled orders per region, rounded to 2 decimal places.

SELECT 
	Region,ROUND(COUNT(*)  / (    
									SELECT 
										COUNT(*) Total_Orders
									FROM
										walmart_retail_sales) * 100,2) percentage_of_cancelled_orders
    
FROM
	walmart_retail_sales
WHERE
	Status = 'Cancelled'
GROUP BY 
	Region ;





--  Compute the average revenue per item (Sales_Amount/Quantity) for electronics, grouped by payment method.

SELECT
	SUB.Payment_Method,SUM(average_revenue_per_item) average_revenue_per_item
	FROM(
					SELECT
						Product_Category,Payment_Method,round(Sales_Amount/Quantity,2) average_revenue_per_item
					FROM 
						walmart_retail_sales
					WHERE
						Product_Category = 'Electronics') SUB
GROUP BY
	SUB.Payment_Method;








-- Identify transactions where the Sales_Amount is more than 3 standard deviations from the mean.








