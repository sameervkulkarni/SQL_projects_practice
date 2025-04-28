-- Find top 3 customers by total payment
WITH customer_totals AS (
  SELECT c.first_name, c.last_name, SUM(p.amount) AS total_spent
  FROM payment p
  JOIN customer c USING (customer_id)
  GROUP BY customer_id
)
SELECT *
FROM customer_totals
ORDER BY total_spent DESC
LIMIT 3;