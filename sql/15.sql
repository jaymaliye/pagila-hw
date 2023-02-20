/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT c.name AS name,
       count(a.film_id) AS sum
FROM film AS a
LEFT JOIN film_category AS b
    ON a.film_id = b.film_id
LEFT JOIN category as c
    ON b.category_id = c.category_id
LEFT JOIN language as d
    ON a.language_id = d.language_id
WHERE d.language_id = 1
GROUP BY c.name
ORDER BY c.name;
