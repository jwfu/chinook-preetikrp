SELECT i.*,
    t.Name,
    ar.Name
FROM InvoiceLine i
    JOIN Track t ON i.TrackId = t.TrackId
    JOIN Album al ON t.AlbumId = al.AlbumId
    JOIN Artist ar ON al.ArtistId = ar.ArtistId
ORDER BY i.InvoiceLineId;