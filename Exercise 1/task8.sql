/*
Fetch artist name and their albums. Don't include albums without artist information in the
result set.
Include artist's name, albums name and release year to the result.

Hae artistien nimi ja kaikki artistin albumit. Älä sisällytä tulosjoukkoon niitä albumeita,
joille ei ole asetettu artistia.
Ota tulokseen mukaan artistin nimi, albumin nimi ja julkaisuvuosi.
*/

SELECT a.name, al.name, al.year
FROM artist a INNER JOIN album al
    ON a.id = al.artist_id;