SELECT c.FirstName || ' ' || c.LastName AS FullName,
    c.CustomerId,
    c.Country
FROM Customer c
WHERE c.Country IS 'Brazil';