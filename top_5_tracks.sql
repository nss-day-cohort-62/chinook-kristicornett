SELECT t.name as Track_Name, SUM(l.Quantity) as Tracks_Purchased
FROM InvoiceLine l 
JOIN Track t ON t.TrackId = l.TrackId
GROUP BY t.TrackId
ORDER BY Tracks_Purchased DESC
LIMIT 5