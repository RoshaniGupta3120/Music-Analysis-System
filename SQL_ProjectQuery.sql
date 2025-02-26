CREATE TABLE Artist (
    ArtistID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    Country VARCHAR(100),
    BirthDate DATE
);

CREATE TABLE Album (
    AlbumID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ReleaseDate DATE,
    ArtistID INT,
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
);

CREATE TABLE Song (
    SongID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Duration TIME,
    AlbumID INT,
    Genre VARCHAR(100),
    FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID)
);

CREATE TABLE Listener (
    ListenerID INT PRIMARY KEY,
    Username VARCHAR(100) NOT NULL UNIQUE,
    Email VARCHAR(255) NOT NULL UNIQUE,
    JoinDate DATE
);


CREATE TABLE Playlist (
    PlaylistID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ListenerID INT,
    FOREIGN KEY (ListenerID) REFERENCES Listener(ListenerID)
);

CREATE TABLE Playlist_Song (
    PlaylistID INT,
    SongID INT,
    PRIMARY KEY (PlaylistID, SongID),
    FOREIGN KEY (PlaylistID) REFERENCES Playlist(PlaylistID),
    FOREIGN KEY (SongID) REFERENCES Song(SongID)
);

CREATE TABLE Review (
    ReviewID INT PRIMARY KEY,
    SongID INT,
    ListenerID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    ReviewDate DATE,
    FOREIGN KEY (SongID) REFERENCES Song(SongID),
    FOREIGN KEY (ListenerID) REFERENCES Listener(ListenerID)
);

