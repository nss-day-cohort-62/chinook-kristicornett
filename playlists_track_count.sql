SELECT COUNT(*), pl.Name FROM PlaylistTrack
JOIN Playlist pl ON pl.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY pl.Name