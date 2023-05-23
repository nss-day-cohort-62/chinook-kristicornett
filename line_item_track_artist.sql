SELECT InvoiceLine.*,
t.Name AS track_name,
ar.Name AS artist_name
FROM InvoiceLine InvoiceLine
JOIN Track t ON InvoiceLine.TrackId = t.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist ar ON ar.ArtistId = al.ArtistId