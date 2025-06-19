--
-- Create Database
--
drop database if exists GrabYourTicket;
create database if not exists GrabYourTicket;
use GrabYourTicket;

Drop table if exists Movie;

CREATE TABLE Movie (
    movieID VARCHAR(10) PRIMARY KEY DEFAULT 0,
    name VARCHAR(255),
    length INT DEFAULT 0,
    userRating DECIMAL(2, 1) DEFAULT 0,
    ageRating VARCHAR(10) DEFAULT NULL,
    studio VARCHAR(255) DEFAULT NULL,
    releaseDate DATE DEFAULT NULL
);
--
-- Dumping data for table Movie
--
-- LOCK TABLES Movie WRITE;
/*!40000 ALTER TABLE Movie DISABLE KEYS */;
INSERT INTO Movie (movieID, name, length, userRating, ageRating, studio, releaseDate) VALUES ('M1', 'Avengers: Endgame', 181, 4.5, 'PG-13', 'Disney', '2019-04-26'), ('M2', 'The Dark Knight', 152, 3.9, 'R', 'Warner Bros.', '2008-07-18'), ('M3', 'Avatar', 162, 2.2, 'PG-13', '20th Century Fox', '2009-12-18'), ('M4', 'Titanic', 195, 4.1, 'PG-13', 'Paramount Pictures', '1997-12-19'), ('M5', 'Inception', 148, 1.8, 'PG-13', 'Warner Bros.', '2010-07-16'), ('M6', 'Forrest Gump', 142, 2.7, 'PG-13', 'Paramount Pictures', '1994-07-06'), ('M7', 'The Shawshank Redemption', 142, 3.4, 'R', 'Columbia Pictures', '1994-10-14'), ('M8', 'The Godfather', 175, 4.8, 'R', 'Paramount Pictures', '1972-03-24'), ('M9', 'The Lord of the Rings: The Return of the King', 201, 2.5, 'PG-13', 'New Line Cinema', '2003-12-17'), ('M10', 'Schindler List', 195, 3.6, 'R', 'Universal Pictures', '1993-12-15'), ('M11', 'Pulp Fiction', 154, 1.2, 'R', 'Miramax Films', '1994-10-14'), ('M12', 'Fight Club', 139, 4.3, 'R', '20th Century Fox', '1999-10-15'), ('M13', 'The Matrix', 136, 2.9, 'R', 'Warner Bros.', '1999-03-31'), ('M14', 'Goodfellas', 146, 3.1, 'R', 'Warner Bros.', '1990-09-19'), ('M15', 'The Silence of the Lambs', 118, 4.7, 'R', 'Orion Pictures', '1991-02-14'), ('M16', 'The Lion King', 88, 1.5, 'G', 'Walt Disney Pictures', '1994-06-15'), ('M17', 'The Avengers', 143, 4.9, 'PG-13', 'Marvel Studios', '2012-05-04'), ('M18', 'Jurassic Park', 127, 3.3, 'PG-13', 'Universal Pictures', '1993-06-11'), ('M19', 'The Lord of the Rings: The Fellowship of the Ring', 178, 2.6, 'PG-13', 'New Line Cinema', '2001-12-19'), ('M20', 'The Lord of the Rings: The Two Towers', 179, 4.2, 'PG-13', 'New Line Cinema', '2002-12-18'), ('M21', 'Star Wars: Episode IV - A New Hope', 121, 1.7, 'PG', '20th Century Fox', '1977-05-25'), ('M22', 'Star Wars: Episode V - The Empire Strikes Back', 124, 3.8, 'PG', '20th Century Fox', '1980-05-21'), ('M23', 'Star Wars: Episode VI - Return of the Jedi', 131, 2.3, 'PG', '20th Century Fox', '1983-05-25'), ('M24', 'Interstellar', 169, 4.7, 'PG-13', 'Paramount Pictures', '2014-11-07'), ('M25', 'The Green Mile', 189, 1.8, 'R', 'Warner Bros.', '1999-12-10'), ('M26', 'The Godfather: Part II', 202, 3.8, 'R', 'Paramount Pictures', '1974-12-20'), ('M27', 'Saving Private Ryan', 169, 2.5, 'R', 'DreamWorks Pictures', '1998-07-24'), ('M28', 'Gladiator', 155, 4.6, 'R', 'DreamWorks Pictures', '2000-05-05'), ('M29', 'The Departed', 151, 1.9, 'R', 'Warner Bros.', '2006-10-06'), ('M30', 'The Prestige', 130, 3.0, 'PG-13', 'Warner Bros.', '2006-10-20'), ('M31', 'The Usual Suspects', 106, 2.7, 'R', 'Gramercy Pictures', '1995-09-15'), ('M32', 'The Shining', 146, 4.1, 'R', 'Warner Bros.', '1980-05-23'), ('M33', 'The Terminator', 107, 1.2, 'R', 'Orion Pictures', '1984-10-26'), ('M34', 'The Sixth Sense', 107, 3.8, 'PG-13', 'Hollywood Pictures', '1999-08-06'), ('M35', 'Inglourious Basterds', 153, 2.5, 'R', 'Universal Pictures', '2009-08-21'), ('M36', 'Django Unchained', 165, 4.6, 'R', 'The Weinstein Company', '2012-12-25'), ('M37', 'The Revenant', 156, 1.4, 'R', '20th Century Fox', '2015-12-25'), ('M38', 'The Wolf of Wall Street', 180, 3.2, 'R', 'Paramount Pictures', '2013-12-25'), ('M39', 'Jaws', 124, 2.3, 'PG', 'Universal Pictures', '1975-06-20'), ('M40', 'E.T. the Extra-Terrestrial', 115, 4.7, 'PG', 'Universal Pictures', '1982-06-11'), ('M41', 'Raiders of the Lost Ark', 115, 1.1, 'PG', 'Paramount Pictures', '1981-06-12'), ('M42', 'Indiana Jones and the Last Crusade', 127, 4.9, 'PG-13', 'Paramount Pictures', '1989-05-24'), ('M43', 'The Matrix Reloaded', 138, 3.7, 'R', 'Warner Bros.', '2003-05-15'), ('M44', 'The Matrix Revolutions', 129, 4.9, 'R', 'Warner Bros.', '2003-11-05'), ('M45', '3 Idiots', 170, 4.1, 'PG-13', 'Vinod Chopra Films', '2009-12-25'), ('M46', 'Dilwale Dulhania Le Jayenge', 181, 3.9, 'U', 'Yash Raj Films', '1995-10-20'), ('M47', 'Lagaan', 224, 4.3, 'PG', 'Aamir Khan Productions', '2001-06-15'), ('M48', 'Sholay', 204, 3.6, 'PG', 'United Producers', '1975-08-15'), ('M49', 'DDLJ', 181, 4.2, 'U', 'Yash Raj Films', '1995-10-20'), ('M50', 'Andaz Apna Apna', 160, 3.8, 'U', 'Vinay Pictures', '1994-11-04'), ('M51', 'Gully Boy', 153, 4.5, 'PG-13', 'Excel Entertainment', '2019-02-14'), ('M52', 'Kabhi Khushi Kabhie Gham', 210, 3.7, 'PG', 'Dharma Productions', '2001-12-14'), ('M53', 'Dil Chahta Hai', 183, 4.4, 'PG-13', 'Excel Entertainment', '2001-08-10'), ('M54', 'Golmaal: Fun Unlimited', 150, 4.1, 'U', 'Shree Ashtavinayak Cine Vision', '2006-07-14');
/*!40000 ALTER TABLE Movie ENABLE KEYS */;
-- UNLOCK TABLES Movie;


Drop table if exists MovieGenres;
CREATE TABLE MovieGenres (
    movieID VARCHAR(10),
    mgenre VARCHAR(50),
    FOREIGN KEY (movieID) REFERENCES Movie(movieID) on delete cascade,
    PRIMARY KEY (movieID, mgenre)
);
-- 
-- Dumping data for table MovieGenres;
--
-- LOCK TABLES MovieGenres WRITE;
/*!40000 ALTER TABLE MovieGenres DISABLE KEYS */;
INSERT INTO MovieGenres (movieID, mgenre) VALUES ('M1', 'Action'), ('M1', 'Adventure'), ('M1', 'Sci-Fi'), ('M2', 'Action'), ('M2', 'Crime'), ('M2', 'Drama'), ('M3', 'Action'), ('M3', 'Adventure'), ('M3', 'Fantasy'), ('M4', 'Drama'), ('M4', 'Romance'), ('M4', 'Thriller'), ('M5', 'Action'), ('M5', 'Adventure'), ('M5', 'Sci-Fi'), ('M6', 'Drama'), ('M6', 'Romance'), ('M6', 'War'), ('M7', 'Drama'), ('M7', 'Crime'), ('M8', 'Crime'), ('M8', 'Drama'), ('M9', 'Action'), ('M9', 'Adventure'), ('M9', 'Drama'), ('M10', 'Biography'), ('M10', 'Drama'), ('M10', 'History'), ('M11', 'Crime'), ('M11', 'Drama'), ('M11', 'Thriller'), ('M12', 'Thriller'), ('M12', 'Drama'), ('M13', 'Action'), ('M13', 'Sci-Fi'), ('M14', 'Biography'), ('M14', 'Crime'), ('M14', 'Drama'), ('M15', 'Crime'), ('M15', 'Drama'), ('M15', 'Thriller'), ('M16', 'Animation'), ('M16', 'Adventure'), ('M16', 'Drama'), ('M17', 'Action'), ('M17', 'Adventure'), ('M17', 'Sci-Fi'), ('M18', 'Action'), ('M18', 'Adventure'), ('M18', 'Sci-Fi'), ('M19', 'Action'), ('M19', 'Adventure'), ('M19', 'Drama'), ('M20', 'Action'), ('M20', 'Adventure'), ('M20', 'Drama'), ('M21', 'Action'), ('M21', 'Adventure'), ('M21', 'Fantasy'), ('M22', 'Action'), ('M22', 'Adventure'), ('M22', 'Fantasy'), ('M23', 'Action'), ('M23', 'Adventure'), ('M23', 'Fantasy'), ('M24', 'Adventure'), ('M24', 'Drama'), ('M24', 'Sci-Fi'), ('M25', 'Crime'), ('M25', 'Drama'), ('M25', 'Fantasy'), ('M26', 'Crime'), ('M26', 'Drama'), ('M27', 'Drama'), ('M27', 'War'), ('M28', 'Action'), ('M28', 'Adventure'), ('M28', 'Drama'), ('M29', 'Crime'), ('M29', 'Drama'), ('M29', 'Thriller'), ('M30', 'Drama'), ('M30', 'Mystery'), ('M30', 'Sci-Fi'), ('M31', 'Crime'), ('M31', 'Drama'), ('M31', 'Mystery'), ('M32', 'Drama'), ('M32', 'Horror'), ('M33', 'Action'), ('M33', 'Sci-Fi'), ('M34', 'Drama'), ('M34', 'Mystery'), ('M34', 'Thriller'), ('M35', 'Adventure'), ('M35', 'Drama'), ('M35', 'War'), ('M36', 'Drama'), ('M36', 'Western'), ('M37', 'Adventure'), ('M37', 'Drama'), ('M37', 'Thriller'), ('M38', 'Biography'), ('M38', 'Crime'), ('M38', 'Drama'), ('M39', 'Thriller'), ('M39', 'Adventure'), ('M40', 'Family'), ('M40', 'Sci-Fi'), ('M41', 'Action'), ('M41', 'Adventure'), ('M42', 'Action'), ('M42', 'Adventure'), ('M43', 'Action'), ('M43', 'Sci-Fi'), ('M44', 'Action'), ('M44', 'Sci-Fi'), ('M45', 'Comedy'), ('M45', 'Drama'), ('M45', 'Romance'), ('M46', 'Drama'), ('M46', 'Romance'), ('M46', 'Comedy'), ('M47', 'Drama'), ('M47', 'Musical'), ('M47', 'Romance'), ('M48', 'Action'), ('M48', 'Adventure'), ('M48', 'Comedy'), ('M49', 'Drama'), ('M49', 'Musical'), ('M49', 'Romance'), ('M50', 'Comedy'), ('M50', 'Family'), ('M51', 'Drama'), ('M51', 'Musical'), ('M51', 'Romance'), ('M52', 'Drama'), ('M52', 'Family'), ('M52', 'Musical'), ('M53', 'Comedy'), ('M53', 'Drama'), ('M53', 'Romance'), ('M54', 'Action'), ('M54', 'Comedy'), ('M54', 'Drama');
/*!40000 ALTER TABLE MovieGenres ENABLE KEYS */;
-- UNLOCK TABLES MovieGenres;

Drop table if exists MovieLanguages;
CREATE TABLE MovieLanguages (
    movieID VARCHAR(10),
    languages VARCHAR(50),
    PRIMARY KEY (movieID, languages),
    FOREIGN KEY (movieID) REFERENCES Movie(movieID) on delete cascade
);

ALTER TABLE MovieLanguages ADD INDEX languages_index (languages);

