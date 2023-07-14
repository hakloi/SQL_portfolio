use lesson2;

CREATE TABLE Customer
(
	Id INT PRIMARY KEY AUTO_iNCREMENT,
	Age INT,
	FirstName VARCHAR(20),
	LastName VARCHAR(20)
);

# you can also use hashtag to comment
-- another one comment
/*
wow, comments with
multiple strings
*/

CREATE TABLE movies
(
Id INT PRIMARY KEY AUTO_iNCREMENT,
Title VARCHAR(30) NOT NULL,
Title_eng VARCHAR(30),
Year_movie INT NOT NULL,
Count_min INT, 
Storyline TEXT
);

RENAME TABLE movies TO cinema;

ALTER TABLE cinema
ADD COLUMN status_active BIT;

ALTER TABLE cinema
ADD COLUMN genre_id int after Title_eng;

ALTER TABLE cinema
DROP COLUMN status_active;

INSERT cinema
(Title, Title_eng, Year_movie, Count_min, Storyline)
VALUES
('kiki','kiki', 2028, 567, 'hurehu'),
('outlast','outpost', 2022, 20, 'omg scary!'),
('БУУ','wOO', 2025, 120, 'NONONONONOON');

 -- foreign key 
 CREATE TABLE genre
(
Id INT PRIMARY KEY NOT NULL AUTO_iNCREMENT,
name_genre VARCHAR(30) NOT NULL
);

INSERT genre(name_genre)
VALUES 
('comedy'), ('triller'), ('horror');

UPDATE `lesson2`.`cinema`
SET `genre_id` = '1'
WHERE (`Id` = '1');

UPDATE `lesson2`.`cinema`
SET `genre_id` = '2'
WHERE (`Id` = '2');

UPDATE `lesson2`.`cinema`
SET `genre_id` = '3'
WHERE (`Id` = '3');

ALTER TABLE cinema ADD FOREIGN KEY (genre_id) references genre(id);

INSERT cinema
(Title, Title_eng, Year_movie, Count_min, Storyline)
VALUES
('kiki','kiki', 2028, 567, 'hurehu'),
('outlast','outpost', 2022, 20, 'omg scary!');

