UPDATE film
SET rental_duration = 3, rental_rate = 9.99
WHERE film_id = 1002;



UPDATE customer
set	first_name = 'ROMAN', last_name='YENSEBAYEV'
where customer_id in (
SELECT c.customer_id
FROM customer c
JOIN (
    SELECT customer_id, COUNT(*) AS rental_count
    FROM rental
    GROUP BY customer_id
    HAVING COUNT(*) >= 10
) r ON c.customer_id = r.customer_id
JOIN (
    SELECT customer_id, COUNT(*) AS payment_count
    FROM payment
    GROUP BY customer_id
    HAVING COUNT(*) >= 10
) p ON c.customer_id = p.customer_id
) and customer_id = 69;


UPDATE customer
SET create_date = CURRENT_DATE
WHERE customer_id = 69;