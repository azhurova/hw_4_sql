CREATE TABLE genre (
	genre_id int NOT NULL GENERATED ALWAYS AS IDENTITY,
	name varchar NOT NULL,
	CONSTRAINT genre_pk PRIMARY KEY (genre_id)
);

CREATE TABLE artist (
	artist_id int NOT NULL GENERATED ALWAYS AS IDENTITY,
	name varchar NOT NULL,
	CONSTRAINT artist_pk PRIMARY KEY (artist_id)
);

CREATE TABLE artistgenre (
	artist_id int NOT NULL,
	genre_id int NOT NULL,
	CONSTRAINT artistgenre_artist_fk FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
	CONSTRAINT artistgenre_genre_fk FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE album (
	album_id int NOT NULL GENERATED ALWAYS AS IDENTITY,
	name varchar NOT NULL,
	year numeric(4) NULL,
	CONSTRAINT album_pk PRIMARY KEY (album_id)
);

CREATE TABLE artistalbum (
	artist_id int NOT NULL,
	album_id int NOT NULL,
	CONSTRAINT artistalbum_artist_fk FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
	CONSTRAINT artistalbum_album_fk FOREIGN KEY (album_id) REFERENCES album(album_id)
);

CREATE TABLE track (
	track_id int NOT NULL GENERATED ALWAYS AS IDENTITY,
	name varchar NOT NULL,
	duration integer NOT NULL,
	album_id int NOT NULL,
	CONSTRAINT track_pk PRIMARY KEY (track_id),	
	CONSTRAINT artistalbum_album_fk FOREIGN KEY (album_id) REFERENCES album(album_id)
);

CREATE TABLE collection (
	collection_id int NOT NULL GENERATED ALWAYS AS IDENTITY,
	name varchar NOT NULL,
	year numeric(4) NULL,
	CONSTRAINT collection_pk PRIMARY KEY (collection_id)
);

CREATE TABLE collectiontrack (
	collection_id int NOT NULL,
	track_id int NOT NULL,
	CONSTRAINT collectiontrack_collection_fk FOREIGN KEY (collection_id) REFERENCES collection(collection_id),
	CONSTRAINT collectiontrack_track_fk FOREIGN KEY (track_id) REFERENCES track(track_id)
);

