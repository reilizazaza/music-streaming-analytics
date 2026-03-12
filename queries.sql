/*1. Top Songs Leaderboard */
SELECT s.title, a.name AS artists, COUNT(*) AS total_streams
FROM Streams st
JOIN Songs s ON st.song_id = s.song_id
JOIN Artists a ON s.artist_id = a.artist_id
GROUP BY s.title, a.name
ORDER BY total_streams DESC 
LIMIT;

/*2. Most Popular Genre*/
SELECT a.genre,COUNT(*) AS total_streams
FROM Streams st 
JOIN Songs s ON st.song_id = s.song_id
JOIN Artists a ON s.artist_id = a.artist_id 
GROUP BY a.genre 
ORDER BY total_streams DESC;

/*3. Active Users by Country*/
SELECT u.country, COUNT(DISTINCT u.user_id) AS active_users
FROM Streams st 
JOIN Users u ON st.user_id = u.user_id 
GROUP BY u.country 
ORDER BY active_users DESC;

/*4.Device Usage Trends*/ 
SELECT device, COUNT(*) AS total_streams
FROM Streams
GROUP BY device
ORDER BY total_streams DESC;

/*5. Monthly Streaming Trends */
SELECT strftime('%Y-%m', stream_date) AS month, COUNT(*) AS total_streams
FROM Streams
GROUP BY month
ORDER BY month;

/*6. Top Artists */
SELECT a.name AS artist, COUNT(*) AS total_streams
FROM Streams st
JOIN Songs s ON st.song_id = s.song_id
JOIN Artists a ON s.artist_id = a.artist_id
GROUP BY a.name
ORDER BY total_streams DESC;

