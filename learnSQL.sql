CREATE DATABASE record_company;
USE record_company;
CREATE TABLE bands(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE albums(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY(band_id) REFERENCES bands(id)
);

INSERT INTO bands(name)
VALUES ('Iron Maiden');

INSERT INTO bands(name)
VALUES ('Deuce'), ('Ankor'),('Avenged Sevenfold');

SELECT * FROM  bands LIMIT 2;

SELECt name FROM bands;

SELECT id AS 'ID', name AS 'Band Name' FROM bands;

SELECT * FROM bands ORDER BY name DESC;

INSERT INTO albums(name, release_year, band_id)
VALUES ('The Number of the Beasts', 1985, 1),
		('Power Slave', 1984, 1),
		('Nightmare', 2018, 2),
        ('Nightmare',2010,3),
        ('Test Album', NULL, 3);

SELECT * FROM albums;

SELECT DISTINCT name FROM albums;


UPDATE albums
SET release_year = 1984
WHERE id = 1;

SELECT * FROM albums
WHERE release_year<2000;

SELECT * FROM albums
WHERE name LIKE '%ar%' or band_id = 2; 

SELECT * FROM albums
WHERE release_year = 1984 AND band_id = 1;
        
SELECT * FROM albums
WHERE release_year BETWEEN 2010 AND 2018; 

SELECT * FROM albums
WHERE release_year IS NULL;

SELECT * FROM albums;

DELETE FROM albums WHERE id = 4;

SELECT * FROM  bands
INNER JOIN albums ON bands.id = albums.band_id; #same thing as join it joins the tables having values on both side 

SELECT * FROM  bands
LEFT JOIN albums ON bands.id = albums.band_id; #joins the table where all of the left of table and everything or not from right

SELECT * FROM albums
RIGHT JOIN bands ON bands.id = albums.band_id;# same as left but flipped

SELECT SUM(release_year) FROM albums;

SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;

SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id = a.band_id
GROUP BY b.id;

SELECT bands.name, Count(albums.id) AS number_of_albums FROM bands 
LEFT JOIN albums ON bands.id=albums.band_id
#WHERE bands.name = 'Deuce'
GROUP BY bands.id
HAVING number_of_albums = 1;

SELECT * from albums;
SELECT * from bands;








        