--
-- Dumping data into MovieLanguages;
--
-- LOCK TABLES MovieLanguages WRITE;
/*!40000 ALTER TABLE MovieLanguages DISABLE KEYS */;
INSERT INTO MovieLanguages (movieID, languages) VALUES ('M1', 'English'), ('M2', 'English'), ('M3', 'English'), ('M4', 'English'), ('M5', 'English'), ('M6', 'English'), ('M7', 'English'), ('M8', 'English'), ('M9', 'English'), ('M10', 'English'), ('M11', 'English'), ('M12', 'English'), ('M13', 'English'), ('M14', 'English'), ('M15', 'English'), ('M16', 'English'), ('M17', 'English'), ('M18', 'English'), ('M19', 'English'), ('M20', 'English'), ('M21', 'English'), ('M22', 'English'), ('M23', 'English'), ('M24', 'English'), ('M25', 'English'), ('M26', 'English'), ('M27', 'English'), ('M28', 'English'), ('M29', 'English'), ('M30', 'English'), ('M31', 'English'), ('M32', 'English'), ('M33', 'English'), ('M34', 'English'), ('M35', 'English'), ('M36', 'English'), ('M37', 'English'), ('M38', 'English'), ('M39', 'English'), ('M40', 'English'), ('M41', 'English'), ('M42', 'English'), ('M43', 'English'), ('M44', 'English'), ('M45', 'Hindi'), ('M45', 'English'), ('M46', 'Hindi'), ('M46', 'English'), ('M47', 'Hindi'), ('M47', 'English'), ('M48', 'Hindi'), ('M48', 'English'), ('M49', 'Hindi'), ('M49', 'English'), ('M50', 'Hindi'), ('M50', 'English'), ('M51', 'Hindi'), ('M51', 'English'), ('M52', 'Hindi'), ('M52', 'English'), ('M53', 'Hindi'), ('M53', 'English'), ('M54', 'Hindi'), ('M54', 'English');
/*!40000 ALTER TABLE MovieLanguages ENABLE KEYS */;
-- UNLOCK TABLES MovieGenres;

Drop table if exists User;
CREATE TABLE User (
    userID VARCHAR(10) PRIMARY KEY DEFAULT 0,
    name VARCHAR(255),
    sex CHAR(1) DEFAULT NULL,
    dob DATE DEFAULT NULL,
    state VARCHAR(100) DEFAULT NULL,
    city VARCHAR(100) DEFAULT NULL,
    email VARCHAR(255) DEFAULT NULL
);

--
-- Dumping data into table user;
--
-- LOCK TABLES User WRITE;
/*!40000 ALTER TABLE User DISABLE KEYS */;
INSERT INTO User (userID, name, sex, dob, state, city, email) VALUES ('U1', 'Aadyot', 'M', '2001-12-26', 'Karnataka', 'Bangalore', 'aadyot1@gmail.com'), ('U2', 'Aashish Choudhary', 'M', '2002-08-30', 'Rajasthan', 'Sikar', 'aashish.02.choudhary@gmail.com'), ('U3', 'AKASH BORKAR', 'M', '2002-10-16', 'Maharashtra', 'Abad', 'borkarakash351@gmail.com'), ('U4', 'Aman Bhoge', 'M', '2002-12-03', 'Maharashtra', 'Pune', 'aman.bhoge@gmail.com'), ('U5', 'Anantha Lakshmi', 'F', '2003-02-19', 'Andhra Pradesh', 'Vijayawada', 'anantha4104@gmail.com'), ('U6', 'Anmol Panda', 'M', '2003-03-28', 'West Bengal', 'Kolkata', 'anmolpanda01@gmail.com'), ('U7', 'Arjun Vikas Ramesh', 'M', '2003-04-11', 'Tamil Nadu', 'Chennai', 'arjun.vikas06@gmail.com'), ('U8', 'Arnav goel', 'M', '2003-04-16', 'Gujarat', 'Ahmedabad', 'Goelarnav12@gmail.com'), ('U9', 'Arun kumar', 'M', '2003-04-18', 'Uttar Pradesh', 'Lucknow', 'arunkumar.aesl@gmail.com'), ('U10', 'Athish Pranav', 'M', '2003-04-19', 'Tamil Nadu', 'Coimbatore', 'athishanna@gmail.com'), ('U11', 'Ayman Akhter', 'M', '2003-04-23', 'Maharashtra', 'Mumbai', 'aymanakhter07@gmail.com'), ('U12', 'Ayon Ghosh', 'M', '2003-05-06', 'Chhattisgarh', 'Bhilai', 'ayonatdps@gmail.com'), ('U13', 'B Chaturya', 'M', '2003-05-18', 'Andhra Pradesh', 'Nellore', 'chaturyabattala@gmail.com'), ('U14', 'Bapan Mandal', 'M', '2003-05-22', 'West Bengal', 'Kolkata', 'iambapan1000@gmail.com'), ('U15', 'Bhanu ranjan', 'M', '2003-06-02', 'Andhra Pradesh', 'Tirupati', 'bhanuranjanreddy@gmail.com'), ('U16', 'C R Aditya', 'M', '2003-06-11', 'Karnataka', 'Bangalore', 'adityacr2003@gmail.com'), ('U17', 'Chahel Singh', 'M', '2003-06-29', 'Maharashtra', 'Pune', 'chahel2832003@gmail.com'), ('U18', 'Dharmasoth Sushanth', 'M', '2003-07-08', 'Telangana', 'Warangal', 'sushanthdharmasoth@gmail.com'), ('U19', 'Dhruv Aggarwal', 'M', '2003-07-13', 'Maharashtra', 'Pune', 'dhruvagg.96@gmail.com'), ('U20', 'Ganesh', 'M', '2003-07-23', 'Tamil Nadu', 'Chennai', 'ganesh2015.thirumal@gmail.com'), ('U21', 'Gokulakrishnan R', 'M', '2003-07-25', 'Tamil Nadu', 'Chennai', 'rgokul.4204@gmail.com'), ('U22', 'Goyani Jash Rajesh', 'M', '2003-07-27', 'Gujarat', 'Ahmedabad', '123goyanijash@gmail.com'), ('U23', 'Guru Sai Kiran Kammara', 'M', '2003-07-28', 'Andhra Pradesh', 'Dharmavaram', 'kgskiran2004@gmail.com'), ('U24', 'Hari Hara Naveen S', 'M', '2003-08-02', 'Tamil Nadu', 'Chennai', NULL), ('U25', 'Harshitha Muthavarapu', 'F', '2003-08-05', 'Tamil Nadu', 'Chennai', 'muthavarapuharshitha@gmail.com'), ('U26', 'Hima Binduna Y', 'F', '2003-08-07', 'Andhra Pradesh', 'Nellore', 'h.b.yandapalli.003@gmail.com'), ('U27', 'Imthiyash shaik', 'M', '2003-08-14', 'Tamil Nadu', 'Chennai', 'skimthiyash7257@gmail.com'), ('U28', 'Iniyaa', 'F', '2003-08-16', 'Tamil Nadu', 'Chennai', 'iniyaav2830@gmail.com'), ('U29', 'Isha Nayar', 'F', '2003-08-20', 'Maharashtra', 'Mumbai', 'ishaanayar11@gmail.com'), ('U30', 'Kiran Vasave', 'M', '2003-08-21', 'Maharashtra', 'Mumbai', 'kiran29iitm@gmail.com'), ('U31', 'Krishna Prasath', 'M', '2003-08-26', 'Tamil Nadu', 'Theni', 'r.maha772@gmail.com'), ('U32', 'Kshitiz Singh', 'M', '2003-09-03', 'Delhi', 'Delhi', 'singhkshitiz.20@gmail.com'), ('U33', 'Kushal Verma', 'M', '2003-09-06', 'Rajasthan', 'Kota', 'kushalmvuma@gmail.com'), ('U34', 'M.Jhaya Lavannyah', 'F', '2003-09-10', 'Andhra Pradesh', 'Kadapa', 'mjhayalavannyah@gmail.com'), ('U35', 'MANUPADU GOPI CHAND', 'M', '2003-09-10', 'Telangana', 'Hyderabad', 'manupadugopichand@gmail.com'), ('U36', 'Mayank Mahajan', 'M', '2003-09-23', 'Maharashtra', 'Mumbai', 'mayankmahajan200@gmail.com'), ('U37', 'Meghana Banoth', 'F', '2003-09-26', 'Telangana', 'Hyderabad', 'itsmeghanab@gmail.com'), ('U38', 'Mohammad Abdul Muqeeth', 'M', '2003-09-27', 'Telangana', 'Hyderabad', 'muqeeth31102004@gmail.com'), ('U39', 'Neethu', 'F', '2003-10-02', 'Telangana', 'Hyderabad', 'neethu2365@gmail.com'), ('U40', 'Niharika Banothu', 'F', '2003-10-05', 'Telangana', 'Hyderabad', 'niharikabanothu2003@gmail.com'), ('U41', 'Nikhil Narula', 'M', '2003-10-09', 'Punjab', 'Firozpur', 'nikhilnarula05@gmail.com'), ('U42', 'Niveath. A', 'M', '2003-10-15', 'Tamil Nadu', 'Chennai', 'a.niveath@gmail.com'), ('U43', 'Pramod Kumar', 'M', '2003-10-16', 'Andhra Pradesh', 'Nellore', 'mmuralimohan68@gmail.com'), ('U44', 'Pranav', 'M', '2003-10-16', 'Andhra Pradesh', 'Vijayawada', NULL), ('U45', 'Pranita Vasudeva Rao', 'F', '2003-10-28', 'Maharashtra', 'Mumbai', 'raopranita10@gmail.com'), ('U46', 'Prasann Sankhavara', 'M', '2003-10-29', 'Gujarat', 'Rajkot', 'prasann.sankhavara@gmail.com'), ('U47', 'Puneeth Kumar', 'M', '2003-10-31', 'Andhra Pradesh', 'Vijayawada', 'puneethkatikela@gmail.com'), ('U48', 'Rahul Karthik', 'M', '2003-11-01', 'Telangana', 'Hyderabad', 'rahulkarthik012@gmail.com'), ('U49', 'Renusree Arcot', 'F', '2003-11-08', 'Andhra Pradesh', 'Vijayawada', 'renusreearcot1224@gmail.com'), ('U50', 'Rishabh Singh Gaharwar', 'M', '2003-11-13', 'Chhattisgarh', 'Bhilai', 'gaharwar.02@gmail.com'), ('U51', 'S.Tharun Dyanish', 'M', '2003-11-19', 'Tamil Nadu', 'Hosur', 's.tharundyanish@gmail.com'), ('U52', 'Sai Harshitha', 'F', '2003-11-20', 'Telangana', 'Hyderabad', 'saiharshithaleek3154@gmail.com'), ('U53', 'Sai Teja', 'M', '2003-11-28', 'Andhra Pradesh', 'Vijayawada', 'saiteja2003kvp@gmail.com'), ('U54', 'Sakthivignesh R.', 'M', '2003-12-09', 'Tamil Nadu', 'Chennai', 'r.sakthivignesh@gmail.com'), ('U55', 'Saran V Balachandar', 'M', '2003-12-22', 'Tamil Nadu', 'Coimbatore', 'saran.balachandar@gmail.com'), ('U56', 'Sasi Kumar Reddy', 'M', '2003-12-27', 'Andhra Pradesh', 'Nellore', 'sasikumarreddydoddamreddy@gmail.com'), ('U57', 'Shankar Balajee Sambasivam', 'M', '2004-01-04', 'Tamil Nadu', 'Chennai', 'ssbalajee08@gmail.com'), ('U58', 'Shashank Reddy', 'M', '2004-01-08', 'Andhra Pradesh', 'Giddalur', 'shashankreddy.kakunuri@gmail.com'), ('U59', 'Shaun Mathew', 'M', '2004-01-14', 'Maharashtra', 'Mumbai', 'shaunmathew0510@gmail.com'), ('U60', 'Shruthi Kannappan', 'F', '2004-01-15', 'Karnataka', 'Bangalore', 'shruthikannappan@gmail.com'), ('U61', 'Snehadeep Gayen', 'M', '2004-01-18', 'Maharashtra', 'Mumbai', 'snehadeep.gayen@gmail.com'), ('U62', 'Srimayi', 'F', '2004-02-04', 'Andhra Pradesh', 'Vijayawada', NULL), ('U63', 'Suhail Shivaram', 'M', '2004-02-09', 'Karnataka', 'Bangalore', 'suhailsram@gmail.com'), ('U64', 'Sunilkumar', 'M', '2004-02-12', 'Andhra Pradesh', 'Srikakulam', 'gedalasunil15@gmail.com'), ('U65', 'Surya Gopala Chandra Senkula', 'M', '2004-02-15', 'Andhra Pradesh', 'Visakhapatnam', 'suryagopalachandrasenkula@g2mail.com'), ('U66', 'Sushanth B', 'M', '2004-03-27', 'Andhra Pradesh', 'Kadapa', 'srichandra197206@gmail.com'), ('U67', 'Sushanth Battu', 'M', '2004-04-03', 'Andhra Pradesh', 'Kadapa', 'srichandra197206@gmail.com'), ('U68', 'T SAI KRISHNA', 'M', '2004-04-05', 'Andhra Pradesh', 'Visakhapatnam', NULL), ('U69', 'Tejonivas', 'M', '2004-04-10', 'Andhra Pradesh', 'Tirupati', 'tejonivas.oruganti01@gmail.com'), ('U70', 'Thiruvarul', 'M', '2004-05-02', 'Tamil Nadu', 'Chennai', 'thiruvarul12345@gmail.com'), ('U71', 'Ujjayan', 'M', '2004-05-31', 'Tripura', 'Agartala', NULL), ('U72', 'Vamsi Krishna Reddy Moore', 'M', '2004-06-12', 'Andhra Pradesh', 'Kadapa', 'vamsikrishnareddymoore@gmail.com'), ('U73', 'Varshita Devi', 'F', '2004-07-07', 'Andhra Pradesh', 'Vijayawada', 'varshajanapati@gmail.com'), ('U74', 'Vedang Pote', 'M', '2004-07-10', 'Maharashtra', 'Mumbai', 'vedang.pote2703@gmail.com'), ('U75', 'Viswajit', 'M', '2004-07-17', 'Andhra Pradesh', 'Vijayawada', 'svv230804@gmail.com'), ('U76', 'Yeswanth Narayana Patnana', 'M', '2004-07-29', 'Andhra Pradesh', 'Vijayawada', 'dragonyeswanth2049@gmail.com'), ('U77', 'Zeba Fathima', 'F', '2004-08-02', 'Andhra Pradesh', 'Vijayawada', NULL), ('U78', 'Abhishek Hari Haran', 'M', '2004-08-06', 'Andhra Pradesh', 'Vijayawada', 'abhishek007.har@gmail.com'), ('U79', 'Abhishek Kumar', 'M', '2004-08-23', 'Andhra Pradesh', 'Kadapa', 'kumar.abhishek0034@gmail.com'), ('U80', 'Abinaya', 'F', '2004-09-18', 'Tamil Nadu', 'Chennai', 'abinayaa29@gmail.com'), ('U81', 'Aditi Ramachandran', 'F', '2004-09-19', 'Maharashtra', 'Mumbai', 'aditiramachandran20@gmail.com'), ('U82', 'Akkshay Kumar', 'M', '2004-10-26', 'Andhra Pradesh', 'Kadapa', 'akkshaykumar255@gmail.com'), ('U83', 'Alaga Sowjanya', 'F', '2004-10-31', 'Andhra Pradesh', 'Nellore', 'alagasowjanya15@gmail.com'), ('U84', 'Alla Sai Vinay', 'M', '2004-12-07', 'Andhra Pradesh', 'Kadapa', 'allasaivinay270@gmail.com'), ('U85', 'Alok Sridhar', 'M', '2005-01-23', 'Andhra Pradesh', 'Vijayawada', 'aloksridhar690@gmail.com');
/*!40000 ALTER TABLE User ENABLE KEYS */;
-- UNLOCK TABLES User;

