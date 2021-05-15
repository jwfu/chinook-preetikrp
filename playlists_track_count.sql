SELECT p.Name,
    COUNT(t.TrackId)
FROM Playlist p
JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
JOIN Track t
ON pt.TrackId = t.TrackId
GROUP By p.Name;