/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT title
FROM film AS a
LEFT JOIN film_category AS b
    ON a.film_id = b.film_id
LEFT JOIN category as c
    ON b.category_id = c.category_id
WHERE c.category_id = 8
ORDER BY title;