Drop table if exists Collaborator;
CREATE TABLE Collaborator (
    colID VARCHAR(10) PRIMARY KEY DEFAULT 0,
    name VARCHAR(255),
    age INT DEFAULT 0,
    sex CHAR(1) DEFAULT NULL
);
--
-- Dumping data into table Collaborator;
--
-- LOCK TABLES Collaborator WRITE;
/*!40000 ALTER TABLE Collaborator DISABLE KEYS */;
INSERT INTO Collaborator (colID, name, age, sex) VALUES ('c001', 'Aarav', 25, 'M'), ('c002', 'Anaya', 28, 'F'), ('c003', 'Aaradhya', 23, 'F'), ('c004', 'Advik', 30, 'M'), ('c005', 'Ananya', 26, 'F'), ('c006', 'Arnav', 29, 'M'), ('c007', 'Aisha', 24, 'F'), ('c008', 'Aryan', 27, 'M'), ('c009', 'Diya', 22, 'F'), ('c010', 'Ishaan', 31, 'M'), ('c011', 'Kiara', 25, 'F'), ('c012', 'Kabir', 28, 'M'), ('c013', 'Myra', 23, 'F'), ('c014', 'Reyansh', 30, 'M'), ('c015', 'Riya', 26, 'F'), ('c016', 'Vivaan', 29, 'M'), ('c017', 'Zara', 24, 'F'), ('c018', 'Virat', 27, 'M'), ('c019', 'Aarohi', 22, 'F'), ('c020', 'Aahil', 31, 'M'), ('c021', 'Anika', 25, 'F'), ('c022', 'Aayan', 28, 'M'), ('c023', 'Avni', 23, 'F'), ('c024', 'Arjun', 30, 'M'), ('c025', 'Saisha', 26, 'F'), ('c026', 'Samaira', 29, 'F'), ('c027', 'Rudra', 24, 'M'), ('c028', 'Ritvi', 27, 'F'), ('c029', 'Veer', 22, 'M'), ('c030', 'Ishika', 31, 'F'), ('c031', 'Aadi', 25, 'M'), ('c032', 'Aanya', 28, 'F'), ('c033', 'Aditi', 23, 'F'), ('c034', 'Ahaan', 30, 'M'), ('c035', 'Aisha', 26, 'F'), ('c036', 'Ansh', 29, 'M'), ('c037', 'Anika', 24, 'F'), ('c038', 'Aryan', 27, 'M'), ('c039', 'Aaradhya', 22, 'F'), ('c040', 'Ayush', 31, 'M'), ('c041', 'Bhavya', 25, 'F'), ('c042', 'Dhruv', 28, 'M'), ('c043', 'Devansh', 23, 'M'), ('c044', 'Isha', 30, 'F'), ('c045', 'Kabir', 26, 'M'), ('c046', 'Krisha', 29, 'F'), ('c047', 'Mira', 24, 'F'), ('c048', 'Rajveer', 27, 'M'), ('c049', 'Vidhi', 22, 'F'), ('c050', 'Zoya', 31, 'F');
/*!40000 ALTER TABLE Collaborator ENABLE KEYS */;
-- UNLOCK TABLES Collaborator;

Drop table if exists Venue;
CREATE TABLE Venue (
    venueID VARCHAR(10) PRIMARY KEY DEFAULT 0,
    type VARCHAR(100) DEFAULT NULL,
    city VARCHAR(100) DEFAULT NULL,
    state VARCHAR(100) DEFAULT NULL
);
--
-- Dumping data into table venue;
--
-- LOCK TABLES Venue WRITE;
/*!40000 ALTER TABLE Venue DISABLE KEYS */;
INSERT INTO Venue (venueID, type, city, state) VALUES ('V001', 'Concert Hall', 'Mumbai', 'Maharashtra'), ('V002', 'Theatre', 'Delhi', 'Delhi'), ('V003', 'Convention Center', 'Bangalore', 'Karnataka'), ('V004', 'Stadium', 'Kolkata', 'West Bengal'), ('V005', 'Auditorium', 'Chennai', 'Tamil Nadu'), ('V006', 'Opera House', 'Hyderabad', 'Telangana'), ('V007', 'Amphitheater', 'Pune', 'Maharashtra'), ('V008', 'Music Venue', 'Ahmedabad', 'Gujarat'), ('V009', 'Art Gallery', 'Jaipur', 'Rajasthan'), ('V010', 'Cinema', 'Lucknow', 'Uttar Pradesh'), ('V011', 'Concert Hall', 'Mumbai', 'Maharashtra'), ('V012', 'Theatre', 'Delhi', 'Delhi'), ('V013', 'Convention Center', 'Bangalore', 'Karnataka'), ('V014', 'Stadium', 'Kolkata', 'West Bengal'), ('V015', 'Auditorium', 'Chennai', 'Tamil Nadu'), ('V016', 'Opera House', 'Hyderabad', 'Telangana'), ('V017', 'Amphitheater', 'Pune', 'Maharashtra'), ('V018', 'Music Venue', 'Ahmedabad', 'Gujarat'), ('V019', 'Art Gallery', 'Jaipur', 'Rajasthan'), ('V020', 'Cinema', 'Lucknow', 'Uttar Pradesh'), ('V021', 'Concert Hall', 'Mumbai', 'Maharashtra'), ('V022', 'Theatre', 'Delhi', 'Delhi'), ('V023', 'Convention Center', 'Bangalore', 'Karnataka'), ('V024', 'Stadium', 'Kolkata', 'West Bengal'), ('V025', 'Auditorium', 'Chennai', 'Tamil Nadu'), ('V026', 'Opera House', 'Hyderabad', 'Telangana'), ('V027', 'Amphitheater', 'Pune', 'Maharashtra'), ('V028', 'Music Venue', 'Ahmedabad', 'Gujarat'), ('V029', 'Art Gallery', 'Jaipur', 'Rajasthan'), ('V030', 'Cinema', 'Lucknow', 'Uttar Pradesh'), ('V031', 'Concert Hall', 'Mumbai', 'Maharashtra'), ('V032', 'Theatre', 'Delhi', 'Delhi'), ('V033', 'Convention Center', 'Bangalore', 'Karnataka'), ('V034', 'Stadium', 'Kolkata', 'West Bengal'), ('V035', 'Auditorium', 'Chennai', 'Tamil Nadu'), ('V036', 'Opera House', 'Hyderabad', 'Telangana'), ('V037', 'Amphitheater', 'Pune', 'Maharashtra'), ('V038', 'Music Venue', 'Ahmedabad', 'Gujarat'), ('V039', 'Art Gallery', 'Jaipur', 'Rajasthan'), ('V040', 'Cinema', 'Lucknow', 'Uttar Pradesh'), ('V041', 'Concert Hall', 'Mumbai', 'Maharashtra'), ('V042', 'Theatre', 'Delhi', 'Delhi'), ('V043', 'Convention Center', 'Bangalore', 'Karnataka'), ('V044', 'Stadium', 'Kolkata', 'West Bengal'), ('V045', 'Auditorium', 'Chennai', 'Tamil Nadu'), ('V046', 'Opera House', 'Hyderabad', 'Telangana'), ('V047', 'Amphitheater', 'Pune', 'Maharashtra'), ('V048', 'Music Venue', 'Ahmedabad', 'Gujarat'), ('V049', 'Art Gallery', 'Jaipur', 'Rajasthan'), ('V050', 'Cinema', 'Lucknow', 'Uttar Pradesh');
/*!40000 ALTER TABLE Venue ENABLE KEYS */;
-- UNLOCK TABLES Venue;

Drop table if exists Gigs;
CREATE TABLE Gigs (
    gigsID VARCHAR(10) DEFAULT 0,
    venueID VARCHAR(10),
    title VARCHAR(255) DEFAULT NULL,
    timing TIME DEFAULT NULL,
    date DATE DEFAULT NULL,
    duration INT DEFAULT 0,
    PRIMARY KEY (gigsID, venueID),
    FOREIGN KEY (venueID) REFERENCES Venue(venueID) on delete cascade
);

--
-- Dumping data into Gigs;
--
-- LOCK TABLES Gigs WRITE;
/*!40000 ALTER TABLE Gigs DISABLE KEYS */;
INSERT INTO Gigs (gigsID, venueID, title, timing, date, duration) VALUES ('LS001', 'V001', 'Music Concert', '18:00:00', '2024-04-05', 120), ('LS002', 'V002', 'Drama Play', '19:30:00', '2024-04-07', 150), ('LS003', 'V003', 'Tech Conference', '10:00:00', '2024-04-10', 180), ('LS004', 'V004', 'Cricket Match', '14:00:00', '2024-04-12', 240), ('LS005', 'V005', 'Stand-up Comedy', '20:00:00', '2024-04-14', 90), ('LS006', 'V006', 'Opera Night', '19:00:00', '2024-04-16', 180), ('LS007', 'V007', 'Rock Band Performance', '21:00:00', '2024-04-18', 150), ('LS008', 'V008', 'Gujarati Play', '18:30:00', '2024-04-20', 120), ('LS009', 'V009', 'Rajasthani Folk Music', '17:00:00', '2024-04-22', 120), ('LS010', 'V010', 'Bollywood Movie Premiere', '19:00:00', '2024-04-24', 180), ('LS011', 'V002', 'Magic Show', '16:00:00', '2024-04-26', 90), ('LS012', 'V003', 'Product Launch Event', '11:30:00', '2024-04-28', 150), ('LS013', 'V004', 'Football Match', '15:00:00', '2024-04-30', 120), ('LS014', 'V005', 'Poetry Slam', '19:00:00', '2024-05-02', 180), ('LS015', 'V006', 'Ballet Performance', '20:30:00', '2024-05-04', 150), ('LS016', 'V007', 'Jazz Night', '21:30:00', '2024-05-06', 120), ('LS017', 'V008', 'Stand-up Comedy', '20:00:00', '2024-05-08', 90), ('LS018', 'V009', 'Art Exhibition Opening', '17:30:00', '2024-05-10', 150), ('LS019', 'V010', 'Cultural Dance Performance', '19:30:00', '2024-05-12', 180), ('LS020', 'V001', 'Classical Music Concert', '19:00:00', '2024-05-14', 150), ('LS021', 'V002', 'Theater Play: Hamlet', '18:30:00', '2024-05-16', 180), ('LS022', 'V003', 'Digital Marketing Seminar', '10:00:00', '2024-05-18', 120), ('LS023', 'V004', 'Basketball Game', '16:00:00', '2024-05-20', 120), ('LS024', 'V005', 'Open Mic Night', '21:00:00', '2024-05-22', 90), ('LS025', 'V006', 'Opera: La Traviata', '19:30:00', '2024-05-24', 150), ('LS026', 'V001', 'Folk Music Festival', '18:30:00', '2024-05-26', 180), ('LS027', 'V007', 'Indie Band Showcase', '20:00:00', '2024-05-28', 120), ('LS028', 'V008', 'Gujarati Comedy Play', '19:00:00', '2024-05-30', 90), ('LS029', 'V009', 'Rajasthani Dance Performance', '18:30:00', '2024-06-01', 150), ('LS030', 'V010', 'Film Screening: Documentaries', '17:30:00', '2024-06-03', 120);
/*!40000 ALTER TABLE Gigs ENABLE KEYS */;
-- UNLOCK TABLES Gigs;

