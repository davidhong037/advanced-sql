-- Problem 1
SELECT * FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;

-- Problem 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;

-- Problem 3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON e.employee_id = c.support_rep_id;

-- Problem 4


-- Problem 5
SELECT al.title, ar.name
FROM album al
JOIN artist ar ON ar.artist_id = al.artist_id;

-- Problem 6
SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

-- Problem 7
SELECT tr.name
FROM track tr
JOIN playlist_track pt ON pt.track_id = tr.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;

-- Problem 8
SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON pt.track_id= t.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;

-- Problem 9
SELECT t.name, a.title
FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk'