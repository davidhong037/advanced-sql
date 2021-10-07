-- Problem 1
SELECT COUNT(*), g.name
FROM track t
JOIN genre g ON g.genre_id = t.genre_id
GROUP BY g.name

-- Problem 2
SELECT COUNT(*), g.name
FROM track t
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY g.name

-- Problem 3
SELECT COUNT(*), ar.name
FROM album al
JOIN artist ar ON ar.artist_id = al.artist_id
GROUP BY ar.name