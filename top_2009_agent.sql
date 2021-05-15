SELECT e.EmployeeId,
    SUM(i.Total) AS Sales
FROM Employee e
    JOIN Customer c ON e.EmployeeId = c.SupportRepId
    JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE i.InvoiceDate LIKE '2009%'
GROUP BY e.EmployeeId
ORDER BY Sales DESC
LIMIT 1;