--inserting records into tables
INSERT INTO Artist (ArtistID, Name, Genre, Country, BirthDate) VALUES
(1, 'The Beatles', 'Rock', 'UK', '1960-01-01'),
(2, 'Taylor Swift', 'Pop', 'USA', '1989-12-13'),
(3, 'Beyoncé', 'R&B', 'USA', '1981-09-04'),
(4, 'Adele', 'Pop', 'UK', '1988-05-05'),
(5, 'Drake', 'Hip-Hop', 'Canada', '1986-10-24'),
(6, 'Ed Sheeran', 'Pop', 'UK', '1991-02-17'),
(7, 'Kendrick Lamar', 'Hip-Hop', 'USA', '1987-06-17'),
(8, 'Billie Eilish', 'Pop', 'USA', '2001-12-18'),
(9, 'Bruno Mars', 'Pop', 'USA', '1985-10-08'),
(10, 'Coldplay', 'Rock', 'UK', '1996-01-01'),
(11, 'Rihanna', 'Pop', 'Barbados', '1988-02-20'),
(12, 'Eminem', 'Hip-Hop', 'USA', '1972-10-17'),
(13, 'Lady Gaga', 'Pop', 'USA', '1986-03-28'),
(14, 'The Weeknd', 'R&B', 'Canada', '1990-02-16'),
(15, 'Maroon 5', 'Pop', 'USA', '2001-01-01'),
(16, 'Imagine Dragons', 'Rock', 'USA', '2008-01-01'),
(17, 'Justin Bieber', 'Pop', 'Canada', '1994-03-01'),
(18, 'Post Malone', 'Hip-Hop', 'USA', '1995-07-04'),
(19, 'Nicki Minaj', 'Hip-Hop', 'Trinidad and Tobago', '1982-12-08'),
(20, 'Dua Lipa', 'Pop', 'UK', '1995-08-22'),
(21, 'Katy Perry', 'Pop', 'USA', '1984-10-25'),
(22, 'Sia', 'Pop', 'Australia', '1975-12-18'),
(23, 'Lil Nas X', 'Hip-Hop', 'USA', '1999-04-09'),
(24, 'Harry Styles', 'Pop', 'UK', '1994-02-01'),
(25, 'Sam Smith', 'Pop', 'UK', '1992-05-19'),
(26, 'P!nk', 'Pop', 'USA', '1979-09-08'),
(27, 'Shawn Mendes', 'Pop', 'Canada', '1998-08-08'),
(28, 'Tones and I', 'Pop', 'Australia', '2002-11-15'),
(29, 'Halsey', 'Pop', 'USA', '1994-09-29'),
(30, 'Marshmello', 'EDM', 'USA', '1992-05-19'),
(31, 'Calvin Harris', 'EDM', 'UK', '1984-01-17'),
(32, 'David Guetta', 'EDM', 'France', '1967-11-07'),
(33, 'Zedd', 'EDM', 'Germany', '1989-09-02'),
(34, 'Kygo', 'EDM', 'Norway', '1991-09-11'),
(35, 'G-Eazy', 'Hip-Hop', 'USA', '1989-05-24'),
(36, 'Megan Thee Stallion', 'Hip-Hop', 'USA', '1995-02-15'),
(37, '21 Savage', 'Hip-Hop', 'USA', '1992-10-22'),
(38, 'Travis Scott', 'Hip-Hop', 'USA', '1991-04-30'),
(39, 'J Cole', 'Hip-Hop', 'USA', '1985-01-28'),
(40, 'Future', 'Hip-Hop', 'USA', '1983-11-20'),
(41, 'Lil Wayne', 'Hip-Hop', 'USA', '1982-09-27'),
(42, 'Nikki Sixx', 'Rock', 'USA', '1958-12-11'),
(43, 'Jim Morrison', 'Rock', 'USA', '1943-12-08'),
(44, 'Jimi Hendrix', 'Rock', 'USA', '1942-11-27'),
(45, 'Freddie Mercury', 'Rock', 'UK', '1946-09-05'),
(46, 'Michael Jackson', 'Pop', 'USA', '1958-08-29'),
(47, 'Whitney Houston', 'Pop', 'USA', '1963-08-09'),
(48, 'Tina Turner', 'Rock', 'USA', '1939-11-26'),
(49, 'Elton John', 'Rock', 'UK', '1947-03-25'),
(50, 'Cher', 'Pop', 'USA', '1946-05-20'),
(51, 'Celine Dion', 'Pop', 'Canada', '1968-03-30'),
(52, 'Mariah Carey', 'Pop', 'USA', '1969-03-27'),
(53, 'Bob Marley', 'Reggae', 'Jamaica', '1945-02-06'),
(54, 'Alicia Keys', 'R&B', 'USA', '1981-01-25'),
(55, 'Norah Jones', 'Jazz', 'USA', '1979-03-30'),
(56, 'Bill Withers', 'R&B', 'USA', '1938-07-04'),
(57, 'Diana Ross', 'Pop', 'USA', '1944-03-26'),
(58, 'Stevie Wonder', 'R&B', 'USA', '1950-05-13'),
(59, 'Annie Lennox', 'Pop', 'UK', '1954-12-25'),
(60, 'Carly Rae Jepsen', 'Pop', 'Canada', '1985-11-21'),
(61, 'Lana Del Rey', 'Pop', 'USA', '1985-06-21'),
(62, 'Avicii', 'EDM', 'Sweden', '1989-09-08'),
(63, 'Chic', 'Disco', 'USA', '1976-01-01'),
(64, 'Daft Punk', 'EDM', 'France', '1993-01-01'),
(65, 'Björk', 'Pop', 'Iceland', '1965-11-21'),
(66, 'The Cure', 'Rock', 'UK', '1976-01-01'),
(67, 'Gorillaz', 'Alternative', 'UK', '1998-01-01'),
(68, 'Rage Against the Machine', 'Rock', 'USA', '1991-01-01'),
(69, 'Arctic Monkeys', 'Rock', 'UK', '2002-01-01'),
(70, 'Muse', 'Rock', 'UK', '1994-01-01'),
(71, 'Fall Out Boy', 'Rock', 'USA', '2001-01-01'),
(72, 'Linkin Park', 'Rock', 'USA', '1996-01-01'),
(73, 'Paramore', 'Rock', 'USA', '2004-01-01'),
(74, 'Panic! At The Disco', 'Pop', 'USA', '2004-01-01'),
(75, 'Foo Fighters', 'Rock', 'USA', '1994-01-01'),
(76, 'The Killers', 'Rock', 'USA', '2001-01-01'),
(77, 'Kings of Leon', 'Rock', 'USA', '2000-01-01'),
(78, 'Weezer', 'Rock', 'USA', '1992-01-01'),
(79, 'The Black Keys', 'Rock', 'USA', '2001-01-01'),
(80, 'The Lumineers', 'Folk', 'USA', '2005-01-01'),
(81, 'Mumford & Sons', 'Folk', 'UK', '2007-01-01'),
(82, 'Vance Joy', 'Folk', 'Australia', '2013-01-01'),
(83, 'Of Monsters and Men', 'Folk', 'Iceland', '2010-01-01'),
(84, 'Hozier', 'Folk', 'Ireland', '2013-01-01'),
(85, 'Lorde', 'Pop', 'New Zealand', '1996-11-07'),
(86, 'Sheryl Crow', 'Rock', 'USA', '1962-02-11'),
(87, 'John Mayer', 'Rock', 'USA', '1977-10-16')

