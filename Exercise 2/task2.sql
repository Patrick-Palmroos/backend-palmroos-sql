/*
Listaa kaikki ruokalajit, joissa on käytetty ainesosaa "Peruna".

List all the dishes which contains ingredient "Peruna".
*/

SELECT d.name
FROM ingredients AS i INNER JOIN contains AS c
ON c.ingredient_id = i.id INNER JOIN dishes AS d
ON d.id = c.dish_id WHERE i.name = "Peruna";