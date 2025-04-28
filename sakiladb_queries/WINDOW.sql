-- Rank films by rental cost and rating
SELECT title, rating, rental_rate,
       RANK() OVER (PARTITION BY f.rating ORDER BY rental_rate DESC) AS rental_rate_rank
FROM film f;

-- Rank films by rental count
SELECT title, COUNT(r.rental_id) AS rental_count,
       RANK() OVER (ORDER BY COUNT(r.rental_id) DESC) AS rental_rank
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY title;