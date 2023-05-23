SELECT
SUM(i.Total) as total_purchased,
mt.Name as media_type
FROM Invoice i 
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
GROUP BY t.MediaTypeId, media_type
ORDER BY total_purchased DESC
LIMIT 1