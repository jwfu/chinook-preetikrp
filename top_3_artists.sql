SELECT ar.Name,
    SUM(i.Quantity * i.UnitPrice) AS Sales
FROM InvoiceLine i
    JOIN Track t ON i.TrackId = t.TrackId
    JOIN Album al ON t.AlbumId = al.AlbumId
    JOIN Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.ArtistId
ORDER BY Sales DESC
LIMIT 3;