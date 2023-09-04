-- Query to find the top 3 months with the most rentals

-- One interesting analysis could be determining the most popular rental month.
-- This would help in understanding seasonal variations in movie rentals, which can be useful for marketing campaigns, inventory management, and promotions.

-- Questions: In which month of the year did the rental store have the most rentals? What would be the 3 months with the most movie rentals?


SELECT 
    MONTHNAME(r.rental_date) AS rental_month, COUNT(r.rental_id) as total_rentals
FROM 
    rental r
GROUP BY 
    MONTHNAME(r.rental_date)
ORDER BY 
    total_rentals DESC
LIMIT 3;
