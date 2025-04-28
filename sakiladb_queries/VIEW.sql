-- Create a view for film rentals
CREATE VIEW film_rentals AS
SELECT f.title, COUNT(r.rental_id) AS rentals
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title;

-- Query from the view
SELECT * FROM film_rentals
ORDER BY rentals DESC;
-- WHERE rentals > 50;