INSERT INTO Album (AlbumID, Title, ReleaseDate, ArtistID) VALUES
(1, 'Please Please Me', '1963-03-22', 1),
(2, 'Abbey Road', '1969-09-26', 1),
(3, 'Fearless', '2008-11-11', 2),
(4, '1989', '2014-10-27', 2),
(5, 'Lemonade', '2016-04-23', 3),
(6, '21', '2011-02-24', 4),
(7, 'Views', '2016-04-29', 5),
(8, 'Divide', '2017-03-03', 6),
(9, 'DAMN.', '2017-04-14', 7),
(10, 'When We All Fall Asleep, Where Do We Go?', '2019-03-29', 8),
(11, '24K Magic', '2016-11-18', 9),
(12, 'A Head Full of Dreams', '2015-12-04', 10),
(13, 'Anti', '2016-01-27', 11),
(14, 'The Marshall Mathers LP', '2000-05-23', 12),
(15, 'Born This Way', '2011-05-23', 13),
(16, 'Starboy', '2016-11-25', 14),
(17, 'Songs About Jane', '2002-06-25', 15),
(18, 'Smoke + Mirrors', '2015-02-17', 16),
(19, 'Purpose', '2015-11-13', 17),
(20, 'Beerbongs & Bentleys', '2018-04-27', 18),
(21, 'Queen', '2018-08-17', 19),
(22, 'Future Nostalgia', '2020-03-27', 20),
(23, 'Smile', '2020-08-28', 21),
(24, 'This Is Acting', '2016-01-29', 22),
(25, '7', '2020-07-10', 23),
(26, 'Fine Line', '2019-12-13', 24),
(27, 'Invasion of Privacy', '2018-04-06', 25),
(28, 'El Dorado', '2017-01-27', 26),
(29, 'Prism', '2013-10-22', 27),
(30, 'This Is Us', '2010-11-29', 28),
(31, 'The 20/20 Experience', '2013-03-15', 29),
(32, 'The Sound of Silence', '2015-04-24', 30),
(33, 'Man of the Woods', '2018-02-02', 31),
(34, 'The Life of Pablo', '2016-02-14', 32),
(35, 'Born to Die', '2012-01-27', 33),
(36, 'Blonde', '2016-08-20', 34),
(37, 'Hot Fuss', '2004-06-07', 35),
(38, 'The Killers', '2006-10-01', 36),
(39, 'American Idiot', '2004-09-21', 37),
(40, 'Wasting Light', '2011-04-12', 38),
(41, 'The Black Album', '1991-10-30', 39),
(42, 'The Colour and the Shape', '1997-05-20', 40),
(43, 'The Joshua Tree', '1987-03-09', 41),
(44, 'Rumours', '1977-02-04', 42),
(45, 'Back in Black', '1980-07-25', 43),
(46, 'Dark Side of the Moon', '1973-03-01', 44),
(47, 'Abbey Road', '1969-09-26', 1),
(48, 'Rumours', '1977-02-04', 42),
(49, 'Hotel California', '1976-12-08', 45),
(50, 'Appetite for Destruction', '1987-07-21', 46),
(51, 'The Wall', '1979-11-30', 47),
(52, 'Born to Run', '1975-08-25', 48),
(53, 'A Night at the Opera', '1975-11-21', 49)


