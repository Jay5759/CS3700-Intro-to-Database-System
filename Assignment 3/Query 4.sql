SELECT DISTINCT c.name AS collaborator_name, m.name AS movie_name, 
m.releaseDate 
FROM Collaborator c 
JOIN Featuring f ON c.colID = f.colID 
JOIN Movie m ON f.movieID = m.movieID 
JOIN PerformsIn p ON c.colID = p.colID 
JOIN Gigs gg ON p.gigsID = gg.gigsID 
JOIN Venue v ON gg.venueID = v.venueID 
WHERE f.role = 'Director' 
AND YEAR(m.releaseDate) > 2005 
AND v.state = 'Maharashtra'; 