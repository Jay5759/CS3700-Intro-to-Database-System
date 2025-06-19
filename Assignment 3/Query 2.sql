SELECT  
  u1.name AS user1_name,  
  u1.email AS user1_email,
  u2.name AS user2_name,  
  u2.email AS user2_email, 
  m1.name AS movie_name 
FROM User u1 
JOIN Friend f ON u1.userID = f.userID 
JOIN User u2 ON f.friendID = u2.userID 
JOIN Seat s1 ON u1.userID = s1.reservingUser 
JOIN Shows sh1 ON s1.showID = sh1.showID 
JOIN Movie m1 ON sh1.movieID = m1.movieID 
JOIN Seat s2 ON u2.userID = s2.reservingUser 
JOIN Shows sh2 ON s2.showID = sh2.showID 
JOIN Movie m2 ON sh2.movieID = m2.movieID 
WHERE m1.movieID = m2.movieID AND u1.city <> u2.city; 