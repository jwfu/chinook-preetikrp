SELECT c.SupportRepId,
    COUNT(c.SupportRepId)
FROM Customer c
GROUP BY c.SupportRepId;