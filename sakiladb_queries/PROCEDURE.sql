-- Stored procedure to get payment history of a customer
DELIMITER //
CREATE PROCEDURE GetPaymentHistory(IN cust_id INT)
BEGIN
  SELECT c.first_name, c.last_name, p.payment_date, p.amount
  FROM payment p
  JOIN customer c USING (customer_id)
  WHERE customer_id = cust_id
  ORDER BY payment_date;
END //
DELIMITER ;

-- Call the procedure
CALL GetPaymentHistory(1);