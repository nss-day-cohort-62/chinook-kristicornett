SELECT
COUNT(il.Quantity) AS tracks_purchased,
ar.Name
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist ar ON ar.ArtistId = al.ArtistId
GROUP BY al.ArtistId, ar.Name
ORDER BY tracks_purchased DESC
LIMIT 3