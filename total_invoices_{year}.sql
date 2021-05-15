SELECT COUNT(i.InvoiceId)
FROM Invoice i
WHERE i.InvoiceDate LIKE '2009%'
    OR i.InvoiceDate LIKE '2011%';