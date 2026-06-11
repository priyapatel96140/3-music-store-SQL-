create database music_store;
use music_store;
select*from album;
select*from artist;
select*from customer;
select*from employee;
select*from genre;
select*from invoice;
select*from invoice_line;
select*from media_type;
select*from playlist;
select*from playlist_track;
select*from track;

#(basic qus:-)
#que-1
select title,last_name,first_name from employee order by levels desc;
#que-2
select count(*) as c, billing_country from invoice group by billing_country order by c desc;
#que-3
select total from invoice order by total desc;
#que-4
select billing_city,SUM(total) as InvoiceTotal from invoice group by  billing_city order by InvoiceTotal desc limit 1;
#que-5
Select customer.customer_id, first_name, last_name, SUM(total) AS total_spending
from customer
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id,first_name, last_name
order by total_spending desc
limit 1;

#(moderate)
describe track;
#que-1
select name,milliseconds from track
where milliseconds > (
	select avg(milliseconds) as avg_track_length from track )
order by milliseconds desc;

#que-2
SELECT artist.artist_id, artist.name,COUNT(artist.artist_id) AS number_of_songs
FROM track
JOIN album ON album.album_id = track.album_id
JOIN artist ON artist.artist_id = album.artist_id
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name LIKE 'Rock'
GROUP BY artist.artist_id, artist.name
ORDER BY number_of_songs DESC
LIMIT 10;

#que-3
SELECT name,milliseconds
FROM track
WHERE milliseconds > (
	SELECT AVG(milliseconds) AS avg_track_length
	FROM track )
ORDER BY milliseconds DESC;
















