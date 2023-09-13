/*
Listaa ruokalajin "Lihapiirakka" kaikki ainesosat.

List all the ingredients which are used in the dish "Lihapiirakka".
*/

SELECT i.name
FROM ingredients AS i INNER JOIN contains AS c
ON c.ingredient_id = i.id INNER JOIN dishes AS d
ON d.id = c.dish_id WHERE d.name = "Lihapiirakka";