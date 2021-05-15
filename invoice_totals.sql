SELECT i.Total,
    c.FirstName || ' '  || c.LastName AS CustomerFullName,
    c.Country,
    e.FirstName || ' '  || e.LastName AS AgentFullName
FROM Invoice i
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId;