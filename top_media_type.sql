SELECT t.MediaTypeId,
    SUM(i.Quantity * i.UnitPrice) AS Sales
FROM Track t
    JOIN InvoiceLine i ON i.TrackId = t.TrackId
GROUP BY t.MediaTypeId
LIMIT 1;