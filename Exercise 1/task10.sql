/* 
Calculate and return the count of albums each band has in the database.
Include Artist name and album count into the result.
Name the result columns as "Artist" and "Album count".
*/

SELECT a.name as "Artist", COUNT(al.id) as "Album count" 
FROM artist a LEFT JOIN album al ON a.id = al.artist_id
GROUP BY a.id;