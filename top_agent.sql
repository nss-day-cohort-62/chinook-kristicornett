SELECT t.total_sales, t.FirstName, t.LastName
FROM (
SELECT
    SUM(i.Total) AS total_sales,
    e.FirstName,
    e.LastName
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId
) t
ORDER BY t.total_sales DESC
LIMIT 1