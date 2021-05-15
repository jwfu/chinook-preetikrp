SELECT e.EmployeeId,
    SUM(i.Total) AS Sales
FROM Employee e
    JOIN Customer c ON e.EmployeeId = c.SupportRepId
    JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY e.EmployeeId
ORDER BY Sales DESC
LIMIT 1;