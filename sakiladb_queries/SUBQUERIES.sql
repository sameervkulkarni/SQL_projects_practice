-- Films longer than the average length
SELECT title, length
FROM film
WHERE length > (
	SELECT AVG(length) FROM film
	)
ORDER BY length DESC;

-- Find customers who rented "ACADEMY DINOSAUR"
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
  SELECT r.customer_id
  FROM rental r
  JOIN inventory i ON r.inventory_id = i.inventory_id
  JOIN film f ON i.film_id = f.film_id
  WHERE f.title = 'ACADEMY DINOSAUR'
);
