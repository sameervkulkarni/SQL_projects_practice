-- Find out how rentals are trending month-over-month

SELECT 
    DATE_FORMAT(rental_date, '%Y-%m') AS rental_month,
    COUNT(rental_id) AS rental_count
FROM rental
GROUP BY rental_month
ORDER BY rental_month;
