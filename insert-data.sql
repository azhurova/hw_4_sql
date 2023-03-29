INSERT INTO artist (name)
VALUES
    ('Louis Armstrong'),
    ('Duke Ellington'),
    ('Charlie Parker'),
    ('Miles Davis'),
    ('Benny Goodman'),
    ('Coleman Hawkins'),
    ('Count Basie'),
    ('John Coltrane'),
    ('Billie Holiday'),
    ('Max Roach');

INSERT INTO album (name,year) VALUES
	 ('Kind of Blue',1959),
	 ('Kind of Blue',1952),
	 ('Ella and Louis',1956),
	 ('Benny Goodman',1970),
	 ('April in Paris',2021),
	 ('Last Recording',1959),
	 ('We Insist!',1960),
	 ('Money Jungle',1958),
	 ('We Insist!',1959),
	 ('Body and Soul',2020);

INSERT INTO genre (name) VALUES
	 ('Cool jazz'),
	 ('Smooth jazz'),
	 ('А''cappella'),
	 ('Blues'),
	 ('Jazz Lounge');
	
INSERT INTO artistgenre (artist_id, genre_id)
VALUES
    (1, 2),
    (2, 2),
    (3, 2),
    (4, 1),
    (5, 1),
    (6, 5),
    (7, 2),
    (8, 3),
    (9, 4),
    (10,1),
    (3, 4);

INSERT INTO artistalbum (artist_id, album_id)
VALUES
    (1, 3),
    (2, 8),
    (3, 2),
    (4, 1),
    (5, 4),
    (6, 5),
    (7, 7),
    (8, 9),
    (9, 10),
    (10,6);

INSERT INTO track ("name",duration,album_id) VALUES
	 ('Freddie Freeloader',586,1),
	 ('Blue In Green',337,1),
	 ('All Blues',693,1),
	 ('Flamenco Sketches',566,1),
	 ('My way',586,2),
	 ('My war',337,2),
	 ('Our peace',693,2),
	 ('Your game',566,3),
	 ('Self heart',22,3),
	 ('Bobby',456,3);
INSERT INTO track ("name",duration,album_id) VALUES
	 ('Blues one',458,4),
	 ('Blues two',345,4),
	 ('My girl',678,5),
	 ('Carry N',234,5),
	 ('bABAgANUSH',543,6),
	 ('Olga',153,6),
	 ('My name',345,7),
	 ('Volga style',789,7),
	 ('My love',345,8),
	 ('GM on my garage',234,8);
INSERT INTO track ("name",duration,album_id) VALUES
	 ('Track1',23,9),
	 ('Track2',345,9),
	 ('Mega track',765,10),
	 ('Lovley track',766,10);

INSERT INTO collection ("name","year") VALUES
	 ('Сборник 1',1956),
	 ('Сборник 2',1960),
	 ('Сборник 3',1962),
	 ('Сборник 4',1970),
	 ('Сборник 5',1959),
	 ('Сборник 6',1980),
	 ('Сборник 7',1990),
	 ('Лучшее из джаза',2020);

INSERT INTO collectiontrack (collection_id, track_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 9),
    (1, 10),
    (2, 11),
    (3, 12),
    (4, 13),
    (5, 14),
    (6, 15),
    (7, 17),
    (8, 18),
    (1, 19),
    (2, 20),
    (3, 21),
    (4, 22),
    (5, 23),
    (5, 24),
    (6, 24);