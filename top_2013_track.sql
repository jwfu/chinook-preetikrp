SELECT i.*,
    SUM(i.Quantity) AS Quantity
FROM InvoiceLine i
    JOIN Invoice inv ON i.InvoiceId = inv.InvoiceId
WHERE inv.InvoiceDate LIKE '2013%'
GROUP BY i.TrackId
ORDER BY Quantity DESC;