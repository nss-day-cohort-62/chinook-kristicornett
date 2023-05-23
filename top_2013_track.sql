SELECT MAX(tracks_purchased), track_name
FROM (
SELECT 
SUM(il.Quantity) AS tracks_purchased,
t.Name AS track_name
FROM InvoiceLine il 
JOIN Track t ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate LIKE '2013%'
GROUP BY il.TrackId)