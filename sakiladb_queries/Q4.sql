-- Identify customers who have not rented anything in the past 90 days

SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    MAX(r.rental_date) AS last_rental_date
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, customer_name
HAVING MAX(r.rental_date) < DATE_SUB(CURRENT_DATE, INTERVAL 90 DAY)
   OR MAX(r.rental_date) IS NULL;