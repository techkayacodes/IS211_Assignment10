-- music.sql

-- Artists Table
CREATE TABLE artists (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

-- Albums Table
CREATE TABLE albums (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    artist_id INTEGER,
    FOREIGN KEY (artist_id) REFERENCES artists(id)
);

-- Songs Table
CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    album_id INTEGER,
    track_number INTEGER,
    duration_seconds INTEGER,
    FOREIGN KEY (album_id) REFERENCES albums(id)
);

-- Person Table
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

-- Pet Table
CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);

-- Person_Pet Table
CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER,
    FOREIGN KEY (person_id) REFERENCES person(id),
    FOREIGN KEY (pet_id) REFERENCES pet(id)
);

