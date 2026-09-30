-- Check the Customer Data for any missing lines
SELECT * From Customer_Data
Where email = ''

-- Check for negative ages or expired dates
SELECT Min(age) AS Youngest, Max(age) as Oldest From Customer_Data


-- Fill the empty email fields 
UPDATE Customer_Data
Set email ='Not Provided'
WHERE email =''


SELECT color, category From Product_Data
GROUP BY color

-- Check Unclean data in Product_Data
Select category From Product_Data
GROUP BY category

SELECT * FROM Product_Data
Where category = '???'

--Fill the empty category fields with "Uncategorized"
UPDATE Product_Data
Set Category = "Uncategorized"
Where category = '???'

UPDATE Product_Data
Set color = "Unspecified"
Where color = ''

-- Check for negative prices and update them to minimum being the cost price
UPDATE Product_Data
Set list_price = cost_price
Where CAST(list_price AS REAL) < CAST(cost_price AS REAL)


Select * From Product_Data
Where cast(list_price AS REAL) >= cast(cost_price AS REAL)



-- Check Sales_Data Table
Select Store_id, customer_id FROM Sales_Data
Where customer_id =''

Update Sales_Data
SET customer_id = 'Guest_' || rowid
Where customer_id =''

SELECT Customer_id FROM Sales_Data
where customer_id LIKE 'Guest_%'
limit 20

Select discount, returned From Sales_data

-- Fill the empty discount fields with 0
Update Sales_Data
Set discount = 0.0
Where discount =''


-- Playing with date formats
SELECT date FROM Sales_Data

UPDATE Sales_Data
Set date = substr(date,9,2) || '-' || substr(date,6,2) ||'-' ||substr(date,1,4)

Update Sales_Data
set date = substr(date,7,4) || '-' || substr(date,4,2) || '-' || substr(date,1,2)


-- Check If any product_id in Sales_Data is missing from Product_Data
SELECT DISTINCT s.product_id 
FROM Sales_Data s
LEFT JOIN Product_Data p ON s.product_id = p.product_id
WHERE p.product_id IS NULL;

-- Found 1 missing product_id in Sales_Data, let's check the details
Select count(product_id) FROM Sales_Data
Where product_id = 'P999999'

SELECT * From Product_Data
Where product_id = 'P999999'

-- Insert the missing product_id into Product_Data
Insert INTO Product_Data (product_id, category, color, cost_price, list_price)
VALUES ('P999999', 'Uncategorized', 'Unspecified', 0.0, 0.0)


/* Checking last table for any missing data */

Select * FROM Store_Data

-- Found Online store with size in meter square
Update Store_Data
Set store_size_m2 = 0
WHERE store_name = 'Online'
