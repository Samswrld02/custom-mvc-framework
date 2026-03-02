DROP DATABASE IF EXISTS netland;

CREATE DATABASE netland;

USE netland;

DROP TABLE IF EXISTS media;

CREATE TABLE media (
    id int not null AUTO_INCREMENT,
    title varchar(255),
    rating float(5,1),
    omschrijving varchar(255),
    awards int,
    length_in_minutes int,
    release_datum DATE,
    seasons int,
    country varchar(10),
    yt_id varchar(100),
    media enum('series', 'movie'),
    PRIMARY KEY (id)
);


INSERT INTO media (Title, rating, omschrijving, awards, length_in_minutes, release_datum, seasons, country, yt_id, media)
VALUES ('The Shawshank Redemption', 9.3, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 7, 142, '1994-09-22', NULL, 'USA', '6hB3S9bIaco', 'movie');


INSERT INTO media (Title, rating, omschrijving, awards, length_in_minutes, release_datum, seasons, country, yt_id, media)
VALUES ('Breaking Bad', 9.5, 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine.', 110, 49, '2008-01-20', 5, 'USA', 'HhesaMSLu2Q', 'series');

INSERT INTO media (Title, rating, omschrijving, awards, length_in_minutes, release_datum, seasons, country, yt_id, media)
VALUES ('Zwartboek', 7.7, 'In the Nazi-occupied Netherlands during World War II, a Jewish singer infiltrates the regional Gestapo headquarters.', 22, 145, '2006-09-14', NULL, 'NL', 'y564fG9K8_Q', 'movie');


INSERT INTO media (Title, rating, omschrijving, awards, length_in_minutes, release_datum, seasons, country, yt_id, media)
VALUES ('Inception', 8.8, 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea.', 157, 148, '2010-07-16', NULL, 'USA', 'YoHD9XEInc0', 'movie');


INSERT INTO media (Title, rating, omschrijving, awards, length_in_minutes, release_datum, seasons, country, yt_id, media)
VALUES ('Rick and Morty', 9.1, 'An animated series that follows the exploits of a super scientist and his not-so-bright grandson.', 15, 23, '2013-12-02', 6, 'USA', 'f77X6uYI_To', 'series');
