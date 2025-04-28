-- Customer Payment Behavior Analysis

WITH customer_spending AS (
  SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(p.amount) AS total_spent,
    COUNT(r.rental_id) AS total_rentals
  FROM customer c
  JOIN payment p ON c.customer_id = p.customer_id
  JOIN rental r ON p.rental_id = r.rental_id
  GROUP BY c.customer_id, customer_name
)

SELECT *
FROM customer_spending
ORDER BY total_spent DESC
LIMIT 10;
