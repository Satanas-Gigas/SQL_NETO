CREATE TABLE IF NOT EXISTS genres (
         id SERIAL PRIMARY KEY,
         name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS singers (
	     id SERIAL PRIMARY KEY,
         name VARCHAR(40) UNIQUE NOT NULL	
);

CREATE TABLE IF NOT EXISTS albums (
	     id SERIAL PRIMARY KEY,
	     name VARCHAR(40) NOT NULL,
         year INTEGER
);

CREATE TABLE IF NOT EXISTS tracks (
	     id SERIAL PRIMARY KEY,
	     name VARCHAR(40) NOT NULL,
         time INTEGER,
     	 id_albums INTEGER REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS collections (
 	     id SERIAL PRIMARY KEY,
 	     name VARCHAR(40) NOT NULL,
 		 year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_singers (
         id_genres INTEGER REFERENCES genres(id),
         id_singers INTEGER REFERENCES singers(id),
         CONSTRAINT g_s PRIMARY KEY (id_genres,  id_singers)
);

CREATE TABLE IF NOT EXISTS singers_albums (
         id_singers INTEGER REFERENCES singers(id),
		 id_albums INTEGER REFERENCES albums(id),
         CONSTRAINT s_a PRIMARY KEY (id_albums,  id_singers)
);

CREATE TABLE IF NOT EXISTS tracks_collections (
		 id_collections INTEGER REFERENCES collections(id),
         id_tracks INTEGER REFERENCES tracks(id),
   		 CONSTRAINT t_c PRIMARY KEY (id_collections,  id_tracks)