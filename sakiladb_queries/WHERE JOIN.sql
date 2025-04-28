-- Find all films with rating 'R'
SELECT title FROM film WHERE rating = 'R';

-- Customers living in 'California'
SELECT first_name, last_name FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE address.district = 'California';

-- Get film titles and their categories
SELECT f.title, c.name AS category
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id;

-- List all customers and the stores they are associated with
SELECT c.first_name, c.last_name, s.store_id
FROM customer c
LEFT JOIN store s ON c.store_id = s.store_id;
