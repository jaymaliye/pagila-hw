/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT title,
       sum(d.amount) AS profit
FROM film AS a
LEFT JOIN inventory AS b
    ON a.film_id = b.film_id
LEFT JOIN rental as c
    ON b.inventory_id = c.inventory_id
LEFT JOIN payment as d
    ON c.rental_id = d.rental_id
GROUP BY a.title
HAVING sum(d.amount) > 0
ORDER BY profit DESC;
