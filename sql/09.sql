/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT first_name, 
       last_name,
       round(sum(payment.amount),2) AS sum
FROM staff
LEFT JOIN payment
    ON staff.staff_id = payment.staff_id
WHERE payment_date BETWEEN '2019-12-31' AND '2020-02-01'
GROUP BY staff.first_name, staff.last_name;