Drop table if exists GigsGenres;
CREATE TABLE GigsGenres (
    gigsID VARCHAR(10),
    ggenre VARCHAR(50),
    PRIMARY KEY (gigsID, ggenre),
    FOREIGN KEY (gigsID) REFERENCES Gigs(gigsID) on delete cascade
);
--
-- Dumping data into Gigs;
--
-- LOCK TABLES GigsGenres WRITE;
/*!40000 ALTER TABLE GigsGenres DISABLE KEYS */;
INSERT INTO GigsGenres (gigsID, ggenre) VALUES ('LS001', 'Music'), ('LS001', 'Pop'), ('LS002', 'Drama'), ('LS003', 'Technology'), ('LS004', 'Sports'), ('LS005', 'Comedy'), ('LS006', 'Music'), ('LS006', 'Opera'), ('LS007', 'Music'), ('LS007', 'Rock'), ('LS007', 'Alternative'), ('LS008', 'Comedy'), ('LS009', 'Music'), ('LS009', 'Folk'), ('LS010', 'Film'), ('LS010', 'Documentary'), ('LS011', 'Magic'), ('LS012', 'Business'), ('LS013', 'Sports'), ('LS014', 'Poetry'), ('LS015', 'Dance'), ('LS015', 'Ballet'), ('LS016', 'Music'), ('LS016', 'Jazz'), ('LS017', 'Comedy'), ('LS018', 'Art'), ('LS019', 'Dance'), ('LS019', 'Folk'), ('LS020', 'Music'), ('LS020', 'Classical'), ('LS021', 'Drama'), ('LS022', 'Technology'), ('LS023', 'Sports'), ('LS024', 'Comedy'), ('LS025', 'Music'), ('LS025', 'Opera'), ('LS026', 'Music'), ('LS026', 'Folk'), ('LS027', 'Music'), ('LS027', 'Indie'), ('LS028', 'Comedy'), ('LS029', 'Dance'), ('LS030', 'Film'), ('LS030', 'Documentary');
/*!40000 ALTER TABLE GigsGenres ENABLE KEYS */;
-- UNLOCK TABLES GigsGenres;

Drop table if exists Audi;
CREATE TABLE Audi (
    audiNo VARCHAR(10) DEFAULT 0,
    venueID VARCHAR(10),
    capacity INT DEFAULT 0,
	PRIMARY KEY(audiNo,venueID),
    FOREIGN KEY (venueID) REFERENCES Venue(venueID) on delete cascade
);
--
-- Dumping data into Audi;
--
-- LOCK TABLES Audi WRITE;
/*!40000 ALTER TABLE Audi DISABLE KEYS */;
INSERT INTO Audi (audiNo, venueID, capacity) VALUES ('S01', 'V001', 100), ('S02', 'V001', 150), ('S03', 'V001', 200), ('S04', 'V001', 120), ('S05', 'V001', 80), ('S01', 'V002', 70), ('S02', 'V002', 90), ('S03', 'V002', 110), ('S04', 'V002', 130), ('S05', 'V002', 150), ('S01', 'V003', 150), ('S02', 'V003', 200), ('S03', 'V003', 80), ('S04', 'V003', 70), ('S01', 'V004', 100), ('S02', 'V004', 150), ('S01', 'V005', 120), ('S02', 'V005', 150), ('S03', 'V005', 80), ('S01', 'V006', 100), ('S02', 'V006', 150), ('S03', 'V006', 80), ('S04', 'V006', 70), ('S01', 'V007', 100), ('S02', 'V007', 150), ('S03', 'V007', 80), ('S01', 'V008', 100), ('S02', 'V008', 150), ('S01', 'V009', 100), ('S02', 'V009', 150), ('S03', 'V009', 80), ('S01', 'V010', 100), ('S02', 'V010', 150), ('S03', 'V010', 80), ('S04', 'V010', 70), ('S01', 'V011', 100), ('S02', 'V011', 150), ('S03', 'V011', 80), ('S04', 'V011', 70), ('S01', 'V012', 100), ('S02', 'V012', 150), ('S03', 'V012', 80), ('S01', 'V013', 100), ('S02', 'V013', 150), ('S03', 'V013', 80), ('S01', 'V014', 100), ('S02', 'V014', 150), ('S03', 'V014', 80), ('S01', 'V015', 100), ('S02', 'V015', 150), ('S03', 'V015', 80), ('S01', 'V016', 70), ('S02', 'V016', 90), ('S03', 'V016', 110), ('S04', 'V016', 130), ('S05', 'V016', 150), ('S01', 'V017', 70), ('S02', 'V017', 90), ('S03', 'V017', 110), ('S04', 'V017', 130), ('S01', 'V018', 70), ('S02', 'V018', 90), ('S03', 'V018', 110), ('S04', 'V018', 130), ('S01', 'V019', 100), ('S02', 'V019', 120), ('S03', 'V019', 140), ('S04', 'V019', 160), ('S01', 'V020', 100), ('S02', 'V020', 120), ('S03', 'V020', 140), ('S04', 'V020', 160), ('S01', 'V021', 100), ('S02', 'V021', 120), ('S03', 'V021', 140), ('S04', 'V021', 160), ('S01', 'V022', 100), ('S02', 'V022', 120), ('S03', 'V022', 140), ('S04', 'V022', 160), ('S01', 'V023', 100), ('S02', 'V023', 120), ('S03', 'V023', 140), ('S04', 'V023', 160), ('S01', 'V024', 100), ('S02', 'V024', 120), ('S03', 'V024', 140), ('S04', 'V024', 160), ('S01', 'V025', 100), ('S02', 'V025', 120), ('S03', 'V025', 140), ('S04', 'V025', 160);
/*!40000 ALTER TABLE Audi ENABLE KEYS */;
-- UNLOCK TABLES Audi;

Drop table if exists Shows;
CREATE TABLE Shows (
    showID VARCHAR(10) DEFAULT 0,
    movieID VARCHAR(10),
    Type VARCHAR(50) DEFAULT NULL,
    Timing TIME DEFAULT NULL,
    languages VARCHAR(50),
    PRIMARY KEY (showID, movieID),
    FOREIGN KEY (movieID) REFERENCES Movie(movieID) on delete cascade,
    FOREIGN KEY (languages) REFERENCES MovieLanguages(languages) on delete cascade
);

--
-- Dumping data into Shows;
--
-- LOCK TABLES Shows WRITE;
/*!40000 ALTER TABLE Shows DISABLE KEYS */;
INSERT INTO Shows (showID, movieID, Type, Timing, languages) VALUES ('S001', 'M1', 'imax', '10:00:00', 'English'), ('S002', 'M1', '2D', '12:00:00', 'English'), ('S003', 'M1', '3D', '14:00:00', 'English'), ('S004', 'M2', 'imax', '11:00:00', 'English'), ('S005', 'M2', '2D', '13:00:00', 'English'), ('S006', 'M2', '3D', '15:00:00', 'English'), ('S007', 'M3', 'imax', '10:30:00', 'English'), ('S008', 'M3', '2D', '12:30:00', 'English'), ('S009', 'M3', '3D', '14:30:00', 'English'), ('S010', 'M4', 'imax', '11:30:00', 'English'), ('S011', 'M4', '2D', '13:30:00', 'English'), ('S012', 'M4', '3D', '15:30:00', 'English'), ('S013', 'M5', 'imax', '10:00:00', 'English'), ('S014', 'M5', '2D', '12:00:00', 'English'), ('S015', 'M5', '3D', '14:00:00', 'English'), ('S016', 'M6', 'imax', '11:00:00', 'English'), ('S017', 'M6', '2D', '13:00:00', 'English'), ('S018', 'M6', '3D', '15:00:00', 'English'), ('S019', 'M7', 'imax', '10:30:00', 'English'), ('S020', 'M7', '2D', '12:30:00', 'English'), ('S021', 'M7', '3D', '14:30:00', 'English'), ('S022', 'M8', 'imax', '11:30:00', 'English'), ('S023', 'M8', '2D', '13:30:00', 'English'), ('S024', 'M8', '3D', '15:30:00', 'English'), ('S025', 'M9', 'imax', '10:00:00', 'English'), ('S026', 'M9', '2D', '12:00:00', 'English'), ('S027', 'M9', '3D', '14:00:00', 'English'), ('S028', 'M10', 'imax', '11:00:00', 'English'), ('S029', 'M10', '2D', '13:00:00', 'English'), ('S030', 'M10', '3D', '15:00:00', 'English'), ('S031', 'M11', 'imax', '10:30:00', 'English'), ('S032', 'M11', '2D', '12:30:00', 'English'), ('S033', 'M11', '3D', '14:30:00', 'English'), ('S034', 'M12', 'imax', '11:30:00', 'English'), ('S035', 'M12', '2D', '13:30:00', 'English'), ('S036', 'M12', '3D', '15:30:00', 'English'), ('S037', 'M13', 'imax', '10:00:00', 'English'), ('S038', 'M13', '2D', '12:00:00', 'English'), ('S039', 'M13', '3D', '14:00:00', 'English'), ('S040', 'M14', 'imax', '11:00:00', 'English'), ('S041', 'M14', '2D', '13:00:00', 'English'), ('S042', 'M14', '3D', '15:00:00', 'English'), ('S043', 'M15', 'imax', '10:30:00', 'English'), ('S044', 'M15', '2D', '12:30:00', 'English'), ('S045', 'M15', '3D', '14:30:00', 'English'), ('S046', 'M16', 'imax', '11:30:00', 'English'), ('S047', 'M16', '2D', '13:30:00', 'English'), ('S048', 'M16', '3D', '15:30:00', 'English'), ('S049', 'M17', 'imax', '10:00:00', 'English'), ('S050', 'M17', '2D', '12:00:00', 'English'), ('S051', 'M17', '3D', '14:00:00', 'English'), ('S052', 'M18', 'imax', '11:00:00', 'English'), ('S053', 'M18', '2D', '13:00:00', 'English'), ('S054', 'M18', '3D', '15:00:00', 'English'), ('S055', 'M19', 'imax', '10:30:00', 'English'), ('S056', 'M19', '2D', '12:30:00', 'English'), ('S057', 'M19', '3D', '14:30:00', 'English'), ('S058', 'M20', 'imax', '11:30:00', 'English'), ('S059', 'M20', '2D', '13:30:00', 'English'), ('S060', 'M20', '3D', '15:30:00', 'English'), ('S061', 'M21', 'imax', '10:00:00', 'English'), ('S062', 'M21', '2D', '12:00:00', 'English'), ('S063', 'M21', '3D', '14:00:00', 'English'), ('S064', 'M22', 'imax', '11:00:00', 'English'), ('S065', 'M22', '2D', '13:00:00', 'English'), ('S066', 'M22', '3D', '15:00:00', 'English'), ('S067', 'M23', 'imax', '10:30:00', 'English'), ('S068', 'M23', '2D', '12:30:00', 'English'), ('S069', 'M23', '3D', '14:30:00', 'English'), ('S070', 'M24', 'imax', '11:30:00', 'English'), ('S071', 'M24', '2D', '13:30:00', 'English'), ('S072', 'M24', '3D', '15:30:00', 'English'), ('S073', 'M25', 'imax', '10:00:00', 'English'), ('S074', 'M25', '2D', '12:00:00', 'English'), ('S075', 'M25', '3D', '14:00:00', 'English'), ('S076', 'M26', 'imax', '11:00:00', 'English'), ('S077', 'M26', '2D', '13:00:00', 'English'), ('S078', 'M26', '3D', '15:00:00', 'English'), ('S079', 'M45', 'imax', '10:00:00', 'Hindi'), ('S080', 'M45', '2D', '12:00:00', 'Hindi'), ('S081', 'M45', '3D', '14:00:00', 'Hindi'), ('S082', 'M46', 'imax', '11:00:00', 'Hindi'), ('S083', 'M46', '2D', '13:00:00', 'Hindi'), ('S084', 'M46', '3D', '15:00:00', 'Hindi'), ('S085', 'M47', 'imax', '10:30:00', 'Hindi'), ('S086', 'M47', '2D', '12:30:00', 'Hindi'), ('S087', 'M47', '3D', '14:30:00', 'Hindi'), ('S088', 'M48', 'imax', '11:30:00', 'Hindi'), ('S089', 'M48', '2D', '13:30:00', 'Hindi'), ('S090', 'M48', '3D', '15:30:00', 'Hindi'), ('S091', 'M49', 'imax', '10:00:00', 'Hindi'), ('S092', 'M49', '2D', '12:00:00', 'Hindi'), ('S093', 'M51', '3D', '14:00:00', 'Hindi'), ('S094', 'M52', 'imax', '11:00:00', 'Hindi'), ('S095', 'M50', '2D', '13:00:00', 'Hindi'), ('S096', 'M54', '3D', '15:00:00', 'Hindi'), ('S097', 'M54', 'imax', '10:30:00', 'Hindi'), ('S098', 'M53', '2D', '12:30:00', 'Hindi'), ('S099', 'M53', '3D', '14:30:00', 'Hindi'), ('S100', 'M54', 'imax', '11:30:00', 'Hindi'), ('S101', 'M54', '2D', '13:30:00', 'Hindi'), ('S102', 'M51', '3D', '15:30:00', 'Hindi'), ('S103', 'M48', 'imax', '10:00:00', 'Hindi'), ('S104', 'M49', '2D', '12:00:00', 'Hindi'), ('S105', 'M50', '3D', '14:00:00', 'Hindi');
/*!40000 ALTER TABLE Shows ENABLE KEYS */;
-- UNLOCK TABLES Shows;


