SELECT e.FirstName || ' '  || e.LastName AS FullName,
    i.InvoiceId
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId;