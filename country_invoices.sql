SELECT i.BillingCountry,
    COUNT(i.BillingCountry)
FROM Invoice I
GROUP BY i.BillingCountry;