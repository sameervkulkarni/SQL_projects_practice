-- Create index on rental_date
CREATE INDEX idx_rental_date ON rental(rental_date);

-- Check existing indexes
SHOW INDEX FROM rental;
