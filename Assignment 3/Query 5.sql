SELECT m.studio,  
COUNT(DISTINCT s.seatID) AS total_seats_booked, 
COUNT(DISTINCT r.movieID) AS total_movies_rented, 
COUNT(DISTINCT w.movieID) AS total_movies_in_wishlist 
FROM Movie m 
LEFT JOIN Shows sh ON m.movieID = sh.movieID 
LEFT JOIN Seat s ON sh.showID = s.showID 
LEFT JOIN Rents r ON m.movieID = r.movieID 
LEFT JOIN Wishlist w ON m.movieID = w.movieID 
GROUP BY m.studio 
ORDER BY total_seats_booked + total_movies_rented + 
total_movies_in_wishlist DESC; 