Drop table if exists PlayedAt;
CREATE TABLE PlayedAt (
    showID VARCHAR(10),
    movieID VARCHAR(10),
    audiNo VARCHAR(10),
    venueID VARCHAR(10),
    PRIMARY KEY (showID, movieID, audiNo, venueID),
    FOREIGN KEY (showID) REFERENCES Shows(showID) on delete cascade,
    FOREIGN KEY (movieID) REFERENCES Movie(movieID) on delete cascade,
    FOREIGN KEY (audiNo) REFERENCES Audi(audiNo) on delete cascade,
    FOREIGN KEY (venueID) REFERENCES Venue(venueID) on delete cascade
);

--
-- Dumping data into PlayedAt;
--
-- LOCK TABLES PlayedAt WRITE;
/*!40000 ALTER TABLE PlayedAt DISABLE KEYS */;
INSERT INTO PlayedAt (showID, movieID, audiNo, venueID) VALUES ('S001', 'M1', 'S01', 'V001'), ('S002', 'M1', 'S02', 'V001'), ('S003', 'M1', 'S03', 'V001'), ('S004', 'M2', 'S04', 'V001'), ('S005', 'M2', 'S05', 'V001'), ('S006', 'M2', 'S01', 'V002'), ('S007', 'M3', 'S02', 'V002'), ('S008', 'M3', 'S03', 'V002'), ('S009', 'M3', 'S04', 'V002'), ('S010', 'M4', 'S05', 'V002'), ('S011', 'M4', 'S01', 'V003'), ('S012', 'M4', 'S02', 'V003'), ('S013', 'M5', 'S03', 'V003'), ('S014', 'M5', 'S04', 'V003'), ('S015', 'M5', 'S01', 'V004'), ('S016', 'M6', 'S02', 'V004'), ('S017', 'M6', 'S01', 'V005'), ('S018', 'M6', 'S02', 'V005'), ('S019', 'M7', 'S03', 'V005'), ('S020', 'M7', 'S01', 'V006'), ('S021', 'M7', 'S02', 'V006'), ('S022', 'M8', 'S03', 'V006'), ('S023', 'M8', 'S04', 'V006'), ('S024', 'M8', 'S01', 'V007'), ('S025', 'M9', 'S02', 'V007'), ('S026', 'M9', 'S03', 'V007'), ('S027', 'M9', 'S01', 'V008'), ('S028', 'M10', 'S02', 'V008'), ('S029', 'M10', 'S03', 'V008'), ('S030', 'M10', 'S04', 'V008'), ('S031', 'M11', 'S01', 'V009'), ('S032', 'M11', 'S02', 'V009'), ('S033', 'M11', 'S03', 'V009'), ('S034', 'M12', 'S04', 'V009'), ('S035', 'M12', 'S01', 'V010'), ('S036', 'M12', 'S02', 'V010'), ('S037', 'M13', 'S03', 'V010'), ('S038', 'M13', 'S01', 'V011'), ('S039', 'M13', 'S02', 'V011'), ('S040', 'M14', 'S03', 'V011'), ('S041', 'M14', 'S01', 'V012'), ('S042', 'M14', 'S02', 'V012'), ('S043', 'M15', 'S03', 'V012'), ('S044', 'M15', 'S04', 'V012'), ('S045', 'M15', 'S01', 'V013'), ('S046', 'M16', 'S02', 'V013'), ('S047', 'M16', 'S03', 'V013'), ('S048', 'M16', 'S04', 'V013'), ('S049', 'M17', 'S01', 'V014'), ('S050', 'M17', 'S02', 'V014'), ('S051', 'M17', 'S03', 'V014'), ('S052', 'M18', 'S04', 'V014'), ('S053', 'M18', 'S01', 'V015'), ('S054', 'M18', 'S02', 'V015'), ('S055', 'M19', 'S03', 'V015'), ('S056', 'M19', 'S04', 'V015'), ('S057', 'M19', 'S01', 'V016'), ('S058', 'M20', 'S02', 'V016'), ('S059', 'M20', 'S03', 'V016'), ('S060', 'M20', 'S04', 'V016'), ('S061', 'M21', 'S01', 'V017'), ('S062', 'M21', 'S02', 'V017'), ('S063', 'M21', 'S03', 'V017'), ('S064', 'M22', 'S04', 'V017'), ('S065', 'M22', 'S01', 'V018'), ('S066', 'M22', 'S02', 'V018'), ('S067', 'M23', 'S03', 'V018'), ('S068', 'M23', 'S04', 'V018'), ('S069', 'M23', 'S01', 'V019'), ('S070', 'M24', 'S02', 'V019'), ('S071', 'M24', 'S03', 'V019'), ('S072', 'M24', 'S04', 'V019'), ('S073', 'M25', 'S01', 'V020'), ('S074', 'M25', 'S02', 'V020'), ('S075', 'M25', 'S03', 'V020'), ('S076', 'M26', 'S04', 'V020'), ('S077', 'M26', 'S01', 'V021'), ('S078', 'M26', 'S02', 'V021'), ('S079', 'M45', 'S03', 'V021'), ('S080', 'M45', 'S01', 'V022'), ('S081', 'M45', 'S02', 'V022'), ('S082', 'M46', 'S03', 'V022'), ('S083', 'M46', 'S04', 'V022'), ('S084', 'M46', 'S01', 'V023'), ('S085', 'M47', 'S02', 'V023'), ('S086', 'M47', 'S03', 'V023'), ('S087', 'M47', 'S04', 'V023'), ('S088', 'M48', 'S01', 'V024'), ('S089', 'M48', 'S02', 'V024'), ('S090', 'M48', 'S03', 'V024'), ('S091', 'M49', 'S04', 'V024'), ('S092', 'M49', 'S01', 'V025'), ('S093', 'M51', 'S03', 'V025'), ('S094', 'M52', 'S04', 'V025'), ('S095', 'M50', 'S01', 'V026'), ('S096', 'M54', 'S03', 'V026'), ('S097', 'M54', 'S04', 'V026'), ('S098', 'M53', 'S01', 'V027'), ('S099', 'M53', 'S02', 'V027'), ('S100', 'M54', 'S03', 'V027'), ('S101', 'M54', 'S04', 'V027'), ('S102', 'M51', 'S01', 'V028'), ('S103', 'M48', 'S02', 'V028'), ('S104', 'M49', 'S03', 'V028'), ('S105', 'M50', 'S04', 'V028');
/*!40000 ALTER TABLE PlayedAt ENABLE KEYS */;
-- UNLOCK TABLES PlayedAt;

Drop table if exists Seat;
CREATE TABLE Seat (
    seatID VARCHAR(10) DEFAULT 0,
    showID VARCHAR(10),
    movieID VARCHAR(10),
    reservingUser VARCHAR(10),
    cost DECIMAL(10, 2) DEFAULT 0.00,
    type VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY (seatID, showID, movieID),
    FOREIGN KEY (showID) REFERENCES Shows(showID) on delete cascade,
    FOREIGN KEY (movieID) REFERENCES Movie(movieID) on delete cascade,
    FOREIGN KEY (reservingUser) REFERENCES User(userID) on delete cascade
);

