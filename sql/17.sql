/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT a.country, 
       SUM(f.amount) AS profit
FROM country AS a
JOIN city AS b 
	USING(country_id)
JOIN address AS c
	USING (city_id)
JOIN customer AS d 
	USING(address_id)
JOIN rental AS e
	USING (customer_id)
JOIN payment AS f 
	USING (rental_id)
GROUP BY a.country
ORDER BY a.country;
