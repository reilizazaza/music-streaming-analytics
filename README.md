# music-streaming-analytics
Project: SQL + PowerBI project analyzing music streaming data with dashboards and insights
Database used: Small synthetic set.

The database has four tables:
Users → who is listening (ID, username, country, signup date)
Artists → who creates the music (ID, name, genre)
Songs → what’s being streamed (ID, title, artist, duration, release year)
Streams → activity log (ID, user, song, date, device)

Relationships:
One user → many streams
One song → many streams
One artist → many songs

Using PowerBI, the dashboard contains:
Streams by Release Year : Pie Chart 
Device Usage : Pie Chart 
Monthly Streaming Trends: Line Chart 
Songs Leaderboard: Bar Chart
Top Artists: Bar Chart
Active User by Country: Bar Chart
