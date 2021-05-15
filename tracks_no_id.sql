SELECT t.Name,
    t.Composer,
    t.Milliseconds,
    t.Bytes,
    t.UnitPrice,
    a.Title,
    m.Name,
    g.Name
FROM Track t
    JOIN Album a ON t.AlbumId = a.AlbumId
    JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
    JOIN Genre g ON t.GenreId = g.GenreId;