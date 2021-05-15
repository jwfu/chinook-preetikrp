SELECT i.BillingCountry,
    SUM(i.Total) as TotalSales
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY TotalSales DESC
LIMIT 1;