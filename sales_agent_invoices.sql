SELECT Total, Customer.Firstname || ' ' || Customer.lastname AS CustomerName, Customer.Country, Employee.Firstname || ' ' || Employee.Lastname AS SalesAgentName FROM Invoice
JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee ON Customer.SupportrepId = Employee.EmployeeId;