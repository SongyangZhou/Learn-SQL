SELECT
  bands.name AS 'Band',
  COUNT(songs.id) AS 'Number of Songs'
FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
LEFT JOIN songs ON albums.id = songs.album_id
GROUP BY albums.band_id;

/* 
This will include the Dream Theater with 0 Number of Songs.
*/
