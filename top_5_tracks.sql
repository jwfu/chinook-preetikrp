SELECT t.Name,
    SUM(i.Quantity) AS Quantity
FROM InvoiceLine i
    JOIN Invoice inv ON i.InvoiceId = inv.InvoiceId
    JOIN Track t ON i.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY Quantity DESC
LIMIT 5;