--
-- Dumping data into Seat;
--
-- LOCK TABLES Seat WRITE;
/*!40000 ALTER TABLE Seat DISABLE KEYS */;
INSERT INTO seat (seatID, showID, movieID, reservingUser, cost, type) VALUES ('T001', 'S001', 'M1', 'U1', 200, 'Gold'), ('T002', 'S001', 'M1', 'U2', 400, 'Silver'), ('T003', 'S001', 'M1', 'U3', 600, 'Platinum'), ('T004', 'S002', 'M1', 'U4', 200, 'Gold'), ('T005', 'S002', 'M1', 'U5', 400, 'Silver'), ('T006', 'S002', 'M1', 'U6', 600, 'Platinum'), ('T007', 'S003', 'M1', 'U7', 200, 'Gold'), ('T008', 'S003', 'M1', 'U8', 400, 'Silver'), ('T009', 'S003', 'M1', 'U9', 600, 'Platinum'), ('T010', 'S004', 'M2', 'U10', 200, 'Gold'), ('T011', 'S004', 'M2', 'U11', 400, 'Silver'), ('T012', 'S004', 'M2', 'U12', 600, 'Platinum'), ('T013', 'S005', 'M2', 'U13', 200, 'Gold'), ('T014', 'S005', 'M2', 'U14', 400, 'Silver'), ('T015', 'S005', 'M2', 'U15', 600, 'Platinum'), ('T016', 'S006', 'M2', 'U16', 200, 'Gold'), ('T017', 'S006', 'M2', 'U17', 400, 'Silver'), ('T018', 'S006', 'M2', 'U18', 600, 'Platinum'), ('T019', 'S007', 'M3', 'U19', 200, 'Gold'), ('T020', 'S007', 'M3', 'U20', 400, 'Silver'), ('T021', 'S007', 'M3', 'U21', 600, 'Platinum'), ('T022', 'S008', 'M3', 'U22', 200, 'Gold'), ('T023', 'S008', 'M3', 'U23', 400, 'Silver'), ('T024', 'S008', 'M3', 'U24', 600, 'Platinum'), ('T025', 'S009', 'M3', 'U25', 200, 'Gold'), ('T026', 'S009', 'M3', 'U26', 400, 'Silver'), ('T027', 'S009', 'M3', 'U27', 600, 'Platinum'), ('T028', 'S010', 'M4', 'U28', 200, 'Gold'), ('T029', 'S010', 'M4', 'U29', 400, 'Silver'), ('T030', 'S010', 'M4', 'U30', 600, 'Platinum'), ('T031', 'S011', 'M4', 'U31', 200, 'Gold'), ('T032', 'S011', 'M4', 'U32', 400, 'Silver'), ('T033', 'S011', 'M4', 'U33', 600, 'Platinum'), ('T034', 'S012', 'M4', 'U34', 200, 'Gold'), ('T035', 'S012', 'M4', 'U35', 400, 'Silver'), ('T036', 'S012', 'M4', 'U36', 600, 'Platinum'), ('T037', 'S013', 'M5', 'U37', 200, 'Gold'), ('T038', 'S013', 'M5', 'U38', 400, 'Silver'), ('T039', 'S013', 'M5', 'U39', 600, 'Platinum'), ('T040', 'S014', 'M5', 'U40', 200, 'Gold'), ('T041', 'S014', 'M5', 'U41', 400, 'Silver'), ('T042', 'S014', 'M5', 'U42', 600, 'Platinum'), ('T043', 'S015', 'M5', 'U43', 200, 'Gold'), ('T044', 'S015', 'M5', 'U44', 400, 'Silver'), ('T045', 'S015', 'M5', 'U45', 600, 'Platinum'), ('T046', 'S016', 'M6', 'U46', 200, 'Gold'), ('T047', 'S016', 'M6', 'U47', 400, 'Silver'), ('T048', 'S016', 'M6', 'U48', 600, 'Platinum'), ('T049', 'S017', 'M6', 'U49', 200, 'Gold'), ('T050', 'S017', 'M6', 'U50', 400, 'Silver'), ('T051', 'S017', 'M6', 'U51', 600, 'Platinum'), ('T052', 'S018', 'M6', 'U52', 200, 'Gold'), ('T053', 'S018', 'M6', 'U53', 400, 'Silver'), ('T054', 'S018', 'M6', 'U54', 600, 'Platinum'), ('T055', 'S019', 'M7', 'U55', 200, 'Gold'), ('T056', 'S019', 'M7', 'U56', 400, 'Silver'), ('T057', 'S019', 'M7', 'U57', 600, 'Platinum'), ('T058', 'S020', 'M7', 'U58', 200, 'Gold'), ('T059', 'S020', 'M7', 'U59', 400, 'Silver'), ('T060', 'S020', 'M7', 'U60', 600, 'Platinum'), ('T061', 'S021', 'M7', 'U61', 200, 'Gold'), ('T062', 'S021', 'M7', 'U62', 400, 'Silver'), ('T063', 'S021', 'M7', 'U63', 600, 'Platinum'), ('T064', 'S022', 'M8', 'U64', 200, 'Gold'), ('T065', 'S022', 'M8', 'U65', 400, 'Silver'), ('T066', 'S022', 'M8', 'U66', 600, 'Platinum'), ('T067', 'S023', 'M8', 'U67', 200, 'Gold'), ('T068', 'S023', 'M8', 'U68', 400, 'Silver'), ('T069', 'S023', 'M8', 'U69', 600, 'Platinum'), ('T070', 'S024', 'M8', 'U70', 200, 'Gold'), ('T071', 'S024', 'M8', 'U71', 400, 'Silver'), ('T072', 'S024', 'M8', 'U72', 600, 'Platinum'), ('T073', 'S025', 'M9', 'U73', 200, 'Gold'), ('T074', 'S025', 'M9', 'U74', 400, 'Silver'), ('T075', 'S025', 'M9', 'U75', 600, 'Platinum'), ('T076', 'S026', 'M9', 'U76', 200, 'Gold'), ('T077', 'S026', 'M9', 'U77', 400, 'Silver'), ('T078', 'S026', 'M9', 'U78', 600, 'Platinum'), ('T079', 'S027', 'M9', 'U79', 200, 'Gold'), ('T080', 'S027', 'M9', 'U80', 400, 'Silver'), ('T081', 'S027', 'M9', 'U81', 600, 'Platinum'), ('T082', 'S028', 'M10', 'U82', 200, 'Gold'), ('T083', 'S028', 'M10', 'U83', 400, 'Silver'), ('T084', 'S028', 'M10', 'U84', 600, 'Platinum'), ('T085', 'S029', 'M10', 'U85', 200, 'Gold'), ('T086', 'S029', 'M10', 'U1', 400, 'Silver'), ('T087', 'S029', 'M10', 'U2', 600, 'Platinum'), ('T088', 'S030', 'M10', 'U3', 200, 'Gold'), ('T089', 'S030', 'M10', 'U4', 400, 'Silver'), ('T090', 'S030', 'M10', 'U5', 600, 'Platinum'), ('T091', 'S031', 'M11', 'U6', 200, 'Gold'), ('T092', 'S031', 'M11', 'U7', 400, 'Silver'), ('T093', 'S031', 'M11', 'U8', 600, 'Platinum'), ('T094', 'S032', 'M11', 'U9', 200, 'Gold'), ('T095', 'S032', 'M11', 'U10', 400, 'Silver'), ('T096', 'S032', 'M11', 'U11', 600, 'Platinum'), ('T097', 'S033', 'M11', 'U12', 200, 'Gold'), ('T098', 'S033', 'M11', 'U13', 400, 'Silver'), ('T099', 'S033', 'M11', 'U14', 600, 'Platinum'), ('T100', 'S034', 'M12', 'U15', 200, 'Gold'), ('T101', 'S034', 'M12', 'U16', 400, 'Silver'), ('T102', 'S034', 'M12', 'U17', 600, 'Platinum'), ('T103', 'S035', 'M12', 'U18', 200, 'Gold'), ('T104', 'S035', 'M12', 'U19', 400, 'Silver'), ('T105', 'S035', 'M12', 'U20', 600, 'Platinum'), ('T106', 'S036', 'M12', 'U21', 200, 'Gold'), ('T107', 'S036', 'M12', 'U22', 400, 'Silver'), ('T108', 'S036', 'M12', 'U23', 600, 'Platinum'), ('T109', 'S037', 'M13', 'U24', 200, 'Gold'), ('T110', 'S037', 'M13', 'U25', 400, 'Silver'), ('T111', 'S037', 'M13', 'U26', 600, 'Platinum'), ('T112', 'S038', 'M13', 'U27', 200, 'Gold'), ('T113', 'S038', 'M13', 'U28', 400, 'Silver'), ('T114', 'S038', 'M13', 'U29', 600, 'Platinum'), ('T115', 'S039', 'M13', 'U30', 200, 'Gold'), ('T116', 'S039', 'M13', 'U31', 400, 'Silver'), ('T117', 'S039', 'M13', 'U32', 600, 'Platinum'), ('T118', 'S040', 'M14', 'U33', 200, 'Gold'), ('T119', 'S040', 'M14', 'U34', 400, 'Silver'), ('T120', 'S040', 'M14', 'U35', 600, 'Platinum'), ('T121', 'S041', 'M14', 'U36', 200, 'Gold'), ('T122', 'S041', 'M14', 'U37', 400, 'Silver'), ('T123', 'S041', 'M14', 'U38', 600, 'Platinum'), ('T124', 'S042', 'M14', 'U39', 200, 'Gold'), ('T125', 'S042', 'M14', 'U40', 400, 'Silver'), ('T126', 'S042', 'M14', 'U41', 600, 'Platinum'), ('T127', 'S043', 'M15', 'U42', 200, 'Gold'), ('T128', 'S043', 'M15', 'U43', 400, 'Silver'), ('T129', 'S043', 'M15', 'U44', 600, 'Platinum'), ('T130', 'S044', 'M15', 'U45', 200, 'Gold'), ('T131', 'S044', 'M15', 'U46', 400, 'Silver'), ('T132', 'S044', 'M15', 'U47', 600, 'Platinum'), ('T133', 'S044', 'M15', 'U48', 200, 'Gold'), ('T134', 'S044', 'M15', 'U49', 400, 'Silver'), ('T135', 'S044', 'M15', 'U50', 600, 'Platinum'), ('T136', 'S045', 'M15', 'U51', 200, 'Gold'), ('T137', 'S045', 'M15', 'U52', 400, 'Silver'), ('T138', 'S045', 'M15', 'U53', 600, 'Platinum'), ('T139', 'S046', 'M16', 'U54', 200, 'Gold'), ('T140', 'S046', 'M16', 'U55', 400, 'Silver'), ('T141', 'S046', 'M16', 'U56', 600, 'Platinum'), ('T142', 'S047', 'M16', 'U57', 200, 'Gold'), ('T143', 'S047', 'M16', 'U58', 400, 'Silver'), ('T144', 'S047', 'M16', 'U59', 600, 'Platinum'), ('T145', 'S047', 'M16', 'U60', 200, 'Gold'), ('T146', 'S047', 'M16', 'U61', 400, 'Silver'), ('T147', 'S047', 'M16', 'U62', 600, 'Platinum'), ('T148', 'S048', 'M16', 'U63', 200, 'Gold'), ('T149', 'S048', 'M16', 'U64', 400, 'Silver'), ('T150', 'S048', 'M16', 'U65', 600, 'Platinum'), ('T151', 'S049', 'M17', 'U66', 200, 'Gold'), ('T152', 'S049', 'M17', 'U67', 400, 'Silver'), ('T153', 'S049', 'M17', 'U68', 600, 'Platinum'), ('T154', 'S050', 'M17', 'U69', 200, 'Gold'), ('T155', 'S050', 'M17', 'U70', 400, 'Silver'), ('T156', 'S050', 'M17', 'U71', 600, 'Platinum'), ('T157', 'S050', 'M17', 'U72', 200, 'Gold'), ('T158', 'S050', 'M17', 'U73', 400, 'Silver'), ('T159', 'S050', 'M17', 'U74', 600, 'Platinum'), ('T160', 'S051', 'M18', 'U75', 200, 'Gold'), ('T161', 'S051', 'M18', 'U76', 400, 'Silver'), ('T162', 'S051', 'M18', 'U77', 600, 'Platinum'), ('T163', 'S052', 'M18', 'U78', 200, 'Gold'), ('T164', 'S052', 'M18', 'U79', 400, 'Silver'), ('T165', 'S052', 'M18', 'U80', 600, 'Platinum'), ('T166', 'S052', 'M18', 'U81', 200, 'Gold');
/*!40000 ALTER TABLE Seat ENABLE KEYS */;
-- UNLOCK TABLES Seat;

Drop table if exists Ticket;
CREATE TABLE Ticket (
    ticketID VARCHAR(10) DEFAULT 0,
    gigsID VARCHAR(10),
    cost DECIMAL(10, 2) DEFAULT 0.00,
    type VARCHAR(50) DEFAULT NULL,
    purchasingUser VARCHAR(10),
    PRIMARY KEY (ticketID, gigsID),
    FOREIGN KEY (gigsID) REFERENCES Gigs(gigsID),
    FOREIGN KEY (purchasingUser) REFERENCES User(userID)
);

--
-- Dumping data into Ticket;
--
-- LOCK TABLES Ticket WRITE;
/*!40000 ALTER TABLE Ticket DISABLE KEYS */;
INSERT INTO Ticket (ticketID, gigsID, cost, type, purchasingUser) VALUES ('T1', 'LS008', 2500, 'gold', 'U28'), ('T2', 'LS022', 1500, 'silver', 'U5'), ('T3', 'LS003', 3000, 'platinum', 'U21'), ('T4', 'LS027', 2000, 'gold', 'U36'), ('T5', 'LS019', 1800, 'silver', 'U42'), ('T6', 'LS006', 4000, 'platinum', 'U65'), ('T7', 'LS015', 3500, 'gold', 'U17'), ('T8', 'LS024', 1200, 'silver', 'U50'), ('T9', 'LS014', 2800, 'gold', 'U12'), ('T10', 'LS009', 2200, 'platinum', 'U44'), ('T11', 'LS026', 2700, 'gold', 'U19'), ('T12', 'LS002', 1900, 'silver', 'U71'), ('T13', 'LS023', 3200, 'platinum', 'U60'), ('T14', 'LS010', 4200, 'platinum', 'U9'), ('T15', 'LS007', 1500, 'silver', 'U77'), ('T16', 'LS011', 3500, 'gold', 'U32'), ('T17', 'LS013', 2800, 'gold', 'U3'), ('T18', 'LS004', 1700, 'silver', 'U27'), ('T19', 'LS028', 2000, 'gold', 'U80'), ('T20', 'LS025', 3900, 'platinum', 'U8'), ('T21', 'LS018', 4800, 'platinum', 'U75'), ('T22', 'LS016', 2300, 'gold', 'U49'), ('T23', 'LS005', 1300, 'silver', 'U72'), ('T24', 'LS021', 3100, 'platinum', 'U68'), ('T25', 'LS012', 2600, 'gold', 'U56'), ('T26', 'LS001', 2000, 'gold', 'U15'), ('T27', 'LS029', 2900, 'gold', 'U69'), ('T28', 'LS020', 1400, 'silver', 'U61'), ('T29', 'LS030', 3600, 'platinum', 'U64'), ('T30', 'LS017', 1700, 'silver', 'U46'), ('T31', 'LS008', 1800, 'silver', 'U23'), ('T32', 'LS022', 4200, 'platinum', 'U82'), ('T33', 'LS003', 3200, 'platinum', 'U29'), ('T34', 'LS027', 2500, 'gold', 'U34'), ('T35', 'LS019', 1900, 'silver', 'U54'), ('T36', 'LS006', 2800, 'gold', 'U33'), ('T37', 'LS015', 1600, 'silver', 'U78'), ('T38', 'LS024', 3700, 'platinum', 'U16'), ('T39', 'LS014', 4000, 'platinum', 'U35'), ('T40', 'LS009', 2900, 'gold', 'U81'), ('T41', 'LS026', 1400, 'silver', 'U53'), ('T42', 'LS002', 1800, 'silver', 'U52'), ('T43', 'LS023', 2400, 'gold', 'U47'), ('T44', 'LS010', 3000, 'platinum', 'U74'), ('T45', 'LS007', 2100, 'gold', 'U30'), ('T46', 'LS011', 3300, 'platinum', 'U22'), ('T47', 'LS013', 2700, 'gold', 'U41'), ('T48', 'LS004', 1600, 'silver', 'U25'), ('T49', 'LS028', 1900, 'gold', 'U67'), ('T50', 'LS025', 3800, 'platinum', 'U84'), ('T51', 'LS018', 4700, 'platinum', 'U40'), ('T52', 'LS016', 2400, 'gold', 'U38'), ('T53', 'LS005', 1700, 'silver', 'U57'), ('T54', 'LS021', 2900, 'gold', 'U83'), ('T55', 'LS012', 2500, 'gold', 'U7'), ('T56', 'LS001', 1900, 'silver', 'U48'), ('T57', 'LS029', 2800, 'gold', 'U13'), ('T58', 'LS020', 1300, 'silver', 'U10'), ('T59', 'LS017', 4200, 'platinum', 'U58'), ('T60', 'LS008', 1700, 'silver', 'U14'), ('T61', 'LS022', 3600, 'platinum', 'U70'), ('T62', 'LS003', 2800, 'gold', 'U17'), ('T63', 'LS027', 2100, 'gold', 'U36'), ('T64', 'LS019', 1500, 'silver', 'U42'), ('T65', 'LS006', 3200, 'platinum', 'U65'), ('T66', 'LS015', 3000, 'platinum', 'U28'), ('T67', 'LS024', 1400, 'silver', 'U5'), ('T68', 'LS014', 1900, 'silver', 'U21'), ('T69', 'LS009', 4000, 'platinum', 'U44'), ('T70', 'LS026', 2500, 'gold', 'U19');
/*!40000 ALTER TABLE Ticket ENABLE KEYS */;
-- UNLOCK TABLES Ticket;


