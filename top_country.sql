SELECT c.total_sales, c.BillingCountry
FROM (
SELECT 
SUM(Total) AS total_sales,  
BillingCountry 
FROM Invoice
GROUP BY BillingCountry
) c
ORDER BY c.total_sales DESC
LIMIT 1