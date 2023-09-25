/*
Kirjoita kysely, joka palauttaa niiden ruokalajien määrän, jotka sisältävät ainesosan "Sipuli".

Write a query which returns the amount of dishes that contain ingredient "Sipuli".
*/

SELECT COUNT(*) AS dishes_with_sipuli_count FROM ingredients
AS i INNER JOIN contains AS c ON c.ingredient_id = i.id
WHERE i.name = "sipuli";