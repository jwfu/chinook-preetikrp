SELECT SUM(i.Total),
    strftime('%Y', i.InvoiceDate) as Year
FROM Invoice i
WHERE i.InvoiceDate LIKE '2009%'
    OR i.InvoiceDate LIKE '2011%'
GROUP BY strftime('%Y', i.InvoiceDate);