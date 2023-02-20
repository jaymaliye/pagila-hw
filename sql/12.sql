/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

SELECT payment.customer_id, 
       first_name, 
       last_name,
       sum(amount) AS sum
FROM payment
LEFT JOIN customer
    ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id, first_name, last_name
ORDER BY last_name; 
