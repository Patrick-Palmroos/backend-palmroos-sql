/*
Fetch all the albums which are released between 1990 and 2000 (including both years).

Hae kaikki albumit, jotka on julkaistu vuosien 1990 ja 2000 välillä (mukaan lukien molemmat vuodet).
*/

SELECT * FROM album WHERE year <= 2000 AND year >= 1990;