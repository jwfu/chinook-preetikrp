SELECT e.EmployeeId,
    SUM(i.Total)
From Employee e
    JOIN Customer c ON e.EmployeeId = c.SupportRepId
    JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY e.EmployeeId;