INSERT INTO Song (SongID, Title, Duration, AlbumID, Genre) VALUES
(1, 'I Want to Hold Your Hand', '00:02:55', 1, 'Rock'),
(2, 'Hey Jude', '00:07:11', 2, 'Rock'),
(3, 'Love Story', '00:03:55', 3, 'Pop'),
(4, 'Rolling in the Deep', '00:03:48', 4, 'Pop'),
(5, 'Gods Plan', '00:03:18', 5, 'Hip-Hop'),
(6, 'Shape of You', '00:03:53', 6, 'Pop'),
(7, 'HUMBLE.', '00:02:57', 7, 'Hip-Hop'),
(8, 'Bad Guy', '00:03:14', 8, 'Pop'),
(9, '24K Magic', '00:03:46', 9, 'R&B'),
(10, 'Adventure of a Lifetime', '00:04:16', 10, 'Rock'),
(11, 'Umbrella', '00:04:36', 11, 'Pop'),
(12, 'Lose Yourself', '00:05:26', 12, 'Hip-Hop'),
(13, 'Born This Way', '00:04:20', 13, 'Pop'),
(14, 'Starboy', '00:03:50', 14, 'R&B'),
(15, 'This Love', '00:03:38', 15, 'Pop'),
(16, 'Demons', '00:02:57', 16, 'Rock'),
(17, 'Treat You Better', '00:03:09', 17, 'Pop'),
(18, 'Circles', '00:03:35', 18, 'Hip-Hop'),
(19, 'Super Bass', '00:03:20', 19, 'Hip-Hop'),
(20, 'Levitating', '00:03:23', 20, 'Pop'),
(21, 'Firework', '00:03:47', 21, 'Pop'),
(22, 'Elastic Heart', '00:04:05', 22, 'Pop'),
(23, 'Panini', '00:02:57', 23, 'Hip-Hop'),
(24, 'Watermelon Sugar', '00:03:07', 24, 'Pop'),
(25, 'Stay', '00:03:38', 25, 'Pop'),
(26, 'Electric Feel', '00:03:49', 26, 'Alternative'),
(27, 'Blinding Lights', '00:03:20', 27, 'Pop'),
(28, 'Stay With Me', '00:02:52', 28, 'Pop'),
(29, 'Wake Me Up', '00:04:07', 29, 'EDM'),
(30, 'Titanium', '00:04:05', 30, 'EDM'),
(31, 'Summer', '00:03:30', 31, 'EDM'),
(32, 'Faded', '00:03:32', 32, 'EDM'),
(33, 'Let Me Love You', '00:03:25', 33, 'EDM'),
(34, 'Closer', '00:04:05', 34, 'EDM'),
(35, 'Wake Up America', '00:03:44', 35, 'Pop'),
(36, 'Counting Stars', '00:04:17', 36, 'Pop'),
(37, 'Bad Romance', '00:04:54', 37, 'Pop'),
(38, 'Take Me to Church', '00:04:01', 38, 'Soul'),
(39, 'Cheap Thrills', '00:03:31', 39, 'Pop'),
(40, 'Aint It Fun', '00:04:00', 40, 'Rock'),
(41, 'Feel Good Inc.', '00:03:41', 41, 'Alternative'),
(42, 'Somebody That I Used to Know', '00:04:05', 42, 'Pop'),
(43, 'Uptown Funk', '00:04:30', 43, 'Funk'),
(44, 'Shake It Off', '00:03:39', 44, 'Pop'),
(45, 'Rolling in the Deep', '00:03:48', 45, 'Pop'),
(46, 'Radioactive', '00:03:06', 46, 'Rock'),
(47, 'Stressed Out', '00:03:22', 47, 'Alternative'),
(48, 'Chasing Cars', '00:04:27', 48, 'Rock'),
(49, 'The A Team', '00:04:20', 49, 'Pop'),
(50, 'Viva La Vida', '00:04:02', 50, 'Rock'),
(51, 'Boulevard of Broken Dreams', '00:04:21', 51, 'Rock'),
(52, 'Take a Bow', '00:03:30', 52, 'Pop'),
(53, 'Nothing Breaks Like a Heart', '00:03:23', 53, 'Pop'),
(54, 'Shallow', '00:03:36', 48, 'Pop'),
(55, 'Back to Black', '00:04:00', 52, 'Soul'),
(56, 'Rolling in the Deep', '00:03:48', 33, 'Soul'),
(57, 'The Night We Met', '00:03:28', 17, 'Alternative'),
(58, 'Good Riddance (Time of Your Life)', '00:02:35', 45, 'Rock'),
(59, 'Somebody to Love', '00:04:55', 50, 'Rock')

