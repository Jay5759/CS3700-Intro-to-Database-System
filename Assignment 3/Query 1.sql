use GrabYourTicket;

SELECT  
  DISTINCT m1.name AS movie_name, 
  v1.type AS movie_venue_type, 
  v1.city AS movie_city,
  m2.name AS sequel_name, 
  v2.type AS sequel_venue_type, 
  v2.city AS sequel_city 
FROM Movie m1 
JOIN Sequel s ON m1.movieID = s.movieID 
JOIN Movie m2 ON s.sequelID = m2.movieID 
JOIN PlayedAt pa1 ON m1.movieID = pa1.movieID 
JOIN Venue v1 ON pa1.venueID = v1.venueID 
JOIN PlayedAt pa2 ON m2.movieID = pa2.movieID 
JOIN Venue v2 ON pa2.venueID = v2.venueID;  