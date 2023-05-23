SELECT tr.Name AS track_name, 
al.Title AS album_title,
mt.Name AS media_type,
g.Name AS genre
From Track tr
Join Album al ON al.AlbumId = tr.AlbumId
JOIN MediaType mt ON mt.MediaTypeId = tr.MediaTypeId
JOIN Genre g ON g.GenreId = tr.GenreId