INSERT INTO Playlist (PlaylistID, Name, ListenerID) VALUES
(1, 'Chill Vibes', 10),
(2, 'Workout Hits', 11),
(3, 'Classic Rock Anthems', 12),
(4, 'Top 40 Pop', 10),
(5, 'Hip-Hop Favorites', 13),
(6, 'Jazz Essentials', 11),
(7, 'Indie Discoveries', 14),
(8, 'Party Playlist', 10),
(9, 'Feel Good Tunes', 15),
(10, 'Country Classics', 12),
(11, 'R&B Grooves', 13),
(12, 'Throwback Jams', 10),
(13, 'Romantic Ballads', 11),
(14, 'Summer Hits', 12),
(15, 'Guitar Solos', 13),
(16, 'Piano Favorites', 14),
(17, 'Essential Albums', 10),
(18, 'Acoustic Covers', 11),
(19, 'Chill Beats', 15),
(20, 'Epic Soundtracks', 12),
(21, 'Mellow Moods', 10),
(22, 'Dance Party', 13),
(23, 'Gospel Hits', 11),
(24, 'Ska and Reggae', 12),
(25, 'Electronic Essentials', 14),
(26, 'Metal Mayhem', 10),
(27, 'Best of the 80s', 13),
(28, 'Smooth Jazz', 11),
(29, 'Alternative Rock', 12),
(30, 'Hits from the 90s', 10),
(31, 'Chillout Lounge', 13),
(32, 'Classic Soul', 14),
(33, 'Festival Anthems', 10),
(34, 'New Age Relaxation', 12),
(35, 'Pop Punk Party', 11),
(36, 'Indie Folk', 10),
(37, 'Rock Ballads', 13),
(38, 'Live Concerts', 11),
(39, 'Deep House', 12),
(40, 'Soundscapes', 10),
(41, 'The Greatest Hits', 13),
(42, 'Instrumental Chill', 11),
(43, 'Broadway Classics', 10),
(44, 'Family Favorites', 12),
(45, 'Songwriter Spotlight', 13),
(46, 'Road Trip Tunes', 11),
(47, 'Golden Oldies', 10),
(48, 'Seasonal Favorites', 14),
(49, 'Motown Magic', 12),
(50, 'Future Classics', 11),
(51, 'Coffeehouse Vibes', 10),
(52, 'Cinematic Scores', 13),
(53, 'Late Night Jazz', 11),
(54, 'Indie Pop', 10),
(55, 'Bangers and Mash', 12),
(56, 'New Music Friday', 11),
(57, 'Acoustic Chill', 10),
(58, 'Best of British', 13),
(59, 'Vocal Harmony', 11),
(60, 'Sing-Along Classics', 10),
(61, 'Epic Rock Anthems', 12),
(62, 'Emotional Soundtracks', 11),
(63, 'Epic Fails', 10),
(64, 'Riff Masters', 13),
(65, 'Under the Radar', 11),
(66, 'Jazz Fusion', 10),
(67, 'Girls Who Rock', 12),
(68, 'All About Love', 11),
(69, 'Music for the Mind', 10),
(70, 'Happy Songs', 13),
(71, 'Melodic Rock', 11),
(72, 'Late Night Listening', 10),
(73, 'Global Beats', 12),
(74, 'Acoustic Rock', 11),
(75, 'Classic Hip-Hop', 10),
(76, 'Modern Classics', 12),
(77, 'Retro Dance', 11),
(78, 'Songs for the Soul', 10),
(79, 'Melody in Motion', 13),
(80, 'Vibes for Days', 11),
(81, 'Inspiring Music', 10),
(82, 'Night Drive', 12),
(83, 'World Music', 11),
(84, 'Mellow Pop', 10),
(85, 'Songs to Relax', 12),
(86, 'Women of Music', 11),
(87, 'Wild Card', 10),
(88, 'Music from Movies', 12),
(89, 'Instrumental Rock', 11),
(90, 'Folk Favorites', 10),
(91, 'Music for Work', 12),
(92, 'Retro Pop', 11),
(93, 'Acoustic Pop', 10),
(94, 'Smooth Grooves', 12),
(95, 'Festival Vibes', 11),
(96, 'Songs for Spring', 10),
(97, 'Songs for Summer', 12),
(98, 'Songs for Autumn', 11),
(99, 'Songs for Winter', 10),
(100, 'Golden Classics', 12);


INSERT INTO Playlist_Song (PlaylistID, SongID) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 5),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 1),
(4, 2),
(5, 12),
(5, 13),
(5, 3),
(5, 4),
(6, 14),
(6, 15),
(6, 5),
(6, 1),
(7, 16),
(7, 17),
(7, 2),
(7, 18),
(8, 19),
(8, 20),
(8, 1),
(8, 3),
(9, 21),
(9, 22),
(9, 4),
(9, 5),
(10, 23),
(10, 24),
(10, 6),
(10, 7),
(11, 25),
(11, 26),
(11, 8),
(11, 1),
(12, 27),
(12, 28),
(12, 9),
(12, 10),
(13, 29),
(13, 30),
(13, 11),
(13, 12),
(14, 31),
(14, 32),
(14, 1),
(14, 2),
(15, 33),
(15, 34),
(15, 3),
(15, 4),
(16, 35),
(16, 36),
(16, 5),
(16, 6),
(17, 37),
(17, 38),
(17, 7),
(17, 8),
(18, 39),
(18, 40),
(18, 9),
(18, 10),
(19, 41),
(19, 42),
(19, 11),
(19, 12),
(20, 43),
(20, 44),
(20, 1),
(20, 2),
(21, 45),
(21, 46),
(21, 3),
(21, 4),
(22, 47),
(22, 48),
(22, 5),
(22, 6),
(23, 49),
(23, 50),
(23, 7),
(23, 8),
(24, 51),
(24, 52),
(24, 9),
(24, 10),
(25, 53),
(25, 54),
(25, 1),
(25, 2),
(26, 55),
(26, 56),
(26, 3),
(26, 4),
(27, 57),
(27, 58),
(27, 5),
(27, 1),
(28, 53),
(28, 54),
(28, 7),
(28, 8),
(29, 1),
(29, 2),
(29, 9),
(29, 10),
(30, 3),
(30, 4),
(30, 11),
(30, 12),
(31, 5),
(31, 6),
(31, 1),
(31, 2),
(32, 7),
(32, 8),
(32, 3),
(32, 4),
(33, 9),
(33, 10),
(33, 5),
(33, 6),
(34, 11),
(34, 12),
(34, 1),
(34, 2);


