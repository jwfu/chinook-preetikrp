SELECT i.*,
    t.Name
FROM InvoiceLine i
JOIN Track t
ON i.TrackId = t.TrackId
ORDER BY i.InvoiceLineId;