CREATE TABLE IF NOT EXISTS artist
(
	id SERIAL PRIMARY KEY,
	artist_name varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre
(
	id SERIAL PRIMARY KEY,
	genre_name varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS album
(
	id SERIAL PRIMARY KEY,
	albums_name varchar(50) NOT null
	date_release varchar(4) NOT NULL
);

CREATE TABLE IF NOT EXISTS track
(
	id SERIAL PRIMARY KEY,
	track_name varchar(50) NOT NULL,
	album_id int REFERENCES album(id),
	duration time
);

CREATE TABLE IF NOT EXISTS collection
(
	id SERIAL PRIMARY KEY,
	collection_name varchar(50) NOT NULL,
	year_of_release varchar(4) NOT NULL
);

CREATE TABLE IF NOT EXISTS track_collection
(
	track_id int REFERENCES track(id),
	collection_id int REFERENCES collection(id),
	CONSTRAINT tracks_collections_pk PRIMARY KEY (track_id, collection_id)
);

CREATE TABLE IF NOT EXISTS artist_genre
(
	artist_id int REFERENCES artist(id),
	genre_id int REFERENCES genre(id),
	CONSTRAINT artists_genres_pk PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS album_artist
(
	album_id int REFERENCES album(id),
	artist_id int REFERENCES artist(id),
	CONSTRAINT artists_albums_pk PRIMARY KEY (artist_id, album_id)
);
