INSERT INTO artist (name) VALUES('keane');
INSERT INTO artist (name) VALUES('take that');
INSERT INTO artist (name) VALUES('taemin');
INSERT INTO artist (name) VALUES('taeyeon');

INSERT INTO genre (name) VALUES('pop');
INSERT INTO genre (name) VALUES('pop rock');
INSERT INTO genre (name) VALUES('r&b');
INSERT INTO genre (name) VALUES('dance');
INSERT INTO genre (name) VALUES('ballad');

INSERT INTO album (title, release_date) VALUES('voice', '2019-01-01');
INSERT INTO album (title, release_date) VALUES('patience', '2018-01-01');
INSERT INTO album (title, release_date) VALUES('never gonna dance again', '2020-01-01');
INSERT INTO album (title, release_date) VALUES('i', '2015-01-01');
INSERT INTO album (title, release_date) VALUES('my or my', '2024-01-01');

INSERT INTO track (title, duration, album_id) VALUES('blue', 90, 1);
INSERT INTO track (title, duration, album_id) VALUES('stress', 150, 1);
INSERT INTO track (title, duration, album_id) VALUES('beautiful world', 170, 2);
INSERT INTO track (title, duration, album_id) VALUES('want', 176, 3);
INSERT INTO track (title, duration, album_id) values('flood', 230, 2);
INSERT INTO track (title, duration, album_id) VALUES('criminal', 215, 3);
INSERT INTO track (title, duration, album_id) VALUES('insomnia', 181, 3);
INSERT INTO track (title, duration, album_id) VALUES('love', 70, 4);
INSERT INTO track (title, duration, album_id) VALUES('sky', 142, 4);
INSERT INTO track (title, duration, album_id) VALUES('my own', 120, 5);
INSERT INTO track (title, duration, album_id) VALUES('own my', 120, 5);
INSERT INTO track (title, duration, album_id) VALUES('my', 120, 5);
INSERT INTO track (title, duration, album_id) VALUES('oh my god', 120, 5);
INSERT INTO track (title, duration, album_id) VALUES('myself', 120, 5);
INSERT INTO track (title, duration, album_id) VALUES('by myself', 120, 5);
INSERT INTO track (title, duration, album_id) VALUES('bemy self', 120, 5);
INSERT INTO track (title, duration, album_id) VALUES('myself by', 120, 5);
INSERT INTO track (title, duration, album_id) VALUES('by myself by', 120, 5);
INSERT INTO track (title, duration, album_id) VALUES('beemy', 120, 5);
INSERT INTO track (title, duration, album_id) VALUES('premyne', 120, 5);

INSERT INTO collection (title, release_date) VALUES('dance', '2018-01-01');
INSERT INTO collection (title, release_date) VALUES('ballad', '2017-01-01');
INSERT INTO collection (title, release_date) VALUES('golden hits', '2019-01-02');
INSERT INTO collection (title, release_date) VALUES('new style', '2022-01-05');

INSERT INTO artist_genre (artist_id, genre_id) VALUES(1, 1);
INSERT INTO artist_genre (artist_id, genre_id) VALUES(2, 2);
INSERT INTO artist_genre (artist_id, genre_id) VALUES(2, 1);
INSERT INTO artist_genre (artist_id, genre_id) VALUES(3, 1);
INSERT INTO artist_genre (artist_id, genre_id) VALUES(3, 4);
INSERT INTO artist_genre (artist_id, genre_id) VALUES(4, 1);
INSERT INTO artist_genre (artist_id, genre_id) VALUES(4, 3);
INSERT INTO artist_genre (artist_id, genre_id) VALUES(4, 5);

INSERT INTO album_artist (album_id, artist_id) VALUES(1, 4);
INSERT INTO album_artist (album_id, artist_id) VALUES(3, 3);
INSERT INTO album_artist (album_id, artist_id) VALUES(2, 2);
INSERT INTO album_artist (album_id, artist_id) VALUES(4, 4);
INSERT INTO album_artist (album_id, artist_id) VALUES(5, 1);
INSERT INTO album_artist (album_id, artist_id) VALUES(5, 2);

INSERT INTO collection_track (collection_id, track_id) VALUES(1, 5);
INSERT INTO collection_track (collection_id, track_id) VALUES(1, 6);
INSERT INTO collection_track (collection_id, track_id) VALUES(2, 1);
INSERT INTO collection_track (collection_id, track_id) VALUES(2, 2);
INSERT INTO collection_track (collection_id, track_id) VALUES(3, 3);
INSERT INTO collection_track (collection_id, track_id) VALUES(3, 4);
INSERT INTO collection_track (collection_id, track_id) VALUES(4, 5);
INSERT INTO collection_track (collection_id, track_id) VALUES(4, 2);