INSERT INTO Review (ReviewID, SongID, ListenerID, Rating, Comment, ReviewDate) VALUES
(1, 1, 1, 5, 'Loved this song!', '2023-01-01'),
(2, 2, 2, 4, 'Great rhythm.', '2023-01-02'),
(3, 3, 3, 3, 'It was okay.', '2023-01-03'),
(4, 4, 1, 5, 'Amazing track!', '2023-01-04'),
(5, 5, 2, 2, 'Not my favorite.', '2023-01-05'),
(6, 6, 3, 4, 'Really enjoyed this.', '2023-01-06'),
(7, 7, 4, 1, 'Did not like it.', '2023-01-07'),
(8, 8, 5, 5, 'One of the best!', '2023-01-08'),
(9, 9, 1, 3, 'It’s decent.', '2023-01-09'),
(10, 10, 2, 4, 'Very catchy.', '2023-01-10'),
(11, 11, 3, 5, 'Incredible sound!', '2023-01-11'),
(12, 12, 1, 2, 'Too repetitive.', '2023-01-12'),
(13, 13, 4, 3, 'Good but not great.', '2023-01-13'),
(14, 14, 5, 5, 'This is my jam!', '2023-01-14'),
(15, 15, 1, 4, 'Solid performance.', '2023-01-15'),
(16, 16, 2, 3, 'Nice vibes.', '2023-01-16'),
(17, 17, 3, 5, 'Will listen again.', '2023-01-17'),
(18, 18, 4, 2, 'Not my style.', '2023-01-18'),
(19, 19, 5, 1, 'Didn’t enjoy it.', '2023-01-19'),
(20, 20, 1, 5, 'A masterpiece!', '2023-01-20'),
(21, 21, 2, 4, 'Good beat.', '2023-01-21'),
(22, 22, 3, 3, 'Average track.', '2023-01-22'),
(23, 23, 4, 5, 'So uplifting!', '2023-01-23'),
(24, 24, 5, 2, 'Too slow for me.', '2023-01-24'),
(25, 25, 1, 4, 'Enjoyable!', '2023-01-25'),
(26, 26, 2, 5, 'Fantastic energy!', '2023-01-26'),
(27, 27, 3, 1, 'Not impressed.', '2023-01-27'),
(28, 28, 4, 4, 'Really nice.', '2023-01-28'),
(29, 29, 5, 3, 'Okay song.', '2023-01-29'),
(30, 30, 1, 5, 'Absolutely love it!', '2023-01-30'),
(31, 31, 2, 4, 'Great for parties.', '2023-01-31'),
(32, 32, 3, 2, 'Could be better.', '2023-02-01'),
(33, 33, 4, 5, 'A new favorite!', '2023-02-02'),
(34, 34, 5, 3, 'Nice melody.', '2023-02-03'),
(35, 35, 1, 4, 'Very enjoyable.', '2023-02-04'),
(36, 36, 2, 1, 'Not my cup of tea.', '2023-02-05'),
(37, 37, 3, 5, 'Incredible!', '2023-02-06'),
(38, 38, 4, 2, 'Didn’t resonate.', '2023-02-07'),
(39, 39, 5, 3, 'Pretty good.', '2023-02-08'),
(40, 40, 1, 5, 'So good!', '2023-02-09'),
(41, 41, 2, 4, 'Fantastic track.', '2023-02-10'),
(42, 42, 3, 3, 'Okay overall.', '2023-02-11'),
(43, 43, 4, 5, 'Loved every bit!', '2023-02-12'),
(44, 44, 5, 2, 'Not my genre.', '2023-02-13'),
(45, 45, 1, 4, 'Great vibe.', '2023-02-14'),
(46, 46, 2, 5, 'Top-notch!', '2023-02-15'),
(47, 47, 3, 1, 'Would not recommend.', '2023-02-16'),
(48, 48, 4, 4, 'Really enjoyed this.', '2023-02-17'),
(49, 49, 5, 3, 'Mediocre.', '2023-02-18'),
(50, 50, 1, 5, 'A gem!', '2023-02-19'),
(51, 51, 2, 4, 'Catchy tune.', '2023-02-20'),
(52, 52, 3, 2, 'Forgettable.', '2023-02-21'),
(53, 53, 4, 5, 'Brilliant!', '2023-02-22'),
(54, 54, 5, 3, 'Okay vibe.', '2023-02-23'),
(55, 55, 1, 4, 'Happy to listen to it.', '2023-02-24'),
(56, 56, 2, 1, 'Not for me.', '2023-02-25'),
(57, 57, 3, 5, 'Excellent track!', '2023-02-26'),
(58, 58, 4, 2, 'Not engaging.', '2023-02-27'),
(59, 1, 5, 3, 'Decent song.', '2023-02-28'),
(60, 2, 1, 5, 'Love this!', '2023-03-01'),
(61, 3, 2, 4, 'Very enjoyable.', '2023-03-02'),
(62, 4, 3, 3, 'Not bad.', '2023-03-03'),
(63, 5, 4, 5, 'Fantastic!', '2023-03-04'),
(64, 6, 5, 1, 'Could be better.', '2023-03-05'),
(65, 7, 1, 4, 'Great tune.', '2023-03-06'),
(66, 8, 2, 5, 'A classic!', '2023-03-07'),
(67, 9, 3, 3, 'Very catchy.', '2023-03-08'),
(68, 10, 4, 4, 'Really good.', '2023-03-09'),
(69, 11, 5, 2, 'Not for me.', '2023-03-10'),
(70, 12, 1, 5, 'Always a favorite!', '2023-03-11'),
(71, 13, 2, 4, 'Very nice.', '2023-03-12'),
(72, 14, 3, 3, 'Enjoyable.', '2023-03-13'),
(73, 15, 4, 5, 'Highly recommend!', '2023-03-14'),
(74, 16, 5, 2, 'Okay track.', '2023-03-15'),
(75, 17, 1, 4, 'Pretty good.', '2023-03-16'),
(76, 18, 2, 1, 'Didn’t like it.', '2023-03-17'),
(77, 19, 3, 5, 'Fabulous!', '2023-03-18'),
(78, 20, 4, 2, 'Not my style.', '2023-03-19'),
(79, 21, 5, 3, 'Good song.', '2023-03-20'),
(80, 22, 1, 5, 'Amazing!', '2023-03-21')

