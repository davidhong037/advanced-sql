-- Problem 1
SELECT * FROM invoice
WHERE invoice_id IN(
  SELECT invoice_id
  FROM invoice_line
  WHERE unit_price > 0.99
);

-- Problem 2
SELECT * FROM playlist_track
WHERE playlist_id IN(
  SELECT playlist_id
  FROM playlist
  WHERE name = 'Music'
);

-- Problem 3
SELECT * FROM track
WHERE track_id IN (
  SELECT track_id
  FROM playlist_track
  WHERE playlist_id = 5
);

-- Problem 4
SELECT * FROM track
WHERE genre_id IN (
  SELECT genre_id
  FROM genre
  WHERE name = 'Comedy'
); 

-- Problem 5
SELECT t.name FROM track t
WHERE album_id IN (
  SELECT album_id
  FROM album a
  WHERE a.title = 'Fireball'
);

-- Problem 6
SELECT t.name "Tracks" FROM track t
WHERE album_id IN (
  SELECT album_id
  FROM album a
  WHERE artist_id IN (
    SELECT artist_id
    FROM artist ar
    WHERE ar.name = 'Queen'
  )
);