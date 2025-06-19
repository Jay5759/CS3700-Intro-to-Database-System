SELECT u.name AS student_name, m.name AS movie_name, m.releaseDate AS 
movie_release_date, gg.title AS live_show_title, gg.date AS 
live_show_date 
FROM User u 
JOIN Ticket t1 ON u.userID = t1.purchasingUser 
JOIN Gigs gg ON t1.gigsID = gg.gigsID 
JOIN Venue v1 ON gg.venueID = v1.venueID 
JOIN Seat s ON u.userID = s.reservingUser 
JOIN Shows sh ON s.showID = sh.showID 
JOIN PlayedAt pa ON sh.showID = pa.showID 
JOIN Venue v2 ON pa.venueID = v2.venueID 
JOIN Movie m ON sh.movieID = m.movieID 
WHERE u.city = 'Chennai' 
AND v1.city = 'Bangalore' 
AND v2.city = 'Delhi';