Drop table if exists Featuring;
CREATE TABLE Featuring (
    colID VARCHAR(10),
    movieID VARCHAR(10),
    role VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (colID, movieID),
    FOREIGN KEY (colID) REFERENCES Collaborator(colID) on delete cascade ,
    FOREIGN KEY (movieID) REFERENCES Movie(movieID)
);
--
-- Dumping data into Featuring;
--
-- LOCK TABLES Featuring WRITE;
/*!40000 ALTER TABLE Featuring DISABLE KEYS */;

INSERT INTO Featuring (colID, movieID, role) VALUES ('c001', 'M1', 'Director'), ('c002', 'M1', 'Lead Actor'), ('c003', 'M1', 'Supporting Actor'), ('c004', 'M1', 'Supporting Actress'), ('c005', 'M1', 'Crew'), ('c006', 'M2', 'Director'), ('c007', 'M2', 'Lead Actor'), ('c008', 'M2', 'Supporting Actor'), ('c009', 'M2', 'Supporting Actress'), ('c010', 'M2', 'Producer'), ('c011', 'M3', 'Director'), ('c012', 'M3', 'Lead Actor'), ('c013', 'M3', 'Supporting Actor'), ('c014', 'M3', 'Supporting Actress'), ('c015', 'M3', 'Crew'), ('c016', 'M4', 'Director'), ('c017', 'M4', 'Lead Actor'), ('c018', 'M4', 'Supporting Actor'), ('c019', 'M4', 'Supporting Actress'), ('c020', 'M4', 'Producer'), ('c021', 'M5', 'Director'), ('c022', 'M5', 'Lead Actor'), ('c023', 'M5', 'Supporting Actor'), ('c024', 'M5', 'Supporting Actress'), ('c025', 'M5', 'Crew'), ('c026', 'M6', 'Director'), ('c027', 'M6', 'Lead Actor'), ('c028', 'M6', 'Supporting Actor'), ('c029', 'M6', 'Supporting Actress'), ('c030', 'M6', 'Producer'), ('c031', 'M7', 'Director'), ('c032', 'M7', 'Lead Actor'), ('c033', 'M7', 'Supporting Actor'), ('c034', 'M7', 'Supporting Actress'), ('c035', 'M7', 'Crew'), ('c036', 'M8', 'Director'), ('c037', 'M8', 'Lead Actor'), ('c038', 'M8', 'Supporting Actor'), ('c039', 'M8', 'Supporting Actress'), ('c040', 'M8', 'Producer'), ('c041', 'M9', 'Director'), ('c042', 'M9', 'Lead Actor'), ('c043', 'M9', 'Supporting Actor'), ('c044', 'M9', 'Supporting Actress'), ('c045', 'M9', 'Crew'), ('c046', 'M10', 'Director'), ('c047', 'M10', 'Lead Actor'), ('c048', 'M10', 'Supporting Actor'), ('c049', 'M10', 'Supporting Actress'), ('c050', 'M10', 'Producer'), ('c001', 'M11', 'Director'), ('c002', 'M11', 'Lead Actor'), ('c003', 'M11', 'Supporting Actor'), ('c004', 'M11', 'Supporting Actress'), ('c005', 'M11', 'Crew'), ('c006', 'M12', 'Director'), ('c007', 'M12', 'Lead Actor'), ('c008', 'M12', 'Supporting Actor'), ('c009', 'M12', 'Supporting Actress'), ('c010', 'M12', 'Producer'), ('c011', 'M13', 'Director'), ('c012', 'M13', 'Lead Actor'), ('c013', 'M13', 'Supporting Actor'), ('c014', 'M13', 'Supporting Actress'), ('c015', 'M13', 'Crew'), ('c016', 'M14', 'Director'), ('c017', 'M14', 'Lead Actor'), ('c018', 'M14', 'Supporting Actor'), ('c019', 'M14', 'Supporting Actress'), ('c020', 'M14', 'Producer'), ('c021', 'M15', 'Director'), ('c022', 'M15', 'Lead Actor'), ('c023', 'M15', 'Supporting Actor'), ('c024', 'M15', 'Supporting Actress'), ('c025', 'M15', 'Crew'), ('c026', 'M16', 'Director'), ('c027', 'M16', 'Lead Actor'), ('c028', 'M16', 'Supporting Actor'), ('c029', 'M16', 'Supporting Actress'), ('c030', 'M16', 'Producer'), ('c031', 'M17', 'Director'), ('c032', 'M17', 'Lead Actor'), ('c033', 'M17', 'Supporting Actor'), ('c034', 'M17', 'Supporting Actress'), ('c035', 'M17', 'Crew'), ('c036', 'M18', 'Director'), ('c037', 'M18', 'Lead Actor'), ('c038', 'M18', 'Supporting Actor'), ('c039', 'M18', 'Supporting Actress'), ('c040', 'M18', 'Producer'), ('c041', 'M19', 'Director'), ('c042', 'M19', 'Lead Actor'), ('c043', 'M19', 'Supporting Actor'), ('c044', 'M19', 'Supporting Actress'), ('c045', 'M19', 'Crew'), ('c046', 'M20', 'Director'), ('c047', 'M20', 'Lead Actor'), ('c048', 'M20', 'Supporting Actor'), ('c049', 'M20', 'Supporting Actress'), ('c050', 'M20', 'Producer'), ('c001', 'M21', 'Director'), ('c002', 'M21', 'Lead Actor'), ('c003', 'M21', 'Supporting Actor'), ('c004', 'M21', 'Supporting Actress'), ('c005', 'M21', 'Crew'), ('c006', 'M22', 'Director'), ('c007', 'M22', 'Lead Actor'), ('c008', 'M22', 'Supporting Actor'), ('c009', 'M22', 'Supporting Actress'), ('c010', 'M22', 'Producer'), ('c011', 'M23', 'Director'), ('c012', 'M23', 'Lead Actor'), ('c013', 'M23', 'Supporting Actor'), ('c014', 'M23', 'Supporting Actress'), ('c015', 'M23', 'Crew'), ('c016', 'M24', 'Director'), ('c017', 'M24', 'Lead Actor'), ('c018', 'M24', 'Supporting Actor'), ('c019', 'M24', 'Supporting Actress'), ('c020', 'M24', 'Producer'), ('c021', 'M25', 'Director'), ('c022', 'M25', 'Lead Actor'), ('c023', 'M25', 'Supporting Actor'), ('c024', 'M25', 'Supporting Actress'), ('c025', 'M25', 'Crew'), ('c026', 'M26', 'Director'), ('c027', 'M26', 'Lead Actor'), ('c028', 'M26', 'Supporting Actor'), ('c029', 'M26', 'Supporting Actress'), ('c030', 'M26', 'Producer'), ('c031', 'M27', 'Director'), ('c032', 'M27', 'Lead Actor'), ('c033', 'M27', 'Supporting Actor'), ('c034', 'M27', 'Supporting Actress'), ('c035', 'M27', 'Crew'), ('c036', 'M28', 'Director'), ('c037', 'M28', 'Lead Actor'), ('c038', 'M28', 'Supporting Actor'), ('c039', 'M28', 'Supporting Actress'), ('c040', 'M28', 'Producer'), ('c041', 'M29', 'Director'), ('c042', 'M29', 'Lead Actor'), ('c043', 'M29', 'Supporting Actor'), ('c044', 'M29', 'Supporting Actress'), ('c045', 'M29', 'Crew'), ('c046', 'M30', 'Director'), ('c047', 'M30', 'Lead Actor'), ('c048', 'M30', 'Supporting Actor'), ('c049', 'M30', 'Supporting Actress'), ('c050', 'M30', 'Producer'), ('c001', 'M31', 'Director'), ('c002', 'M31', 'Lead Actor'), ('c003', 'M31', 'Supporting Actor'), ('c004', 'M31', 'Supporting Actress'), ('c005', 'M31', 'Crew'), ('c006', 'M32', 'Director'), ('c007', 'M32', 'Lead Actor'), ('c008', 'M32', 'Supporting Actor'), ('c009', 'M32', 'Supporting Actress'), ('c010', 'M32', 'Producer'), ('c011', 'M33', 'Director'), ('c012', 'M33', 'Lead Actor'), ('c013', 'M33', 'Supporting Actor'), ('c014', 'M33', 'Supporting Actress'), ('c015', 'M33', 'Crew'), ('c016', 'M34', 'Director'), ('c017', 'M34', 'Lead Actor'), ('c018', 'M34', 'Supporting Actor'), ('c019', 'M34', 'Supporting Actress'), ('c020', 'M34', 'Producer'), ('c021', 'M35', 'Director'), ('c022', 'M35', 'Lead Actor'), ('c023', 'M35', 'Supporting Actor'), ('c024', 'M35', 'Supporting Actress'), ('c025', 'M35', 'Crew'), ('c026', 'M36', 'Director'), ('c027', 'M36', 'Lead Actor'), ('c028', 'M36', 'Supporting Actor'), ('c029', 'M36', 'Supporting Actress'), ('c030', 'M36', 'Producer'), ('c031', 'M37', 'Director'), ('c032', 'M37', 'Lead Actor'), ('c033', 'M37', 'Supporting Actor'), ('c034', 'M37', 'Supporting Actress'), ('c035', 'M37', 'Crew'), ('c036', 'M38', 'Director'), ('c037', 'M38', 'Lead Actor'), ('c038', 'M38', 'Supporting Actor'), ('c039', 'M38', 'Supporting Actress'), ('c040', 'M38', 'Producer'), ('c041', 'M39', 'Director'), ('c042', 'M39', 'Lead Actor'), ('c043', 'M39', 'Supporting Actor'), ('c044', 'M39', 'Supporting Actress'), ('c045', 'M39', 'Crew'), ('c046', 'M40', 'Director'), ('c047', 'M40', 'Lead Actor'), ('c048', 'M40', 'Supporting Actor'), ('c049', 'M40', 'Supporting Actress'), ('c050', 'M40', 'Producer'), ('c001', 'M41', 'Director'), ('c002', 'M41', 'Lead Actor'), ('c003', 'M41', 'Supporting Actor'), ('c004', 'M41', 'Supporting Actress'), ('c005', 'M41', 'Crew'), ('c006', 'M42', 'Director'), ('c007', 'M42', 'Lead Actor'), ('c008', 'M42', 'Supporting Actor'), ('c009', 'M42', 'Supporting Actress'), ('c010', 'M42', 'Producer'), ('c011', 'M43', 'Director'), ('c012', 'M43', 'Lead Actor'), ('c013', 'M43', 'Supporting Actor'), ('c014', 'M43', 'Supporting Actress'), ('c015', 'M43', 'Crew'), ('c016', 'M44', 'Director'), ('c017', 'M44', 'Lead Actor'), ('c018', 'M44', 'Supporting Actor'), ('c019', 'M44', 'Supporting Actress'), ('c020', 'M44', 'Producer'), ('c021', 'M45', 'Director'), ('c022', 'M45', 'Lead Actor'), ('c023', 'M45', 'Supporting Actor'), ('c024', 'M45', 'Supporting Actress'), ('c025', 'M45', 'Crew'), ('c026', 'M46', 'Director'), ('c027', 'M46', 'Lead Actor'), ('c028', 'M46', 'Supporting Actor'), ('c029', 'M46', 'Supporting Actress'), ('c030', 'M46', 'Producer'), ('c031', 'M47', 'Director'), ('c032', 'M47', 'Lead Actor'), ('c033', 'M47', 'Supporting Actor'), ('c034', 'M47', 'Supporting Actress'), ('c035', 'M47', 'Crew'), ('c036', 'M48', 'Director'), ('c037', 'M48', 'Lead Actor'), ('c038', 'M48', 'Supporting Actor'), ('c039', 'M48', 'Supporting Actress'), ('c040', 'M48', 'Producer'), ('c041', 'M49', 'Director'), ('c042', 'M49', 'Lead Actor'), ('c043', 'M49', 'Supporting Actor'), ('c044', 'M49', 'Supporting Actress'), ('c045', 'M49', 'Crew'), ('c046', 'M50', 'Director'), ('c047', 'M50', 'Lead Actor'), ('c048', 'M50', 'Supporting Actor'), ('c049', 'M50', 'Supporting Actress'), ('c050', 'M50', 'Producer'), ('c001', 'M51', 'Director'), ('c002', 'M51', 'Lead Actor'), ('c003', 'M51', 'Supporting Actor'), ('c004', 'M51', 'Supporting Actress'), ('c005', 'M51', 'Crew'), ('c006', 'M52', 'Director'), ('c007', 'M52', 'Lead Actor'), ('c008', 'M52', 'Supporting Actor'), ('c009', 'M52', 'Supporting Actress'), ('c010', 'M52', 'Producer'), ('c011', 'M53', 'Director'), ('c012', 'M53', 'Lead Actor'), ('c013', 'M53', 'Supporting Actor'), ('c014', 'M53', 'Supporting Actress'), ('c015', 'M53', 'Crew'), ('c016', 'M54', 'Director'), ('c017', 'M54', 'Lead Actor'), ('c018', 'M54', 'Supporting Actor'), ('c019', 'M54', 'Supporting Actress'), ('c020', 'M54', 'Producer');
/*!40000 ALTER TABLE Featuring ENABLE KEYS */;
-- UNLOCK TABLES Featuring;


