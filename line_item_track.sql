SELECT InvoiceLineId, t.Name 
FROM InvoiceLine AS i 
JOIN Track AS t ON i.TrackId = t.TrackId
