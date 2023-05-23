SELECT e.FirstName, e.LastName,
COUNT(c.CustomerId) AS customers_by_agent
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId