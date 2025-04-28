-- Count number of films per category
SELECT c.name AS genre_name, COUNT(film_id) AS number_of_films
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.name;

-- Total amount paid by each customer
SELECT c.first_name, c.last_name, SUM(p.amount) AS total_paid
FROM payment p
JOIN customer c USING (customer_id)
GROUP BY customer_id;

SELECT c.first_name, c.last_name, SUM(p.amount) AS total_paid
FROM payment p
JOIN customer c USING (customer_id)
GROUP BY customer_id
HAVING total_paid>100;