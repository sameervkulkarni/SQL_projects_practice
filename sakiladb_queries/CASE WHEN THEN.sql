-- Categorize films by length
SELECT title, length,
CASE
  WHEN length < 60 THEN 'Short'
  WHEN length BETWEEN 60 AND 120 THEN 'Medium'
  ELSE 'Long'
END AS film_length_category
FROM film;
