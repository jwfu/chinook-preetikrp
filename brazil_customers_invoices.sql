SELECT c.FirstName || ' ' || c.LastName AS FullName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Customer c
    INNER JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE i.BillingCountry IS 'Brazil';