select * from Album;
select * from Artist;
select * from Listener;
select * from playlist;
select * from Playlist_Song;
select * from Song;

--Select all albums released after 2000.
Select title from Album
where ReleaseDate > '2000-01-01';

--Select all songs with a duration longer than 5 minutes.
select title,Duration from Song where Duration>'00:05:00';

--Select all playlists and their total listeners.
select p.Name Playlist_name, count(l.Username) Total_Listner from Listener l
inner join Playlist p
on l.ListenerID=p.ListenerID
group by p.Name
order by count(l.Username);

--Get all songs and their corresponding albums.
select s.Title as songs, A.Title as Albums from Album A
inner join Song s
on s.AlbumID=A.AlbumID

--List all songs with their artists' names.
select s.title Songs, Ar.Name Artist from Song s
join Album a
on s.AlbumID=a.AlbumID
join Artist Ar
on a.ArtistID=Ar.ArtistID

--List all listeners and their playlists.
select l.Username, p.Name playlist from Listener l
Left join Playlist p
on p.ListenerID=l.ListenerID
where p.Name is not null;

--Get a list of songs with their reviews.
select s.Title, r.Rating from Song s
inner join Review r
on s.SongID=r.SongID
order by r.Rating desc;

--List all songs with ratings higher than 4 and belong to a specific genre and order by Genre.
select title songs, Genre from Song
where SongID in (select SongID from Review where Rating>=4)
order by Genre

--Count the total number of songs in each genre.
SELECT Genre, COUNT(*) AS TotalSongs
FROM Song
GROUP BY Genre
order by TotalSongs desc;


--Get the latest album for each artist.
select ar.Name Artist, a.title latest_album from Artist ar
left join Album a
on a.ArtistID=ar.ArtistID
where ReleaseDate in (select MAX(ReleaseDate) from Album group by ArtistID)

--List all songs that contain the word "love" in their title.
SELECT * FROM Song WHERE Title LIKE '%love%';

SELECT a.Title,ar.Country
FROM Album a
JOIN Artist ar ON a.ArtistID = ar.ArtistID
WHERE ar.Country LIKE 'U%'
order by ar.Country;

--Find the top 5 highest-rated songs.
SELECT top(5) s.Title, AVG(r.Rating) AS AverageRating
FROM Song s
JOIN Review r ON s.SongID = r.SongID
GROUP BY s.Title
ORDER BY AverageRating DESC;


