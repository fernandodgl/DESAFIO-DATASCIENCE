-- Query to find the customer with the most rentals

SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name, COUNT(r.rental_id) as total_rentals
FROM 
    customer c
JOIN 
    rental r ON c.customer_id = r.customer_id
GROUP BY 
    c.first_name, c.last_name
ORDER BY 
    total_rentals DESC
LIMIT 1;