Drop table if exists PerformsIn;
CREATE TABLE PerformsIn (
    colID VARCHAR(10),
    gigsID VARCHAR(10),
    role VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (colID, gigsID),
    FOREIGN KEY (colID) REFERENCES Collaborator(colID) on delete cascade, 
    FOREIGN KEY (gigsID) REFERENCES Gigs(gigsID) on delete cascade
);

--
-- Dumping data into PerformsIn;
--
-- LOCK TABLES PerformsIn WRITE;
/*!40000 ALTER TABLE PerformsIn DISABLE KEYS */;
INSERT INTO PerformsIn (colID, gigsID, role) VALUES ('c001', 'LS001', 'Lead Singer'), ('c002', 'LS001', 'Guitarist'), ('c003', 'LS001', 'Drummer'), ('c004', 'LS001', 'Bassist'), ('c005', 'LS001', 'Keyboardist'), ('c006', 'LS001', 'Violinist'), ('c007', 'LS001', 'Cellist'), ('c008', 'LS001', 'Trumpeter'), ('c009', 'LS002', 'Lead Actor'), ('c010', 'LS002', 'Supporting Actor'), ('c011', 'LS003', 'Lead Vocalist'), ('c012', 'LS003', 'Backing Vocalist'), ('c013', 'LS003', 'Guitarist'), ('c014', 'LS003', 'Bassist'), ('c015', 'LS004', 'Keynote Speaker'), ('c016', 'LS004', 'Panel Moderator'), ('c017', 'LS005', 'Bowler'), ('c018', 'LS005', 'Batsman'), ('c019', 'LS005', 'Wicketkeeper'), ('c020', 'LS005', 'Fielder'), ('c021', 'LS005', 'All-Rounder'), ('c022', 'LS006', 'Comedian'), ('c023', 'LS006', 'Impressionist'), ('c024', 'LS007', 'Soloist'), ('c025', 'LS007', 'Ensemble Member'), ('c026', 'LS008', 'Lead Guitarist'), ('c027', 'LS008', 'Rhythm Guitarist'), ('c028', 'LS008', 'Bassist'), ('c029', 'LS008', 'Drummer'), ('c030', 'LS009', 'Lead Actress'), ('c031', 'LS009', 'Supporting Actor'), ('c032', 'LS009', 'Stage Manager'), ('c033', 'LS010', 'Lead Musician'), ('c034', 'LS010', 'Backup Singer'), ('c035', 'LS010', 'Flutist'), ('c036', 'LS010', 'Cellist'), ('c037', 'LS011', 'Lead Dancer'), ('c038', 'LS011', 'Backup Dancer'), ('c039', 'LS011', 'Choreographer'), ('c040', 'LS012', 'Lead Vocalist'), ('c041', 'LS012', 'Backing Vocalist'), ('c042', 'LS012', 'Keyboardist'), ('c043', 'LS012', 'Bassist'), ('c044', 'LS012', 'Drummer'), ('c045', 'LS012', 'Trumpeter'), ('c046', 'LS013', 'Emcee'), ('c047', 'LS013', 'Stand-up Comedian'), ('c048', 'LS014', 'Soloist'), ('c049', 'LS014', 'Ensemble Member'), ('c050', 'LS015', 'Lead Singer'), ('c001', 'LS015', 'Lead Guitarist'), ('c002', 'LS015', 'Bassist'), ('c003', 'LS015', 'Drummer'), ('c004', 'LS016', 'Presenter'), ('c005', 'LS016', 'Moderator'), ('c006', 'LS016', 'Panelist'), ('c007', 'LS017', 'Forward'), ('c008', 'LS017', 'Midfielder'), ('c009', 'LS017', 'Defender'), ('c010', 'LS017', 'Goalkeeper'), ('c011', 'LS018', 'Poet'), ('c012', 'LS018', 'Spoken Word Artist'), ('c013', 'LS018', 'Storyteller'), ('c014', 'LS019', 'Lead Dancer'), ('c015', 'LS019', 'Soloist'), ('c016', 'LS020', 'Lead Violinist'), ('c017', 'LS020', 'Pianist'), ('c018', 'LS020', 'Cellist'), ('c019', 'LS021', 'Lead Actor'), ('c020', 'LS021', 'Supporting Actor'), ('c021', 'LS021', 'Stage Manager'), ('c022', 'LS021', 'Costume Designer'), ('c023', 'LS022', 'Lead Magician'), ('c024', 'LS022', 'Assistant Magician'), ('c025', 'LS023', 'Speaker'), ('c026', 'LS023', 'Panelist'), ('c027', 'LS024', 'Point Guard'), ('c028', 'LS024', 'Shooting Guard'), ('c029', 'LS024', 'Small Forward'), ('c030', 'LS024', 'Power Forward'), ('c031', 'LS024', 'Center'), ('c032', 'LS025', 'Open Mic Performer'), ('c033', 'LS025', 'Spoken Word Artist'), ('c034', 'LS026', 'Lead Singer'), ('c035', 'LS026', 'Backing Vocalist'), ('c036', 'LS026', 'Guitarist'), ('c037', 'LS026', 'Bassist'), ('c038', 'LS027', 'Lead Actor'), ('c039', 'LS027', 'Supporting Actor'), ('c040', 'LS028', 'Lead Speaker'), ('c041', 'LS028', 'Panel Moderator'), ('c042', 'LS029', 'Forward'), ('c043', 'LS029', 'Midfielder'), ('c044', 'LS029', 'Defender'), ('c045', 'LS030', 'Lead Dancer'), ('c046', 'LS030', 'Backup Dancer');
/*!40000 ALTER TABLE PerformsIn ENABLE KEYS */;
-- UNLOCK TABLES PerformsIn;

Drop table if exists Rents;
CREATE TABLE Rents (
    userID VARCHAR(10),
    movieID VARCHAR(10),
    PRIMARY KEY (userID, movieID),
    FOREIGN KEY (userID) REFERENCES User(userID),
    FOREIGN KEY (movieID) REFERENCES Movie(movieID)
);
--
-- Dumping data into Rents;
--
-- LOCK TABLES Rents WRITE;
/*!40000 ALTER TABLE Rents DISABLE KEYS */;
INSERT INTO Rents (userID, movieID) VALUES ('U30', 'M6'), ('U8', 'M44'), ('U16', 'M12'), ('U11', 'M35'), ('U2', 'M52'), ('U51', 'M8'), ('U57', 'M33'), ('U68', 'M49'), ('U70', 'M40'), ('U77', 'M19'), ('U12', 'M3'), ('U22', 'M18'), ('U36', 'M2'), ('U50', 'M23'), ('U44', 'M24'), ('U31', 'M38'), ('U73', 'M11'), ('U80', 'M51'), ('U9', 'M42'), ('U64', 'M7'), ('U17', 'M54'), ('U67', 'M10'), ('U21', 'M28'), ('U47', 'M17'), ('U27', 'M14'), ('U75', 'M34'), ('U20', 'M16'), ('U56', 'M5'), ('U37', 'M32'), ('U24', 'M53'), ('U14', 'M25'), ('U53', 'M50'), ('U4', 'M31'), ('U35', 'M21'), ('U61', 'M36'), ('U10', 'M45'), ('U19', 'M4'), ('U5', 'M20'), ('U3', 'M37'), ('U25', 'M41'), ('U29', 'M26'), ('U49', 'M13'), ('U59', 'M27'), ('U42', 'M48'), ('U78', 'M1'), ('U1', 'M22'), ('U62', 'M47'), ('U52', 'M9'), ('U34', 'M39'), ('U76', 'M43');
/*!40000 ALTER TABLE Rents ENABLE KEYS */;
-- UNLOCK TABLES Rents;

Drop table if exists Wishlist;
CREATE TABLE Wishlist (
    userID VARCHAR(10),
    movieID VARCHAR(10),
    PRIMARY KEY (userID, movieID),
    FOREIGN KEY (userID) REFERENCES User(userID),
    FOREIGN KEY (movieID) REFERENCES Movie(movieID)
);
--
-- Dumping data into Wishlist;
--
-- LOCK TABLES Wishlist WRITE;
/*!40000 ALTER TABLE Wishlist DISABLE KEYS */;
INSERT INTO Wishlist (userID, movieID) VALUES ('U82', 'M30'), ('U14', 'M37'), ('U61', 'M51'), ('U29', 'M42'), ('U77', 'M16'), ('U38', 'M2'), ('U70', 'M33'), ('U47', 'M5'), ('U84', 'M11'), ('U43', 'M25'), ('U32', 'M47'), ('U69', 'M7'), ('U15', 'M34'), ('U18', 'M49'), ('U3', 'M54'), ('U53', 'M12'), ('U6', 'M28'), ('U72', 'M20'), ('U79', 'M23'), ('U67', 'M19'), ('U27', 'M38'), ('U50', 'M4'), ('U60', 'M45'), ('U83', 'M17'), ('U78', 'M10'), ('U23', 'M53'), ('U16', 'M36'), ('U39', 'M48'), ('U22', 'M21'), ('U44', 'M44'), ('U26', 'M1'), ('U58', 'M26'), ('U75', 'M32'), ('U13', 'M35'), ('U41', 'M13'), ('U31', 'M15'), ('U63', 'M31'), ('U81', 'M22'), ('U54', 'M8'), ('U11', 'M50'), ('U85', 'M52'), ('U62', 'M39'), ('U7', 'M46'), ('U52', 'M3'), ('U25', 'M40'), ('U80', 'M18'), ('U8', 'M27'), ('U64', 'M9'), ('U36', 'M24'), ('U35', 'M41'), ('U10', 'M29'), ('U42', 'M14'), ('U71', 'M43'), ('U73', 'M6'), ('U30', 'M52');
/*!40000 ALTER TABLE Wishlist ENABLE KEYS */;
-- UNLOCK TABLES Wishlist;

Drop table if exists Friend;
CREATE TABLE Friend (
    userID VARCHAR(10),
    friendID VARCHAR(10),
    PRIMARY KEY (userID, friendID),
    FOREIGN KEY (userID) REFERENCES User(userID),
    FOREIGN KEY (friendID) REFERENCES User(userID)
);
--
-- Dumping data into Friend;
--
-- LOCK TABLES Friend WRITE;
/*!40000 ALTER TABLE Friend DISABLE KEYS */;
INSERT INTO Friend (userID, friendID) VALUES ('U57', 'U15'), ('U25', 'U62'), ('U43', 'U33'), ('U31', 'U74'), ('U6', 'U17'), ('U41', 'U45'), ('U64', 'U29'), ('U22', 'U11'), ('U18', 'U36'), ('U48', 'U40'), ('U70', 'U19'), ('U67', 'U69'), ('U71', 'U76'), ('U4', 'U50'), ('U42', 'U75'), ('U55', 'U66'), ('U23', 'U77'), ('U9', 'U44'), ('U21', 'U37'), ('U54', 'U26'), ('U72', 'U60'), ('U73', 'U51'), ('U2', 'U49'), ('U39', 'U79'), ('U57', 'U45'), ('U25', 'U70'), ('U43', 'U67'), ('U31', 'U9'), ('U6', 'U28'), ('U41', 'U49'), ('U64', 'U51'), ('U22', 'U37'), ('U18', 'U73'), ('U48', 'U79'), ('U70', 'U75'), ('U67', 'U29'), ('U71', 'U60'), ('U4', 'U39'), ('U42', 'U55'), ('U55', 'U49'), ('U23', 'U19'), ('U9', 'U36'), ('U21', 'U51'), ('U54', 'U75'), ('U72', 'U79'), ('U73', 'U26'), ('U28', 'U10'), ('U39', 'U67');
/*!40000 ALTER TABLE Friend ENABLE KEYS */;
-- UNLOCK TABLES Friend;

Drop table if exists Sequel;
CREATE TABLE Sequel (
    movieID VARCHAR(10) PRIMARY KEY,
    sequelID VARCHAR(10) DEFAULT NULL,
    sequelNo INT DEFAULT 1,
    FOREIGN KEY (movieID) REFERENCES Movie(movieID),
    FOREIGN KEY (sequelID) REFERENCES Movie(movieID)
);
--
-- Dumping data into Sequel;
--
-- LOCK TABLES Sequel WRITE;
/*!40000 ALTER TABLE Sequel DISABLE KEYS */;
INSERT INTO Sequel (movieID, sequelID, sequelNo) VALUES ('M1', 'M17', 1), ('M8', 'M26', 1), ('M19', 'M20', 1), ('M20', 'M9', 1), ('M13', 'M43', 1), ('M52', 'M51', 1), ('M53', 'M54', 1), ('M54', 'M50', 1), ('M21', 'M22', 1), ('M22', 'M23', 1);
/*!40000 ALTER TABLE Sequel ENABLE KEYS */;
-- UNLOCK TABLES Sequel;