select top(1) ar.name Artist, count(a.AlbumID) number_of_albums from Artist ar
left join Album a
on a.ArtistID=ar.ArtistID
group by ar.Name
order by number_of_albums desc;

--Get the top 3 songs by average rating.
SELECT top(3) s.Title song, AVG(r.Rating) AS AverageRating
FROM Song s
JOIN Review r ON s.SongID = r.SongID
GROUP BY s.Title
ORDER BY AverageRating DESC;

--Find all songs with no reviews.
SELECT s.Title 
FROM Song s
LEFT JOIN Review r ON s.SongID = r.SongID
WHERE r.SongID IS NULL;

--Get the oldest artist in the database.
SELECT top(1) * 
FROM Artist 
ORDER BY BirthDate ASC;

SELECT s.Title, AVG(r.Rating) AS AverageRating
FROM Song s
LEFT JOIN Review r ON s.SongID = r.SongID
GROUP BY s.Title;


--Count the number of reviews per song and sort by the song title.
SELECT s.Title, COUNT(r.ReviewID) AS ReviewCount
FROM Song s
LEFT JOIN Review r ON s.SongID = r.SongID
GROUP BY s.Title
ORDER BY s.Title;

SELECT ar.Name AS ArtistName, COUNT(DISTINCT a.AlbumID) AS TotalAlbums, COUNT(s.SongID) AS TotalSongs
FROM Artist ar
LEFT JOIN Album a ON ar.ArtistID = a.ArtistID
LEFT JOIN Song s ON a.AlbumID = s.AlbumID
GROUP BY ar.Name
having COUNT(DISTINCT a.AlbumID) !=0 and COUNT(s.SongID)!=0;

SELECT top(1) Title 
FROM Song 
ORDER BY Duration DESC ;

SELECT a.Name
FROM Artist a
WHERE a.ArtistID NOT IN (
    SELECT ArtistID FROM Album
);

SELECT r.SongID, s.title song,
       COUNT(r.ReviewID) OVER (PARTITION BY r.SongID ORDER BY r.ReviewDate) AS CumulativeReviews
FROM Review r
join song s
on s.SongID=r.SongID;


SELECT YEAR(ReleaseDate) AS ReleaseYear, 
       COUNT(SongID) AS NumberOfSongs
FROM Album a
JOIN Song s ON a.AlbumID = s.AlbumID
GROUP BY YEAR(ReleaseDate);


SELECT Top(1) l.Username, 
       COUNT(r.ReviewID) AS ReviewCount
FROM Listener l
JOIN Review r ON l.ListenerID = r.ListenerID
GROUP BY l.Username
ORDER BY ReviewCount DESC;


SELECT s.Title, 
       YEAR(a.ReleaseDate) AS ReleaseYear, 
       AVG(r.Rating) AS AverageRating
FROM Song s
JOIN Album a ON s.AlbumID = a.AlbumID
LEFT JOIN Review r ON s.SongID = r.SongID
GROUP BY s.Title, a.ReleaseDate
ORDER BY ReleaseYear;


SELECT s.Genre, 
       AVG(r.Rating) AS AverageRating
FROM Song s
JOIN Review r ON s.SongID = r.SongID
GROUP BY s.Genre;


SELECT s.Title, 
       AVG(r.Rating) AS AverageRating,
       COUNT(r.ReviewID) AS ReviewCount,
       DENSE_RANK() OVER (ORDER BY AVG(r.Rating) DESC, COUNT(r.ReviewID) DESC) AS Rank
FROM Song s
LEFT JOIN Review r ON s.SongID = r.SongID
GROUP BY s.Title;


SELECT l.Username, 
       COUNT(r.ReviewID) AS TotalReviews
FROM Listener l
LEFT JOIN Review r ON l.ListenerID = r.ListenerID
GROUP BY l.Username
HAVING COUNT(r.ReviewID) > 5;


SELECT a.Title AS AlbumTitle, 
       s.Title AS SongTitle, 
       MAX(s.Duration) AS LongestDuration
FROM Album a
JOIN Song s ON a.AlbumID = s.AlbumID
GROUP BY a.Title,s.Title;


SELECT 
    SongID,
    AVG(Rating) AS AverageRating,
    CASE 
        WHEN AVG(Rating) BETWEEN 1 AND 2 THEN 'Poor'
        WHEN AVG(Rating) = 3 THEN 'Average'
        WHEN AVG(Rating) BETWEEN 4 AND 5 THEN 'Good'
    END AS RatingClassification
FROM 
    Review
GROUP BY 
    SongID;


SELECT Title,
    CASE 
        WHEN ReleaseDate < '2000-01-01' THEN 'Old'
        ELSE 'New'
    END AS AgeClassification
FROM Album;
