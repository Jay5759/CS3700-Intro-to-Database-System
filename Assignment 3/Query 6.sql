CREATE VIEW MovieStats AS 
SELECT v.city, AVG(m.userRating) AS average_movie_rating 
FROM Venue v 
JOIN PlayedAt pa ON v.venueID = pa.venueID 
JOIN Shows sh ON pa.showID = sh.showID 
JOIN Movie m ON sh.movieID = m.movieID 
GROUP BY v.city; 
 
CREATE VIEW LiveShowStats AS 
SELECT v.city 
FROM Venue v 
JOIN Gigs gg ON v.venueID = gg.venueID 
GROUP BY v.city; 
 
SELECT v.city, 
    COUNT(DISTINCT v.venueID) AS total_venues, 
    COUNT(DISTINCT m.movieID) AS total_movies, 
    COUNT(DISTINCT gg.gigsID) AS total_liveshows, 
    ms.average_movie_rating 
FROM Venue v 
LEFT JOIN MovieStats ms ON v.city = ms.city 
LEFT JOIN LiveShowStats lss ON v.city = lss.city 
LEFT JOIN PlayedAt pa ON v.venueID = pa.venueID 
LEFT JOIN Movie m ON pa.movieID = m.movieID 
LEFT JOIN Gigs gg ON v.venueID = gg.venueID 
GROUP BY v.city, ms.average_movie_rating 
HAVING ms.average_movie_rating > 2.5
ORDER BY ms.average_movie_rating DESC; 