CREATE  TABLE IF NOT EXISTS Users ( 
    user_id INT PRIMARY KEY ,
    username VARCHAR(50),
    country VARCHAR(50),
    signup_date DATE 
);

CREATE TABLE IF NOT EXISTS  artists (
    artists_id INT PRIMARY KEY,
    name  VARCHAR(100),
    genre VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Songs (
    song_id INT PRIMARY KEY,
    title VARCHAR(100),
    artist_id INT,
    duration INT,
    release_year INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artists_id)
);

CREATE TABLE IF NOT EXISTS  Streams (
    stream_id INT PRIMARY KEY,
    user_id INT,
    song_id INT,
    stream_date DATE,
    device VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);
