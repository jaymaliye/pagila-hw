/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */


SELECT film.film_id,
       title, 
       count(inventory.film_id) AS count
FROM film
LEFT JOIN inventory
    ON film.film_id = inventory.film_id
WHERE title LIKE 'H%'
GROUP BY film.film_id
HAVING count(inventory.film_id) > 0
ORDER BY title DESC;
